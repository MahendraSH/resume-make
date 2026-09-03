#set page(
  paper: "a4",
  margin: (x: 0.9cm, top: 0.5cm, bottom: 0.5cm),
)

#set text(
  font: ("Helvetica Neue", "Helvetica", "Arial"),
  size: 8.0pt,
  fill: rgb("#111827"), // Soft black / Gray 900
)

#set par(leading: 0.65em)
#set list(marker: ([•],), spacing: 3.2pt)
#show heading: set text(fill: rgb("#0f172a")) // Slate 900
#show strong: it => text(weight: "medium", style: "italic", fill: rgb("#0369a1"))[#it.body]

// Modern section style with a clean bottom stroke
#let section(title) = {
  v(1.0pt)
  block(width: 100%, stroke: (bottom: 0.8pt + rgb("#cbd5e1")), inset: (bottom: 2.5pt))[
    #text(size: 9.2pt, weight: "bold", fill: rgb("#0369a1"))[#title] // Sky 700
  ]
  v(0.5pt)
}

#let work-item-header(company, location, date, role) = {
  grid(
    columns: (1fr, auto),
    rows: (auto),
    text(weight: "bold", size: 8.5pt, fill: rgb("#0f172a"))[#company] + [ --- ] + text(weight: "medium", style: "italic", fill: rgb("#334155"))[#role],
    text(weight: "bold", fill: rgb("#475569"))[#date]
  )
  v(-4pt)
  grid(
    columns: (1fr, auto),
    text(style: "italic", fill: rgb("#475569"), size: 7.8pt)[#location],
    []
  )
}

#let project-item(title, tech, date) = {
  grid(
    columns: (1fr, auto),
    text(weight: "bold", size: 8.0pt, fill: rgb("#0f172a"))[#title] + if tech != "" [ #text(weight: "medium", size: 8.0pt, fill: rgb("#0369a1"))[ • #tech] ] else [],
    text(weight: "bold", fill: rgb("#475569"))[#date]
  )
}

// Header Section
#align(center)[
  #text(size: 8.0pt, weight: "bold", fill: rgb("#0f172a"))[Mahendra S H] \
  #v(-3.5pt)
  #text(size: 9.2pt, weight: "bold", fill: rgb("#0369a1"))[Java Cloud Full-Stack & LLMOps Engineer | Java | Spring Boot | React | Python | AWS] \
  #v(1.0pt)
  #text(size: 8.0pt, fill: rgb("#475569"))[
    Hyderabad, India | +91-7892041114 | #link("mailto:mahendrashongunti@gmail.com")[mahendrashongunti\@gmail.com] | #link("https://mahendrash.vercel.app")[mahendrash.vercel.app] \
    #link("https://www.linkedin.com/in/mahendra-s-h-14a74721a/")[linkedin.com/in/mahendra-s-h-14a74721a] | #link("https://github.com/MahendraSH")[github.com/MahendraSH]
  ]
]

#v(-8.0pt)

// Profile Summary Section
#section("Professional Summary")
#v(-2.5pt)
Cloud Full-Stack and LLMOps Engineer with 3+ years of enterprise software experience across Java 21, Spring Boot, React, Python, and AWS. Experienced in building scalable microservices and integrating LLM observability pipelines to monitor token economics, model latency, and cost trends. Skilled in Advanced SQL, root cause analysis (RCA), and building analytical Power BI dashboards to detect data anomalies and optimize AWS infrastructure efficiency.

// Technical Skills Section
#section("Technical Skills")
#v(-2.5pt)
#grid(
  columns: (115pt, 1fr),
  row-gutter: 4.5pt,
  column-gutter: 8pt,
  [*Languages & Specs:*], [Java 21, Python, Advanced SQL, JavaScript (ES6+), TypeScript, OpenAPI, RESTful APIs],
  [*LLMOps & Analytics:*], [Langfuse, Prompt Evaluation, Token Economics, F1/Accuracy Metrics, Power BI, Model Drift Tracking],
  [*Backend:*], [Spring Boot, Microservices Architecture, Spring Batch, Camunda BPM, Node.js, Express.js],
  [*Messaging & Cloud:*], [AWS EC2, S3, SNS, SQS, API Management, Cloud Cost Optimization],
  [*Frontend:*], [React.js, Next.js, Redux, React Query, TanStack Table v8, Tailwind CSS, Shadcn UI],
  [*Databases & ORM:*], [PostgreSQL, MySQL, MongoDB, Prisma ORM, SQL query optimization & indexing],
  [*DevOps, QA & Tools:*], [Docker, CI/CD Pipelines, JUnit, Mockito, Git, GitHub, Agile/Scrum]
)

