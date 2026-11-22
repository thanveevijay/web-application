# Secure database access guidance

## Query safety
- Use prepared statements or the database framework's parameter binding for all user-supplied values.
- Never build SQL by concatenating form fields or query parameters.
- Validate sort columns and table identifiers against a fixed allowlist; these generally cannot be parameterized like values.
- Apply least-privilege database credentials.

## Connection handling
- Keep connection details outside tracked source files.
- Close statements, result sets, and connections reliably, preferably with structured resource management.
- Handle connection failures without displaying credentials or raw database errors to users.
- Avoid logging sensitive query parameters.

## Verification
Test quotes, comment markers, Unicode, and unexpected input types in every database-backed form. Confirm the input is treated as data and cannot change query structure.
