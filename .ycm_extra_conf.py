import os
import ycm_core

def FlagsForFile(filename, **kwargs):
    # Default compile flags
    flags = [
        '-std=c++20',
        '-Wall',
        '-Wextra',
        '-Werror'
    ]

    # Add additional include directories if needed
    include_dirs = [
        '/usr/local/include',
        '/opt/homebrew/include'
    ]

    # Create -I flags
    include_flags = ['-I' + x for x in include_dirs]

    # Extend the flags list with include flags
    flags.extend(include_flags)

    include_paths = [os.path.dirname(os.path.abspath(filename))]
    include_paths.extend(include_dirs)

    return {
        'flags': flags,
        'include_paths_relative_to_dir': include_paths,
        'do_cache': True
    }

