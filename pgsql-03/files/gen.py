from string import ascii_lowercase as asc_lower
from string import digits
from random import choices
import os, sys

file_path = os.path.realpath(__file__)


#INSERT INTO users(username,email,mobile_phone,firstname,lastname,city,is_curator,record_date)
#VALUES
#('admin','vasiliy_ozerov@mail.com','+79111937483','Vasiliy','Ozerov','Moscow','true',CURRENT_TIMESTAMP),
lines = []
with open(f"{sys.path[0]}/insert.sql", "w") as f:
    lines.append("INSERT INTO users (username,email,mobile_phone,firstname,lastname,city,is_curator,record_date)\n")
    lines.append("VALUES\n")
    for i in range(15):
        username = ''.join(choices(asc_lower, k=6))
        email = ''.join(choices(asc_lower, k=5)) + '@' + ''.join(choices(asc_lower, k=4)) + '.com'
        mobile_phone = '+7' + ''.join(choices(digits, k=10))
        firstname = ''.join(choices(asc_lower, k=6))
        lastname = ''.join(choices(asc_lower, k=6)) + 'ov'
        is_curator, record_date = 'false', 'CURRENT_TIMESTAMP'
        lines.append(f"('{username}','{email}','{mobile_phone}','{firstname}','{lastname}','Moscow','{is_curator}',{record_date}),\n")
    username = ''.join(choices(asc_lower, k=6))
    email = ''.join(choices(asc_lower, k=5)) + '@' + ''.join(choices(asc_lower, k=4)) + '.com'
    mobile_phone = '+7' + ''.join(choices(digits, k=10))
    firstname = ''.join(choices(asc_lower, k=6))
    lastname = ''.join(choices(asc_lower, k=6)) + 'ov'
    is_curator, record_date = 'false', 'CURRENT_TIMESTAMP'
    lines.append(f"('{username}','{email}','{mobile_phone}','{firstname}','{lastname}','Moscow','{is_curator}',{record_date})\n")
    f.writelines(lines)