Living-Art
==========
Workhop experiment offered by Le Cube where we explored the idea of code creating our art for us based off of user interactions.

This piece will add a random shape to the canvas if the viewer is interested (when someone's face is detected in front of the webcam). Every two seconds, as long as someone's watching, a shape will be added. The shapes will begin to spawn in the center of the canvas, and as more and more are added, they will begin to stray to the outsides of the canvas.

This code is in Processing, and uses the OpenCV library for webcam integration and facial recognition (and also requires an install prior to running this code).