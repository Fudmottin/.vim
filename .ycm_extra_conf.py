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

    include_paths = [os.path.dirname(os.path.abspath(filename))]
    include_paths.extend(include_dirs)

    return {
        'flags': flags,
        'include_paths_relative_to_dir': include_paths,
        'do_cache': True
    }

