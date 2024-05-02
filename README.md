# relink

Welcome to `relink` - the symbolic link transformer!

`relink` is a lightweight Linux utility designed to streamline the management of symbolic links by converting absolute symbolic links to relative ones within a specified directory. This ensures that your symbolic links remain intact and functional even when the directory structure is moved or shared across different systems.
It works recursively and is designed to be idempotent. Performing multiple tranformations on the same directory does not leave dangling links.

## Installation

### Method 1: Using the Installation Script

To install `relink`, simply run the following command in your terminal:

```sh
git clone https://github.com/saturn279/relink
cd relink
```

## Usage

relink can be executed with the following command:

```sh
relink <directory_path>
```
#### Options
<directory_path>: Specify the base directory for recreated relative paths and for recursive search for softlinks


