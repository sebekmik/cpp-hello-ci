#!/usr/bin/env bash
set -euo pipefail

g++ -std=c++17 -O2 -Wall -Wextra -pedantic main.cpp -o app
./app > actual.txt
diff -u expected.txt actual.txt
echo "OK: output matches expected.txt"
