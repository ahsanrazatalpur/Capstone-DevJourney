# ProFinder — Technologies & External Libraries

> **Technology** = core framework/platform jis par app khadi hai.
> **External Library / Package** = us technology ke andar specific kaam ke liye add ki gayi dependency.

---

## 1. Core Technologies (Tech Stack)

| Layer | Technology |
|---|---|
| Frontend | **Flutter** (Dart) |
| Backend | **Django** + **Django REST Framework (DRF)** |
| Database | **PostgreSQL** |
| Real-time Communication | **Django Channels** (WebSockets) |
| Push Notifications | **Firebase Cloud Messaging (FCM)** |
| Media Storage | **Cloudinary** |
| AI | **Google Gemini (google-genai)** |

---

## 2. Frontend — External Libraries (Flutter Packages)

| Package | Use |
|---|---|
| `provider` | State management |
| `dio` | HTTP client — API calls to Django backend |
| `image_picker` | Camera/gallery image upload |
| `shared_preferences` | Local key-value storage (tokens, cache) |
| `intl` | Date/time formatting |
| `cached_network_image` | Network image caching |
| `firebase_core` | Firebase SDK init |
| `firebase_messaging` | Push notifications |
| `web_socket_channel` | Real-time chat (WebSocket client) |
| `url_launcher` | Open external links |

**Architecture pattern:** Clean Architecture (chat feature) + Provider-based state management.

---

## 3. Backend — External Libraries (Python Packages)

### Framework & API
| Library | Use |
|---|---|
| `Django` | Core web framework |
| `djangorestframework` | REST API layer |
| `djangorestframework_simplejwt` | JWT authentication |
| `django-cors-headers` | Cross-origin requests (Flutter ↔ Django) |
| `django-allauth` | Auth/social login support |
| `PyJWT` | JWT token handling |

### Real-Time / WebSockets
| Library | Use |
|---|---|
| `channels` | Django Channels — WebSocket support (chat) |
| `channels-redis` | Redis backend for Channels (scaling real-time layer) |
| `daphne` | ASGI server for WebSocket connections |
| `websockets` | Low-level WebSocket protocol support |

### Database
| Library | Use |
|---|---|
| `psycopg2-binary` | PostgreSQL adapter for Django |

### Media & Storage
| Library | Use |
|---|---|
| `cloudinary` | Image/media hosting |
| `django-cloudinary-storage` | Django ↔ Cloudinary integration |
| `google-cloud-storage` | Cloud storage support |

### AI / Intelligence
| Library | Use |
|---|---|
| `google-genai` | Google Gemini AI SDK — powers AI-based search/recommendations |

### Firebase / Google Services
| Library | Use |
|---|---|
| `firebase_admin` | Server-side push notifications |
| `google-cloud-firestore` | Firestore integration |
| `google-auth`, `google-api-core` | Google service authentication |

### Utilities
| Library | Use |
|---|---|
| `python-dotenv` | Environment variable management |
| `requests` | HTTP requests (server-side) |
| `pydantic` | Data validation |
| `cryptography` | Security/encryption utilities |

---

## 4. PostgreSQL-Specific Features Used

| Feature | Use |
|---|---|
| `pg_trgm` extension (`TrigramExtension`) | Fuzzy/typo-tolerant search |
| `GinIndex` | Fast trigram-based indexing for search |
| Foreign Key / One-to-One relationships | Linking Users ↔ Profiles ↔ Bookings ↔ Reviews |
| `select_related` / `prefetch_related` | Query optimization (JOIN handling) |
| Aggregate functions (`Count`, `Sum`, `Avg`, `annotate`) | Analytics, dashboard stats |

---

*Ye list dono zips (`lib.zip` frontend + `backend.zip` requirements.txt) se actual scan karke banayi gayi hai — koi assumption nahi.*