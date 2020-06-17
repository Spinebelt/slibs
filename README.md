# s.l.i.b.s.
**S**tream**L**ink **I**n **B**ash **S**cript

The script assumes your Streamlink Python environment is called 'env_streamlink'.

After setting up Streamlink in a Python environment, this script will launch a stream using the following command:

`./s STREAM_NAME QUALITY`

for example:

`./s blastpremier best`

The visited streams are saved in a file called 'shist'.

Currently does not interact with Streamlink in any other way than the terminal passing the information to its environment.
