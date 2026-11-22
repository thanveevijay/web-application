# Web Application

A minimal JSP-based Java web application packaged as a WAR with Maven. The landing page is a server-rendered deployment check that displays the application context path and server time.

## Requirements

- JDK 8 or later
- Maven 3.8+
- A servlet container compatible with the Servlet 2.3 deployment descriptor

## Build

From the repository root:

```bash
mvn clean package
```

The deployable artifact is created at:

```text
target/web-application.war
```

Deploy the WAR to a compatible servlet container. The landing page is available at the application context root, for example:

```text
http://localhost:8080/web-application/
```

## Continuous integration

The Maven GitHub Actions workflow builds the project on pushes and pull requests targeting `master`. The local build command above is also useful for reproducing packaging failures before pushing.

## Project scope

This repository currently contains a basic JSP landing page, a deployment descriptor, and a Maven WAR build. It is a small Java web deployment exercise rather than a full application with a service layer or database integration.
