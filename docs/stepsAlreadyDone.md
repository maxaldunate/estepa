# Estepa Project. Stepts already done

1. Setup Visual Studio Code
1. Create Git Repo
    ```bash
    cd "path to your repo"
    git init
    git add . # if you want to commit everything. Otherwise use .gitconfig files
    git commit -m "initial commit" # If you change anything, you can add and commit again...

    git remote add origin https://...
    git remote show origin # if everything is ok, you will see your remote
    git push -u origin master # assuming your are on the master branch.
    ```
1. Create a gmail & aws accounts
1. Create and CLI IAM user in aws console
1. Open an "AWS Support Center" ticket to transfer "aldunate.pro" domain from esparta to estepa projects aws accounts. [Aws Doc](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-between-aws-accounts.html)
1. [Migrating hosted zones](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/hosted-zones-migrating.html)
1. Install Aws CLI (Command Line Interface)
1. Generate aws config file profile
`$ aws configure --profile estepa`
File on 'C:\Users\Admin\.aws'
`$ aws route53 list-resource-record-sets --hosted-zone-id  Z1I1J4GDU1WGRO > escamarla.dzarq.json --profile escamarla.climax`
`$ aws route53 list-resource-record-sets --hosted-zone-id   Z28V06IYLMSAUR > escamarla.aldunate.pro.json --profile escamarla.climax`
aws route53 list-resource-record-sets --hosted-zone-id hosted-zone-id > path-to-output-file
1. Create Hosted Zone manually for each domain
1. Create Certificates on Us East N Virginia
    * dzarquitectura.com,  *.dzarquitectura.com & www.dzarquitectura.com
    * aldunate.pro,  *.aldunate.pro, *.max.aldunate.pro, max.aldunate.pro & estepa.aldunate.pro
1. Add Recordsets except for: NS & SOA, CNAMES for Certificates, ALIASES after all


1. Move **max@aldunate.pro** eMail ["Git Repo"](https://github.com/maxaldunate/mail-forwarder)
    1. Verify Amazon SES Domains (Adding to hosted zones). Generating DKIM Setting on Route53
     For Domains and Email addresses
     [Aws Console](https://eu-west-1.console.aws.amazon.com/ses/home?region=eu-west-1#verified-senders-domain:)
    1. Create a rule at Rule Sets and remove the rule. Remaining "default-rule-set"
    1. terraform.tfvars
    1. terraform init || terraform apply
    1. mail-forwarder.bat
    1. Update Route 53 Domain DNSs with new hosted zones
    1. Remove old hosted zones
    1. Ask AWS Suppor to increases 'SES Sending Limits' to 500
    1. SES Home/SMTP Settings get Server name
    1. Route 53. 
        * Create MX "10 inbound-smtp.eu-west-1.amazonaws.com"
        * Create TXT aldunate.pro ""v=spf1 a mx -all""
        * Create TXT _amazonses .aldunate.pr "BM5kuua......../.........................WYk"
    1. Create SMTP Credentials.
        IAM User: ses-smtp-user.20190618-182845
        SMTP Username: AKI..........JQADQ6P
        SMTP Password: BM5k.........../....................eBw85WYk
1. Move **aldunate.pro** Web Site. ["Git Repo"](https://github.com/maxaldunate/max-aldunate-pro)
    1. Download github repo
    1. npm install || npm test || npm run webpack-prod
    1. Create manually on Aws
        1. S3 'max.aldunate.pro' with public and static web page server
        1. Upload files: dist/images/practices/styles/cv.pdf/favicon/index
        1. Create CloudFront distribution pointing to S3 bucket
        1. Create Alias Record on Route53
1. 


The End