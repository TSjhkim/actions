split_sql_file() {
    local input_file="$1"
    awk -v RS=';' '{print > ("tmp_" NR ".sql")}' "$input_file"
}
split_sql_file "$1"
for file in tmp_*.sql; do
    echo "Executing $file"
    sqlite3 your_database.db < "$file"
done
rm tmp_*.sql
