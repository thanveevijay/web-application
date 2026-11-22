# Server-side input validation guide

Validate all untrusted input on the server, even when the browser already performs client-side checks.

## Validation principles
- Define required fields, maximum lengths, and accepted formats for each form.
- Normalize values deliberately; do not silently change identifiers or passwords.
- Use allowlists for constrained values such as status codes and categories.
- Parse dates and numbers strictly and handle invalid values explicitly.
- Use parameterized database operations rather than concatenating user input into SQL.
- Encode output for the context in which it is rendered.

## Error handling
Return field-level feedback where practical without exposing stack traces, SQL, filesystem paths, or internal configuration. Keep validation messages understandable and consistent.

## Verification
Test missing fields, whitespace-only values, boundary lengths, malformed dates, unexpected enum values, and special characters. Confirm that invalid submissions do not partially update application state.
