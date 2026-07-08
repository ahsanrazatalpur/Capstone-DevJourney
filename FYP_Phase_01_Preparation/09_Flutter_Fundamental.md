# Flutter / Dart Fundamentals — ProFinder Frontend Ke Liye

> Ye document Dart language + Flutter framework ke concepts cover karta hai jo tumhare frontend mein use hote hain — har concept ki **definition + example** ke saath.

---

## 1. Variable & Data Types

**Definition:** Dart mein variable declare karne ke liye `var`, `final`, `const` ya direct type use hota hai.

```dart
String name = "ProFinder";
int totalBookings = 120;
double rating = 4.7;
bool isVerified = true;
final String userId = "12345";   // ek baar set, phir change nahi
const String appName = "ProFinder"; // compile-time constant
```

---

## 2. Collections (List, Map, Set)

**Definition:** Multiple values store karne ke data structures.

```dart
List<String> skills = ["plumbing", "electrical"];
Map<String, dynamic> professional = {
  "name": "Ali Khan",
  "rating": 4.7,
};
Set<int> uniqueIds = {1, 2, 3};
```

*Tumhare project mein use:* API response ko `Map<String, dynamic>` mein parse karna (JSON handling).

---

## 3. Functions

**Definition:** Reusable code block.

```dart
double calculateDistance(double lat1, double lon1, double lat2, double lon2) {
  return ((lat1 - lat2) * (lat1 - lat2) + (lon1 - lon2) * (lon1 - lon2));
}
```

### Named Parameters (`required`)
```dart
class BookingCard extends StatelessWidget {
  final String customerName;
  final String status;

  const BookingCard({required this.customerName, required this.status});
}
```

*Tumhare project mein **167 jagah** `required this.` use hua hai — Flutter widgets constructor pattern.*

---

## 4. Classes & Objects (OOP)

**Definition:** Class ek blueprint hai — Dart mein har Widget bhi ek class hoti hai.

```dart
class ChatProvider extends ChangeNotifier {
  List<Message> messages = [];

  void addMessage(Message msg) {
    messages.add(msg);
    notifyListeners();
  }
}
```

---

## 5. Inheritance (`extends`)

**Definition:** Ek class doosri class ki properties/methods use karti hai.

```dart
class ChatProvider extends ChangeNotifier { ... }
class LoginScreen extends StatefulWidget { ... }
```

*Tumhare project mein `ChangeNotifier` se 4 provider classes extend hoti hain (state management).*

---

## 6. Abstract Class

**Definition:** Ek class jo directly object nahi ban sakti — sirf blueprint/contract deti hai, jise dusri classes implement karti hain.

```dart
abstract class ChatRepository {
  Future<List<Message>> getMessages(String conversationId);
  Future<void> sendMessage(Message message);
}
```

*Tumhare `chat/domain/repositories/chat_repository.dart` mein use hua hai — Clean Architecture ka core part.*

---

## 7. Mixin

**Definition:** Mixin ek tarah ka "code sharing" hai — bina inheritance ke ek class ko doosri class ka functionality dena.

```dart
mixin PromoBannerMixin<T extends StatefulWidget> on State<T> {
  void showPromoBanner() { ... }
}

class CustomerHomeScreen extends State<CustomerHomeScreen> with PromoBannerMixin {
  // ab is class ke paas showPromoBanner() bhi available hai
}
```

*Tumhare `promo_banner_mixin.dart` mein exactly ye pattern use hua hai.*

---

## 8. Enum

**Definition:** Fixed set of named values/options.

```dart
enum _StatusFilter { all, verified, unverified, banned }
enum _SortOption { ratingHigh, bookingsHigh, nameAsc, dateNew }
```

*Tumhare `admin_professionals_screen.dart` aur `admin_users_screen.dart` mein filter/sort options ke liye use hua hai.*

---

## 9. Async / Await & Future

**Definition:** `Future` ek value represent karta hai jo **abhi nahi, baad mein** milegi (jaise API call). `async`/`await` se us wait ko handle karte hain.

```dart
Future<void> fetchBookings() async {
  final response = await dio.get('/api/bookings/');
  setState(() {
    bookings = response.data;
  });
}
```

*Tumhare project mein **69 jagah** `async`/`Future` use hua hai — har API call isi pattern se hoti hai.*

---

## 10. Stream

**Definition:** `Future` ek value deta hai, `Stream` **multiple values time ke sath** deta hai — real-time data ke liye perfect.

```dart
Stream<Message> get messageStream => _socketController.stream;
```

*Tumhare chat feature mein WebSocket se real-time messages receive karne ke liye use hua hai.*

---

## 11. StatelessWidget vs StatefulWidget

**Definition:**
- `StatelessWidget` → UI jo change nahi hoti (static)
- `StatefulWidget` → UI jo internal state ke basis par update hoti hai

```dart
class AppLogo extends StatelessWidget { ... }   // kabhi change nahi hoga

class LoginScreen extends StatefulWidget {       // form input, loading state etc.
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
```

*Tumhare project mein **70 files** in dono widgets ko use karte hain.*

---

## 12. State Management (Provider + ChangeNotifier)

**Definition:** `ChangeNotifier` ek class hai jo UI ko batati hai "data change hui hai, khud ko rebuild karo" — `notifyListeners()` call karke.

```dart
class AuthProvider extends ChangeNotifier {
  bool isLoggedIn = false;

  void login() {
    isLoggedIn = true;
    notifyListeners();   // UI ko refresh karne ka signal
  }
}
```

```dart
// main.dart mein setup
MultiProvider(
  providers: [
    ChangeNotifierProvider(create: (_) => AuthProvider()),
  ],
)
```

---

## 13. Null Safety (`?`, `!`, `late`)

**Definition:** Dart mein `null` values ko safely handle karna.

```dart
String? profileImage;              // null ho sakta hai
late String userId;                // baad mein assign hoga, guaranteed
final name = user?.name ?? "Guest"; // agar null hai to default value
```

*Tumhare project mein **18 files** mein `late` keyword use hua hai.*

---

## 14. Widgets Composition

**Definition:** Flutter mein UI chhote widgets ko combine karke banti hai (widget tree).

```dart
Column(
  children: [
    Text("ProFinder"),
    ElevatedButton(onPressed: () {}, child: Text("Book Now")),
  ],
)
```

---

*Ye sare concepts tumhare `lib.zip` ke actual code (70+ screens, chat clean architecture, providers) se verify karke likhe gaye hain.*