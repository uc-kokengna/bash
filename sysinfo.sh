emailaddress=username@mail.uc.edu

datetime="Date: $( date +'%dd:%mm:%Y:%Hhr:%Mmin')"

ip="IP_Address: $(ip a | grep 'dynamic ens192'| awk '{print $2}')"

Server="Server_Name: $MACHTYPE"

Bashversion="Bash_version: $BASH_VERSION"

content="User: $USER"

mail -s "IT3038C Linux IP" $emailaddress <<< $(echo -e $content $ip $Server $Bashversion $datetime)

Send-MailMessage -To "username@mail.uc.edu" -From "username@mail.uc.edu" -Subject "IT3038C Windows SysInfo" -Body $BODY -SmtpServer smtp.office365.com -port 587 -UseSSL -Credential (Get-Credential)
