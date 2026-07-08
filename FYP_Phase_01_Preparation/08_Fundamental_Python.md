# Python Fundamentals — ProFinder Backend Ke Liye

> Ye document Python ke basic se intermediate concepts cover karta hai jo tumhare Django backend mein use hote hain — har concept ki **definition + example** ke saath.

---

## 1. Variable

**Definition:** Variable ek naam hai jo kisi value ko memory mein store karne ke liye use hota hai. Python mein type declare karne ki zaroorat nahi (dynamically typed).

```python
name = "ProFinder"
total_bookings = 120
is_verified = True
```

---

## 2. Data Types

**Definition:** Data type batata hai variable mein kis tarah ki value store hai.

| Type | Example | Tumhare Project Mein |
|---|---|---|
| `str` (String) | `"plumber"` | Professional ka name, category |
| `int` (Integer) | `25` | Booking ID, age |
| `float` | `4.5` | Review rating (`4.5`) |
| `bool` | `True` / `False` | `is_verified`, `is_active` |
| `list` | `[1, 2, 3]` | Multiple images, categories list |
| `dict` (Dictionary) | `{"role": "admin"}` | API response JSON data |
| `tuple` | `(10, 20)` | Fixed choices (jaise coordinates) |
| `set` | `{1, 2, 3}` | Unique values (duplicate remove) |
| `NoneType` | `None` | Django mein `null` value |

```python
professional = {
    "name": "Ali Khan",
    "rating": 4.7,
    "is_verified": True,
    "skills": ["plumbing", "electrical"]
}
```

---

## 3. Operators

**Definition:** Operators values ke sath calculation ya comparison karte hain.

```python
# Arithmetic
total = 10 + 5        # 15

# Comparison
is_eligible = age >= 18   # True/False

# Logical
can_book = is_verified and is_active
```

---

## 4. Conditional Statements (if / elif / else)

**Definition:** Condition ke basis par decision lene ke liye.

```python
if rating >= 4.5:
    badge = "Top Rated"
elif rating >= 3.0:
    badge = "Good"
else:
    badge = "New"
```

*Tumhare project mein use:* subscription limit check, booking status logic.

---

## 5. Loops (for / while)

**Definition:** Kisi code ko baar baar repeat karne ke liye.

```python
for booking in all_bookings:
    print(booking.status)
```

*Tumhare project mein use:* search results ko rank karna, notifications sabhi recipients ko bhejna.

---

## 6. Functions

**Definition:** Function reusable code ka block hota hai jo `def` keyword se banta hai.

```python
def calculate_distance(lat1, lon1, lat2, lon2):
    # GPS-based nearby search mein use hota hai
    distance = ((lat1 - lat2) ** 2 + (lon1 - lon2) ** 2) ** 0.5
    return distance
```

### Default Arguments
```python
def get_bookings(status="pending"):
    return Booking.objects.filter(status=status)
```

### *args / **kwargs
```python
def log_activity(*args, **kwargs):
    print(args, kwargs)
```

---

## 7. Lambda Function

**Definition:** Ek chhota, bina naam ka (anonymous) function — ek line mein likha jata hai.

```python
sorted_professionals = sorted(professionals, key=lambda p: p.rating, reverse=True)
```

*Tumhare `search/views.py` aur `payments/views.py` mein use hua hai.*

---

## 8. List Comprehension

**Definition:** List banane ka short/fast tarika, ek line mein loop + condition.

```python
verified_names = [p.name for p in professionals if p.is_verified]
```

*Tumhare `search`, `admin_panel`, `payments` views mein use hua hai.*

---

## 9. Classes & Objects (OOP)

**Definition:** Class ek blueprint hai jisse objects banaye jate hain. Django models bhi classes hi hote hain.

```python
class Booking(models.Model):
    customer = models.ForeignKey(User, on_delete=models.CASCADE)
    status = models.CharField(max_length=20, default="pending")

    def is_active(self):
        return self.status == "pending"
```

**Tumhare project mein 186 classes hain** (models, serializers, views).

---

## 10. Inheritance

**Definition:** Ek class doosri class ki properties/methods inherit (use) kar sakti hai.

```python
class User(AbstractBaseUser, PermissionsMixin):
    # Django ke built-in auth classes se inherit kiya
    ...
```

---

## 11. Decorators

**Definition:** Decorator ek function hai jo doosre function/method ka behavior modify karta hai, `@` symbol se likha jata hai.

```python
class Message(models.Model):
    @property
    def is_read(self):
        return self.read_at is not None
```

```python
@database_sync_to_async
def get_conversation(conversation_id):
    # Django Channels mein async DB call ke liye
    ...
```

*Tumhare project mein use:* `@property` (messaging models), `@database_sync_to_async` (chat consumers), `@admin.register` (Django admin panel).

---

## 12. Exception Handling (try / except)

**Definition:** Errors ko handle karna taake app crash na ho.

```python
try:
    booking = Booking.objects.get(id=booking_id)
except Booking.DoesNotExist:
    return Response({"error": "Booking not found"}, status=404)
```

*Tumhare project mein 20 files mein try/except use hua hai.*

---

## 13. Modules & Imports

**Definition:** Code ko alag files mein organize karke import karna.

```python
from django.db.models import Q, Count
from .models import Booking
```

---

## 14. String Formatting (f-strings)

**Definition:** Variables ko string ke andar directly insert karna.

```python
message = f"{customer.name} ne booking cancel ki: {reason}"
```

---

## 15. Dictionary / JSON Handling

**Definition:** Key-value pairs — API response data isi format mein jata hai.

```python
response_data = {
    "id": booking.id,
    "status": booking.status,
    "customer": booking.customer.name
}
```

---

*Ye sare concepts tumhare `backend.zip` ke actual code (models, views, migrations) se verify karke likhe gaye hain.*