 README

===============
Introduction

This project provides a pre-built Docker image with a populated database containing feedback data for a social media platform. The image includes a query table that displays posts with the highest number of reactions, along with additional information such as post ID, content, and reaction counts.
Features

    Pre-populated database with feedback data
    Query table displaying posts with the highest number of reactions
    Automatic slimming of the Docker image for improved performance

Getting Started

To use this image, follow these steps:

    Pull the image: Run the command docker pull ghcr.io/${{ github.repository_owner }}/my-image:slim to pull the image from the GitHub Container Registry.
    Run the container: Run the command docker run -p 8080:8080 ghcr.io/${{ github.repository_owner }}/my-image:slim to start a new container from the image.
    Access the query table: docker-compose up

Build and Push Workflow

The Docker image is built and pushed to the GitHub Container Registry using a GitHub Actions workflow. The workflow is triggered on push to the main branch and on a scheduled basis.
