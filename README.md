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

### What is Continuous Integration?

Continuous Integration (CI) is a software development ideology where developers frequently contribute to a central repository. Automated test scripts are run on the pushes. This way, code is often merged and tested leading to early detection of bugs and errors. CI is known to reduce the time spent on identifying and rectifying bugs and boost the software development time. By integrating periodically, CI also prevents a merging hell.

### Travis CI

Travis CI is a service built on Ruby commonly used to continually integrate software under development. It is a hosted, distributed service that integrates with GitHub and supports almost all the languages in widespread use today.Travis CI is automated and requires almost no maintanence. 

### Travis Keywords


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
Creating a build matrix is a way for users to test a wide variety of environments. By declaring certain options, Travis will take those options, and run a build for every possible permutation of the options. 

#### Docker usage
Travis CI builds can run and build Docker images, and can also push images to Docker repositories or other remote storage.
Add docker as one of the services in .travis.yml file and the user can continue to use docker commands in the shell. Can be used to:
-   Pull Docker images from central or private registries and start them up as part of your build.
-   Set up a build environment that closely matches your development or production environments to run your tests.
-   Set up an environment close to your production systems to run your code in and run your tests against.
-   Build a Docker image before, after or during a successful build and ship it to a registry so you can use it on your staging or production systems.

#### Build stages (Beta)
Build stages is a way to group jobs, and run jobs in each stage in parallel, but run one stage after another sequentially.
A stage is a group of jobs that are allowed to run in parallel. However, each one of the stages runs one after another, and will only proceed if all jobs in the previous stage have passed successfully. If one job fails in one stage, all other jobs on the same stage will still complete, but all jobs in subsequent stages will be canceled, and the build fails.

#### Cron jobs
Run builds at regular scheduled intervals independently of whether any commits were pushed to the repository. Cron jobs always fetch the most recent commit on a particular branch and build the project at that state. 
Cron build schedules can be defined by a build interval that is either daily, weekly, or monthly, with the cron starting around the time it was created.
In addition, a job can be configured to either:
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
