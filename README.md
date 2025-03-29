🚀 Dynamic home directory backup with crontab and rsync

🌐 Overview

It uses **rsync** to dynamically back up the home directory. The first time it is run, it takes a while to generate a copy of the files, but from the second time onwards, only the two directories are synchronized. This is very practical because it only makes copies on demand, more efficiently, and not the entire directory every time.

The task scheduler, **crontab**, is used to automate the task. I used two entries, one that makes a daily backup every 10 minutes and another weekly with compression.

To access the crontab in edit mode, we can use:
```bash
crontab -e
```
and to list the appointments:
```bash
crontab -l
```
Example output:
```bash
# For example, you can run a backup of all your user accounts
# at 5 a.m every week with:
# 0 5 * * 1 tar -zcf /var/backups/home.tgz /home/
# 
# For more information see the manual pages of crontab(5) and cron(8)
# 
# m h  dom mon dow   command

*/15 * * * * /home/samuel/scripts/daily-backup.sh
0 9 7 * * /home/samuel/scripts/weekly-backup.sh
```
For more details on crontab syntax, consult the manual or use https://crontab.guru/ for help.

📁 Clone Repository

Clone this repository via Bash using:

✅ HTTPS:

```bash
git clone https://github.com/SamColt36/dynamic-backup-of-home-directory
```

✅ SSH:

```bash
git clone git@github.com:SamColt36/dynamic-backup-of-home-directory
```

✅ GitHub CLI:

```bash
gh repo clone SamColt36/dynamic-backup-of-home-directory
```

📶 Status

The project is currently:

> Finished but subject to improvement.

🛠️ Running the Project

Run the commands by adding a period slash (./) next to the script name or call the interpreter in front of the script name. See an example with the daily backup script:

```bash
./daily-backup.sh
```
or
```bash
bash daily-backup.sh
```

> daily-backup.sh: For a daily backup to keep files easily accessible in a crisis situation;
> weekly-backup.sh: For a weekly backup with compression.

👥 Contributions

Contributions are welcome! Feel free to submit pull requests or report issues.
📄 License
This project is licensed under the MIT License. See the LICENSE file or visit MIT License (mit-license.org) for details.