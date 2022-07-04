FROM tomcat9
Copy target/*.war /usr/local/tomact/webapps/
COPY --from=publish/app /app .
COPY --from=build /app .
