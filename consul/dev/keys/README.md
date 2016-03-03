To use this image you should mount a local folder into the `/keys` folder.

Example Usage:

```
docker run -it --rm -v `pwd`/keys:/keys -p 0.0.0.0:8500:8500 consuldev
```

The entrypoint script will automatically create all files within the `/keys`
folder and sub folders as consul keys automatically.
