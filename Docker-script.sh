docker run -d 
	-p port:5000 
	--restart always 
	--name registry 
	-v /mnt/registry:/var/lib/registry  # Customize storage
	registry:2

# Tag the image first
docker tag alpine localhost:5000/gcc/sample:latest

# Push the image to the server
docker push localhost:5000/gcc/sample:latest



docker pull localhost:5000/gcc/sample:latest
