Docker image build script that provides PyTorch library powered Jupyter Notebook that supports
AMD GPU devices.

Requirements:
    Docker
    AMD ROCm
    AMD GPU (Vega 64 or other)

Docker:
```bash
    sudo apt install docker.io
```

AMD ROCm installation:
https://rocmdocs.amd.com/en/latest/Installation_Guide/Installation-Guide.html

Build docker container:
```bash
    ./build.sh
```

Run docker container:
```bash
    ./run.sh
```

Jupyter Notebook will be available at http://127.0.0.1:8888/. Check out console output to get access token for Jupyter.

Check that GPU is enabled inside Jupyter Notebook:

```python
import torch

print("CUDA device available:", torch.cuda.is_available())
print("CUDA device count:", torch.cuda.device_count())

if torch.cuda.is_available():
    print("CUDA devices list:")
    for dev_index in range(torch.cuda.device_count()):
        print("\t", dev_index, torch.cuda.get_device_name(dev_index))
```

Example output:
```
CUDA device available: True
CUDA device count: 1
CUDA devices list:
	 Device 687f
```
