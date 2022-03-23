PATH="$PATH:/usr/local/bin"
APP_NAME="petclinic"
<<<<<<< HEAD
APP_STACK_NAME="Trex-$APP_NAME-App-QA-${BUILD_NUMBER}"
CFN_KEYPAIR="matt-${APP_NAME}-qa.key"
CFN_TEMPLATE="./infrastructure/qa-docker-swarm-infrastructure-cfn-template.yml"
=======
CFN_KEYPAIR="Permanent-Weekly-${APP_NAME}-qa.key"
>>>>>>> feature/msp-18
AWS_REGION="us-east-1"
aws ec2 create-key-pair --region ${AWS_REGION} --key-name ${CFN_KEYPAIR} --query "KeyMaterial" --output text > ${CFN_KEYPAIR}
chmod 400 ${CFN_KEYPAIR}
mkdir -p ${JENKINS_HOME}/.ssh
mv ${CFN_KEYPAIR} ${JENKINS_HOME}/.ssh/${CFN_KEYPAIR}
ls -al ${JENKINS_HOME}/.ssh