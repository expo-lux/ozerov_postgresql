#!/usr/bin/env bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
echo "INSERT INTO users(user_id,username,email,mobile_phone,firstname,lastname,city,is_curator,record_date)" > "$SCRIPT_DIR/insert.sql"
echo "VALUES" >> "$SCRIPT_DIR/insert.sql"
head -n -1 "$SCRIPT_DIR/temp_users" | awk 'BEGIN{ OFS="\047,\047" } { print "(\047"$1,$2,$3,$4,$5,$6,$7,$8"\047,CURRENT_TIMESTAMP),"}' >> "$SCRIPT_DIR/insert.sql"
tail -1 "$SCRIPT_DIR/temp_users" | awk 'BEGIN{ OFS="\047,\047" } { print "(\047"$1,$2,$3,$4,$5,$6,$7,$8"\047,CURRENT_TIMESTAMP)"}' >> "$SCRIPT_DIR/insert.sql"
echo "ON CONFLICT DO NOTHING;" >> "$SCRIPT_DIR/insert.sql"

echo "INSERT INTO courses(course_id,coursename,tasks_count,price)" >> "$SCRIPT_DIR/insert.sql"
echo "VALUES" >> "$SCRIPT_DIR/insert.sql"
head -n -1 "$SCRIPT_DIR/temp_courses" | awk 'BEGIN{ OFS="\047,\047" } {print "(\047"$1,$2,$3,$4"\047),"}' >> "$SCRIPT_DIR/insert.sql"
tail -1 "$SCRIPT_DIR/temp_courses" | awk 'BEGIN{ OFS="\047,\047" } {print "(\047"$1,$2,$3,$4"\047)"}' >> "$SCRIPT_DIR/insert.sql"
echo "ON CONFLICT DO NOTHING;" >> "$SCRIPT_DIR/insert.sql"

echo "INSERT INTO users__courses(id,user_id,course_id)" >> "$SCRIPT_DIR/insert.sql"
echo "VALUES" >> "$SCRIPT_DIR/insert.sql"
head -n -1 "$SCRIPT_DIR/temp_users_courses" | awk 'BEGIN{ OFS="\047,\047" } {print "(\047"$1,$2,$3"\047),"}' >> "$SCRIPT_DIR/insert.sql"
tail -1 "$SCRIPT_DIR/temp_users_courses" | awk 'BEGIN{ OFS="\047,\047" } {print "(\047"$1,$2,$3"\047)"}' >> "$SCRIPT_DIR/insert.sql"
echo "ON CONFLICT DO NOTHING;" >> "$SCRIPT_DIR/insert.sql"