#set document(title: "Mahendra S H - Data Analyst Resume", author: "Mahendra S H")
#set page(
  paper: "a4",
  margin: (x: 0.5in, y: 0.5in)
)
#set text(
  font: ("Arial", "Helvetica"),
  size: 10pt,
  fill: rgb("#000000")
)

#let primary-color = rgb("#000000")

// Header
#align(center)[
  #text(size: 16pt, weight: "bold")[MAHENDRA S H]\
  #v(2pt)
  #text(size: 11pt, weight: "bold", fill: primary-color)[Data Analyst & Software Engineer | SQL, Power BI & Python Ecosystems]\
  #v(2pt)
  #text(size: 9.5pt)[
    Hyderabad, India | +91-7892041114 | #link("mailto:mahendrashongunti@gmail.com")[mahendrashongunti\@gmail.com] | #link("https://mahendrash.vercel.app")[Portfolio] | #link("https://linkedin.com/in/mahendra-s-h-14a74721a")[LinkedIn] | #link("https://github.com/MahendraSH")[GitHub] | #text(weight: "bold")[Immediate Joiner]
  ]
]

#let section(title) = {
  v(8pt, weak: true)
  text(size: 11pt, weight: "bold", fill: primary-color)[#upper(title)]
  v(-8pt)
  line(length: 100%, stroke: 0.5pt + rgb("#000000"))
  v(2pt, weak: true)
}

#let item(title, date, location, subtitle: none) = {
  [
    #text(weight: "bold")[#title]
    #if subtitle != none [
       --- #text(weight: "bold")[#subtitle]
    ]
    #if date != none and date != "" [
       | #date
    ]
    #if location != none and location != "" [
       | #location
    ]
  ]
  v(2pt)
}

#let project(title, tech) = {
  [
    #text(weight: "bold")[#title]
    #if tech != none and tech != "" [
       --- #tech
    ]
  ]
  v(2pt)
}

// Professional Summary
#section("Professional Summary")
#list(
  [Data Analyst & Software Engineer with *3+ years of combined professional and enterprise experience* in data analysis, business intelligence, and full-stack application development.],
  [Skilled in extracting, transforming, and validating large operational datasets (*50K+ daily records*), developing KPI-driven *Power BI* dashboards, and optimizing *PostgreSQL* performance.],
  [Strong technical stack spanning *SQL, Python (Pandas, NumPy), Power BI (DAX, Power Query), Java 21, Spring Boot, React*, and *AWS* cloud services.]
)

// Technical Skills
#section("Technical Skills")
#grid(
  columns: (1.5fr, 5fr),
  gutter: 6pt,
  [*Data Analytics & BI:*], [Power BI, DAX, Power Query, Advanced Excel, KPI Development, EDA, Root Cause Analysis, Business Reporting],
  [*Languages & Specs:*], [SQL, Python, Java 21, JavaScript (ES6+), TypeScript, HTML5, CSS3],
  [*Databases:*], [PostgreSQL, MySQL, SQL Query Optimization, Complex Joins, CTEs, Window Functions, Aggregations],
  [*Backend & Cloud:*], [Django, Flask, FastAPI, Spring Boot, Node.js, Express.js, Microservices, REST APIs, Apache Kafka, AWS (EC2, S3, SNS, SQS), Docker, CI/CD],
  [*Frontend & Python:*], [React.js, Next.js, Tailwind CSS, Pandas, NumPy, Matplotlib, Jupyter Notebook]
)

// Work Experience
#section("Work Experience")

#item(
  "Infosys",
  "Jul 2024 – Jun 2026",
  "Hyderabad, India",
  subtitle: "Specialist Programmer / Data Analyst & Software Developer"
)
#list(
  [Analyzed operational datasets containing *50K+ active bookings daily* for *CMA CGM*, identifying trends, process bottlenecks, and operational patterns using complex *SQL (CTEs, joins, window functions)* in PostgreSQL.],
  [Developed interactive *Power BI dashboards and reports* for monitoring operational KPIs, booking readiness, processing volumes, and exceptions, improving decision-making efficiency.],
  [Investigated data inconsistencies and performed *Root Cause Analysis (RCA)* to improve data quality and reporting reliability.],
  [Optimized *PostgreSQL* queries and backend data-access operations, contributing to a *20% improvement in API response times*.]
)
#v(6pt)

#item(
  "Independent Software Development",
  "Jun 2023 – Jun 2024",
  "Mysore, India",
  subtitle: "Freelance Full-Stack Developer"
)
#list(
  [Designed database schemas and developed complex *SQL queries* for application reporting, filtering, aggregation, and analytics across *6+ production applications*.],
  [Built data-driven *SaaS applications* with user activity tracking, business metrics, and analytics dashboards using *React, Node.js*, and *PostgreSQL*.]
)
#v(6pt)

#item(
  "Merav Infotech",
  "Feb 2024 – May 2024",
  "Mysore, India",
  subtitle: "Software Engineering Intern"
)
#list(
  [Developed reusable React.js components and integrated RESTful APIs for web applications, improving initial load times by *15%* via lazy loading.]
)

// Selected Projects
#section("Selected Projects")

#project("Cargo Readiness — CMA CGM", "SQL, PostgreSQL, Power BI, Java 21, Spring Boot, Kafka")
#list(
  [Developed KPI reporting and analytical views for operational performance; automated verification of *50K+ daily bookings* using Spring Batch and Camunda BPM.]
)
#v(6pt)

#project("SpendOptima — Personal Finance Analytics Dashboard", "React, TypeScript, Next.js, Recharts")
#list(
  [Built an interactive personal finance dashboard featuring KPI cards, spending breakdowns, budget analytics, and trend visualizations.],
  [Implemented interactive charts for analyzing income, expenses, categories, and spending behavior to provide actionable financial insights.]
)
#v(6pt)

#project("SaaS Form Builder & Analytics Platform", "PostgreSQL, Express, React, Node.js, AWS")
#list(
  [Built a no-code SaaS form builder with integrated analytics tracking for form usage, submissions, and user activity.],
  [Developed secure REST APIs and PostgreSQL data models, deploying embeddable scripts used across *20+ client websites*.]
)
#v(6pt)

#project("E-Commerce REST API Platform", "Python, Django, Flask, FastAPI, PostgreSQL, Node.js, Express.js")
#list(
  [Architected and developed a scalable e-commerce REST API with *Django REST Framework*, featuring product catalog, cart, order management, and user authentication.],
  [Built a lightweight microservice layer using *Flask* for payment webhooks and *FastAPI* async endpoints achieving *sub-50ms* response times.],
  [Implemented a *Node.js/Express.js* API gateway for routing, rate limiting, and request aggregation across backend services.]
)
// Certifications
#section("Certifications")
#list(
  [*Data Analyst Associate* — DataCamp _(Credential ID: DAA0011831242181 | Issued Sep 2026)_],
  [*PostgreSQL & Advanced SQL Specialization* — DataCamp _(Joining Data & Manipulating Data in PostgreSQL | Issued Sep 2026)_]
)

// Education
#section("Education")
#item(
  "National Institute of Engineering (NIE)",
  "Graduated May 2024",
  "Mysore, India",
  subtitle: "Bachelor of Technology (B.Tech) in Computer Science & Engineering"
)
#text(style: "italic")[CGPA: 7.3 / 10 | Relevant Coursework: Data Structures & Algorithms, Database Systems, DBMS, Software Engineering, Object-Oriented Design]
