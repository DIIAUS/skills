# Python Standards

- Use idiomatic Python, descriptive names, and the standard library when sufficient.
- Add type hints to public functions and important data structures; follow project type-checker configuration.
- Prefer comprehensions for simple transforms, not nested unreadable expressions.
- Prefer context managers for resource lifetime and explicit exception scopes.
- Use dataclasses for straightforward structured state; avoid premature class hierarchies.
- Avoid mutable default arguments, broad `except Exception` without re-raising/logging policy, and silent failures.
- Keep I/O boundaries separate from deterministic transformations where helpful.
- Use pathlib, enumerate, zip, collections, itertools, and standard tools when they increase clarity.
- Use async only for real async workloads; avoid blocking calls in async paths.
- Prefer parameterized SQL and bounded reads; handle timezones consciously.
- Respect repository's formatter, lint, packaging and testing tools.

## Example

```py
def active_names(users: list[User]) -> list[str]:
    return [user.name for user in users if user.active]
```

Favor simple functions and clean ownership over unnecessary patterns.
