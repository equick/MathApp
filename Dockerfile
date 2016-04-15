FROM golang:1.6

# Create the directory where the appslication will reside
RUN mkdir /apps

# Copy the appslication files (needed for production)
ADD MathApp /apps/MathApp
ADD views /apps/views
ADD conf /apps/conf

# Set the working directory to the apps directory
WORKDIR /apps

# Expose the appslication on port 8080.
# This should be the same as in the apps.conf file
EXPOSE 8080

# Set the entry point of the container to the appslication executable
ENTRYPOINT /apps/MathApp
