# NestJS API Standards

- Organize by feature modules, not global controller/service folders.
- Controller: route, auth/guards, DTO input and response status; business logic belongs in services.
- Service: application logic, transactions and orchestration; use DI for dependencies.
- Validate incoming DTOs using appropriate class-validator decorators and a configured ValidationPipe.
- Use explicit HTTP exception types only at suitable HTTP boundaries; do not mask unexpected errors with catch-all 200/400 responses.
- Never return secrets, password hashes or persistence internals. Use defined response contracts when needed.
- Paginate unbounded collection queries; select required columns, prevent N+1, and manage transaction boundaries.
- Prefer ORM/query-builder APIs when sufficient; parameterize raw queries.
- Avoid unused interfaces, generic BaseService, deeply layered CRUD, and over-engineered wrappers.
- Use module-local helper functions when only one feature needs them.
- Keep business dates/timezones and authorization behavior explicit.

## Typical feature

```text
users/
  dto/create-user.dto.ts
  users.controller.ts
  users.service.ts
  users.module.ts
```

Prefer framework-native dependency injection and built-in pipes, guards, interceptors and filters over custom substitutes unless the problem warrants them.

## Verification

Run project-provided lint, typecheck, test, and relevant integration checks where possible; don't assert tests passed without results.
