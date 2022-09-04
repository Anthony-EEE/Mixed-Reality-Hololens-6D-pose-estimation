# Mixed-Reality-Hololens(6D pose estimation evaluation)
 This is Final year project to research Mixed-Reality and the function of 6D pose estimation of Hololens. Then evaluate and improve the method of 6D pose estimation.


## 6D-pose estimation evaluation of Hololens

This project aims to use Azure Object Anchors and Hololens to track the physical world objects and estimate their 6Dof pose (Translation and rotation).
Then we evaluate the method to provide better DL 6Dof pose estimation to achieve better performance on the benchmark.

*![](https://github.com/Anthony-EEE/Mixed-Reality-Hololens-6D-pose-estimation/blob/main/Images/msft-hololens-2.jpeg)
## Video Demonstration
YouTube link of our video: upload later......

## Prerequisite:
  ## Hardware

  * Hololens 2
  * Windows 10 system laptop/computor with GPU and RAM > 8G

  ## Software
  * [Windows 10 Pro](https://www.microsoft.com/en-gb/d/windows-10-pro/df77x4d43rkt?activetab=pivot:overviewtab)
  * [Unity > 2019.4](https://unity3d.com/get-unity/download/archive) 
  * [Visual Studio > 2019](https://docs.microsoft.com/en-gb/visualstudio/releases/2019/release-notes)
    * Make sure you install (Azure development, .Net desktop development, [Universal Windows Platform development](https://visualstudio.microsoft.com/en-gb/vs/features/universal-windows-platform/), Windows 10 SDK > 10.0.18362.0, Game development with Unity, [.NET 6.0](https://dotnet.microsoft.com/en-us/download/dotnet/6.0))
  * [Hololens emulator](https://docs.microsoft.com/en-us/windows/mixed-reality/develop/advanced-concepts/hololens-emulator-archive) with latest version for debugging
  * 3D model software: AutoCAD/Fusion 360/Blender/meshlab......

## Dataset building:
### 3D model dataset
* [YCB mesh model](https://www.ycbbenchmarks.com/): YCB 3D mesh models using fusion360 to scale unit and then models were converted to .ou models following instructions of [Azure Object Anchor](https://docs.microsoft.com/en-us/azure/object-anchors/quickstarts/get-started-model-conversion).
### RGB images collecting tool install on HOlolens2:
* [STreamRecorderApp](https://github.com/microsoft/HoloLens2ForCV)
### (BOP) datasets for EPOS
  ```
  bop
  │ 
  └───datasets 
  │   │
  │   └───ycbv
  │   │   │
  │   │   └───models 
  │   │   └───models_eval
  │   │   └───models_fine
  │   │   └───test
  │   │   │   └───'scene ID'
  │   │   │       └───depth
  │   │   │       └───mask
  │   │   │       └───mask_visib
  │   │   │       └───rgb
  │   │   │       └───scene_camera.json
  │   │   │       └───scene_gt.json
  │   │   │       └───scene_gt_info.json
  │   │   └───camera.json
  │   │   └───dataset_info.md
  │   │   └───test_targets_bop19.json
  │   └───tless
  │   └───lm
  ```
## [Software Instructions](https://github.com/Anthony-EEE/Mixed-Reality-Hololens-6D-pose-estimation/blob/main/INstructions.pdf):
* AOAMRTKApp
* StreamREcorderApp

## Evaluation methods:
* AOAMRTKApp estimate 6D pose of YCB-V objects
* StreamREcorder capture YCB-V objects' RGB images
* [EPOS](https://github.com/thodan/epos) estimate 6D pose of YCB-V objects
* Compare by visualising results
* Choose best performance of EPOS as ground-truth' and use ADI metric to evaluate HOlolens2

##Results:
[Numerical results](https://github.com/Anthony-EEE/Mixed-Reality-Hololens-6D-pose-estimation/blob/main/concat_result.csv)
![Visualised reults example](https://github.com/Anthony-EEE/Mixed-Reality-Hololens-6D-pose-estimation/blob/main/Images/crackerbox.jpg)
