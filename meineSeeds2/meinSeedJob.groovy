def gitUrl = 'http://gogs_infrastructure_gogs_1:3000/richard/masterSpringMvc.git'

pipelineJob('meinePipeline'){
  definition {
    cpsScm {
      scm {
        git {
	 branches('*') 
         remote {
           credentials('git_credentials')
           url(gitUrl)
          }
        }
        scriptPath('Jenkinsfile')
      }
    }
  }
}
