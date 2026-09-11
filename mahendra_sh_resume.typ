#set page(
  paper: "a4",
  margin: (x: 0.9cm, top: 0.6cm, bottom: 0.6cm),
)

#set text(
  font: ("Helvetica", "Arial", "Liberation Sans"),
  size: 8.0pt,
  fill: rgb("#000000"), // Slate 800
)

#set par(leading: 0.72em)
#set list(marker: ([•],), spacing: 3.5pt)
#show heading: set text(fill: rgb("#000000")) // Slate 900

// Define custom styling for headers and dividers
#let section-divider = line(length: 100%, stroke: 0.5pt + rgb("#000000"))

#let section(title) = {
  v(1pt)
  text(size: 9.5pt, weight: "bold", fill: rgb("#000000"))[#upper(title)]
  v(-7pt)
  section-divider
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
  #text(size: 14pt, weight: "bold")[MAHENDRA S H] \
  #v(-3pt)
  #text(size: 8.5pt, weight: "bold", fill: rgb("#000000"))[Specialist Programmer] \
  #v(0.5pt)
  #text(size: 7.5pt, fill: rgb("#000000"))[
    Hyderabad, India | +91-7892041114 | #link("mailto:mahendrashongunti@gmail.com")[mahendrashongunti\@gmail.com] | #link("https://mahendrash.vercel.app")[mahendrash.vercel.app] | #link("https://www.LinkedIn/")[LinkedIn] | #link("https://GitHub")[GitHub]
  ]
]

#v(-8pt)

// Profile Summary Section
#section("Professional Summary")
#v(-2pt)
- *Specialist Programmer* with nearly 2 years of experience designing, developing, and maintaining high-performance, scalable full-stack applications from *concept to deployment*.
- *ServiceNow Pro-Code*: Strong expertise in advanced ServiceNow custom application development using the ServiceNow SDK and TypeScript to build complex workflow automations.
- *Backend & Microservices*: Proficient in architecting modular backend services, database optimization, and implementing automated, high-throughput batch jobs.
- *Frontend & UI/UX*: Skilled in building responsive, interactive user interfaces with modern frontend frameworks to deliver high-quality, user-centric platforms.
- *AI-Assisted Velocity*: Adept at leveraging Generative AI coding assistants (Copilot, Claude, Antigravity) for efficient debugging, codebase comprehension, and refactoring.

// Work Experience Section
#section("Work Experience")

#work-item-header("Infosys", "Hyderabad, India (Hybrid)", "Jul 2024 – Jun 2026", "Specialist Programmer")
#v(1pt)
- *Cargo Readiness (CMA-CGM Project)*: Architected and engineered a microservices backend using Java 21 and Spring Boot to handle event-driven container readiness assessment workflows.
- Integrated AWS SQS queues and Camunda BPM for event-driven orchestration, reducing manual verification overhead by *35%*.
- Employed Spring Batch to automate high-throughput end-date verification and backend checks, processing *50k+ active bookings* daily.
- Developed a responsive React frontend dashboard utilizing React Query and React Table, improving officer decision-making efficiency.
- Optimized database queries in PostgreSQL to reduce API response times by *20%* and enhance overall system throughput.
- Integrated AI coding tools (Copilot, Claude, Antigravity) to accelerate boilerplate development, unit testing, and code refactoring.
- Participated in regular code reviews, promoting clean code standards and Git best practices across the development team.

#v(2pt)
#work-item-header("Merav Infotech", "Mysore, India (Remote)", "Feb 2024 – May 2024", "Software Engineering Intern")
#v(1pt)
- Spearheaded frontend feature development and designed reusable UI components using React.js and modern JavaScript (ES6+).
- Collaborated with senior engineers to integrate RESTful API endpoints, reducing initial page load times by *15%* via lazy loading and code-splitting.
- Participated in Agile sprint planning and daily standups to ensure timely delivery of software features.

// Projects Section
#section("Key Projects")

#project-item("Access Management System (ServiceNow)", "ServiceNow SDK, TypeScript, GlideRecord, Workflows", "")
#v(-3pt)
- Engineered a secure Access Management custom application in ServiceNow using a *pro-code* approach with the ServiceNow SDK and TypeScript.
- Configured custom ServiceNow tables and programmed GlideRecord-based Business Rules, Client Scripts, and Script Includes to automate validations.
- Orchestrated approval workflows with auto-provisioning logic and group routing, reducing access grant overhead by *40%*.

#v(2pt)
#project-item("SaaS Form Builder Platform", "Next.js, React, Node.js, Express, PostgreSQL", "")
#v(-3pt)
- Built a full-stack, *no-code* SaaS form builder allowing users to create and customize dynamic forms via an intuitive drag-and-drop interface.
- Created a lightweight embeddable script integration package enabling external websites to embed and render forms dynamically.
- Constructed secure REST APIs for form creation, submission tracking, and analytics tracking for *20+ client sites*.

#v(2pt)
#project-item("Shadcn UI Table Generator", "Astro, React, TypeScript, TanStack Table v8, Shadcn UI", "")
#v(-3pt)
- Published an open-source developer tool that scaffolds fully-typed TanStack Table v8 columns and Shadcn UI components from JSON or OpenAPI/Swagger specs.
- Designed an intuitive schema generator that automatically infers types, reducing boilerplate table setup time by *80%* for developers.

#v(2pt)
#project-item("MERN Gallery & Blog Platform", "MongoDB, Express, React, Node.js, Redux, JWT, Cloudinary", "")
#v(-3pt)
- Built a full-stack blogging and media platform with secure *JWT user authentication* and role-based access control.
- Connected Cloudinary API for high-performance image uploads and storage optimization, handling *5,000+ monthly active readers*.

// Technical Skills Section
#section("Technical Skills")
#v(-2pt)
#grid(
  columns: (90pt, 1fr),
  row-gutter: 3pt,
  column-gutter: 8pt,
  [*Languages:*], [Java, JavaScript, TypeScript, SQL, HTML/CSS],
  [*Frameworks & Libs:*], [React.js, Next.js, Spring Boot, Spring Batch, Astro, Express.js, Tailwind CSS, Shadcn UI],
  [*Enterprise Platforms:*], [ServiceNow (SDK, GlideRecord, Business Rules, Client Scripts, Script Includes, Workflows)],
  [*Databases & ORM:*], [PostgreSQL, MySQL, MongoDB, Prisma],
  [*Tools & DevOps:*], [AWS SQS, Camunda BPM, Git, GitHub, RESTful APIs, JWT, Cloudinary],
  [*AI-Assisted Dev:*], [GitHub Copilot, Antigravity (Agy), Claude, ChatGPT]
)

// Education Section
#section("Education")
#v(-2pt)
#grid(
  columns: (1fr, auto),
  rows: (auto),
  text(weight: "bold", size: 8.5pt)[National Institute of Engineering (NIE)] + [ --- B.Tech in Computer Science & Engineering],
  text(weight: "bold", fill: rgb("#000000"))[Graduated: May 2024],
)
#v(-4pt)
#grid(
  columns: (1fr, auto),
  rows: (auto),
  text(style: "italic", fill: rgb("#000000"))[Grade: 7.3 / 10 CGPA | Relevant Coursework: Data Structures, Database Systems, Software Engineering],
  text(style: "italic", fill: rgb("#000000"))[Mysore, India]
)
