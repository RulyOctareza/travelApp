<p align="center">
  <img src="docs/preview/hero.svg" alt="Travel App — ilustrasi aplikasi pemesanan perjalanan" width="100%">
</p>

<h1 align="center">Travel App</h1>

<p align="center">
  <b>Pesan perjalananmu: pilih destinasi, kursi, bayar, berangkat.</b><br>
  Flutter · BLoC (Cubit) · Firebase
</p>

<p align="center">
  <a href="https://flutter.dev"><img alt="Flutter" src="https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter&logoColor=white"></a>
  <img alt="BLoC" src="https://img.shields.io/badge/State-BLoC%20(Cubit)-2496ED">
  <a href="https://firebase.google.com"><img alt="Firebase" src="https://img.shields.io/badge/Backend-Firebase-FFCA28?logo=firebase&logoColor=black"></a>
</p>

---

## ✨ Preview

<p align="center">
  <img src="docs/preview/hero.png" alt="Mockup gelap Travel App" width="90%">
</p>

> **Catatan:** gambar di atas adalah *ilustrasi konsep*, bukan screenshot asli.

---

## 📖 Tentang

Aplikasi pemesanan perjalanan dengan alur lengkap: onboarding, sign in / sign up, jelajahi
destinasi, pilih kursi, checkout, sampai halaman sukses. State dikelola rapi per domain
memakai Cubit, dan data pengguna serta transaksi tersimpan di Firebase.

---

## 🌟 Fitur

- 🚀 **Onboarding & splash** untuk pengalaman pertama
- 🔐 **Sign in / sign up** dengan Firebase Authentication
- 🌍 **Daftar destinasi** beserta detail
- 💺 **Pemilihan kursi** (`seat_cubit`)
- 💳 **Wallet & checkout** dengan halaman sukses
- 👤 **Profil & bonus**
- 🎨 UI custom dengan Google Fonts

---

## 🛠️ Tech Stack

| Area | Pilihan |
|---|---|
| Framework | Flutter |
| State management | BLoC / Cubit (`bloc`, `flutter_bloc`) |
| Auth | Firebase Authentication |
| Data | Cloud Firestore |
| Format | `intl` |

---

## 🧱 Struktur

```text
lib/
├── cubit/          # auth, destination, page, seat, transaction
├── models/
├── services/
├── shared/         # Tema & komponen bersama
└── ui/pages/       # Splash, onboarding, auth, main, wallet, checkout
```

---

## 🚀 Menjalankan

```bash
flutter pub get
flutter run
```

Sesuaikan `firebase_options.dart` dan file `masjid.env` dengan konfigurasi project Firebase-mu.

---

## 🧪 Testing

```bash
flutter analyze
flutter test
```
