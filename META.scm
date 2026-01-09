;; SPDX-License-Identifier: MPL-2.0
;; META.scm - Project metadata

(define project-meta
  `((version . "1.0.0")
    (architecture-decisions
      (("adr-001" . "Use SPARK subset for formal verification")
       ("adr-002" . "Design by Contract for all interfaces")
       ("adr-003" . "Deterministic resource management")
       ("adr-004" . "Multi-architecture support (RISC-V, x86_64, ARM)")
       ("adr-005" . "Podman-first containerisation for builds")))
    (development-practices
      ((code-style . ("Ada 2022 standard"
                      "SPARK annotations for verification"
                      "Strong typing with no implicit conversions"
                      "Contract-based preconditions and postconditions"))
       (security . ("Defense in depth"
                    "GNATprove formal verification"
                    "No dynamic allocation in critical paths"))
       (testing . ("GNATprove proofs as primary verification"
                   "Unit tests for non-SPARK components"
                   "Integration tests via Just recipes"))
       (versioning . "semver")
       (documentation . "asciidoc")
       (branching . "main for stable")))
    (design-rationale
      (("spark-subset" . "Enables mathematical proof of absence of runtime errors")
       ("ada-tasking" . "Provides deterministic real-time build monitoring")
       ("contracts" . "Guarantees valid output if input satisfies preconditions")
       ("no-gc" . "Predictable memory footprint for embedded/ASIC targets")))))