// Work Experience Section
#section("Work Experience")

#work-item-header("Infosys", "Hyderabad, India", "Jul 2024 – Jun 2026", "Specialist Programmer / Software Developer")
#v(1pt)
- Architected enterprise *microservices* using *Java 21, Spring Boot*, and *RESTful APIs* for event-driven container readiness workflows.
- Utilized *Advanced SQL* and *Python* to detect data trends, process anomalies, and identify backend performance issues, reducing API response times by *20%*.
- Built analytical *Power BI* and *React* dashboards for tracking accuracy, system usage, and cost analytics to improve operational decision-making.
- Analyzed *AWS SNS, SQS*, and *S3* usage and cost data to identify optimization opportunities, maintaining high throughput for *50k+ daily transactions* while managing cloud expenditures.
- Performed root cause analysis (*RCA*) on system anomalies and tracked evaluation metrics across CI/CD deployments and backend pipelines.
- Integrated AWS services with *Camunda BPM* for queue orchestration, reducing manual verification overhead by *35%*.

#v(1.5pt)
#work-item-header("Independent Software Development", "Mysore, India", "Jun 2023 – Jun 2024", "Freelance Frontend & MERN Developer")
#v(1pt)
- Engineered responsive frontend applications and full-stack solutions using the *MERN stack (MongoDB, Express, React, Node.js)*, *Next.js*, and *MySQL*.
- Built tailored platforms using *TanStack, Zod, Material UI (MUI), Bootstrap, and React Hook Form*, including dashboards, admin panels, and e-commerce stores.
- Integrated *Power BI* analytics into client admin panels to visualize data trends, user engagement, and e-commerce metrics.

#v(1.5pt)
#work-item-header("Merav Infotech", "Mysore, India", "Feb 2024 – May 2024", "Software Engineering Intern")
#v(1pt)
- Developed reusable *React.js* UI components and integrated *RESTful APIs*, reducing initial page load times by *15%* via lazy loading and code splitting.
- Participated in *Agile* sprint planning, daily standups, code reviews, and cross-functional software delivery.

// Projects Section
#section("Selected Projects")

#project-item("ProjectX Generative AI Studio (LLMOps Focus)", "Next.js, TypeScript, Python, Langfuse, AWS S3", "")
#v(-3.0pt)
- Built a full-stack generative AI application. Implemented LLM observability using *Langfuse* to monitor model performance, token usage, latency, and cost trends. Analyzed LLM extraction outputs against user-validated design data to improve prompt accuracy and track drift/F1 metrics.

#v(1.5pt)
#project-item("Cargo Readiness — CMA CGM Project", "Java 21, Spring Boot, AWS SNS/SQS/S3, Camunda, Spring Batch, React, Power BI, PostgreSQL, Advanced SQL", "")
#v(-3.0pt)
- Built event-driven backend workflows for container readiness assessment; automated *50k+* daily booking checks and developed *Power BI* operational dashboards to monitor system usage, process accuracy, and data anomalies.

#v(1.5pt)
#project-item("SaaS Form Builder Platform", "Next.js, React, Node.js, Express, PostgreSQL, AWS", "")
#v(-3.0pt)
- Built a *no-code* SaaS form builder with drag-and-drop creation, secure *REST APIs*, analytics tracking, and embeddable scripts used across *20+ client sites*.

#v(1.5pt)
#project-item("SpendOptima", "Next.js, React, Tailwind CSS, Recharts, TypeScript", "")
#v(-3.0pt)
- Built a responsive personal finance and expense-optimization dashboard featuring interactive budget analytics and SEO-focused frontend templates.

#v(1.5pt)
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
  text(style: "italic", fill: rgb("#475569"))[CGPA: 7.3 / 10 | Relevant Coursework: Database Systems, Software Engineering, DBMS, Object-Oriented Design],
  text(style: "italic", fill: rgb("#475569"))[Mysore, India]
)
