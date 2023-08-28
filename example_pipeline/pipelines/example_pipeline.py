import bspump
import bspump.file
import bspump.trigger
import bspump.common
import random

from ..processors.example_processor import ExampleProcessor

import logging

L = logging.getLogger(__file__)


class RandomNumberSource(bspump.abc.source.TriggerSource):
  def __init__(self, app, pipeline, id=None, config=None):
    super().__init__(app, pipeline, id=id, config=config)

  async def cycle(self):
      await self.process(random.randint(1, 100))


class ExamplePipeline(bspump.Pipeline):
    def __init__(self, app, pipeline_id):
        super().__init__(app, pipeline_id)

        self.Source = RandomNumberSource(app, self).on(
            bspump.trigger.PeriodicTrigger(app, interval=0.3)
        )

        self.Sink = bspump.file.FileCSVSink(app, self)

        self.build(
            self.Source,
            ExampleProcessor(app, self),
            self.Sink,
        )
