git clone https://github.com/TSjhkim/actions1.git
cd actions1

find . -type f -name "*.sql" | while IFS= read -r file; do
    awk -v RS=';' '{print > ("tmp_" NR ".sql")}' "$file"
    git add tmp_*.sql
    git commit -m "Add split SQL files from $file"
done

git push https://github.com/TSjhkim/actions1.git master
