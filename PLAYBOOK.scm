;; SPDX-License-Identifier: MPL-2.0
;; PLAYBOOK.scm - Operational runbook

(define playbook
  `((version . "1.0.0")
    (procedures
      ((build . (("compile" . "just build")
                 ("prove" . "just prove")))
       (test . (("verify" . "just test")
                ("check-contracts" . "gnatprove -P project.gpr --mode=check")))
       (deploy . (("release" . "just release")
                  ("clean-build" . "just clean && just build")))))
    (rollback
      (("revert-last" . "git revert HEAD")
       ("reset-to-tag" . "git checkout <tag>")
       ("rebuild-clean" . "just clean && just build")))
    (debug
      (("run-gnatprove" . "gnatprove -P project.gpr --level=2")
       ("verbose-build" . "just build --verbose")))
    (alerts
      (("proof-failure" . "GNATprove failed to prove a contract")
       ("build-error" . "Compilation failed")
       ("contract-violation" . "Runtime contract check failed")))
    (contacts
      (("maintainer" . "@hyperpolymath")
       ("issues" . "github.com/hyperpolymath/anvil-ssg/issues")))))
