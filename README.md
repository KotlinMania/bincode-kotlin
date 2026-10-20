# bincode-kotlin in Kotlin

[![GitHub link](https://img.shields.io/badge/GitHub-KotlinMania%2Fbincode-kotlin-blue.svg)](https://github.com/KotlinMania/bincode-kotlin)
[![Maven Central](https://img.shields.io/maven-central/v/io.github.kotlinmania/bincode-kotlin)](https://central.sonatype.com/artifact/io.github.kotlinmania/bincode-kotlin)
[![Build status](https://img.shields.io/github/actions/workflow/status/KotlinMania/bincode-kotlin/ci.yml?branch=main)](https://github.com/KotlinMania/bincode-kotlin/actions)

This is a Kotlin Multiplatform line-by-line transliteration port of [`bincode-org/bincode`](https://github.com/bincode-org/bincode) (crate `bincode`).

**Original Project:** This port is based on [`bincode-org/bincode`](https://github.com/bincode-org/bincode). All design credit and project intent belong to the upstream authors; this repository is a faithful port to Kotlin Multiplatform with no behavioural changes intended.

### Porting status

This is an **in-progress port**. The goal is feature parity with the upstream Rust crate while providing a native Kotlin Multiplatform API. Every Kotlin file carries a `// port-lint: source <path>` header naming its upstream Rust counterpart so the AST-distance tool can track provenance.

---

## Upstream README — `bincode-org/bincode`

> The text below is reproduced from [`https://github.com/bincode-org/bincode`](https://github.com/bincode-org/bincode). It is the upstream project's own description and remains under the upstream authors' authorship; links have been rewritten to absolute upstream URLs where appropriate so they continue to resolve from this repository.

This repo has migrated to [sourcehut](https://sr.ht/~stygianentity/bincode/) as its primary development hub.
Go there for any future code updates.

This decision was made for multiple reasons, but the primary one was
Github's rampant and inherently immoral integration of generative AI.
Bincode and its authors have never and will never support this. If
you have a problem with this we encourage you not to contact us about it.
If you feel generative AI is not a problem, do better.

---

## About this Kotlin port

### Installation

```kotlin
dependencies {
    implementation("io.github.kotlinmania:bincode-kotlin:0.1.2")
}
```

### Building

```bash
./gradlew build
./gradlew test
```

### Targets

- macOS arm64
- Linux x64
- Windows mingw-x64
- iOS arm64 / simulator-arm64 (Swift export + XCFramework)
- JS (browser + Node.js)
- Wasm-JS (browser + Node.js)
- Android (API 24+)

### Porting guidelines

See [AGENTS.md](AGENTS.md) and [CLAUDE.md](CLAUDE.md) for translator discipline, port-lint header convention, and Rust → Kotlin idiom mapping.

### License

This Kotlin port is distributed under the same license terms as the upstream [`bincode-org/bincode`](https://github.com/bincode-org/bincode). See [LICENSE](LICENSE) (and any sibling `LICENSE-*` / `NOTICE` files mirrored from upstream) for the full text.

Original work copyrighted by the bincode authors.  
Kotlin port: Copyright (c) 2026 Sydney Renee and The Solace Project.

### Acknowledgments

Thanks to the [`bincode-org/bincode`](https://github.com/bincode-org/bincode) maintainers and contributors for the original Rust implementation. This port reproduces their work in Kotlin Multiplatform; bug reports about upstream design or behavior should go to the upstream repository.
