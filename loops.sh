# two basic loops

# For and while

#bases on the expression

a=10
while [ $a -gt 0 ]; do
  echo Hello
  a=$((a-1))
done

for  comp in frontend catalogue user; do
  echo installing component - $comp
done