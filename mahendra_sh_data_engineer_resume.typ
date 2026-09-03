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
    text(weight: "bold", size: 8.5pt, fill: rgb("#0f172a"))[#title] + if tech != "" [ #text(weight: "medium", size: 7.8pt, fill: rgb("#0369a1"))[ • #tech] ] else [],
    text(weight: "bold", fill: rgb("#475569"))[#date]
  )
}

// Header Section
#align(center)[
  #text(size: 13.5pt, weight: "bold", fill: rgb("#0f172a"))[Mahendra S H] \
  #v(-3.5pt)
  #text(size: 8.0pt, weight: "bold", fill: rgb("#0369a1"))[Backend & LLMOps Engineer | Python | Advanced SQL | Java | AWS] \
  #v(1.0pt)
  #text(size: 7.5pt, fill: rgb("#475569"))[
    Hyderabad, India | +91-7892041114 | #link("mailto:mahendrashongunti@gmail.com")[mahendrashongunti\@gmail.com] | #link("https://mahendrash.vercel.app")[mahendrash.vercel.app] \
    #link("https://www.linkedin.com/in/mahendra-s-h-14a74721a/")[linkedin.com/in/mahendra-s-h-14a74721a] | #link("https://github.com/MahendraSH")[github.com/MahendraSH]
  ]
]

#v(-8.0pt)

// Profile Summary Section
#section("Professional Summary")
#v(-2.5pt)
Data-driven Backend and LLMOps Engineer with enterprise experience orchestrating high-throughput data pipelines, microservices, and AI telemetry systems. Specializes in LLM observability, root cause analysis (RCA), and tracking evaluation metrics (F1, data drift) for generative models. Proven ability to leverage *Advanced SQL*, *Python*, and *Power BI* to build operational dashboards, detect data anomalies, and optimize AWS cloud cost efficiencies for platforms processing *50k+ daily transactions*.

// Technical Skills Section
#section("Technical Skills")
#v(-2.5pt)
#grid(
  columns: (115pt, 1fr),
  row-gutter: 4.0pt,
  column-gutter: 8pt,
  [*LLMOps & Analytics:*], [Langfuse, Prompt Evaluation, Token Economics, F1/Accuracy Metrics, Model Drift Tracking, Power BI, Data Telemetry],
  [*Data Eng. & Cloud:*], [Advanced SQL, AWS (S3, SQS, SNS, Cost Explorer), ETL/ELT Pipelines, Data Modeling, Docker, CI/CD],
  [*Languages:*], [Python, Advanced SQL, Java 21, TypeScript, JavaScript],
  [*Backend & APIs:*], [Spring Boot, Spring Batch, Node.js, Express.js, RESTful APIs, Camunda BPM, OpenAPI],
  [*Databases:*], [PostgreSQL, MySQL, Prisma ORM, Query Optimization & Indexing]
)

// Work Experience Section
#section("Work Experience")

#work-item-header("Infosys", "Hyderabad, India", "Jul 2024 – Jun 2026", "Specialist Programmer / Software Developer")
#v(1pt)
- Engineered high-throughput enterprise data pipelines using *Java 21* and *Spring Batch*, automating the extraction, transformation, and verification of *50k+ daily transactional records*.
- Utilized *Advanced SQL* and *Python* to detect data trends, process anomalies, and identify backend performance bottlenecks, reducing API response times by *20%*.
- Analyzed *AWS SNS, SQS*, and *S3* telemetry and cost data to identify infrastructure optimization opportunities, managing cloud expenditures while maintaining massive system throughput.
- Performed root cause analysis (*RCA*) on system anomalies and tracked data evaluation metrics across CI/CD deployments and backend integrations.
- Built analytical *Power BI* dashboards for tracking accuracy, system usage, and cost analytics to improve operational decision-making for enterprise stakeholders.
- Integrated AWS services with *Camunda BPM* for asynchronous queue orchestration, reducing manual data verification overhead by *35%*.

#v(1.5pt)
#work-item-header("Independent Software Development", "Mysore, India", "Jun 2023 – Jun 2024", "Freelance Backend & Data Engineer")
#v(1pt)
- Engineered scalable backend architectures and SQL databases (*PostgreSQL, MySQL*) for bespoke enterprise platforms and client solutions.
- Integrated *Power BI* analytics into client administrative panels to visualize data trends, usage telemetry, and core business metrics.
- Developed secure *REST APIs* utilizing *Node.js* and *Express* to facilitate reliable data delivery and ingestion across multiple client environments.

#v(1.5pt)
#work-item-header("Merav Infotech", "Mysore, India", "Feb 2024 – May 2024", "Software Engineering Intern")
#v(1pt)
- Developed *RESTful APIs* and optimized data querying, reducing initial system payload load times by *15%*.
- Participated in *Agile* sprint planning, daily standups, code reviews, and cross-functional backend software delivery.

// Projects Section
#section("Selected Projects")

#project-item("ProjectX Generative AI Studio (LLMOps Pipeline)", "Python, Next.js, Langfuse, AWS S3, SQL", "")
#v(-3.0pt)
- Implemented LLM observability pipelines using *Langfuse* and *Python* to continuously monitor model performance, token usage economics, and latency trends in production. Analyzed LLM extraction outputs against user-validated datasets, tracking evaluation metrics including F1 scores, accuracy, and data drift.

#v(1.5pt)
#project-item("Cargo Readiness — CMA CGM Project", "Java 21, Spring Batch, AWS SQS/SNS, PostgreSQL, Power BI", "")
#v(-3.0pt)
- Built event-driven backend workflows and ETL pipelines for container readiness assessment, successfully automating *50k+* daily booking data checks. Developed interactive *Power BI* operational dashboards fed by *Advanced SQL* queries to monitor system usage, process accuracy, and pipeline data anomalies.

#v(1.5pt)
#project-item("SaaS Form Builder Data Platform", "Node.js, PostgreSQL, AWS, TypeScript", "")
#v(-3.0pt)
- Architected a scalable backend data ingestion engine with secure *REST APIs* and analytics tracking, securely processing user inputs across *20+* embedded client sites.

#v(1.5pt)
#project-item("SpendOptima Analytics Dashboard", "TypeScript, PostgreSQL, SQL Analytics", "")
#v(-3.0pt)
- Built a comprehensive financial analytics dashboard featuring complex *SQL aggregations* and interactive timeseries visualizations for budget and expense telemetry.

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
