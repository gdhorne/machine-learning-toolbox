# Machine Learning Toolbox

The machine-learning-toolbox repository makes it easy to create a Docker
container for use during the 
[Machine Learning Specialization](https://www.coursera.org/specializations/machine-learning).

Download and install the [Docker](https://www.docker.com/) software for Apple
Mac OS X, GNU/Linux or Microsoft Windows following the
[instructions](http://docs.docker.com/linux/started/) at the website.

Retrieve the
[machine-learning-toolbox](https://github.com/gdhorne/data-scientists-toolbox)
build repository to create the container. Git, GraphLab, Jupyter, and
Python are installed as part of the image.

	$ git clone https://github.com/gdhorne/machine-learning-toolbox

For ease of instantiating an instance of the container image a script named
'container.sh' can be used to manage the entire lifecycle. For Microsoft Windows
users it is recommended that [Git Bash](https://git-for-windows.github.io/) be
installed instead of the standard [Git](https://git-scm.com) software because
it provides an *nix-like command line environment.

Create the container, optionally mapping a host file system share for storage.
The file system share name '/home/me/datascience' is user selectable and host
file system dependent. If no local file system share is desired simply omit the
fourth argument '/home/me/datascience'. The container instance name 'toolbox',
in these instructions, is user selectable at time of creation.

     $ ./container.sh create toolbox gdhorne/machine-learning-toolbox /home/me/datascience

*Apple Mac OS X: /Users/username/directory*
*GNU/Linux: /home/username/directory*
*Microsoft Windows: /c/Users/directory (allegedly)*

Verify the container 'toolbox' has been successfully created and is running

     $ ./container.sh status

Stop the container 'toolbox'.

	$ ./container.sh stop toolbox

Start the container 'toolbox'.

	$ ./container.sh start toolbox

To learn more about the container lifecycle management features supported by 'container.sh' type,

	$ ./container.sh --help


## Applications

After creating the container these applications are accessible within a web 
browser.

	Git:		Accessible via WeTTY

	Jupyter:	http://127.0.0.1:8888

	Python:		Accessible via WeTTY

	WeTTY:		http://127.0.0.1:8000

				UserID: mlt
				Password: science

				To enable the terminal/console management utility 
				type 'screen' and press ENTER.


Alternatively, the machine-learning-toolbox image provides a traditional 
command line interface, without WeTTY, to some applications such as Git, 
Python, and vim. For convenience the terminal/console management utility 
'screen' has been installed and starts automatically.

	$ ./container.sh attach toolbox

Press ENTER if the container's shell prompt does not appear. To exit the 
container and leave it running press CTRL+P, CTRL+Q; this is the preferred 
method. To exit the container and stop it type 'exit'.

The [GraphLab Create](https://dato.com/products/create/) package available for
Python requires either an academic licence or a commercial licence. Participants
in the [Unversity of Washington](http://www.washington.edu)
[Machine Learning Specialization](https://www.coursera.org/specializations/machine-learning)
delivered on the [Coursera](https://www.coursera.org) platform qualify for an
academic licence subject to verification by [Dato](https://dato.com). Register
and await an automated email containing a product licence key. Access the
command line via WeTTY as indicated above. Installation of GraphLab Create can
be initiated as shown.

	$ ./bin/graphlab.sh EMAIL_ADDRESS LICENCE_KEY

Replace EMAIL_ADDRESS and LICENCE_KEY with the credentials sent to you via email.
