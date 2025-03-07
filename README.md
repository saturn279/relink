# relink

<p align="center">
  <img src="https://raw.githubusercontent.com/saturn279/relink/refs/heads/main/img.png" alt="dnfuzz Logo" width="300">
</p>

Welcome to `relink` - the symbolic link transformer!

`relink` is a lightweight Linux utility designed to streamline the management of symbolic links by converting absolute symbolic links to relative ones within a specified directory. This ensures that your symbolic links remain intact and functional even when the directory structure is moved or shared across different systems.
It works recursively and is designed to be idempotent. Performing multiple tranformations on the same directory does not leave dangling links.

### Why Use relink?

Symbolic links are widely used in Unix-based systems (including Linux and macOS) to create flexible and efficient file structures. However, these links often break when transferred to different systems due to absolute paths or platform-specific variations. `relink` helps mitigate this issue by converting symlinks into a portable format, ensuring consistency and usability across different environments.

### Use Cases

- **Software Deployment**: Ensuring symlinks remain valid when deploying applications across different environments.
- **Containerized Applications**: Maintaining symlink integrity in Docker, Kubernetes, or other containerized workflows.
- **Cross-Platform Compatibility**: Transferring symlinked files between Linux, macOS, and Windows (WSL) systems.
- **Version Control and Backup**: Storing symlinked files in repositories or backups without losing link integrity.
- **Portable Development Environments**: Keeping symlinked project dependencies intact across multiple machines.

## Installation

### Manual

To install `relink`, simply run the following command in your terminal:

```sh
git clone https://github.com/saturn279/relink
cd relink
```

## Usage

Convert Absolute Links to Relative:

```sh
relink <directory_path>
```
For advanced control over paths

 ```sh
relink_custom <base_directory> <old_prefix_path> <new_prefix_path>
```

### Examples
```sh
./relink.sh /home/user/project
```

```sh
./relink_custom.sh /data /mnt/old_drive /mnt/new_drive
```

#### Options
- <directory_path>: Specify the base directory for recreated relative paths and for recursive search for softlinks
- <old_prefix_path>: The existing prefix in symbolic links that needs to be replaced.
- <new_prefix_path>: The new prefix that will replace the old one in symbolic links.



