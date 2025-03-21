            # Use the official Python image
            FROM python:3.9

            # Set the working directory
            WORKDIR /app

            # Copy all the files from your local folder to the container
            COPY . .

            # Install the required Python packages
            RUN pip install --upgrade pip
            RUN pip install -r requirements.txt

            # Expose port 8501 (default Streamlit port)
            EXPOSE 8502

            # Command to run your Streamlit app
            CMD ["streamlit", "run", "FAST_EDIT.py", "--server.port=8502", "--server.address=0.0.0.0"]