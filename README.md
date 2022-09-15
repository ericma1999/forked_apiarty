<style scoped>
table {
  font-size: 11px;
}
</style>

# APIARTy

## Goals

* Execution of 14 repair tools on API misuses extracted from three bug benchmarks.
* Comparison of the repair tools on their effectiveness and efficiency on repairing API misuses.
* Examination of the effect of different API-misuse categories on the capabilities of API-repair tools.

## Selected repair tools

The following table shows the automated repair tools used for comparing their capabilities on detecting and fixing API misuses.

| #| Tool | Language | Repository| Checkout SHA |
| -- | ---------------| -------- | -------------------------------------| ------------ |
| 1| Nopol| Java| <https://github.com/ericma1999/forked_nopol.git>* | 8cb3676|
| 2| DynaMoth| Java| <https://github.com/ericma1999/forked_nopol.git>*| 8cb3676|
| 3| NPEFix| Java| <https://github.com/SpoonLabs/npefix> | -|
| 4| jGenProg| Java| <https://github.com/ericma1999/forked-astor.git>*| 5bf2e83|
| 5| jKali| Java| <https://github.com/ericma1999/forked-astor.git>*| 5bf2e83|
| 6| jMutRepair | Java| <https://github.com/ericma1999/forked-astor.git>* | 5bf2e83|
| 7| Cardumen| Java| <https://github.com/ericma1999/forked-astor.git>*| 5bf2e83|
| 8| ARJA | Java| <https://github.com/yyxhdy/arja>| 3e01305|
| 9| ARJA-GenProg| Java| <https://github.com/yyxhdy/arja>| 3e01305|
| 10 | ARJA-RSRepair | Java| <https://github.com/yyxhdy/arja>| 3e01305|
| 11 | ARJA-Kali| Java| <https://github.com/yyxhdy/arja>| 3e01305|
| 12 | Avatar| Java| <https://github.com/ericma1999/forked_avatar.git>*| 49389fd|
| 13 | TBar | Java| <https://github.com/ericma1999/forked_tbar.git>*| 4b5d42f|
| 14 | SimFix| Java| <https://github.com/xgdsmileboy/SimFix>| -|

Below are the tools that were modified to work with Java 1.8 which our bug projects require

* Nopol was checked out with the specified SHA and dependencies were modified
* Astor based tools (jGenProg, jKali, jMutRepair, Cardumen) was checked out with the specified SHA and dependencies were modified
* Avatar modified to execute with projects outside of Defects4j
* TBar modified to execute with projects outside of Defects4j
* SimFix

## Used bug benchmarks

The following table lists the bug benchmarks used for creating our benchmark of API misuses

| # | Arja-Arja | Arja-Genprog | Arja-Kali | Arja-RSRepair | Astor-Cardumen | Astor-jgenprog | Astor-jKali | Astor-jMutRepair | Dynamoth | Nopol | Tbar | Avatar | SimFix
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---: |:---:|:---:|:---:|:---:|:---:|
| VUL4J-2|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:x:
| VUL4J-3|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:x:
| VUL4J-7|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:x:
| VUL4J-8|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:x:
| VUL4J-9|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:x:
| VUL4J-10|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:x:
| VUL4J-11|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:x:
| VUL4J-19|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:x:
| VUL4J-23|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:x:
| VUL4J-24|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:x:
| VUL4J-34|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:x:
| VUL4J-44|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:x:
| VUL4J-45|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:x:
| VUL4J-46|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:x:
| VUL4J-47|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:x:
| VUL4J-48|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:x:
| VUL4J-51|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:x:
| VUL4J-56|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:x:
| VUL4J-57|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:x:
| VUL4J-61|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:x:
| VUL4J-64|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:x:
| VUL4J-71|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:x:
| VUL4J-74|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:x:
| VUL4J-77|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:clock1230:|:white_check_mark:|:x:|:x:

## Usage

To deploy and use APIARTy, you need to install Docker. If you use APIARTy on a desktop, get Docker Desktop from the following link:

* <https://www.docker.com/products/docker-desktop>

### Set-up and deployment

To build a Docker image of this repository and run it on Docker you need to follow the next instructions:

