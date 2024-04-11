- Install Jenkins and follow instructions
- Install suggested plugins when prompted
- Create new Jenkins job
- Choose pipeline job

![Alt text](./readmeimg/pipelinejob.png "Pipeline Job")

- Go down to Pipeline settings, choose "Pipeline script from SCM," and fill in appropriate settings for repository

![Alt text](./readmeimg/pipelineconfig.png "Pipeline Config")

- Save and go to job
- Choose "Build Now"

![Alt text](./readmeimg/jobpage.png "Build Job")

- Jenkins will build the jar, runtests, and build a docker image on its local machine
- Run the docker image with "docker run -p 8080:8080 petclinic:<latestBuildNumber>"