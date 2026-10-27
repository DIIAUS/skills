# Senior Codecraft Review Checklist

Review in this order:
1. Correctness and compatibility — behavior, edge cases, and API contracts.
2. Security — secrets, authorization, injection, validation, unsafe deserialization.
3. Data integrity — transaction boundaries, concurrency, idempotency, timezone.
4. Design — cohesive modules, clear ownership, unnecessary layers/coupling.
5. Type safety — nullability, `unknown`, unchecked casts, valid DTO contracts.
6. Performance — avoid N+1 queries, scans, repeated allocations, unbounded results.
7. Maintainability — naming, tests, readability, diff scope, logging.
8. Verification — list checks that actually ran and results.

Report important findings with file paths and precise reasoning; don't create cosmetic churn. If no issues are found, say so and mention remaining coverage gaps.
