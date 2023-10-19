import bspump
from .pipelines import *

class App(bspump.BSPumpApplication):
    def __init__(self):
        super().__init__()
        svc = self.get_service("bspump.PumpService")

        svc.add_pipeline(ExamplePipeline(self, "ExamplePipeline"))
