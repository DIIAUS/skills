# TypeScript Standards

- Enable and honor strict compiler checks when the project supports them.
- Prefer inferred local types and explicit public API contracts.
- Prefer discriminated unions, narrow types, and exhaustive checks over casts.
- Do not use `any` unless justified and confined to an unavoidable integration boundary; validate `unknown`.
- Avoid redundant `async/await` when simply returning a promise; use `await` for error handling or async composition.
- Avoid redundant state, temporary variables, wrappers, repeated transformations and deeply nested conditions.
- Use early returns for guard cases when they improve comprehension.
- Choose `Map`/`Set` when appropriate for repeated membership/lookup; do not trade clarity for speculative speed.
- Use `Promise.all` only when operations can safely run concurrently.
- Prefer `readonly` for immutable contracts and `const` for unchanged bindings.
- Follow existing formatter, lint, module, and naming conventions.
- Handle nullable values explicitly; never use blanket non-null assertions.

## Example

```ts
findUser(id: string): Promise<User | null> {
  return this.userRepository.findOneBy({ id });
}
```

Remove accidental boilerplate without sacrificing clarity, observability, or correct failure behavior.
