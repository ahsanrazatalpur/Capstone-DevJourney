# ProFinder — App Introduction

## Ye App Kya Hai?

**ProFinder** ek **hyperlocal service marketplace platform** hai jo customers ko unke area ke **verified local professionals** (plumbers, electricians, doctors, tutors, mechanics, aur 40+ dusre professions) se connect karta hai. Socho isko ek "DocFinder-style" app jo sirf doctors tak mehdood nahi, balke har tarah ke service provider ko cover karta hai.

App do hisso mein bata hai:
- **Flutter frontend** — cross-platform (Android/iOS/Web) mobile app
- **Django REST Framework backend** — poora API, auth, aur business logic

## Ye Kis Liye Banaya Gaya Hai?

Iska core purpose hai **trust aur convenience** dono ek sath dena:
- Customer ko apne nearby area mein **verified professional** dhoondhna asaan ho
- Professional ko apna **digital presence, bookings, aur reviews** manage karne ka platform mile
- Admin ko puri marketplace **control aur monitor** karne ka enterprise-level panel mile

Ye sirf ek Final Year Project (FYP) nahi hai — architecture aisi bani hai ke ye **globally scale** ho sake (Semester 7, BS CS, University of Sindh Laar Campus Badin).

## Teen Core User Roles

| Role | Kya Karta Hai |
|---|---|
| **Customer** | Search, booking, chat, reviews, subscription |
| **Professional** | Profile/portfolio banata hai, bookings accept karta hai, earnings dekhta hai |
| **Admin** | Poori app ko manage/monitor karta hai |

## Full Feature List

### 🔍 Search & Discovery
- GPS-based nearby search (color-coded distance badges + city fallback)
- Advanced multi-field search with typo correction & synonym expansion
- AI-powered ranking (10-signal relevance scoring)
- AutoSuggest / rich empty states

### 📅 Booking System
- Booking creation, status tracking, cancellation with reason
- Multi-recipient notifications on every status change

### 💬 Real-Time Chat
- Django Channels based messaging backend
- Conversations, attachments, online/presence status
- Flutter clean architecture (domain/data/presentation layers)

### 👤 Profiles & Portfolios
- Professional profile, portfolio, certificates, gallery
- Admin-based portfolio approval workflow

### ⭐ Reviews & Ratings
- Customer reviews on professionals (unique-per-booking)

### 💳 Payments & Wallet
- Payment records, professional wallet, withdrawal requests

### 🎯 Subscription / Freemium System
- Subscription plans with feature-level limits
- Enforced limits on bookings, AI search, portfolios

### 📰 Magazine / Articles
- Categorized articles, article views/analytics

### 🔔 Notifications
- In-app notifications with unread badge

### 📢 Promo Banners
- Role-based targeted banners/popups with per-user caching

### 🛠️ Enterprise Admin Panel
- Dashboard, Users, Customers, Professionals management
- Portfolio approval, Bookings management, Activity logs
- Promo banner management, Magazine analytics

### 🔐 Auth & Security
- Custom JWT-based auth (`AbstractBaseUser`)
- Login, register, forgot password, security settings

## Tech Stack

- **Frontend:** Flutter (clean architecture)
- **Backend:** Django REST Framework, 9+ Django apps
- **Realtime:** Django Channels
- **Auth:** Custom JWT
- **Media:** Cloudinary
- **Payments:** Stripe (skeleton)

---
*Ye intro dono uploaded zips (`lib.zip` frontend + `backend.zip` backend) ke actual code structure scan karke banaya gaya hai.*