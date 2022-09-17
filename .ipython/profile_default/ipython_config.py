c.InteractiveShellApp.extensions = [
]
c = get_config()
c.InteractiveShellApp.exec_lines = [
    'from datetime import datetime, timedelta',
    'from pathlib import Path',
    'try:\n    import ipdb\nexcept ModuleNotFoundError:\n    import pdb',
    'try:\n    import numpy as np\nexcept ModuleNotFoundError:\n    pass',
    'try:\n    import pandas as pd\nexcept ModuleNotFoundError:\n    pass',
    'np.set_printoptions(suppress=True, precision=4, linewidth=120)',
    'pd.options.display.width = 120',
    'pd.options.display.precision = 4',
    '%load_ext autoreload',
    '%autoreload 2'
]
