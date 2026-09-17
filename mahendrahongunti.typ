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

#let primary-color = rgb("#000000") // Professional blue

// Header
#align(center)[
  #text(size: 16pt, weight: "bold")[MAHENDRA HONGUNTI]\
  #v(2pt)
  #text(size: 11pt, weight: "bold", fill: primary-color)[Full-Stack Software Engineer | Java, Spring Boot & React Ecosystems]\
  #v(2pt)
  #text(size: 9.5pt)[
    Hyderabad, India | +91-9180165234 | #link("mailto:maahi2001sh@gmail.com")[maahi2001sh\@gmail.com] | #link("https://github.com/MahendraSH")[GitHub] | #text(weight: "bold")[Immediate Joiner]
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
  [Full-Stack Software Engineer with *3+ years of combined professional and enterprise experience* building scalable microservices and responsive web applications using *Java 21, Spring Boot, React, PostgreSQL*, and *AWS*.],
  [Skilled in event-driven architectures, *Spring Batch* processing, workflow automation with *Camunda BPM*, cloud infrastructure (*AWS SQS/SNS/S3*), database optimization, *Docker*, and *CI/CD* pipelines.],
  [Full-stack proficiency across *React, Next.js, TypeScript, Node.js*, responsive dashboards, secure *REST APIs*, and multi-tenant *SaaS* platforms.]
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
  [*DevOps, QA & Tools:*], [Docker, CI/CD Pipelines, JUnit, Mockito, Git, GitHub, Code Reviews, RCA, Agile/Scrum, Kanban]
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
  [Architected microservices with *Java 21, Spring Boot*, and *OpenAPI* for *CMA CGM* container readiness workflows, integrating *AWS SQS, SNS, S3*, and *Camunda BPM* to automate decision pipelines and cut manual verification overhead by *35%*.],
  [Built high-throughput *Spring Batch* jobs to automate validation checks, processing *50,000+ daily booking events*.],
  [Engineered responsive operations dashboards using *React, TanStack Table v8*, and *React Query*, backed by tuned *PostgreSQL* queries that dropped API latency by *20%*.],
  [Enforced testing and delivery standards with *JUnit, Mockito, Docker*, and automated *CI/CD* pipelines.]
)
#v(6pt)

#item(
  "Independent Software Development",
  "Jun 2023 – Jun 2024",
  "Mysore, India",
  subtitle: "Freelance Frontend & MERN Developer"
)
#list(
  [Delivered *6+ custom production web applications* (e-commerce, SaaS tools, analytics portals) using the *MERN stack, Next.js*, and *PostgreSQL/MySQL*.],
  [Implemented type-safe data pipelines and modular UI architectures using *TypeScript, TanStack Table/Query, Zod*, and *Tailwind CSS*.]
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

#project("Cargo Readiness — CMA CGM", "Java 21, Spring Boot, Kafka, AWS, Camunda, Spring Batch, React, PostgreSQL")
#list(
  [End-to-end event-driven microservices for container readiness; automated *50k+* daily booking validations and delivered operational *React* dashboards.]
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

#project("SpendOptima", "Next.js, React, Tailwind CSS, Recharts, TypeScript")
#list(
  [Built a responsive personal finance and expense-optimization dashboard featuring interactive budget analytics and SEO-focused frontend templates.]
)
#v(6pt)

#project("Shadcn UI Form & Table Generators", "Astro, React, TypeScript, TanStack Table v8, Shadcn UI, Zod")
#list(
  [Built schema generators from JSON/OpenAPI specifications that scaffold typed *Shadcn UI* form schemas and *TanStack Table v8* components, reducing frontend boilerplate setup time by *80%*.]
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
  "",
  subtitle: "B.Tech in Computer Science & Engineering"
)
#text(style: "italic")[CGPA: 7.3 / 10 | Relevant Coursework: Data Structures & Algorithms, Database Systems, Software Engineering, DBMS, Object-Oriented Design — Mysore, India]
