# Setup Guide for Maven Archetype Project with IntelliJ IDEA

This document outlines the steps required to initialize, build, and deploy a Maven-based web application project using IntelliJ IDEA.

## Steps

### 1. Create a Maven Archetype Project

1. **Open IntelliJ IDEA** and go to the **Welcome Screen**.
2. Select **Create New Project**.
3. Choose **Maven** from the left sidebar.
4. Make sure the **Project SDK** is set to a valid version of Java (e.g., Java 8 or later).
5. In the **Maven Archetype** section, click **Add Archetype**.
   - In the **GroupId** field, enter `org.apache.maven.archetypes`.
   - In the **ArtifactId** field, enter `maven-archetype-webapp`.
   - Select the appropriate version (E.g 1.4), or leave it at the default.
   - Leave catalog unset, defaulting to Internal catalog
6. Click **Next**.

### 2. Configure Project Settings

1. **GroupId**: Enter a unique identifier for your project group (e.g., `com.example`).
2. **ArtifactId**: Set the name of your project (e.g., `demo`).
3. **Version**: Set the version of your project (e.g., `1.0-SNAPSHOT`).
4. Choose the **Project Location** (where your project files will be saved).
5. Click **Finish** to generate the project.

### 3. Explore Project Structure

Your newly created project will have the following structure:

### 4. Build & Run the project

Go to the base folder (project name directory)

```bash
mvn clean package
```


### 4. Deploy & Run the project
 - Right click on the .war file in target directory
 - Run on Server (tomcat server)
 - use default settings
 - Acess the app at http://localhost:8080/project_name

## Happy codding!!!