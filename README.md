# Mixed-Reality-Hololens(6D pose estimation)
 This is Final year project to research Mixed-Reality and the function of 6D pose estimation of Hololens. Then evaluate and improve the method of 6D pose estimation.


# 6D-pose estimation evaluation of Hololens

This project aims to use Azure Object Anchors and Hololens to track the physical world objects and estimate their 6Dof pose (Translation and rotation).
Then we evaluate the method to provide better DL 6Dof pose estimation to achieve better performance on the benchmark.
![](https://github.com/Anthony-EEE/Mixed-Reality-Hololens-6D-pose-estimation/blob/main/Images/msft-hololens-2.jpeg)
## Video Demonstration
YouTube link of our video: upload later......

## Prerequisite:
  ## Hardware

  * Hololens 2
  * Windows 10 system laptop/computor with GPU and RAM > 8G

  ## Software
  * Unity > 2019.4
  * Visual Studio > 2019
    * Make sure you install (Azure development, .Net desktop development, Universal Windows Platform development, Windows 10 SDK > 10.0.18362.0, Game development with Unity)
  * Hololens emulator with latest version
  * 3D model builder software: AutoCAD/Fusion 360/Blender......

## Dataset building:
* [YCB mesh model](https://www.ycbbenchmarks.com/)
* YCB 3D mesh models were converted to .ou models following instructions in [Azure Object Anchor](https://docs.microsoft.com/en-us/azure/object-anchors/quickstarts/get-started-model-conversion).

### Setting

* Environment:
    ![Data collection environment setting](/Experiment_Setting/setting.jpg)
* Muscles:
  * Zygomaticus (right)
  * Depressor Anguli Oris (left)
  * Digastric (right)

### Logistics

* Pre-recording:
  * Subject should wash face, shave, and clean the surface where the electrodes attached.
  * Take a photo of the electrode position.
* In-recording:
  * Word group: Drink, Eat, Walk, Right, Use
  * Each subject is required to repeat the word group 50 times. In each group words are in random order. Collect 1 group takes around 2 minutes. 5 minutes break after 10 times.
  * An iPad is used to record the whole collecting procedure for each subject. Make clear the subject index at the beginning.
  * An interface is provided, steps are as follows:
      1. Ask "Are you ready __?". Enter subject index and press Enter;
      2. Count down 3, 2, 1, then a word will be displayed on the screen;
      3. You have 3 seconds to "speak" the word;
      4. Wait until "Success" displayed.
      5. Press Enter again for the next word. (Back to step 2)
  
* Post-recording:
  * Subject should wash face.
  * Data structure: All the data is stored in the folder /Denoised_Data

  ```
  Training_Data
  │ 
  └───Denoised 
  │   │
  │   └───Subject_0
  │   │   │
  │   │   └───Drink 
  │   │   │   └───Channel_1.txt  
  │   │   │   └───Channel_2.txt 
  │   │   │   └───Channel_3.txt
  │   │   │   
  │   │   └───Eat
  │   │   │   └───Channel_1.txt
  │   │   │   └───Channel_2.txt
  │   │   │   └───Channel_3.txt
  │   │   │
  │   │   └───Walk
  │   │   │
  │   │   
  │   └───Subject_1
  │   │   │
  │
  └───Raw
  │   │
  ```

## Configuration

* Clone the repo: `git clone https://github.com/laiwenq/AML_Lymsy.git`
* Install requirements: `pip install -r requirements.txt`
* Under \PC_Code, run `python DataProcessing.py`
