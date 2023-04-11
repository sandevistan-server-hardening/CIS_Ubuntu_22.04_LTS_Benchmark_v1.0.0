# CIS_Ubuntu_22.04_LTS_Benchmark_v1.0.0

Audit script based on CIS Ubuntu 22.04 LTS Benchmark v1.0.0

This repo is a part of Project Sandevistan. Project Sandevistan is an open source project intended to bridge the gap between buying tools or renting hardened images and struggling through publicly available hardening benchmarks. While world class information exists to configure servers the methods of auditing servers is minimal without shelling out considerable payment. To improve accessibility to better server security, we aim to provide easy to use tools that are free and educate our users in the process of server hardening. We hope to strengthen the backbone of the internet! 

This repo is a best effort interpretation of the CIS_Ubuntu_22.04_LTS_Benchmark_v1.0.0 to provides a bash script which can check your system against this published CIS Hardening Benchmark to offer an indication of your system's preparedness for compliance to the official standard.


## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.


### Prerequisites

Ubuntu 22.04 LTS or equivalent should be running as your operating system on your machine/server

```
lsb_release -a
```

if you get the error message "lsb_release: not found" run the following command:
```
apt-get update && apt-get install -y lsb-release && apt-get clean all
```

### Installing

In terminal navigate to this project and run the audit with this command:

```
./audit.sh

```

The audit can also be run with arguments to define the hardness profile without prompts.

```
./audit.sh 1 server
```

in this examplethe audit will test against level 1 hardness for servers.

```
./audit.sh 2 workstation
```

in this examplethe audit will test against level 2 hardness for workstations.

## Development

Assuming Docker is installed. These commands will fetch the Sandevistan Ubuntu 22.04 Level 0 Docker image and start a container:

```
docker pull shanecfast/sandevistan-ubuntu-22.04-developer-level-0:latest
docker run -it sandevistan-ubuntu-22.04-developer-level-0:latest /bin/bash
```
Levels 1 and 2 will become available as development progresses for test usage. Once the docker image is running and you are in the terminal do the following commands to import the project:

```
git clone https://github.com/sandevistan-server-hardening/CIS_Ubuntu_22.04_LTS_Benchmark_v1.0.0.git
chmod +x -R CIS_Ubuntu_22.04_LTS_Benchmark_v1.0.0
cd CIS_Ubuntu_22.04_LTS_Benchmark_v1.0.0
```

This command may also be handy for active development
```
git stash && git pull && cd .. && chmod +x -R CIS_Ubuntu_22.04_LTS_Benchmark_v1.0.0 && cd CIS_Ubuntu_22.04_LTS_Benchmark_v1.0.0
```

## Running the tests

Tests can be run with the command.

```
./test.sh
```

## Deployment

Clone this project into your server/workstation/test environment


## Contributing

Please read [CONTRIBUTING.md] for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Shane Fast** - *Initial work* - [Scfast](https://github.com/scfast)

See also the list of [contributors](https://github.com/sandevistan-server-hardening/CIS_Ubuntu_22.04_LTS_Benchmark_v1.0.0/graphs/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* [CIS](https://www.cisecurity.org/)