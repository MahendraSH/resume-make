#set page(
  paper: "a4",
  margin: (x: 0.9cm, top: 0.5cm, bottom: 0.5cm),
)

#set text(
  font: ("Helvetica Neue", "Helvetica", "Arial"),
  size: 8.0pt,
  fill: rgb("#111827"), // Soft black / Gray 900
)

#set par(leading: 0.72em)
#set list(marker: ([•],), spacing: 1.8pt)
#show heading: set text(fill: rgb("#000000")) // Slate 900

// Modern section style with a clean bottom stroke
#let section(title) = {
  v(1.0pt)
  block(width: 100%, stroke: (bottom: 0.8pt + rgb("#cbd5e1")), inset: (bottom: 2.5pt))[
    #text(size: 8.0pt, weight: "bold", fill: rgb("#0369a1"))[#title] // Sky 700
  ]
  v(0.5pt)
}

#let work-item-header(company, location, date, role) = {
  text(weight: "bold", size: 8.5pt)[#company] + [ --- ] + text(weight: "bold", size: 8.5pt)[#role] + [ | ] + text(size: 8.5pt)[#date | #location]
  v(2pt)
}

#let project-item(title, tech, date) = {
  text(weight: "bold", size: 8.5pt)[#title] + if tech != "" [ --- #tech ] else []
  v(2pt)
}

// Header Section
#align(center)[
  #text(size: 8.0pt, weight: "bold", fill: rgb("#000000"))[MAHENDRA S H] \
  #v(-3.5pt)
  #text(size: 8.0pt, weight: "bold", fill: rgb("#0369a1"))[Java Cloud Full-Stack Engineer | Java | Spring Boot | React | Microservices | AWS] \
  #v(1.0pt)
  #text(size: 8.0pt, fill: rgb("#000000"))[
    Hyderabad, India | +91-7892041114 | #link("mailto:mahendrashongunti@gmail.com")[mahendrashongunti\@gmail.com] | #link("https://mahendrash.vercel.app")[mahendrash.vercel.app] | #link("https://www.LinkedIn/")[LinkedIn] | #link("https://GitHub")[GitHub]
  ]
]

#v(-8.0pt)

// Profile Summary Section
#section("Professional Summary")
#v(-2.5pt)
- *Java Cloud Full-Stack Engineer / Specialist Programmer* with 3 years of enterprise software experience, plus hands-on full-stack development, using *Java 21, Spring Boot, React, microservices, REST APIs, PostgreSQL, and AWS*.
- Experienced across backend engineering, event-driven systems, asynchronous messaging, *Spring Batch* processing, workflow automation, cloud infrastructure, database optimization, testing, *Docker*, and *CI/CD* quality practices.
- Full-stack experience with *React, Next.js, TypeScript, Node.js*, responsive dashboards, secure authentication, *REST* integrations, and scalable SaaS applications.
- Familiar with integrating Generative AI, Retrieval-Augmented Generation (RAG), and Agentic AI workflows into enterprise software architectures.

// Technical Skills Section
#section("Technical Skills")
#v(-2.5pt)
#grid(
  columns: (115pt, 1fr),
  row-gutter: 3.0pt,
  column-gutter: 8pt,
  [*Languages & Specs:*], [Java 21, JavaScript (ES6+), TypeScript, SQL, OpenAPI, RESTful APIs, HTML5, CSS3],
  [*Backend:*], [Spring Boot, Microservices Architecture, Spring Batch, Camunda BPM, Apache Camel, Node.js, Express.js, REST APIs],
  [*Messaging & Cloud:*], [Apache Kafka, AWS EC2, S3, SNS, SQS, API Management],
  [*Frontend:*], [React.js, Next.js, Redux, React Query, TanStack Table v8, Tailwind CSS, Shadcn UI],
  [*Databases & ORM:*], [PostgreSQL, MySQL, MongoDB, Prisma ORM, SQL query optimization & indexing],
  [*DevOps, QA & Tools:*], [Docker, CI/CD Pipelines, JUnit, Mockito, Git, GitHub, Code Reviews, RCA, Agile/Scrum, Kanban],
  [*Security:*], [SSL/TLS, Secure Authentication, Data Privacy],
  [*AI & Agentic Tech:*], [Generative AI, Retrieval-Augmented Generation (RAG), Agentic AI, LLM API Integration]
)

// Work Experience Section
#section("Work Experience")

