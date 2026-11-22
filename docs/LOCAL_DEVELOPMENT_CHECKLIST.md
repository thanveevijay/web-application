# Local development checklist

## Before starting
- Install the JDK and Maven versions supported by the project.
- Confirm the configured application server and database are available.
- Keep credentials and machine-specific paths outside tracked source files.
- Review `pom.xml` and resolve dependencies before launching the application.

## Build and verification
1. Run `mvn clean test` from the directory containing `pom.xml`.
2. Review compiler and test output; do not treat a successful package build as proof that every page works.
3. Start the application using the configured server and inspect its startup logs.
4. Exercise the main navigation and form workflows with both valid and invalid inputs.
5. Verify server-side validation and confirm user input is safely handled before database operations.

## Before committing
- Remove generated build output and local configuration files.
- Do not commit passwords, tokens, database dumps, or personal data.
- Describe the change and the verification performed in the commit message.
