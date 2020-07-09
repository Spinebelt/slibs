# s.l.i.b.s.
## **S**tream**L**ink **I**n **B**ash **S**cript

The script assumes your Streamlink Python environment is called 'env_streamlink'.

After setting up Streamlink in a Python environment, this script will launch a stream using the following command:

`./s STREAM_NAME`

for example:

`./s blastpremier`

The visited streams are saved in a file called 'shist'.

### Setting stream quality

For now you can set the stream quality using `./s STREAM_NAME STREAM_PLATFORM QUALITY` where `QUALITY` has to match the quality description used by Streamlink. For example: `./s chess twitch 720p`. You do not have to type out the complete domain name of the platform if it is included in slibs' platform list. 

### Basic configuration using `--configure`

Allows you to set a default platform to avoid having to type it out every time.

Currently does not interact with Streamlink in any other way than the terminal passing information to its environment.

### Soon:

- Platform list expanded
- User is able to set the environment's name and/or location
- Use `--configure` to create a shortcut name for your most viewed streamers  
- Use `--configure` to select a Streamlink Python environment other than 'env_streamlink'
- More usability improvements
