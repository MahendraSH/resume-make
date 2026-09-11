#set document(title: "Mahendra S H - Resume", author: "Mahendra S H")
#set page(
  paper: "a4",
  margin: (x: 0.5in, y: 0.5in)
)
#set text(
  font: ("Arial", "Helvetica"),
  size: 10pt,
  fill: rgb("#000000")
)

#let primary-color = rgb("#000000") // Professional blue

// Header
#align(center)[
  #text(size: 16pt, weight: "bold")[MAHENDRA S H]\
  #v(2pt)
  #text(size: 11pt, weight: "bold", fill: primary-color)[Java Cloud Full-Stack Engineer | Java | Spring Boot | React | Microservices | AWS]\
  #v(2pt)
  #text(size: 9.5pt)[
    Hyderabad, India | +91-7892041114 | #link("mailto:mahendrashongunti@gmail.com")[mahendrashongunti\@gmail.com] | #link("https://mahendrash.vercel.app")[mahendrash.vercel.app] | #link("https://LinkedIn")[LinkedIn] | #link("https://GitHub")[GitHub]
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
  [*Java Cloud Full-Stack Engineer / Specialist Programmer* with 3+ years of enterprise software experience, plus hands-on full-stack development, using *Java 21, Spring Boot, React, microservices, REST APIs, PostgreSQL, and AWS*.],
  [Experienced across backend engineering, event-driven systems, asynchronous messaging, *Spring Batch* processing, workflow automation, cloud infrastructure, database optimization, testing, *Docker*, and *CI/CD* quality practices.],
  [Full-stack experience with *React, Next.js, TypeScript, Node.js*, responsive dashboards, secure authentication, *REST* integrations, and scalable SaaS applications.]
)

// Technical Skills
#section("Technical Skills")
#grid(
  columns: (1.2fr, 5fr),
  gutter: 6pt,
  [*Languages & Specs:*], [Java 21, JavaScript (ES6+), TypeScript, SQL, OpenAPI, RESTful APIs, HTML5, CSS3],
  [*Backend:*], [Spring Boot, Microservices Architecture, Spring Batch, Camunda BPM, Apache Camel, Node.js, Express.js, REST APIs],
  [*Messaging & Cloud:*], [Apache Kafka, AWS EC2, S3, SNS, SQS, API Management],
  [*Frontend:*], [React.js, Next.js, Redux, React Query, TanStack Table v8, Tailwind CSS, Shadcn UI],
  [*Databases & ORM:*], [PostgreSQL, MySQL, MongoDB, Prisma ORM, SQL query optimization & indexing],
  [*DevOps, QA & Tools:*], [Docker, CI/CD Pipelines, JUnit, Mockito, Git, GitHub, Code Reviews, RCA, Agile/Scrum, Kanban],
  [*Security:*], [SSL/TLS, Secure Authentication, Data Privacy]
)

// Work Experience
#section("Work Experience")

#item(
  "Infosys",
  "Jul 2024 – Jun 2026",
  "Hyderabad, India",
  subtitle: "Specialist Programmer / Software Developer"
)
#list(
  [Architected and engineered enterprise *microservices* using *Java 21, Spring Boot, RESTful APIs*, and *OpenAPI* for event-driven container readiness workflows.],
  [Integrated *Apache Kafka, AWS SNS, AWS SQS, AWS S3*, and *Camunda BPM* for event-driven messaging, queue orchestration, and workflow automation, reducing manual verification overhead by *35%*.],
  [Used *Spring Batch* to automate high-throughput end-date verification and backend checks, processing *50k+ active bookings* daily.],
  [Developed responsive *React* dashboards using *React Query* and *TanStack Table*, improving operational decision-making efficiency.],
  [Optimized *PostgreSQL* queries, reducing REST API response times by *20%* and improving system throughput.],
  [Developed automated unit/integration tests with *JUnit* and *Mockito*; performed code reviews and Root Cause Analysis (RCA) while following *CI/CD* quality gates and *Docker* deployment practices.],
  [Participated across planning, design, implementation, deployment, and maintenance within the enterprise SDLC; worked with secure authentication and *SSL/TLS* standards.]
)
#v(6pt)

#item(
  "Independent Software Development",
  "Jun 2023 – Jun 2024",
  "Mysore, India",
  subtitle: "Freelance Frontend & MERN Developer"
)
#list(
  [Engineered responsive frontend applications and full-stack solutions using the *MERN stack (MongoDB, Express, React, Node.js), Next.js*, and *MySQL*.],
  [Built tailored platforms using *TanStack, Zod, Material UI (MUI), Bootstrap*, and *React Hook Form*, including dashboards, admin panels, shirt e-commerce stores, cloud note portals, sci-fi research publications, blogs, and B2B/B2C websites.]
)
#v(6pt)

#item(
  "Merav Infotech",
  "Feb 2024 – May 2024",
  "Mysore, India",
  subtitle: "Software Engineering Intern"
)
#list(
  [Developed reusable *React.js* UI components and integrated *RESTful APIs*, reducing initial page load times by *15%* via lazy loading and code splitting.],
  [Participated in *Agile* sprint planning, daily standups, code reviews, and cross-functional software delivery.]
)

// Selected Projects
#section("Selected Projects")

#project("Cargo Readiness — CMA CGM Project", "Java 21, Spring Boot, Microservices, Kafka, AWS SNS/SQS/S3, Camunda, Spring Batch, React, PostgreSQL")
#list(
  [Built event-driven backend workflows for container readiness assessment; automated *50k+* daily booking checks and delivered *React* operational dashboards.]
)
#v(6pt)

#project("ProjectX — Generative AI Shirt Studio", "Next.js, React, TypeScript, Node.js, AWS S3, Tailwind CSS")
#list(
  [Built a full-stack application for AI-generated shirt designs; implemented asynchronous polling/WebSocket workflows and optimized *AWS S3* asset storage.]
)
#v(6pt)

#project("SaaS Form Builder Platform", "Next.js, React, Node.js, Express, PostgreSQL, AWS")
#list(
  [Built a *no-code* SaaS form builder with drag-and-drop creation, secure *REST APIs*, analytics tracking, and embeddable scripts used across *20+ client sites*.]
)
#v(6pt)

#project("E-Commerce Platform", "Next.js, React, Tailwind CSS, Shadcn UI, Prisma ORM, MySQL, AWS S3")
#list(
  [Built a full-stack e-commerce platform with admin product/catalog management, customer order processing, scalable *REST APIs*, and *AWS S3* media storage.]
)
#v(6pt)

#project("SpendOptima", "Next.js, React, Tailwind CSS, Recharts, TypeScript")
#list(
  [Built a responsive personal finance and expense-optimization dashboard featuring interactive budget analytics and SEO-focused frontend templates.]
)
#v(6pt)

#project("Shadcn UI Form & Table Generators", "Astro, React, TypeScript, TanStack Table v8, Shadcn UI, Zod")
#list(
  [Built schema generators from JSON/OpenAPI specifications that scaffold typed *Shadcn UI* form schemas and *TanStack Table v8* components, reducing frontend boilerplate setup time by *80%*.]
)

// Education
#section("Education")
#item(
  "National Institute of Engineering (NIE)",
  "Graduated May 2024",
  "",
  subtitle: "B.Tech in Computer Science & Engineering"
)
#text(style: "italic")[CGPA: 7.3 / 10 | Relevant Coursework: Data Structures & Algorithms, Database Systems, Software Engineering, DBMS, Object-Oriented Design — Mysore, India]
