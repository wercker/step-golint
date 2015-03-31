# golint

> Golint is a linter for Go source code. https://github.com/golang/lint

```yaml
build:
  steps:
  - golint
```

# Exclude files

```yaml
build:
  steps:
  - golint:
      exclude: "\.pb\.go"
```

# License

The MIT License (MIT)

# Changelog

## 1.2.0

- Add support for excluding files.

## 1.1.0

- Do not report on zero issues.

## 1.0.0

- Initial release.
