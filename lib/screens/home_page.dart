import 'package:flutter/material.dart';

import 'camera_page.dart';
import 'history_page.dart';
import 'result_page.dart';
import 'upload_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = <_HomeMenuItem>[
      _HomeMenuItem(
        title: 'Upload Image',
        subtitle: 'Choose a reference photo from the gallery.',
        icon: Icons.photo_library_outlined,
        color: const Color(0xFF2563EB),
        page: const UploadPage(),
      ),
      _HomeMenuItem(
        title: 'Camera',
        subtitle: 'Placeholder for real-time detection.',
        icon: Icons.camera_alt_outlined,
        color: const Color(0xFF0F766E),
        page: const CameraPage(),
      ),
      _HomeMenuItem(
        title: 'Result',
        subtitle: 'Preview the future analysis result screen.',
        icon: Icons.analytics_outlined,
        color: const Color(0xFF7C3AED),
        page: const ResultPage(),
      ),
      _HomeMenuItem(
        title: 'History',
        subtitle: 'Placeholder for saved comparison records.',
        icon: Icons.history_outlined,
        color: const Color(0xFFEA580C),
        page: const HistoryPage(),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pose Compare App'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              const Text(
                'Course Project Demo',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF111827),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'This first version focuses on page structure and image upload. '
                'You can open every page, and the upload page already supports gallery selection and preview.',
                style: TextStyle(
                  fontSize: 15,
                  height: 1.5,
                  color: Color(0xFF6B7280),
                ),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: GridView.builder(
                  itemCount: items.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 1.05,
                  ),
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return _HomeMenuCard(item: item);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HomeMenuCard extends StatelessWidget {
  const _HomeMenuCard({required this.item});

  final _HomeMenuItem item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(builder: (_) => item.page),
        );
      },
      child: Ink(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color(0xFFE5E7EB)),
          boxShadow: const [
            BoxShadow(
              color: Color(0x12000000),
              blurRadius: 18,
              offset: Offset(0, 8),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  color: item.color.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Icon(item.icon, color: item.color, size: 28),
              ),
              const Spacer(),
              Text(
                item.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF111827),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                item.subtitle,
                style: const TextStyle(
                  fontSize: 13,
                  height: 1.4,
                  color: Color(0xFF6B7280),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HomeMenuItem {
  const _HomeMenuItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.page,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final Widget page;
}
