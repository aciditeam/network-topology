require 'torch'
require 'image'
Plot = require 'iTorch.Plot'

ndims = 2;
nsamples = 1000;

torch.seed()
classA = torch.randn(nsamples, ndims) - 0.5;
classB = (torch.randn(nsamples, ndims) - 0.5) + (torch.cos(torch.randn(nsamples, ndims):mul(math.pi)):mul(2));

-- scatter plots
plot = Plot()
plot:circle(classA[{{}, 1}], classA[{{}, 2}], 'red', 'hi'):redraw()
plot:circle(classB[{{}, 1}], classB[{{}, 2}], 'green', 'yolo'):redraw()
plot:title('Random classes distribution'):redraw()
plot:xaxis('X-val'):yaxis('Y-val'):redraw()
plot:legend(true)
plot:redraw()