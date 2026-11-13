#!/usr/bin/env bash
set -euo pipefail

# Each linter gets only tracked inputs. Skip languages with no matching files.
lint_files() {
  local tool=$1
  shift
  git ls-files -z -- "$@" ':(exclude)manuscript/axioms/Definitions/**' |
    xargs -0 -r "$tool" --
}

cpp=('*.c' '*.cc' '*.cpp' '*.cxx' '*.h' '*.hh' '*.hpp' '*.hxx')
lint_files ament_copyright LICENSE '*.py' '*.cmake' "${cpp[@]}"
lint_files ament_flake8 '*.py' '*.pyi'
lint_files ament_pep257 '*.py'
lint_files ament_lint_cmake CMakeLists.txt '*/CMakeLists.txt' '*.cmake' '*.cmake.in'
lint_files ament_xmllint '*.xml'
lint_files ament_cpplint "${cpp[@]}"
lint_files ament_uncrustify "${cpp[@]}"
AMENT_CPPCHECK_ALLOW_SLOW_VERSIONS=1 lint_files ament_cppcheck "${cpp[@]}"
