# Multiple File Template Generator
a way to have a simple life on android project

## How To

1. Navgiate to `template` location on android studio

> `android-studio-location`/plugins/android/lib/templates/other/

on MacOs

> /Applications/Android Studio.app/Contents/plugins/android/lib/templates/other/

You can see list of current template in your android studio, now for your own template, create folder in and name it as your template name like `MVP Template`.

2. After create folder, you can all of file on it. more explanation about those files 


* `template.xml`  – This will contain information about the template (Name of your lib, type, minSdkVersion, etc)
* `recipe.xml.ftl`  – This will contain instructions explaining how to create the template, including what variables to ask the user for and what should be done with those variables.
* `globals.xml.ftl`  – This defines global variables
* `root/`  folder – this will contain the template of code. 

`.ftl` is freemarker template files, [More](http://freemarker.org/)

3.Look in `root/src/app_package`, there is the templates files that you want to create, in this example i want to create a MVP template base from [google architecture blue print](https://github.com/googlesamples/android-architecture/tree/todo-mvp-clean/) 


4.Restart your android studio and .....

 