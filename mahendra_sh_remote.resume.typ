#set page(
  paper: "a4",
  margin: (x: 0.8cm, top: 0.5cm, bottom: 0.5cm),
)

#set text(
  font: ("Helvetica", "Arial", "Liberation Sans"),
  size: 8.0pt,
  fill: rgb("#1e293b"), // Slate 800
)

#set par(leading: 0.72em)
#set list(marker: ([•],), spacing: 1.4pt)
#show heading: set text(fill: rgb("#0f172a")) // Slate 900

// Define custom styling for headers and dividers
#let section-divider = line(length: 100%, stroke: 0.5pt + rgb("#cbd5e1"))

#let section(title) = {
  v(1pt)
  text(size: 8.5pt, weight: "bold", fill: rgb("#0284c7"))[#title] // sky-600
  v(-7pt)
  section-divider
  v(0.5pt)
}

#let work-item-header(company, location, date, role) = {
  grid(
    columns: (1fr, auto),
    rows: (auto),
    text(weight: "bold", size: 8.0pt)[#company] + if role != "" [ --- #text(weight: "semibold", style: "italic", fill: rgb("#0f172a"))[#role] ] else [],
    text(weight: "bold", fill: rgb("#475569"))[#date]
  )
  if location != "" {
    v(-4pt)
    grid(
      columns: (1fr, auto),
      text(style: "italic", fill: rgb("#64748b"), size: 7.5pt)[#location],
      []
    )
  }
}

#let project-item(title, tech, date) = {
  grid(
    columns: (1fr, auto),
    text(weight: "bold", size: 8.0pt)[#title] + if tech != "" [ #text(weight: "regular", size: 7.5pt, fill: rgb("#0284c7"))[ (#tech)] ] else [],
    text(weight: "bold", fill: rgb("#475569"))[#date]
  )
}

// Header Section - Removed phone, email, socials, portfolio and github links
#align(center)[
  #text(size: 12pt, weight: "bold")[Mahendra S H] \
  #v(-3pt)
  #text(size: 8.5pt, weight: "bold", fill: rgb("#0284c7"))[Frontend & Backend Developer] \
  #v(0.5pt)
  #text(size: 7.5pt, fill: rgb("#475569"))[
    Hyderabad, India
  ]
]

#v(-8pt)

// Profile Summary Section
#section("Professional Summary")
#v(-2pt)
- *Frontend & Backend Developer* with *2+ years of professional* experience and *2,000+ hours of freelance & consulting* experience architecting, developing, and maintaining high-performance, scalable web applications.
- *Full-Stack Development*: Proven track record of leading web development initiatives, optimizing performance, designing modular client/server architectures, and building reusable design systems.
- *Domain Expertise*: Background in shipping cargo, logistics, e-commerce, and supply-chain domains, bridging client/server boundaries to deliver user-centric applications from concept to production.
- *AI-Assisted Velocity*: Adept at leveraging Generative AI coding assistants (Copilot, Claude, Antigravity) for efficient debugging, codebase comprehension, and refactoring.

// Key Qualifications & Technical Summary Section
#section("Key Qualifications & Technical Summary")
#v(-2pt)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 12pt,
  row-gutter: 1.0pt,
  [- *Expert TypeScript* & modern JavaScript (ES6+).],
  [- *Strong Next.js Experience* — App Router, Server Actions, SSR/CSR trade-offs.],
  [- *GraphQL & TanStack Query v5* — queries, mutations, codegen, & server state.],
  [- *Full-Stack Boundary* — Java, Spring Boot, Camunda BPM, & MERN Stack (Node, Express, MongoDB).],
  [- *Modern UI Libraries* — Tailwind CSS, Radix UI primitives, and shadcn/ui.],
  [- *Forms & Validation* — React Hook Form + Zod schema validation.],
  [- *Complex Data Tables* — advanced filtering and rendering via TanStack Table.],
  [- *Client State & Redux* — Redux / Redux Toolkit (RTK), Zustand, Recharts, and dnd-kit.],
  [- *Observability & Monitoring* — production experience with Datadog or similar.],
  [- *Testing Practices* — Vitest, React Testing Library, and Playwright/Cypress.],
  [- *Shipping Cargo & Logistics* — background in cargo transport, supply chain, and e-commerce domains.],
  [- *Solid Git Workflow* — robust code-review discipline and clean PR processes.]
)

// Work Experience Section
#section("Work Experience")

