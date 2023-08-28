import bspump
import logging
from .pipelines.example_pipeline import ExamplePipeline

L = logging.getLogger(__name__)


class ExampleApp(bspump.BSPumpApplication):
    def __init__(self):
        super().__init__()
        svc = self.get_service("bspump.PumpService")

        svc.add_pipeline(ExamplePipeline(self, "ExamplePipeline"))
