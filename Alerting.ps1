$pass = "C:\id-sys\share\answer"

$answer = Get-ChildItem $pass

if($answer -ne $null){

    foreach($error_file in $answer){

        Send-MailMessage -From 'example@example.ru' -To 'example@example.ru' -Subject 'Возникла ошибка' -Body "Необходимо перейти на станцию example!" -Attachments $error_file -Priority High -SmtpServer 'example'

    }

}