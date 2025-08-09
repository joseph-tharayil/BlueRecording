# SPDX-License-Identifier: GPL-3.0-or-later
from setuptools import setup

setup(
    name='bluerecording',
    version='0.2.1',    
    description='A tool for calculating extracellular recording lead fields',
    url='https://github.com/BlueBrain/BlueRecording',
    author='Blue Brain Project, EPFL',
    license='GPL-3.0',
    packages=['bluerecording'],
<<<<<<< HEAD
=======
    python_requires='>=3.9,<3.12',
>>>>>>> feature/magneticRecording
    install_requires=[
    'bluepysnap>=1.0.0',
    'libsonata>=0.1.28',
    'scikit-learn',
    'voxcell',
    'scipy',
    'numpy',
    'pandas',
    'morphio<3.3.7',
    'notebook',
    'ipython',
    'matplotlib',
    'MEAutility',
    'neuron',
    'connectome-utilities @ git+https://github.com/BlueBrain/ConnectomeUtilities',
    'pytest-cov',
    'ipympl',
    'neo',
    'xarray',
<<<<<<< HEAD
    'allensdk @ git+https://github.com/joseph-tharayil/AllenSDK',
    'cinplaAnalysis @ git+https://github.com/joseph-tharayil/CINPLA_Allen_V1_analysis',
    'pytz',
    'python-dateutil'
    ],
    pip_options=['--only-binary=matplotlib'],
=======
    'cinplaAnalysis @ git+https://github.com/joseph-tharayil/CINPLA_Allen_V1_analysis',
    'pytz',
    'python-dateutil'
    ]
>>>>>>> feature/magneticRecording
   )

