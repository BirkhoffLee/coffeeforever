<p align="center">
    <img src="https://rawgit.com/BirkhoffLee/coffeeforever/master/logo.svg"
         height="120">
</p>
<p align="center">
    <a href="https://microbadger.com/images/birkhofflee/coffeeforever">
        <img src="https://images.microbadger.com/badges/image/birkhofflee/coffeeforever.svg"
             alt="Docker Image Layers">
    </a>
    <a href="https://hub.docker.com/r/birkhofflee/coffeeforever">
        <img src="https://img.shields.io/docker/pulls/birkhofflee/coffeeforever.svg"
             alt="Docker Pulls">
    </a>
    <a href="https://drone.birkhoff.me/BirkhoffLee/coffeeforever">
        <img src="https://drone.birkhoff.me/api/badges/BirkhoffLee/coffeeforever/status.svg"
             alt="Build Status">
    </a>
</p>
<p align="center">
    <sup><i>A <strong>base Docker image</strong> for CoffeeScript applications running on Forever. </i></sup>
</p>

# How To Use 
See [BirkhoffLee/Anonypages:/Dockerfile](https://github.com/BirkhoffLee/AnonyPages/blob/master/Dockerfile). 

# Clean The Logfiles
The following will clean **ALL** containers' forever logs **PERMANENTLY**. Use carefully!
```
$ docker ps -aq | xargs -I ID docker exec ID bash -c "[ -d \"/root/.forever\" ] && rm -rf /root/.forever/*.log"
```

# Contributing
Only one rule: **Test before submitting a pull request**.

# Security Reportings
Please contact [admin@birkhoff.me](mailto:admin@birkhoff.me).

# License
See [LICENSE](LICENSE).
