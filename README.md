# CodeServer_Python

#### Set PYTHONPATH permenently:
```bash
nano ~/.bashrc
```
add this line at the bottom of the file (for example):
```bash
export PYTHONPATH=$PYTHONPATH:/home/workspace/InteractionFreePy/
```

#### Set PYTHONPATH for Pylint:
create a file named (for example) /home/workspace/env with the content below:
```bash
PYTHONPATH=$PYTHONPATH:/home/workspace/InteractionFreePy/
```
open the setting of "python: env file", set the path, then refresh the page.
