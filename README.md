[![Build Status](https://travis-ci.org/SilleBille/CSC519-TechTalkDemo.svg?branch=master)](https://travis-ci.org/SilleBille/CSC519-TechTalkDemo)

# Tech Talk - Travis CI demo

A simple repo to demonstrate the working of Travis

## Presenters
- Dinesh Prasanth M K
- Mukundram Muraliram
- Vishal Murugan
- Manushri

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

### Screencast - Demo
- [Screen Cast](https://youtu.be/SGGI7g2pjrY)
- [Instruction to set up Personal Travis](http://pki.fedoraproject.org/wiki/Personal_Travis_CI_build)

### Advanced Usage
- Advanced scenario on how RedHat's Dogtag PKI infrastructure uses Travis CI is available [here](http://pki.fedoraproject.org/wiki/Travis_CI#Pictorial_Representation)
- Production Travis Environment is accessible [here](https://travis-ci.org/dogtagpki/pki)
