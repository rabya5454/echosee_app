// ✅ Define repositories for all projects
allprojects {
    repositories {
        google()
        mavenCentral()
    }
}



// ✅ Adjust Build Directory Path
val newBuildDir: Directory = rootProject.layout.buildDirectory.dir("../../build").get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}

// ✅ Ensure app module is evaluated first
subprojects {
    project.evaluationDependsOn(":app")
}

// ✅ Clean Task
tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}