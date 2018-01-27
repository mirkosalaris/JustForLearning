# Classifier of various OSes screenshots
This was my absolutely first time trying doing something alone with TensorFlow
I just had participated in a TensorFlow codelab (offered by Converge: Google +
frog design) the day before this experiment of mine.

### Summary of what I've done
I have simply taken the tutorial ["TensorFlow For Poets"][1] and adapted
it to a dataset I created of screenshots of various OSes. I created the dataset
using Google Images and a plugin to download the images efficiently.

### The result
Unsurprisingly awful. I knew it from the beginning that taking a model optimized
to recognize natural objects and retrain it to do this task was a terrible idea.
Despite knowing it, I tried because that tutorial was the one that I
learned in the codelab and readapt it was just the fastest way to try something
for myself and to see if I had understood.

### What I learned from this
1. Dataset  
   I 'knew' by hearsay that collecting a proper dataset was the difficult thing,
   but now I know it better. I'm pretty sure that collecting a dataset for my
   task is pretty easy: after all, we are talking about screenshots. Nonetheless,
   being my first time, I spent some hours doing it.

1. Retraining  
   If you aim at retraining, then choose a proper starting model and not just
   the first you find, because an inappropriate starting model will probably
   lead to a bad final model.

2. TensorFlow  
    Just joking, a comprehension of TensorFlow is not really needed to this thing
    and even doing it you don't really learn a lot about it

### How to see what I did
1. Clone the project
2. Navigate to the root folder
3. Get a screenshot of Android, Window10, Ubuntu, OSx.
3. To see how the screenshot is classified, launch `python -m scripts.label_image --graph=tf_files/retrained_graph.pb --image=IMAGE_PATH/FILENAME`

[1]: https://codelabs.developers.google.com/codelabs/tensorflow-for-poets/