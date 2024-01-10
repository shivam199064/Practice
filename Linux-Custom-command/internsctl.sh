#!/bin/bash

# version of the command
VERSION="v0.1.0"

#  manual page
MAN_PAGE="internsctl.1.sh"

#  help message
help_message() {
    man ./"$MAN_PAGE"  # Display the manual page
}

# main function
main() {
    case "$1" in
        -h | --help)
            help_message
            ;;
        -v | --version)
            echo "internsctl $VERSION"
            ;;
        -g | --greet)
            echo "Hello, interns! Welcome to the team."
            ;;
        -r | --report)
            echo "Generating the intern report..."
            # You can add the logic to generate the report.
            ;;
        cpu | memory)
            case "$2" in
                getinfo)
                    if [ "$1" == "cpu" ]; then
                        lscpu  # Running the lscpu command for CPU information
                    elif [ "$1" == "memory" ]; then
                        free -m  # Running the free command for memory information
                    fi
                    ;;
                *)
                    echo "Invalid subcommand. Use 'internsctl --help' for usage instructions."
                    ;;
            esac
            ;;
        *)
            echo "Invalid option. Use 'internsctl --help' for usage instructions."
            ;;
    esac
}

# Checking if any arguments are provided
if [ $# -eq 0 ]; then
    help_message
else
    main "$1" "$2"
fi
