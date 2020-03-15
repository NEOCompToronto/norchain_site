#Zip Server
echo "zipWebSite"
#for the firest time
#zip -r ./Server_mx_game.zip ./* --exclude=*runtime* -x *log_* .* uploadWebGame.sh
#zip -r ./norchain.zip ./website/* --exclude=*runtime* --exclude=*frameworks* -x *log_* .* uploadWebGame.sh

#only publish folder
#cd ./publish/html5/

cd ./website/home/


zip -r ./norchain.zip ./* -X *.DS_Store
mv ./norchain.zip  ../../
cd ../../
#mv ./Server_mx_game.zip ../../
#cd ../../

ls -l | grep norchain.zip

scp -i ~/.ssh/zbeans.pem ./norchain.zip ec2-user@44.232.231.234:~/Documents/
echo "run deploy_norchain.sh in amazon Server spot at 44.232.231.234"
ssh -i ~/.ssh/zbeans.pem ec2-user@44.232.231.234 "cd Documents && ls -la && sh ./deploy_norchain.sh"



#remove zip file
echo "remove zip file"
#rm ./norchain.zip
