<!---

---
title: "CASA0017: Web Architecture Final Assessment"
author: "Steven Gray"
date: "10 Dec 2021"
---

-->

# Submission Guide

You will need to edit this file, create a PDF using the instructions below, from this file.   Sign it digitally and upload to Moodle

## How to create a PDF from Markdown
When finished you should export to PDF using VSCode and MarkdownPDF Extension. Make sure you select no headers and no footers in the
extension preferences before exporting to PDF.   

Upload this PDF into Moodle for submission including a copy of your presentation slides.

## Link to GitHub Repository

Flutter Application Name - Pull-Up Tracker
GitHub Repository - [https://github.com/McYILEI/casa0015-mobile-assessment](https://github.com/McYILEI/casa0015-mobile-assessment)

## Introduction to Application

Pull-Up Tracker is a Flutter mobile application that uses the smartphone's front-facing camera and Google ML Kit Pose Detection to automatically count pull-up repetitions in real time, without requiring any wearable device or manual input.

The core motivation is practical: pull-ups occupy both hands, making it impossible to tap a counter mid-set. Gym equipment is costly and fixed, wearables can be forgotten, but a phone is almost always available. Pull-Up Tracker turns any smartphone into a hands-free AI workout assistant — mount the device, start exercising, and let computer vision handle the counting.

The app tracks 17 body keypoints and applies a phase-based state machine (idle → hanging → ascending → atTop → descending) to recognise complete repetitions. An 800 ms anti-bounce window prevents double counts, and detection thresholds auto-scale to the user's body proportions. Users can manually adjust the count at any time, record multiple sets per session, and tag each session with a GPS-derived location. Past workouts are stored locally in SQLite and are accessible through a history screen and a statistics dashboard showing weekly totals, session averages, cumulative reps, and 30-session trend charts.

## Biblography

1. Google LLC (2024). *google_mlkit_pose_detection* [Online]. Available at: <https://pub.dev/packages/google_mlkit_pose_detection> (Accessed: 28 April 2026)

2. Flutter and Dart Team (2024). *camera* [Online]. Available at: <https://pub.dev/packages/camera> (Accessed: 28 April 2026)

3. Nfet (2024). *sqflite — SQLite plugin for Flutter* [Online]. Available at: <https://pub.dev/packages/sqflite> (Accessed: 28 April 2026)

4. ImDanhb (2024). *fl_chart* [Online]. Available at: <https://pub.dev/packages/fl_chart> (Accessed: 28 April 2026)

5. Baseflutter (2024). *geolocator* [Online]. Available at: <https://pub.dev/packages/geolocator> (Accessed: 28 April 2026)

6. Baseflutter (2024). *geocoding* [Online]. Available at: <https://pub.dev/packages/geocoding> (Accessed: 28 April 2026)

7. Remi Rousselet (2024). *provider* [Online]. Available at: <https://pub.dev/packages/provider> (Accessed: 28 April 2026)

----

## Declaration of Authorship

I, Shen Yilei, confirm that the work presented in this assessment is my own. Where information has been derived from other sources, I confirm that this has been indicated in the work.


Shen Yilei

2026/4/30

---
