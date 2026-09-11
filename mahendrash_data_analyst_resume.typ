#set document(title: "Mahendra Hongunti - Resume", author: "Mahendra Hongunti")
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
  #text(size: 16pt, weight: "bold")[MAHENDRA HONGUNTI]\
  #v(2pt)
  #text(size: 11pt, weight: "bold", fill: primary-color)[Data Analyst | Software Engineer | SQL | Power BI | Java | Spring Boot]\
  #v(2pt)
  #text(size: 9.5pt)[
    Hyderabad, India | +91-9180165234 | #link("mailto:maahi2001sh@gmail.com")[maahi2001sh\@gmail.com] | #link("https://github.com/MahendraSH")[GitHub]
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
  [*Data Analyst & Software Engineer* with 3+ years of experience in data analysis, business intelligence, full-stack applications, and enterprise software development.],
  [Experienced in extracting, transforming, and validating large operational datasets, developing KPI-driven dashboards, and optimizing database performance.],
  [Strong technical stack including *SQL, PostgreSQL, Power BI, Python, Java 21, Spring Boot, React, and AWS*.],
  [Hands-on experience across the complete data lifecycle, including data extraction, KPI development, interactive reporting, Root Cause Analysis (RCA), and translating business requirements into data-driven solutions.]
)

// Technical Skills
#section("Technical Skills")
#grid(
  columns: (1.5fr, 5fr),
  gutter: 6pt,
  [*Data Analytics & BI:*], [Power BI, DAX, Power Query, Advanced Excel, KPI Development, EDA, Root Cause Analysis, Business Reporting],
  [*Languages & Specs:*], [SQL, Python, Java 21, JavaScript (ES6+), TypeScript, HTML5, CSS3],
  [*Databases:*], [PostgreSQL, MySQL, SQL Query Optimization, Complex Joins, CTEs, Window Functions, Aggregations],
  [*Backend & Cloud:*], [Spring Boot, Microservices, REST APIs, Apache Kafka, AWS (EC2, S3, SNS, SQS), Docker, CI/CD],
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
  [Analyzed operational datasets containing *50K+ active bookings daily* to identify trends, process bottlenecks, and operational patterns.],
  [Developed interactive *Power BI dashboards and reports* for monitoring operational KPIs, booking readiness, processing volumes, and exceptions.],
  [Formulated complex *SQL queries (CTEs, joins, window functions)* in PostgreSQL to extract, aggregate, and validate data for analytical reporting.],
  [Investigated data inconsistencies and performed Root Cause Analysis (RCA) to improve data quality and reporting reliability.],
  [Architected enterprise backend services using *Java 21, Spring Boot, REST APIs*, and integrated Kafka and AWS for event-driven workflows.],
  [Optimized PostgreSQL queries and backend data-access operations, contributing to a *20% improvement in API response times*.]
)
#v(6pt)

#item(
  "Independent Software Development",
  "Jun 2023 – Jun 2024",
  "Mysore, India",
  subtitle: "Freelance Full-Stack Developer"
)
#list(
  [Designed database schemas and developed complex *SQL queries* for application reporting, filtering, aggregation, and analytics.],
  [Built SaaS applications with user activity tracking, business metrics, and analytics dashboards using React, Node.js, and PostgreSQL.],
  [Developed data-driven interfaces and data visualizations using React, Recharts, Material UI, and Tailwind CSS.]
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
  [Developed analytical views and KPI reporting for monitoring operational performance, exceptions, and verification status.],
  [Used PostgreSQL and SQL analysis to support reporting, data validation, and actionable operational insights.],
  [Automated verification of *50K+ daily bookings* using Spring Batch and orchestrated workflows via Camunda BPM.]
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

// Education
#section("Education")
#item(
  "National Institute of Engineering (NIE)",
  "Graduated May 2024",
  "Mysore, India",
  subtitle: "Bachelor of Technology (B.Tech) in Computer Science & Engineering"
)
#text(style: "italic")[CGPA: 7.3 / 10 | Relevant Coursework: Data Structures & Algorithms, Database Systems, DBMS, Software Engineering, Object-Oriented Design]
