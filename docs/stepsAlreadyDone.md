# Estepa Project. Stepts already done

1. Setup Visual Studio Code
1. Create Git Repo [link](#create-git-repo)
1. Create a gmail & aws accounts
1. Create and CLI IAM user in aws console
1. Transfer "aldunate.pro" domain from esparta to estepa project. [Aws Doc](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-between-aws-accounts.html)
1.



### references

### Create Git Repo
```bash
cd "path to your repo"
git init
git add . # if you want to commit everything. Otherwise use .gitconfig files
git commit -m "initial commit" # If you change anything, you can add and commit again...

git remote add origin https://...
git remote show origin # if everything is ok, you will see your remote
git push -u origin master # assuming your are on the master branch.

```