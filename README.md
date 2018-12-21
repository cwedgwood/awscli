## cwedgwood/awscli ##

AWS cli in a container; For use where I don't have awcli installed.
Possibly useful to others.

To use:

    docker run --rm -v $(HOME)/.aws/credentials:/root/.aws/credentials cwedgwood/awscli ec2 describe-instances
