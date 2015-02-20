A docker image for [FakeSMTP](https://github.com/Nilhcem/FakeSMTP)

This allows you to run a SMTP server for testing applications which send mail. Each mail is written to a file in `/var/mail`

Example startup command:

    docker run -d -p 2525:25 -v /tmp/fakemail:/var/mail munkyboy/fakesmtp