#work-item-header("Infosys", "Hyderabad, India", "Jul 2024 – Jun 2026", "Specialist Programmer / Software Developer")
#v(1pt)
- Architected and engineered enterprise *microservices* using *Java 21, Spring Boot, RESTful APIs*, and *OpenAPI* for event-driven container readiness workflows.
- Orchestrated complex, multi-step asynchronous microservices using *Camunda BPM* as a stateful workflow engine, integrating *Apache Kafka* and *AWS SNS/SQS/S3* to reduce verification overhead by *35%*.
- Used *Spring Batch* to automate high-throughput end-date verification and backend checks, processing *50k+ active bookings* daily.
- Developed responsive *React* dashboards using *React Query* and *TanStack Table*, improving operational decision-making efficiency.
- Optimized *PostgreSQL* queries, reducing REST API response times by *20%* and improving system throughput.
- Developed automated unit/integration tests with *JUnit* and *Mockito*; performed code reviews and Root Cause Analysis (RCA) while following *CI/CD* quality gates and *Docker* deployment practices.
- Integrated AI coding assistants (GitHub Copilot, Claude, Antigravity) into daily development workflows, accelerating unit test generation, routine boilerplate scaffolding, and legacy code refactoring.
- Participated across planning, design, implementation, deployment, and maintenance within the enterprise SDLC; worked with secure authentication and *SSL/TLS* standards.

#v(2.0pt)
#work-item-header("Independent Software Development", "Mysore, India", "Jun 2023 – Jun 2024", "Freelance Frontend & MERN Developer")
#v(1pt)
- Engineered responsive frontend applications and full-stack solutions using the *MERN stack (MongoDB, Express, React, Node.js)*, *Next.js*, and *MySQL*.
- Built tailored platforms using *TanStack, Zod, Material UI (MUI), Bootstrap, and React Hook Form*, including dashboards, admin panels, shirt e-commerce stores, cloud note portals, sci-fi research publications, blogs, and B2B/B2C websites.

#v(2.0pt)
#work-item-header("Merav Infotech", "Mysore, India", "Feb 2024 – May 2024", "Software Engineering Intern")
#v(1pt)
- Developed reusable *React.js* UI components and integrated *RESTful APIs*, reducing initial page load times by *15%* via lazy loading and code splitting.
- Participated in *Agile* sprint planning, daily standups, code reviews, and cross-functional software delivery.

// Projects Section
#section("Selected Projects")

#project-item("Cargo Readiness — CMA CGM Project", "Java 21, Spring Boot, Microservices, Kafka, AWS SNS/SQS/S3, Camunda, Spring Batch, React, PostgreSQL", "")
#v(-3.0pt)
- Engineered stateful microservice orchestration using *Camunda BPM* for container readiness assessment, executing *50k+* daily automated checks.

#v(2.0pt)
#project-item("ProjectX — Generative AI Shirt Studio", "Next.js, React, TypeScript, Node.js, AWS S3, Tailwind CSS", "")
#v(-3.0pt)
- Built a full-stack application for AI-generated shirt designs; implemented asynchronous polling/WebSocket workflows and optimized *AWS S3* asset storage.

#v(2.0pt)
#project-item("SaaS Form Builder Platform", "Next.js, React, Node.js, Express, PostgreSQL, AWS", "")
#v(-3.0pt)
- Built a *no-code* SaaS form builder with drag-and-drop creation, secure *REST APIs*, analytics tracking, and embeddable scripts used across *20+ client sites*.

#v(2.0pt)
#project-item("Shadcn UI Form & Table Generators", "Astro, React, TypeScript, TanStack Table v8, Shadcn UI, Zod", "")
#v(-3.0pt)
- Built schema generators from JSON/OpenAPI specifications that scaffold typed *Shadcn UI* form schemas and *TanStack Table v8* components, reducing frontend boilerplate setup time by *80%*.

// Education Section
#section("Education")
#v(-2.5pt)
#grid(
  columns: (1fr, auto),
  rows: (auto),
  text(weight: "bold", size: 8.5pt)[National Institute of Engineering (NIE)] + [ --- Bachelor of Technology (B.Tech) in Computer Science & Engineering],
  text(weight: "bold", fill: rgb("#334155"))[Graduated May 2024],
)
#v(-4pt)
#grid(
  columns: (1fr, auto),
  rows: (auto),
  text(style: "italic", fill: rgb("#000000"))[CGPA: 7.3 / 10 | Relevant Coursework: Data Structures & Algorithms, Database Systems, Software Engineering, DBMS, Object-Oriented Design],
  text(style: "italic", fill: rgb("#000000"))[Mysore, India]
)
