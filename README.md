# Web Application

A minimal JSP-based Java web application packaged as a WAR with Maven. The landing page is a server-rendered deployment check that displays the application context path and server time.

## Requirements

- JDK 8 or later
- Maven 3.8+
- A Jakarta/Java EE compatible servlet container that supports the Servlet 2.3 deployment descriptor (for example, a compatible Tomcat release)

## Build

From the repository root:

```bash
mvn clean package
```

The deployable artifact is created at:

```text
target/web-application.war
```

Deploy the WAR to your servlet container. The landing page is available at the application context root (for example, `http://localhost:8080/web-application/`).

## Continuous integration

The Maven GitHub Actions workflow packages the WAR on pushes and pull requests targeting `master`.

## Project scope

This repository currently contains a basic JSP landing page and deployment descriptor. It is a small deployment/build exercise rather than a full application with a Java service layer or database integration.
