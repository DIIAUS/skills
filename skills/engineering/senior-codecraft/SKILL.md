---
name: senior-codecraft
description: Design, implement, refactor, and review concise, maintainable NestJS, TypeScript, and Python code with pragmatic modular architecture.
---

# Senior Codecraft

Produce the simplest correct implementation that remains easy to understand, test, debug and extend.

## Workflow

1. Inspect the existing folder layout, conventions, dependencies, tooling, and tests.
2. Identify relevant features and existing module boundaries. Preserve public contracts.
3. Choose the smallest safe design and minimize unrelated modifications.
4. Write idiomatic typed code; validate input at the boundary and handle expected errors.
5. Review for clarity, unnecessary abstractions, unsafe casts, SQL/query inefficiency, async mistakes, and security issues.
6. Run available targeted lint/typecheck/tests; never claim checks ran when they did not.
7. Summarize changes, tradeoffs, tests, and remaining risks.

## Principles

- Clarity over clever one-liners; concise does not mean code-golf.
- Feature-first files for NestJS. Keep controllers thin; services own application logic.
- Avoid premature repositories, generic base classes, decorators, factories or clean-architecture layers.
- Avoid `any`, non-null assertions, and speculative error swallowing.
- Prefer explicit boundaries and dependency injection over hidden state.
- Preserve established project standards unless asked for redesign.
- Ask about architectural tradeoffs only when a consequential decision cannot reasonably be made from the repository.

## References

Read only the relevant guide(s):
- [Architecture](references/architecture.md)
- [NestJS](references/nestjs.md)
- [TypeScript](references/typescript.md)
- [Python](references/python.md)
- [Review](references/review.md)