#work-item-header("Infosys", "Hyderabad, India (Hybrid)", "Jul 2024 – Jun 2026", "Specialist Programmer (Frontend & Backend Developer)")
#v(0.5pt)
- *Cargo Readiness (CMA-CGM Project)*: Led frontend modernization and development of microservices backend using Java 21, Spring Boot, and React to automate container readiness workflows.
- Developed a highly responsive React frontend dashboard utilizing *React Query* and *React Table*, reducing verification time and improving decision-making by *35%*.
- Established robust frontend standards, code-review discipline, and Git workflows across a team of developers to ensure high code quality.
- Employed Spring Batch and PostgreSQL optimizations to process *50k+ active bookings* daily and reduced API response times by *20%*.
- Integrated AI coding assistants (GitHub Copilot, Claude, Antigravity) into daily development workflows, accelerating unit test generation, routine boilerplate scaffolding, and legacy code refactoring.

#v(1.0pt)
#work-item-header("Frontend Consultant & Freelancer", "2,000+ Hours of Freelancing & Consulting", "Jul 2022 – Present", "")
#v(0.5pt)
- Built high-performance *MERN Stack* and *Next.js (App Router)* web applications using *TypeScript*, *GraphQL*, and *Tailwind CSS* for logistics and e-commerce clients.
- Configured client state with *Redux / Redux Toolkit* and *Zustand*, server state via *TanStack Query v5*, and visual dashboards with *Recharts*.
- Built secure, dynamic form builders using *React Hook Form* and *Zod*, using *dnd-kit* for seamless drag-and-drop template editors.
- Implemented robust monitoring using *Datadog* and enforced testing coverage with *Vitest*, *React Testing Library*, and *Playwright/Cypress*.

#v(1.0pt)
#work-item-header("Merav Infotech", "Mysore, India (Remote)", "Feb 2024 – May 2024", "Software Engineering Intern")
#v(0.5pt)
- Spearheaded frontend feature development and designed reusable UI components using React.js and modern JavaScript (ES6+).
- Collaborated with senior engineers to integrate RESTful API endpoints, reducing initial page load times by *15%* via lazy loading and code-splitting.

// Projects Section
#section("Key Projects")

#project-item("E-Commerce Platform (E-Store)", "Next.js, React, Tailwind CSS, Shadcn UI, Prisma ORM, MySQL", "")
#v(-4pt)
- Built a full-stack e-commerce solution with admin capabilities for managing products, catalog categorization, and processing customer orders.
- Designed scalable REST APIs to support custom storefronts and seamless integration with payment gateway services.

#v(1.0pt)
#project-item("SaaS Form Builder Platform", "Next.js, React, Node.js, Express, PostgreSQL", "")
#v(-4pt)
- Built a full-stack, no-code SaaS form builder allowing users to create and customize dynamic forms via an intuitive drag-and-drop interface.

#v(1.0pt)
#project-item("Shadcn UI Table Generator", "Astro, React, TypeScript, TanStack Table v8, Shadcn UI", "")
#v(-4pt)
- Published an open-source developer tool that scaffolds fully-typed TanStack Table v8 columns and Shadcn UI components from JSON or OpenAPI specs.

// Technical Skills Section
#section("Technical Skills")
#v(-2pt)
#grid(
  columns: (90pt, 1fr),
  row-gutter: 3pt,
  column-gutter: 8pt,
  [*Languages:*], [JavaScript (ES6+), TypeScript, Java, SQL, HTML/CSS],
  [*Frameworks & Libs:*], [React.js, Next.js, Redux / Redux Toolkit, Zustand, TanStack Query v5, Spring Boot, Spring Batch, Express.js, Recharts, dnd-kit],
  [*Databases & APIs:*], [GraphQL, RESTful APIs, PostgreSQL, MySQL, MongoDB, Prisma ORM],
  [*Tools & Testing:*], [Camunda BPM, Git, GitHub, Datadog, Vitest, React Testing Library, Playwright, Cypress, AWS SQS, Radix UI, shadcn/ui],
  [*AI-Assisted Dev:*], [GitHub Copilot, Antigravity (Agy), Claude, ChatGPT]
)

// Education Section
#section("Education")
#v(-2pt)
#grid(
  columns: (1fr, auto),
  rows: (auto),
  text(weight: "bold", size: 8.2pt)[National Institute of Engineering (NIE)] + [ --- B.Tech in Computer Science & Engineering],
  text(weight: "bold", fill: rgb("#475569"))[Graduated: May 2024],
)
#v(-4pt)
#grid(
  columns: (1fr, auto),
  rows: (auto),
  text(style: "italic", fill: rgb("#475569"))[Grade: 7.3 / 10 CGPA | Relevant Coursework: Data Structures, Database Systems, Software Engineering],
  text(style: "italic", fill: rgb("#64748b"))[Mysore, India]
)
