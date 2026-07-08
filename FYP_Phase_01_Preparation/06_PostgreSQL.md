# PostgreSQL — Viva Notes

## Question 1: What is PostgreSQL?

**Answer:**

PostgreSQL ek **open-source Relational Database Management System (RDBMS)** hai.

Iska use application ka data **store, manage, retrieve aur update** karne ke liye hota hai.

ProFinder mein users, professionals, bookings, reviews, payments aur tamam application data PostgreSQL database mein store hota hai.

---

# Question 2: PostgreSQL Kyun Choose Kiya?

### • Reliable

PostgreSQL bohot stable aur reliable database hai jo production-level applications mein bhi use hota hai.

### • ACID Compliance

Ye ACID properties follow karta hai, jis se transactions secure aur consistent rehti hain.

### • High Performance

Large amount of data ko efficiently handle karta hai aur fast queries execute karta hai.

### • Scalability

Application ke users aur data increase hone par bhi PostgreSQL efficiently scale kar sakta hai.

### • Advanced Features

Ye indexing, constraints, joins, views aur transactions jaise powerful database features provide karta hai.

### • Django Compatibility

Django PostgreSQL ko officially bohot achi tarah support karta hai, isliye integration simple aur efficient hoti hai.

---

# Question 3: SQL Aur PostgreSQL Mein Kya Difference Hai?

| SQL                                                                     | PostgreSQL                                                              |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| SQL ek **language** hai.                                                | PostgreSQL ek **Database Management System (RDBMS)** hai.               |
| SQL ka use database se baat karne ke liye hota hai.                     | PostgreSQL SQL commands ko execute karta hai aur data manage karta hai. |
| SQL se hum SELECT, INSERT, UPDATE aur DELETE jaise queries likhte hain. | PostgreSQL data ko physically store, retrieve aur manage karta hai.     |

---

# Simple Example

Agar database ko ek **library** samjhein:

* **PostgreSQL** = Library 🏛️
* **SQL** = Wo language jisse aap librarian se kehte ho:

  * "Ye book do." (`SELECT`)
  * "Ye book rakh do." (`INSERT`)
  * "Is book ki information update karo." (`UPDATE`)
  * "Ye book hata do." (`DELETE`)

Yani **SQL sirf language hai**, jabke **PostgreSQL woh system hai jo data ko store aur manage karta hai.**

---

# One-Line Viva Answer

> **Maine PostgreSQL is liye choose kiya kyun ke ye secure, reliable, scalable aur high-performance relational database hai jo Django ke sath excellent integration provide karta hai. SQL ek query language hai, jabke PostgreSQL ek Database Management System hai jo SQL ko use karke data ko store aur manage karta hai.**
