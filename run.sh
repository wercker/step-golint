#!/bin/sh

LINTLINES=$("$WERCKER_STEP_ROOT"/golint ./... | tee lint_results.txt | wc -l | tr -d " ")
cat lint_results.txt
if [ "$LINTLINES" -ge 10 ]; then echo "Time to tidy up: $LINTLINES lint warnings." > "$WERCKER_REPORT_MESSAGE_FILE"; fail "Time to tidy up."; fi
if [ "$LINTLINES" -ge 5 ]; then echo "You should be tidying soon: $LINTLINES lint warnings." > "$WERCKER_REPORT_MESSAGE_FILE"; warn "You should be tidying soon."; fi
if [ "$LINTLINES" -gt 0 ]; then echo "You are fairly tidy: $LINTLINES lint warnings." > "$WERCKER_REPORT_MESSAGE_FILE"; fi
