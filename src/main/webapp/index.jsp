<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>DevOps Deployment Check</title>
  <style>
    :root { color-scheme: light; font-family: Arial, sans-serif; }
    body { margin: 0; min-height: 100vh; display: grid; place-items: center; background: #f3f6fb; color: #172033; }
    main { width: min(90%, 620px); padding: 2.5rem; border-radius: 18px; background: #fff; box-shadow: 0 12px 40px rgba(25, 45, 80, .10); }
    .status { display: inline-block; padding: .4rem .75rem; border-radius: 999px; background: #e7f8ee; color: #176b3a; font-weight: 700; font-size: .85rem; }
    h1 { margin: 1.2rem 0 .6rem; font-size: clamp(1.7rem, 5vw, 2.4rem); }
    p { line-height: 1.6; color: #536078; }
    dl { display: grid; grid-template-columns: 1fr 2fr; gap: .8rem; margin-top: 1.8rem; }
    dt { color: #68758a; } dd { margin: 0; font-weight: 600; overflow-wrap: anywhere; }
    @media (max-width: 480px) { main { padding: 1.5rem; } dl { grid-template-columns: 1fr; gap: .3rem; } dd { margin-bottom: .7rem; } }
  </style>
</head>
<body>
  <main>
    <span class="status">Application is responding</span>
    <h1>DevOps Deployment Check</h1>
    <p>This JSP page confirms that the web application has been deployed and can return a server-rendered response.</p>
    <dl>
      <dt>Application</dt>
      <dd>web-application</dd>
      <dt>Context path</dt>
      <dd><%= request.getContextPath() %></dd>
      <dt>Server time</dt>
      <dd><%= new java.util.Date() %></dd>
    </dl>
  </main>
</body>
</html>
