Certainly, here's a `README.md` file for the project:

```markdown
# internsctl - Custom Linux Command

## Overview

`internsctl` is a specialized Linux command crafted to offer diverse features for system administrators and interns alike. This command enables users to retrieve details about the CPU, memory, and files on their server. It also facilitates the creation of new users and provides a list of existing users, including those with sudo privileges.

## Installation

1. Clone or download the repository to the local system.

2. Make the `internsctl` script executable using the following command:

   ```bash
   chmod +x internsctl
   ```

3. Move the `internsctl` script to the directory that is in your system's PATH so that you can run it from anywhere.

4. Make sure you have the required permissions to execute the script.

## Usage

### General Usage

- Display help and usage information:

   ```bash
   internsctl --help
   ```

- Display the version of `internsctl`:

   ```bash
   internsctl --version
   ```

- Greet the interns:

   ```bash
   internsctl -g
   ```

- Generate an intern report (custom logic can be added in the script):

   ```bash
   internsctl -r
   ```

### CPU and Memory Information

- Get CPU information similar to the `lscpu` command:

   ```bash
   internsctl cpu getinfo
   ```

- Get memory information similar to the `free` command:

   ```bash
   internsctl memory getinfo
   ```

### User Management

- Create a new user with the provided username:

   ```bash
   internsctl user create <username>
   ```

- List all regular users:

   ```bash
   internsctl user list
   ```

- List users with sudo permissions:

   ```bash
   internsctl user list --sudo-only
   ```

### File Information

- Get information about a file, including size, permissions, owner, or last modified time:

   ```bash
   internsctl file getinfo <file-name>
   ```

   - To get the size of the specified file:

     ```bash
     internsctl file getinfo --size <file-name>
     ```

   - To get the permissions of the specified file:

     ```bash
     internsctl file getinfo --permissions <file-name>
     ```

   - To get the owner of the specified file:

     ```bash
     internsctl file getinfo --owner <file-name>
     ```

   - To get the last modified time of the specified file:

     ```bash
     internsctl file getinfo --last-modified <file-name>
     ```


```

