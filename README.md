# GoLinty-Action
GitHub action to run Go lint checks on PR event

De-linting is a time-consuming process. The aim of LINTY is to support an iterative process to clear out lint. It uses a configuration file which lists packages that currently contain lint, and ensures that:

 - packages listed in the configuration are removed once they are free of lint
 - packages not listed in the configuration continue to be free of lint

If either of the above statements is FALSE, LINTY prints out a warning and exits. If both statements are TRUE, LINTY prints out a table of lint counts for the packages that are listed in its configuration.

## Usage

Repo must have a `.linty/linty.conf` file on the source tree root
By Default GoLinty will use

```
GOLANG_TAG=1.12-alpine
```

if you want a different version just set the variable on your `.github/main.workflow`

> Inspired by @tri-adam
