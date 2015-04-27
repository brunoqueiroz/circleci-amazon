echo $CIRCLE_TEST_REPORTS
echo -e $BRUNOSP >> brunosp.pem
chmod 600 brunosp.pem
scp -i brunosp.pem server.sh ec2-user@54.94.154.180:/tmp/ #nao consigo rodar esse comando na amazon por ssh
#tive que dar permissao na /usr/share/nginx/html para 777, resolver problema de executar .sh com usuario ec2-user.
ssh -t -i brunosp.pem ec2-user@54.94.154.180 'cd /tmp; sudo chmod 777 server-docker.sh; ./server-docker.sh'
#scp -i brunosp.pem server.sh ec2-user@54.94.154.180:/tmp/