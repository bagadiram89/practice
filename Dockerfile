FROM tomcat9
Copy target/*.jar /usr/local/tomact/webapps/
COPY --from=publish/app /app .
COPY --from=build /app .
