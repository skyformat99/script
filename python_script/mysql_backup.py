#!/usr/bin/python3


# 做定时任务执行:
# 0 2 * * * /usr/bin/python dbbackup.py

import datetime
import os

# ip
IP = '127.0.0.1'
# 数据库用户名
USER = 'root'
# 数据库密码
PASSWORD = '000000'
# 需要备份的数据库
DADABASES = ['sys']
# 是否删除表结构
DROP_TABLE = False
# 是否备份所有数据库
ALL_DADABASES = False
# 备份到目录(当前用户根目录)
BACKUP_DIR = '{}'.format(os.path.expanduser('~'))


def backup_db():
    if not DADABASES:
        print('需要备份的数据库为空')
        return
    if ALL_DADABASES:
        cmd_str = 'mysqldump --all-databases -h {} -u {} --password={} > {}' \
            .format(IP, USER, PASSWORD, '{}/{}_allbackupfile.sql'.format(BACKUP_DIR, datetime.datetime.now()))
        os.system(cmd_str)
        print('所有数据库在{}已备份，保存在{}下'.format(datetime.datetime.now(), BACKUP_DIR))
        return
    for i in DADABASES:
        cmd_str = 'mysqldump {} -h {} -u {} --password={} {} > {}'
        if not DROP_TABLE:
            cmd_str = cmd_str.format('', IP, USER, PASSWORD, i,
                                     '{}/{}_backup.sql'.format(BACKUP_DIR, i))
        else:
            cmd_str = cmd_str.format(IP, USER, PASSWORD, i,
                                     '{}/{}_backup.sql'.format(BACKUP_DIR, i))
        os.system(cmd_str)
        print('数据库{}在{}已备份，保存在{}下'.format(i, datetime.datetime.now(), BACKUP_DIR))

if __name__ == '__main__':
    backup_db()
