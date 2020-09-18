declare -a list=(
  "CC-BY-4.0"
  "CC-BY-NC-4.0"
  "CC-BY-NC-ND-4.0"
  "CC-BY-NC-SA-4.0"
  "CC-BY-ND-4.0"
  "CC-BY-SA-4.0")

for identifier in ${list[@]}; do
  pandoc -f html -t html https://spdx.org/licenses/$identifier.html -o $identifier.html
  pandoc -f html -t markdown_strict https://spdx.org/licenses/$identifier.html -o $identifier.md
  pandoc -f html -t plain https://spdx.org/licenses/$identifier.html -o $identifier.txt
done
