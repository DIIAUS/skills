# Pragmatic Modular Architecture

Prefer cohesive feature folders to top-level layer buckets.

```text
src/
  modules/
    users/
      dto/
      users.controller.ts
      users.service.ts
      users.module.ts
    orders/
      dto/
      orders.controller.ts
      orders.service.ts
      orders.module.ts
  common/
    filters/
    guards/
  config/
  database/
  app.module.ts
  main.ts
```

## Rules

- Prefer an obvious file location to an abstract pattern.
- Keep feature implementation together. Move shared code into common only when genuinely cross-cutting.
- Services should not depend on HTTP request/response objects.
- Avoid circular module dependencies. Depend on stable interfaces only when necessary.
- Introduce repositories, ports/adapters, mappers or domain layers when they solve a concrete problem such as replaceable infrastructure, complex domain rules, or independent testing.
- Do not split small one-purpose files merely to comply with a pattern.
- Prefer explicit module exports and imports. Do not create global modules casually.
- Preserve existing conventions when refactoring incremental code; propose migration stages rather than disruptive rewrites.
