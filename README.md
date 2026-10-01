# Role-Based Access Control on linux 
A practice project simulating a real-world scenario: multiple team members sharing one server,each with different levels of access

## Scenario 
A company has three roles on a shared server:
-** devuser** -a developer who needs full read/write access to the project folder
-** opsadmin** - a system administrator with sudo (root) privileges
-** auditor** - a reviewer who can only read files,never modify them 

## what this project covers 
-Created three users with distinct roles and permission levels
-Granted sudo access only to the admin role 
-Created a shared folder ('/shared/project') with group-based access control
-Verified access boundaries by testing as each user ('sudo -u username')
-Automated the entire setup into a single bash script('scripts/access_setup.sh')

## Skills demonstrated
-User and group management ('adduser' , 'groupadd' , 'usermod')
-permission boundaries ('chown' ,'chmod')
-Testing access control from multiple user perspectives
-Bash scripting for repeatable infrastructure setup

## Test results
|Action| Expected | Result |
|---|---|---|
| devuser writes to folder | Allowed | Passed |
| auditor reads folder | Allowed | Passed |
| auditor writes to folder | Denied | Passed |
| Outside user reads folder | Denied | Passed |

## Files
- 'scripts/access_setup.sh' - automates the full user/permission setup
