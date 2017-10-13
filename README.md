[![Build Status](https://travis-ci.org/SilleBille/CSC519-TechTalkDemo.svg?branch=master)](https://travis-ci.org/SilleBille/CSC519-TechTalkDemo)

# Tech Talk - Travis CI demo

A simple repo to demonstrate the working of Travis

## Presenters
- Dinesh Prasanth M K
- Mukundram Muraliram
- Vishal Murugan
- Manushri

### Screencast - Demo
- [Screen Cast](https://youtu.be/SGGI7g2pjrY)

### Slides - Demo
- [Slides](https://docs.google.com/a/ncsu.edu/presentation/d/1KHg0NRKmN-UuNzs5eLzCP_L7MbhOxMFBYP0836zA5mY/edit?usp=sharing)

### What is Continuous Integration?

Continuous Integration (CI) is a software development ideology where developers frequently contribute to a central repository. Automated test scripts are run on the pushes. This way, code is often merged and tested leading to early detection of bugs and errors. CI is known to reduce the time spent on identifying and rectifying bugs and boost the software development time. By integrating periodically, CI also prevents a merging hell.

![Continuous Integration](https://www.soasta.com/wp-content/uploads/2016/01/infitiny-circle_v1.png)

### Travis CI

Travis CI is a service built on Ruby commonly used to continually integrate software under development. It is a hosted, distributed service that integrates with GitHub and supports almost all the languages in widespread use today.Travis CI is automated and requires almost no maintanence. 

### Travis Keywords

- Build - A build is one automated run of tests on a submitted commit
- Job - A job is the fundamental unit of tests run sequentially (usually a job is spawned for each environment)
- Phase - A job is made of phases executed sequentially (like installation phase, script phase etc.)
- Stage - A build can be divided into stages that are executed sequentially. Each stage is made up of jobs that are executed concurrently. 

### Instructions to use run this sample project
1. Clone this project
2. `cd CSC519-TechTalkDemo`
3. `.travis.yml` - When this file is added to a repo, Travis CI can be triggered whenever there is a push to this repo
4. `./success.sh` - runs and commits a successful build
5. `./failure.sh` - runs and commits a failing build

### Linking Travis to your repo
1. Add the forked repository by clicking the `+` sign next to My Repositories. 

![Adding](http://pki.fedoraproject.org/images/a/ac/Travis_2.png)

2. Turn on the switch for the project you want Travis to be integrated. If necessary, click on `Sync projects from GitHub` to refresh the list of repositories. 

![Enabling](http://pki.fedoraproject.org/images/0/0c/Travis_4.png)

3. To verify whether the integration was successful, in your project, go to **Settings -> Integration & services**, verify that Travis CI appears under **Services**. 

![Verification](http://pki.fedoraproject.org/images/thumb/8/81/Travis_5.png/800px-Travis_5.png)


### Instructions to setup Travis for personal opensource projects
- [Instruction to set up Personal Travis](http://pki.fedoraproject.org/wiki/Personal_Travis_CI_build)
### Advanced Use Cases of Travis CI
#### Build Matrix
Users can create a build matrix to test a wide variety of environments. By declaring certain options for Environment Variables, Jobs to Run, Include/Exclude Statements, Travis will run a build for every possible permutation of these options. 

#### Build stages (Beta)
Build stages is a way to group jobs. Jobs in each stage are executed parallelly, however, stages are executed sequentially.
A stage will begin execution only after all jobs in the previous stage have passed successfully. If one job fails in a stage, all other jobs on the same stage will still complete. However, the subsequent stages will not begin exection.

![Build Stages](https://cloud.githubusercontent.com/assets/3729517/25229553/0868909c-25d1-11e7-9263-b076fdef9288.gif)

#### Docker usage
Docker is provided as one of the services for Travis CI.  Add docker as one of the services in .travis.yml file and the user can continue to use docker commands in the shell.
Docker can be used to:
-   Pull Docker images from central or private registries and start them up as part of your build.
-   Set up a build environment that closely matches your development or production environments to run your tests.
-   Set up an environment close to your production systems to run your code in and run your tests against.
-   Build a Docker image before, after or during a successful build and ship it to a registry so you can use it on your staging or production systems.
(Reference for Docker: https://blog.travis-ci.com/2015-08-19-using-docker-on-travis-ci/)

#### Cron jobs
In addition to running builds after a git push, users can also run builds at regular scheduled intervals independently of whether any commits were pushed to the repository. The most recent commit on a particular branch is fetched by Travis-CI and the project builds at that state. Daily, weekly, or monthly builds can be scheduled.The cron starts around the time the build is created.

![Cron Job tab in Travis](https://blog.travis-ci.com/images/2016-12-06.16.00.59.png)

A job can also be configured to either:
1. always run
2. skip if there has already been a regular build in the last 24 hours

#### 3rd party APIs and apps
-   Websites: Full Web Clients, Dashboards, Tools
-   Mobile Applications: Android, iOS, Windows Phone
-   Desktop: Mac OS X, Linux, Windows, Cross Platform
-   Command Line Tools: Full Clients, Build Monitoring, Generators
-   Plugins: Google Chrome, Mozilla Firefox, Opera, Editors, git-travis 
-   Libraries: Ruby, JavaScript, PHP, Python, Elixir

Link: https://docs.travis-ci.com/user/apps/

### Pros and Cons of Travis
| **Pros** | **Cons** |
|:---------|:---------|
|It is very easy to setup| The hosted service can only work with github|
|Travis can be integrated easily with applications such as Slack or HipChat to give us instant notifications about build status|Builds with more dependencies take more time as the dependencies would have to installed each time. Though some directories can be cached, it is not as fast as running it on a pre-installed system (if there is such a need)|
|It is a hosted service|No file sharing between jobs|
|Completely free for open source projects|No access to the machines where jobs are run|

### Other Popular Competitors and their advantages
- Jenkins
    - Has more customizations via plugins
    - Is completely free to use
    - We can have full control of the system as Jenkins is run on our system
- Circle CI
    - It's easy and fast to start like Travis CI
    - It's also a hosted service
    - It's much cheaper for projects which aren't open source compared to Travis CI

### Advanced Usage
- Advanced scenario on how RedHat's Dogtag PKI infrastructure uses Travis CI is available [here](http://pki.fedoraproject.org/wiki/Travis_CI#Pictorial_Representation)
- Production Travis Environment is accessible [here](https://travis-ci.org/dogtagpki/pki)

### References
- Advanced scenario references taken from:
    - https://docs.travis-ci.com/
    - https://blog.travis-ci.com/