* `git clone https://github.com/mkechagia/APIARTy.git`
* `cd APIARTy`
* `docker build -t apiarty .`
* `docker run -it -v $PWD/apiarty-findings:/apiarty/findings --rm apiarty` or
* `docker run -it -v <absolute_path_to_store_results>:/apiarty/findings --rm apiarty` (it locally stores the results).
* Also, the following command can be used for keeping locally the data (buggy projects) `docker run -it -v <absolute_path_to_store_results>:/apiarty/findings -v <absolute_path_to_store_results>:/apiarty/data --rm apiarty`.

For more information about Docker, please check the following links:

* <https://docs.docker.com/develop/develop-images/dockerfile_best-practices/>
* <https://docs.docker.com/engine/reference/run/>

### Running APIARTy

`data/*.json` contains the projects' meta-data required by most repair tools. Easily you can add more `.json` files (i.e., projects) to detect and repair any bugs. The whole process can run on one project or on all. Just give the right commands presented in the following.

1. To run an experiment on one project e.g., Bears-84, using one tool e.g., Kali, give the following command:

* `./apiarty Arja-Kali Bears-84`

2. To analyse all the projects that exist in `data` using a particular repair tool e.g., Kali, give the following command:

* `./apiarty Arja-Kali`

3. To run all tools (Arja, Astor, Nopol and NPEFix) on a project e.g., Bears-84, give the following command:

* `./apiarty ALL Bears-84`

4. To run Avatar, TBar, or SimFix, apply the guidelines included in the `guidelines.txt` as these tools strictly use Defects4J commands.

## Execution environment

All experiments run on an Ubuntu 16.04 Linux Docker image of APIARTy
deployed on a 2-core PC with 8GB RAM and 3,1 GHz Intel Core i5 processor.
We used Java 1.8 (amd64) ofthe OpenJDK, allocating up to 4GB for the JVM.

## Repository structure

This repository is structured as follows:

```
APIARTy
├── APIRepBench.xlsx: information on the bugs of APIRepBench, patch correctness, execution time of repair attempts
├── Dockerfile
├── README.md
├── _config.yml
├── apiarty
├── apiarty.bin
│   ├── apiarty
│   └── bashrc
├── data: Our APIRepBench benchmark of API misuses
│   └── <bug_id>.json: standard input (with project metadata)
├── apiarty-findings: findings for Astor, NPEFix, recent tools (Avatar, TBar, SimFix), and remaining tools (the general structure follows)
   └── apiarty-findings
 ├── <bug_id>
 │   └── <repair tool>
 │  ├── stderr.txt: stderr of the execution (with repair)
 │  └── stdout.txt: stdout of the execution (with repair)
 ├── all-results.csv: execution time taken by the repair attempts (without those that reach the timeout)
 └── timeout.csv: repair attempts that failed by timeout
```

## Data Structure of the Misuse Project

```
"id": the misuse name/id of the project you will run with ./apiarty tool_name id,
"name": the letter name of the project eg 'esigate/esigate',
"vcs": version control system eg: svn, git....,
"repo": git repo of the project,
"method": the method that contains the misuse "createTransformer",
"method_line": the line number of the misuse method in the fixed commit,
"method_line_before": the line number of the misuse method before the fixed commit,
"revision": revision of the fixed commit,
"build_system": {
 "custom": [
{
"test": the test command for the misuse project, you can specify it to run a single test if the project is a multi-module project, but note that some tools utilise the checking whether the candidate patches cause other tests to fail. Hence we recommend to run the test on the whole test file for the single module of the project via the -pl using maven. "Eg: mvn test -pl esigate-core -Dtest=org.esigate.xml.XsltRendererTest -B"
},
{
"compile": the command to compile the misuse project
},
{
"extract": build the dependencies classpath for the misuse project, on a typical maven project it is "mvn dependency:build-classpath -Dmdep.outputFile='classpath.info' -U -V -B". Do check where the classpath is generated for multi-module project, since you will have to adjust the "custom_classpath_project" if you are only building a module from a bigger project.
}
 ]
},
"file_path": path to the file that contains the misuse code,
"test_class": the name of the class that contains the set of tests you want to run, it is the package name on top of the file + the class name eg: "org.esigate.xml.XsltRendererTest",
"src_path": source code path to the root of the misuse project,
"test_path": test path to the root of the misuse project,
"package_path": ".", //legacy property leave inside for compatibility with some tools
"src_classes": path to the compile classes eg:"esigate-core/target/classes",
"test_classes": path to the compile test-classes eg:"esigate-core/target/classes",
"custom_classpath_project": specify the subproject path that you want to evalute the tool on eg:"esigate-core" ** NEED: to specify this in order to work with multi-module projects


```
