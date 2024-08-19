# Use an official Tomcat image as the base image
FROM tomcat:9.0.73-jdk11-temurin

# Set the working directory in the container
WORKDIR /usr/local/tomcat/webapps/

# Copy the WAR file from the Jenkins workspace to the Tomcat webapps directory
COPY /var/lib/jenkins/workspace/git-jenkins-kuber/target/vprofile-v2.war /usr/local/tomcat/webapps/vprofile.war

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]

