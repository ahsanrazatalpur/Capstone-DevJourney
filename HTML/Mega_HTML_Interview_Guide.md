# Mega HTML Interview Guide

## Table of Contents

1.  Internet Basics
2.  HTML Fundamentals
3.  Forms
4.  Semantic HTML
5.  Media
6.  SEO
7.  Accessibility & ARIA
8.  Browser Rendering
9.  Performance
10. Coding Questions
11. Tricky Questions
12. HR Questions
13. Final Checklist

# 1. Internet Basics

## Q1. What is the Internet?

**Answer:** A global network of connected computers that communicate
using TCP/IP.

## Q2. What is a Website?

**Answer:** A collection of related web pages stored on a server and
accessed through a browser.

## Q3. Website vs Web App

  Website                       Web App
  ----------------------------- -------------------------
  Mainly provides information   Allows user interaction
  Mostly static                 Dynamic

## Q4. What is a Browser?

Software that requests web pages from servers and renders them.

## Q5. What is a Server?

A computer that stores website files and responds to browser requests.

## Q6. What is DNS?

Converts a domain name into an IP address.

## Q7. Domain vs Hosting

-   Domain: Website address.
-   Hosting: Storage for website files.

## Q8. HTTP vs HTTPS

-   HTTP: Not encrypted.
-   HTTPS: Encrypted using SSL/TLS.

## Q9. Request & Response

Browser → Request → Server → Response → Browser.

## Q10. Client vs Server

-   Client requests data.
-   Server processes and returns data.

# 2. HTML Fundamentals

## Q11. What is HTML?

HyperText Markup Language used to structure web pages.

## Q12. Is HTML a programming language?

No. It is a markup language.

## Q13. Basic HTML Structure

``` html
<!DOCTYPE html>
<html>
<head>
<title>Page</title>
</head>
<body>
</body>
</html>
```

## Q14. Why use DOCTYPE?

Tells the browser to use HTML5 standards mode.

## Q15. Difference between head and body?

-   head: Metadata.
-   body: Visible content.

## Q16. Tag vs Element

Tag: `<p>` Element: `<p>Hello</p>`

## Q17. What are attributes?

Extra information for an element. Example:

``` html
<img src="image.jpg" alt="Image">
```

## Q18. id vs class

-   id: Unique.
-   class: Reusable.

## Q19. Block vs Inline Elements

Block: div, p, h1 Inline: span, a, strong

## Q20. Void Elements

img, br, hr, input, meta, link.

# 3. Forms

## Q21. GET vs POST

GET sends data in URL. POST sends data in request body.

## Q22. Why use label?

Improves accessibility and focuses the related input.

## Q23. Radio vs Checkbox

Radio = one choice. Checkbox = multiple choices.

## Q24. button vs input type="button"

button supports HTML inside. input does not.

## Q25. required vs placeholder

required = mandatory. placeholder = hint text.

## Q26. name vs id

name is sent with form data. id uniquely identifies an element.

# 4. Semantic HTML

## Q27. What are semantic tags?

Tags that describe their purpose. Examples: header, nav, main, section,
article, footer.

## Q28. Why use semantic HTML?

Better SEO, accessibility, readability, and maintenance.

## Q29. div vs section

div is generic. section represents a meaningful section.

# 5. Media

## Q30. audio vs video

audio plays sound. video plays sound and visuals.

## Q31. What is iframe?

Embeds another webpage inside the current page.

# 6. SEO

## Q32. What is SEO?

Improving a website so search engines can rank it better.

## Q33. SEO-friendly HTML

title, meta description, headings, semantic tags, alt attributes.

## Q34. Why is alt important?

Accessibility, fallback text, SEO.

# 7. Accessibility & ARIA

## Q35. What is Accessibility?

Making websites usable for everyone.

## Q36. What is ARIA?

Accessible Rich Internet Applications. Example:

``` html
<button aria-label="Close">X</button>
```

# 8. Browser Rendering

## Q37. Rendering Steps

1.  Parse HTML
2.  Build DOM
3.  Parse CSS
4.  Build CSSOM
5.  Render Tree
6.  Layout
7.  Paint

## Q38. Why does CSS block rendering?

Browser needs styles before painting.

## Q39. Why use defer?

Downloads JS while parsing HTML and executes after HTML parsing
finishes.

## Q40. Script in head vs end of body

Head blocks parsing unless defer/async is used. End of body lets HTML
load first.

# 9. Performance

## Q41. Improve HTML Performance

-   Lazy loading
-   Optimize images
-   Minify HTML
-   Use defer
-   Semantic HTML

## Q42. Lazy Loading

``` html
<img loading="lazy">
```

# 10. Coding Questions

## Q43. Create a Link

``` html
<a href="https://google.com">Google</a>
```

## Q44. Create a Table

``` html
<table border="1">
<tr><th>Name</th><th>Age</th></tr>
<tr><td>Ahsan</td><td>23</td></tr>
</table>
```

## Q45. Create a Form

``` html
<form>
<input type="text">
<input type="email">
<button>Submit</button>
</form>
```

## Q46. Semantic Layout

``` html
<header></header>
<nav></nav>
<main>
<section>
<article></article>
</section>
</main>
<footer></footer>
```

# 11. Tricky Questions

## Q47. Why is HTML called a markup language?

Because it marks up and structures content.

## Q48. Can HTML create dynamic websites?

No. JavaScript and backend technologies provide dynamic behavior.

## Q49. Multiple h1 tags?

Allowed in HTML5, but generally use one primary h1 for better SEO and
clarity.

## Q50. Difference between strong and b?

strong has semantic importance. b is only visual bold.

## Q51. Difference between em and i?

em adds emphasis. i is only visual italic.

## Q52. Absolute vs Relative Path

Absolute includes the full URL. Relative refers to a local project path.

# 12. HR Questions

## Why should we hire you?

I have a strong understanding of HTML fundamentals, semantic HTML,
accessibility, SEO basics, and browser rendering. I write clean,
maintainable code and enjoy continuously learning new web technologies.

# 13. Final HTML Interview Checklist

-   HTML Structure
-   DOCTYPE
-   Head vs Body
-   Tags & Elements
-   Attributes
-   Lists
-   Tables
-   Forms
-   Semantic HTML
-   Audio & Video
-   iframe
-   SEO
-   Meta Tags
-   Accessibility
-   ARIA
-   Browser Rendering
-   defer
-   Performance Optimization
-   Lazy Loading
-   Block vs Inline
-   id vs class
-   GET vs POST
-   name vs id
-   HTML Entities
-   Void Elements
-   Global Attributes
-   Relative vs Absolute Paths
-   Comments
-   UTF-8

**Congratulations!** If you can confidently answer these questions, you
are well prepared for most HTML interviews for internships, freshers,
and junior web developer roles.
