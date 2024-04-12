git config --global user.email "jhkim0228@tangunsoft.com"
git config --global user.name "TSjhkim"

ssh-keygen -t rsa -b 4096 -C "jhkim0228@tangunsoft.com"
git remote set-url origin git@github.com:TSjhkim/actions1.git

git clone https://github.com/TSjhkim/actions1.git
cd actions1

find . -type f -name "*.sql" | while IFS= read -r file; do
    awk -v RS=';' '{print > ("tmp_" NR ".sql")}' "$file"
    git add tmp_*.sql
    git commit -m "Add split SQL files from $file"
done

git push https://github.com/TSjhkim/actions1.git master
