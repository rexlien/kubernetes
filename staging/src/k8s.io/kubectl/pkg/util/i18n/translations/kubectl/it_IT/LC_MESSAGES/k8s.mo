��    �      �  �   �	      (  �   )  �     z   �    8  >  �    �    �  q    �  �  �   2  =   �  ;   %  <   a  S   �  <   �  �  /  �  �  c  �  �     �   �"  �  �#     �%  <   �%  =   &  g  A&  .   �(  g   �(  R   @)  "   �)  4   �)    �)     �.     /    8/  �   >0  �   �0  X   �1  o   �1    f2  v   h3  t   �3  �  T4  �  6  ;   :  [   M:  J   �:  a   �:  �   V;  �   <  �   �<  8   �=  %   �=  W   �=     @>  u   ^>  4   �>  -   	?  3   7?  2   k?  8   �?     �?     �?  9   @     K@  @   _@  *   �@  7   �@  '   A  .   +A  =   ZA  *   �A  0   �A  ,   �A     !B  ]   AB  0   �B  0   �B  "   C     $C  ,   BC  +   oC  $   �C     �C  *   �C  A    D     BD     `D     }D  )   �D  6   �D     �D     E      1E  (   RE     {E  `   �E  �   �E  �   �F     'G     @G  $   [G     �G     �G  a   �G  s   H  B   �H  +   �H  +   �H  6   'I  q   ^I  /   �I  1    J  '   2J  '   ZJ     �J  &   �J  %   �J  (   �J  #   K      5K  _   VK     �K  "   �K  "   �K     L  -   ;L  -   iL  9   �L     �L     �L  c   
M  #   nM  �   �M  H   N  &   ^N  e   �N  �   �N  E   �O  a   P  �   yP  �   EQ     R     2R  /   JR     zR  =   �R  $   �R     �R  &   S  +   CS  G   oS     �S  r   �S     ?T  /   ST  �  �T  �   $V  �   W  �   �W  �  EX  L  �Y    0[  #  7]  �  [_  �  �`  �   �b  E   |c  F   �c  A   	d  P   Kd  =   �d  �  �d  �  �f  �  �h    0j    =m  �  \n     Vp  =   np  >   �p  �  �p  /   �s  h   �s  T   At  (   �t  5   �t  �  �t  +   �z  1   {  '  G{  �   o|  �   K}  ^   �}  u   T~  )  �~  �   �  }   ��  �  ��    �  ;   �  p   ?�  ]   ��  l   �  �   {�  �   6�  �   �  7   ��  .   �  r   �  $   ��  �   ��  :   =�  3   x�  =   ��  0   �  9   �      U�     v�  9   ��     ˍ  H   ލ  )   '�  6   Q�  '   ��  3   ��  E   �  4   *�  5   _�  7   ��     ͏  g   �  -   T�  -   ��  +   ��     ܐ  7   ��  7   0�  /   h�  #   ��  (   ��  P   �     6�     T�     r�  ,   ��  F   ��  !   �     %�  #   B�  (   f�     ��  e   ��  �   �  �   Ɣ  )   r�  -   ��  $   ʕ  &   �     �  e   1�  �   ��  M   +�  3   y�  7   ��  D   �  �   *�  9   ��  1   �  $   �  +   @�     l�  $   ��  +   ��  *   ݙ  +   �  0   4�  s   e�  %   ٚ  &   ��  &   &�  %   M�  /   s�  0   ��  A   ԛ     �     2�  i   L�  (   ��  �   ߜ  P   o�  #   ��  i   �    N�  P   R�  X   ��  �   ��  �   �     �     ��  ,   �  $   H�  C   m�     ��     Ѣ  $   �  4   �  V   I�      ��  �   ��     D�  2   [�         <           8   �       "   Y   0   �       b       a   `          *       �   v   [          R      u          �      W                      D          �       �   }      U          L   �       y   I       �          ,   w   h       �   l              !   G   /   '   |   f   �                 %   i   $   s       >   p   B      �                  �       e   
           �   6          )   7   (   �   d   q   {         �          z   F   @   x   &   �               A   C   _   Z   X       M       	                 �   �   �   �   S   .       +   9   T       J      :       K   ]       2      �   o   k              Q   4   V   1   P   j   -       g   N   #   =   c       ?   m       ;      �       5   �       O   n   ~   H   \   3   �   r   E   �      ^          �           �         �   �   t        
		  # Create a ClusterRoleBinding for user1, user2, and group1 using the cluster-admin ClusterRole
		  kubectl create clusterrolebinding cluster-admin --clusterrole=cluster-admin --user=user1 --user=user2 --group=group1 
		  # Create a RoleBinding for user1, user2, and group1 using the admin ClusterRole
		  kubectl create rolebinding admin --clusterrole=admin --user=user1 --user=user2 --group=group1 
		  # Show metrics for all nodes
		  kubectl top node

		  # Show metrics for a given node
		  kubectl top node NODE_NAME 
		# Auto scale a deployment "foo", with the number of pods between 2 and 10, no target CPU utilization specified so a default autoscaling policy will be used:
		kubectl autoscale deployment foo --min=2 --max=10

		# Auto scale a replication controller "foo", with the number of pods between 1 and 5, target CPU utilization at 80%:
		kubectl autoscale rc foo --max=5 --cpu-percent=80 
		# Create a new resourcequota named my-quota
		kubectl create quota my-quota --hard=cpu=1,memory=1G,pods=2,services=3,replicationcontrollers=2,resourcequotas=1,secrets=5,persistentvolumeclaims=10

		# Create a new resourcequota named best-effort
		kubectl create quota best-effort --hard=pods=100 --scopes=BestEffort 
		# Create a pod disruption budget named my-pdb that will select all pods with the app=rails label
		# and require at least one of them being available at any point in time.
		kubectl create poddisruptionbudget my-pdb --selector=app=rails --min-available=1

		# Create a pod disruption budget named my-pdb that will select all pods with the app=nginx label
		# and require at least half of the pods selected to be available at any point in time.
		kubectl create pdb my-pdb --selector=app=nginx --min-available=50% 
		# Describe a node
		kubectl describe nodes kubernetes-node-emt8.c.myproject.internal

		# Describe a pod
		kubectl describe pods/nginx

		# Describe a pod identified by type and name in "pod.json"
		kubectl describe -f pod.json

		# Describe all pods
		kubectl describe pods

		# Describe pods by label name=myLabel
		kubectl describe po -l name=myLabel

		# Describe all pods managed by the 'frontend' replication controller (rc-created pods
		# get the name of the rc as a prefix in the pod the name).
		kubectl describe pods frontend 
		# Drain node "foo", even if there are pods not managed by a ReplicationController, ReplicaSet, Job, DaemonSet or StatefulSet on it.
		$ kubectl drain foo --force

		# As above, but abort if there are pods not managed by a ReplicationController, ReplicaSet, Job, DaemonSet or StatefulSet, and use a grace period of 15 minutes.
		$ kubectl drain foo --grace-period=900 
		# Edit the service named 'docker-registry':
		kubectl edit svc/docker-registry

		# Use an alternative editor
		KUBE_EDITOR="nano" kubectl edit svc/docker-registry

		# Edit the job 'myjob' in JSON using the v1 API format:
		kubectl edit job.v1.batch/myjob -o json

		# Edit the deployment 'mydeployment' in YAML and save the modified config in its annotation:
		kubectl edit deployment/mydeployment -o yaml --save-config 
		# Get the documentation of the resource and its fields
		kubectl explain pods

		# Get the documentation of a specific field of a resource
		kubectl explain pods.spec.containers 
		# Mark node "foo" as schedulable.
		$ kubectl uncordon foo 
		# Mark node "foo" as unschedulable.
		kubectl cordon foo 
		# Print flags inherited by all commands
		kubectl options 
		# Print the client and server versions for the current context
		kubectl version 
		# Print the supported API versions
		kubectl api-versions 
		# Replace a pod using the data in pod.json.
		kubectl replace -f ./pod.json

		# Replace a pod based on the JSON passed into stdin.
		cat pod.json | kubectl replace -f -

		# Update a single-container pod's image version (tag) to v4
		kubectl get pod mypod -o yaml | sed 's/\(image: myimage\):.*$/:v4/' | kubectl replace -f -

		# Force replace, delete and then re-create the resource
		kubectl replace --force -f ./pod.json 
		# Set the last-applied-configuration of a resource to match the contents of a file.
		kubectl apply set-last-applied -f deploy.yaml

		# Execute set-last-applied against each configuration file in a directory.
		kubectl apply set-last-applied -f path/

		# Set the last-applied-configuration of a resource to match the contents of a file, will create the annotation if it does not already exist.
		kubectl apply set-last-applied -f deploy.yaml --create-annotation=true
		 
		# Show metrics for all pods in the default namespace
		kubectl top pod

		# Show metrics for all pods in the given namespace
		kubectl top pod --namespace=NAMESPACE

		# Show metrics for a given pod and its containers
		kubectl top pod POD_NAME --containers

		# Show metrics for the pods defined by label name=myLabel
		kubectl top pod -l name=myLabel 
		# Update pod 'foo' with the label 'unhealthy' and the value 'true'.
		kubectl label pods foo unhealthy=true

		# Update pod 'foo' with the label 'status' and the value 'unhealthy', overwriting any existing value.
		kubectl label --overwrite pods foo status=unhealthy

		# Update all pods in the namespace
		kubectl label pods --all status=unhealthy

		# Update a pod identified by the type and name in "pod.json"
		kubectl label -f pod.json status=unhealthy

		# Update pod 'foo' only if the resource is unchanged from version 1.
		kubectl label pods foo status=unhealthy --resource-version=1

		# Update pod 'foo' by removing a label named 'bar' if it exists.
		# Does not require the --overwrite flag.
		kubectl label pods foo bar- 
		# View the last-applied-configuration annotations by type/name in YAML.
		kubectl apply view-last-applied deployment/nginx

		# View the last-applied-configuration annotations by file in JSON
		kubectl apply view-last-applied -f deploy.yaml -o json 
		Convert config files between different API versions. Both YAML
		and JSON formats are accepted.

		The command takes filename, directory, or URL as input, and convert it into format
		of version specified by --output-version flag. If target version is not specified or
		not supported, convert to latest version.

		The default output will be printed to stdout in YAML format. One can use -o option
		to change to output destination. 
		Create a ClusterRole. 
		Create a ClusterRoleBinding for a particular ClusterRole. 
		Create a RoleBinding for a particular Role or ClusterRole. 
		Create a configmap based on a file, directory, or specified literal value.

		A single configmap may package one or more key/value pairs.

		When creating a configmap based on a file, the key will default to the basename of the file, and the value will
		default to the file content.  If the basename is an invalid key, you may specify an alternate key.

		When creating a configmap based on a directory, each file whose basename is a valid key in the directory will be
		packaged into the configmap.  Any directory entries except regular files are ignored (e.g. subdirectories,
		symlinks, devices, pipes, etc). 
		Create a namespace with the specified name. 
		Create a pod disruption budget with the specified name, selector, and desired minimum available pods 
		Create a resourcequota with the specified name, hard limits and optional scopes 
		Create a role with single rule. 
		Create a service account with the specified name. 
		Edit a resource from the default editor.

		The edit command allows you to directly edit any API resource you can retrieve via the
		command line tools. It will open the editor defined by your KUBE_EDITOR, or EDITOR
		environment variables, or fall back to 'vi' for Linux or 'notepad' for Windows.
		You can edit multiple objects, although changes are applied one at a time. The command
		accepts filenames as well as command line arguments, although the files you point to must
		be previously saved versions of resources.

		Editing is done with the API version used to fetch the resource.
		To edit using a specific API version, fully-qualify the resource, version, and group.

		The default format is YAML. To edit in JSON, specify "-o json".

		The flag --windows-line-endings can be used to force Windows line endings,
		otherwise the default for your operating system will be used.

		In the event an error occurs while updating, a temporary file will be created on disk
		that contains your unapplied changes. The most common error when updating a resource
		is another editor changing the resource on the server. When this occurs, you will have
		to apply your changes to the newer version of the resource, or update your temporary
		saved copy to include the latest resource version. 
		Mark node as schedulable. 
		Mark node as unschedulable. 
		Set the latest last-applied-configuration annotations by setting it to match the contents of a file.
		This results in the last-applied-configuration being updated as though 'kubectl apply -f <file>' was run,
		without updating any other parts of the object. 
		View the latest last-applied-configuration annotations by type/name or file.

		The default output will be printed to stdout in YAML format. One can use -o option
		to change output format. 
	  # Create a new TLS secret named tls-secret with the given key pair:
	  kubectl create secret tls tls-secret --cert=path/to/tls.cert --key=path/to/tls.key 
	  # Create a new namespace named my-namespace
	  kubectl create namespace my-namespace 
	  # Create a new service account named my-service-account
	  kubectl create serviceaccount my-service-account 
	Create an ExternalName service with the specified name.

	ExternalName service references to an external DNS address instead of
	only pods, which will allow application authors to reference services
	that exist off platform, on other clusters, or locally. 
	Help provides help for any command in the application.
	Simply type kubectl help [path to command] for full details. 
    # Create a new LoadBalancer service named my-lbs
    kubectl create service loadbalancer my-lbs --tcp=5678:8080 
    # Dump current cluster state to stdout
    kubectl cluster-info dump

    # Dump current cluster state to /path/to/cluster-state
    kubectl cluster-info dump --output-directory=/path/to/cluster-state

    # Dump all namespaces to stdout
    kubectl cluster-info dump --all-namespaces

    # Dump a set of namespaces to /path/to/cluster-state
    kubectl cluster-info dump --namespaces default,kube-system --output-directory=/path/to/cluster-state 
    # Update pod 'foo' with the annotation 'description' and the value 'my frontend'.
    # If the same annotation is set multiple times, only the last value will be applied
    kubectl annotate pods foo description='my frontend'

    # Update a pod identified by type and name in "pod.json"
    kubectl annotate -f pod.json description='my frontend'

    # Update pod 'foo' with the annotation 'description' and the value 'my frontend running nginx', overwriting any existing value.
    kubectl annotate --overwrite pods foo description='my frontend running nginx'

    # Update all pods in the namespace
    kubectl annotate pods --all description='my frontend running nginx'

    # Update pod 'foo' only if the resource is unchanged from version 1.
    kubectl annotate pods foo description='my frontend running nginx' --resource-version=1

    # Update pod 'foo' by removing an annotation named 'description' if it exists.
    # Does not require the --overwrite flag.
    kubectl annotate pods foo description- 
    Create a LoadBalancer service with the specified name. A comma-delimited set of quota scopes that must all match each object tracked by the quota. A comma-delimited set of resource=quantity pairs that define a hard limit. A label selector to use for this budget. Only equality-based selector requirements are supported. A label selector to use for this service. Only equality-based selector requirements are supported. If empty (the default) infer the selector from the replication controller or replica set.) Additional external IP address (not managed by Kubernetes) to accept for the service. If this IP is routed to a node, the service can be accessed by this IP in addition to its generated service IP. An inline JSON override for the generated object. If this is non-empty, it is used to override the generated object. Requires that the object supply a valid apiVersion field. Apply a configuration to a resource by filename or stdin Approve a certificate signing request Assign your own ClusterIP or set to 'None' for a 'headless' service (no loadbalancing). Attach to a running container ClusterIP to be assigned to the service. Leave empty to auto-allocate, or set to 'None' to create a headless service. ClusterRole this ClusterRoleBinding should reference ClusterRole this RoleBinding should reference Convert config files between different API versions Copy files and directories to and from containers. Create a ClusterRoleBinding for a particular ClusterRole Create a LoadBalancer service. Create a NodePort service. Create a RoleBinding for a particular Role or ClusterRole Create a TLS secret Create a configmap from a local file, directory or literal value Create a namespace with the specified name Create a pod disruption budget with the specified name. Create a quota with the specified name. Create a secret for use with a Docker registry Create a secret from a local file, directory or literal value Create a secret using specified subcommand Create a service account with the specified name Create a service using specified subcommand. Create an ExternalName service. Delete resources by filenames, stdin, resources and names, or by resources and label selector Delete the specified cluster from the kubeconfig Delete the specified context from the kubeconfig Deny a certificate signing request Describe one or many contexts Display Resource (CPU/Memory) usage of nodes Display Resource (CPU/Memory) usage of pods Display Resource (CPU/Memory) usage. Display cluster info Display clusters defined in the kubeconfig Display merged kubeconfig settings or a specified kubeconfig file Display one or many resources Displays the current-context Documentation of resources Drain node in preparation for maintenance Dump lots of relevant info for debugging and diagnosis Edit a resource on the server Email for Docker registry Execute a command in a container Forward one or more local ports to a pod Help about any command If non-empty, set the session affinity for the service to this; legal values: 'None', 'ClientIP' If non-empty, the annotation update will only succeed if this is the current resource-version for the object. Only valid when specifying a single resource. If non-empty, the labels update will only succeed if this is the current resource-version for the object. Only valid when specifying a single resource. Mark node as schedulable Mark node as unschedulable Mark the provided resource as paused Modify certificate resources. Modify kubeconfig files Name or number for the port on the container that the service should direct traffic to. Optional. Only return logs after a specific date (RFC3339). Defaults to all logs. Only one of since-time / since may be used. Output shell completion code for the specified shell (bash or zsh) Password for Docker registry authentication Path to PEM encoded public key certificate. Path to private key associated with given certificate. Precondition for resource version. Requires that the current resource version match this value in order to scale. Print the client and server version information Print the list of flags inherited by all commands Print the logs for a container in a pod Replace a resource by filename or stdin Resume a paused resource Role this RoleBinding should reference Run a particular image on the cluster Run a proxy to the Kubernetes API server Server location for Docker registry Set specific features on objects Set the last-applied-configuration annotation on a live object to match the contents of a file. Set the selector on a resource Sets a cluster entry in kubeconfig Sets a context entry in kubeconfig Sets a user entry in kubeconfig Sets an individual value in a kubeconfig file Sets the current-context in a kubeconfig file Show details of a specific resource or group of resources Show the status of the rollout Synonym for --target-port Take a replication controller, service, deployment or pod and expose it as a new Kubernetes Service The image for the container to run. The image pull policy for the container. If left empty, this value will not be specified by the client and defaulted by the server The minimum number or percentage of available pods this budget requires. The name for the newly created object. The name for the newly created object. If not specified, the name of the input resource will be used. The name of the API generator to use. There are 2 generators: 'service/v1' and 'service/v2'. The only difference between them is that service port in v1 is named 'default', while it is left unnamed in v2. Default is 'service/v2'. The network protocol for the service to be created. Default is 'TCP'. The port that the service should serve on. Copied from the resource being exposed, if unspecified The resource requirement limits for this container.  For example, 'cpu=200m,memory=512Mi'.  Note that server side components may assign limits depending on the server configuration, such as limit ranges. The resource requirement requests for this container.  For example, 'cpu=100m,memory=256Mi'.  Note that server side components may assign requests depending on the server configuration, such as limit ranges. The type of secret to create Undo a previous rollout Unsets an individual value in a kubeconfig file Update image of a pod template Update resource requests/limits on objects with pod templates Update the annotations on a resource Update the labels on a resource Update the taints on one or more nodes Username for Docker registry authentication View latest last-applied-configuration annotations of a resource/object View rollout history Where to output the files.  If empty or '-' uses stdout, otherwise creates a directory hierarchy in that directory dummy restart flag) kubectl controls the Kubernetes cluster manager Project-Id-Version: kubernetes
Report-Msgid-Bugs-To: EMAIL
PO-Revision-Date: 2017-08-28 15:20+0200
Last-Translator: Luca Berton <mr.evolution85@gmail.com>
Language-Team: Luca Berton <mr.evolution85@gmail.com>
Language: it_IT
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Poedit 1.8.7.1
X-Poedit-SourceCharset: UTF-8
 
		 # Creare un ClusterRoleBinding per user1, user2 e group1 utilizzando il cluster-admin ClusterRole
		  kubectl create clusterrolebinding cluster-admin --clusterrole=cluster-admin --user=user1 --user=user2 --group=group1 
		  # Crea un RoleBinding per user1, user2, and group1 utilizzando l'admin ClusterRole
		  kubectl create rolebinding admin --clusterrole=admin --user=user1 --user=user2 --group=group1 
		  # Mostra metriche per tutti i nodi
		 kubectl top node

		 # Mostra metriche per un determinato nodo
		 kubectl top node NODE_NAME 
		#  Auto scale un deployment "foo", con il numero di pod compresi tra 2 e 10, utilizzo della CPU target specificato in modo da utilizzare una politica di autoscaling predefinita:
		kubectl autoscale deployment foo --min=2 --max=10

		# Auto scale un controller di replica "foo", con il numero di pod compresi tra 1 e 5, utilizzo dell'utilizzo della CPU a 80%:
		kubectl autoscale rc foo --max=5 --cpu-percent=80 
		# Crea una nuova resourcequota chiamata my-quota
		kubectl create quota my-quota --hard=cpu=1,memory=1G,pods=2,services=3,replicationcontrollers=2,resourcequotas=1,secrets=5,persistentvolumeclaims=10

		# Creare una nuova resourcequota denominata best-effort
		kubectl create quota best-effort --hard=pods=100 --scopes=BestEffort 
		# Crea un pod disruption budget chiamato my-pdb che seleziona tutti i pod con label app = rail
		# e richiede che almeno uno di essi sia disponibile in qualsiasi momento.
		kubectl create poddisruptionbudget my-pdb --selector=app=rails --min-available=1

		# Crea un pod disruption budget con nome my-pdb che seleziona tutti i pod con label app = nginx 
		# e richiede che almeno la metà dei pod selezionati sia disponibile in qualsiasi momento.
		kubectl create pdb my-pdb --selector=app=nginx --min-available=50% 
		# Descrive un nodo
		kubectl describe nodes kubernetes-node-emt8.c.myproject.internal

		# Descrive un pod
		kubectl describe pods/nginx

		# Descrive un pod identificato da tipo e nome in "pod.json"
		kubectl describe -f pod.json

		# Descrive tutti i pod
		kubectl describe pods

		# Descrive i pod con label name=myLabel
		kubectl describe po -l name=myLabel

		# Descrivere tutti i pod gestiti dal controller di replica "frontend"  (rc-created pods
		# ottiene il nome del rc come un prefisso del nome pod).
		kubectl describe pods frontend 
		# Drain node "foo", anche se ci sono i baccelli non gestiti da ReplicationController, ReplicaSet, Job, DaemonSet o StatefulSet su di esso.
		$ kubectl drain foo --force

		# Come sopra, ma interrompere se ci sono i baccelli non gestiti da ReplicationController, ReplicaSet, Job, DaemonSet or StatefulSet, e utilizzare un periodo di grazia di 15 minuti.
		$ kubectl drain foo --grace-period=900 
		# Modifica il servizio denominato 'docker-registry':
		kubectl edit svc/docker-registry

		# Usa un editor alternativo
		KUBE_EDITOR="nano" kubectl edit svc/docker-registry

		# Modifica il lavoro 'myjob' in JSON utilizzando il formato API v1:
		kubectl edit job.v1.batch/myjob -o json

		# Modifica la distribuzione 'mydeployment' in YAML e salvare la configurazione modificata nella sua annotazione:
		kubectl edit deployment/mydeployment -o yaml --save-config 
		# Ottieni la documentazione della risorsa e i relativi campi
		kubectl explain pods

		# Ottieni la documentazione di un campo specifico di una risorsa
		kubectl explain pods.spec.containers 
		# Segna il nodo "foo" come programmabile.
		$ Kubectl uncordon foo 
		#  Segna il nodo "foo" come non programmabile.
		kubectl cordon foo 
		# Stampa i flag ereditati da tutti i comandi
		kubectl options 
		# Stampa le versioni client e server per il current context
		kubectl version 
		# Stampa le versioni API supportate
		kubectl api-versions 
		# Sostituire un pod utilizzando i dati in pod.json.
		kubectl replace -f ./pod.json

		# Sostituire un pod usando il JSON passato da stdin.
		cat pod.json | kubectl replace -f -

		# Aggiorna la versione dell'immagine (tag) di un singolo container di pod a v4
		kubectl get pod mypod -o yaml | sed 's/\(image: myimage\):.*$/:v4/' | kubectl replace -f -

		# Forza la sostituzione, cancellazione e quindi ricreare la risorsa
		kubectl replace --force -f ./pod.json 
		# Imposta l'ultima-configurazione-applicata di una risorsa che corrisponda al contenuto di un file.
		kubectl apply set-last-applied -f deploy.yaml

		# Esegue set-last-applied per ogni file di configurazione in una directory.
		kubectl apply set-last-applied -f path/

		# Imposta la configurazione dell'ultima applicazione di una risorsa che corrisponda al contenuto di un file, creerà l'annotazione se non esiste già.
		kubectl apply set-last-applied -f deploy.yaml --create-annotation=true
		 
		# Mostra metriche di tutti i pod nello spazio dei nomi predefinito
		kubectl top pod

		# Mostra metriche di tutti i pod nello spazio dei nomi specificato
		kubectl top pod --namespace=NAMESPACE

		# Mostra metriche per un pod e i suoi relativi container
		kubectl top pod POD_NAME --containers

		# Mostra metriche per i pod definiti da label name = myLabel
		kubectl top pod -l name=myLabel 
		# Aggiorna il pod 'foo' con l'etichetta 'unhealthy' e il valore 'true'.
		kubectl label pods foo unhealthy=true

		# Aggiorna il pod 'foo' con l'etichetta 'status' e il valore 'unhealthy', sovrascrivendo qualsiasi valore esistente.
		kubectl label --overwrite pods foo status=unhealthy

		# Aggiorna tutti i pod nello spazio dei nomi
		kubectl label pods --all status=unhealthy

		# Aggiorna un pod identificato dal tipo e dal nome in "pod.json"
		kubectl label -f pod.json status=unhealthy

		# Aggiorna il pod 'foo' solo se la risorsa è invariata dalla versione 1.
		kubectl label pods foo status=unhealthy --resource-version=1

		#  Aggiorna il pod 'foo' rimuovendo un'etichetta denominata 'bar' se esiste.
		# Non richiede la flag -overwrite.
		kubectl label pods foo bar- 
		# Visualizza le annotazioni dell'ultima-configurazione-applicata per tipo/nome in YAML.
		kubectl apply view-last-applied deployment/nginx

		# # Visualizza le annotazioni dell'ultima-configurazione-applicata per file in JSON.
		kubectl apply view-last-applied -f deploy.yaml -o json 
		Convertire i file di configurazione tra diverse versioni API. Sono
		accettati i formati YAML e JSON.

		Il comando prende il nome di file, la directory o l'URL come input e lo converte nel formato
		di versione specificata dal flag -output-version. Se la versione di destinazione non è specificata o
		non supportata, viene convertita nella versione più recente.

		L'output predefinito verrà stampato su stdout nel formato YAML. Si può usare l'opzione -o
		per cambiare la destinazione di output. 
	
Crea un ClusterRole. 
		Crea un ClusterRoleBinding per un ClusterRole particolare. 
		Crea un RoleBinding per un particolare Ruolo o ClusterRole. 
		Creare un configmap basato su un file, una directory o un valore literal specificato.

		Un singolo configmap può includere una o più coppie chiave/valore.

		Quando si crea una configmap basata su un file, il valore predefinito sarà il nome di base del file e il valore sarà
		predefinito per il contenuto del file. Se il nome di base è una chiave non valida, è possibile specificare un tasto alternativo.

		Quando si crea un configmap basato su una directory, ogni file il cui nome di base è una chiave valida nella directory verrà
		pacchettizzata nel configmap. Le voci di directory tranne i file regolari vengono ignorati (ad esempio sottodirectory,
		symlinks, devices, pipes, ecc). 
		Creare un namespace con il nome specificato. 
		Crea un pod disruption budget con il nome specificato, selector e il numero minimo di pod disponibili 
		Crea una resourcequota con il nome specificato, hard limits e gli scope opzionali 
		Crea un ruolo con una singola regola. 
		Creare un service account con il nome specificato. 
		Modificare una risorsa dall'editor predefinito.

		Il comando di modifica consente di modificare direttamente qualsiasi risorsa API che è possibile recuperare tramite gli
		strumenti di riga di comando. Apre l'editor definito dalle variabili d'ambiente
		KUBE_EDITOR o EDITOR, o ritornare a 'vi' per Linux o 'notepad' per Windows.
		È possibile modificare più oggetti, anche se le modifiche vengono applicate una alla volta. Il comando
		accetta sia nomi di file che argomenti da riga di comando, anche se i file a cui fa riferimento devono
		essere state salvate precedentemente le versioni delle risorse.

		La modifica viene eseguita con la versione API utilizzata per recuperare la risorsa.
		Per modificare utilizzando una specifica versione API, fully-qualify la risorsa, versione e il gruppo.

		Il formato predefinito è YAML. Per modificare in JSON, specificare "-o json".

		Il flag --windows-line-endings può essere utilizzato per forzare i fine linea Windows,
		altrimenti verrà utilizzato il default per il sistema operativo.

		Nel caso in cui si verifica un errore durante l'aggiornamento, verrà creato un file temporaneo sul disco
		che contiene le modifiche non apportate. L'errore più comune durante l'aggiornamento di una risorsa
		è una modifica da pare di un altro editor della risorsa sul server. Quando questo si verifica, dovrai
		applicare le modifiche alla versione più recente della risorsa o aggiornare il tua copia
		temporanea salvata per includere l'ultima versione delle risorse. 
		Contrassegna il nodo come programmabile. 
		Contrassegnare il nodo come non programmabile. 
		Imposta le annotazioni dell'ultima-configurazione-applicata impostandola in modo che corrisponda al contenuto di un file.
		Ciò determina l'aggiornamento dell'ultima-configurazione-applicata come se 'kubectl apply -f <file>' fosse stato eseguito,
		senza aggiornare altre parti dell'oggetto. 
		Visualizza le annotazioni dell'ultima-configurazione-applicata per tipo/nome o file.

		L'output predefinito verrà stampato su stdout nel formato YAML. Si può usare l'opzione -o
		Per cambiare il formato di output. 
	  # Crea un nuovo secret TLS denominato tls-secret con la coppia di dati fornita:
	  kubectl create secret tls tls-secret --cert=path/to/tls.cert --key=path/to/tls.key 
	  # Crea un nuovo namespace denominato my-namespace
	  kubectl create namespace my-namespace 
	  # Crea un nuovo service account denominato my-service-account
	  kubectl create serviceaccount my-service-account 
	Crea un servizio ExternalName con il nome specificato.

	Il servizio ExternalName fa riferimento a un indirizzo DNS esterno 
	solo pod, che permetteranno agli autori delle applicazioni di utilizzare i servizi di riferimento
	che esistono fuori dalla piattaforma, su altri cluster, o localmente.. 
	Help fornisce assistenza per qualsiasi comando nell'applicazione.
	Basta digitare kubectl help [path to command] per i dettagli completi. 
    # Creare un nuovo servizio LoadBalancer denominato my-lbs
    kubectl create service loadbalancer my-lbs --tcp=5678:8080 
    # Dump dello stato corrente del cluster verso stdout
    kubectl cluster-info dump

    # Dump dello stato corrente del cluster verso /path/to/cluster-state
    kubectl cluster-info dump --output-directory=/path/to/cluster-state

    # Dump di tutti i namespaces verso stdout
    kubectl cluster-info dump --all-namespaces

    # Dump di un set di namespace verso /path/to/cluster-state
    kubectl cluster-info dump --namespaces default,kube-system --output-directory=/path/to/cluster-state 
    # Aggiorna il pod 'foo' con annotazione 'description'e il valore 'my frontend'.
    # Se la stessa annotazione è impostata più volte, verrà applicato solo l'ultimo valore
    kubectl annotate pods foo description='my frontend'

    # Aggiorna un pod identificato per tipo e nome in "pod.json"
    kubectl annotate -f pod.json description='my frontend'

    # Aggiorna pod 'foo' con la annotazione 'description' e il valore 'my frontend running nginx', sovrascrivendo qualsiasi valore esistente.
    kubectl annotate --overwrite pods foo description='my frontend running nginx'

    # Aggiorna tutti i baccelli nel namespace
    kubectl annotate pods --all description='my frontend running nginx'

    # Aggiorna il pod 'foo' solo se la risorsa è invariata dalla versione 1.
    kubectl annotate pods foo description='my frontend running nginx' --resource-version=1

    # Aggiorna il pod 'foo' rimuovendo un'annotazione denominata 'descrizione' se esiste.
    # Non richiede flag -overwrite.
    kubectl annotate pods foo description- 
    Crea un servizio LoadBalancer con il nome specificato. Un insieme delimitato-da-virgole di quota scopes che devono corrispondere a ciascun oggetto gestito dalla quota. Un insieme delimitato-da-virgola di coppie risorsa = quantità che definiscono un hard limit. Un label selector da utilizzare per questo budget. Sono supportati solo i selettori equality-based selector. Un selettore di label da utilizzare per questo servizio. Sono supportati solo equality-based selector.  Se vuota (default) dedurre il selettore dal replication controller o replica set.) Indirizzo IP esterno aggiuntivo (non gestito da Kubernetes) da accettare per il servizio. Se questo IP viene indirizzato a un nodo, è possibile accedere da questo IP in aggiunta al service IP generato. Un override JSON inline per l'oggetto generato. Se questo non è vuoto, viene utilizzato per ignorare l'oggetto generato. Richiede che l'oggetto fornisca un campo valido apiVersion. Applica una configurazione risorsa per nomefile o stdin Approva una richiesta di firma del certificato Assegnare il proprio ClusterIP o impostare su 'None' per un servizio 'headless' (nessun bilanciamento del carico). Collega a un container in esecuzione ClusterIP da assegnare al servizio. Lasciare vuoto per allocare automaticamente o impostare su 'None' per creare un servizio headless. ClusterRole a cui questo ClusterRoleBinding fa riferimento ClusterRole a cui questo RoleBinding fa riferimento Convertire i file di configurazione tra diverse versioni APIs Copiare file e directory da e verso i container. Crea un ClusterRoleBinding per un ClusterRole particolare Creare un servizio LoadBalancer. Crea un servizio NodePort. Crea un RoleBinding per un particolare Role o ClusterRole Crea un secret TLS Crea un configmap da un file locale, una directory o un valore letterale Crea un namespace con il nome specificato Crea un pod disruption budget con il nome specificato. Crea una quota con il nome specificato. Crea un secret da utilizzare con un registro Docker Crea un secret da un file locale, una directory o un valore letterale Crea un secret utilizzando un subcommand specificato Creare un account di servizio con il nome specificato Crea un servizio utilizzando il subcommand specificato. Crea un servizio ExternalName. Elimina risorse selezionate per nomi di file, stdin, risorse e nomi, o per risorsa e selettore di label Elimina il cluster specificato dal kubeconfig Elimina il context specificato dal kubeconfig Nega una richiesta di firma del certificato Descrive uno o più context Visualizza l'utilizzo di risorse (CPU/Memoria) per nodo Visualizza l'utilizzo di risorse (CPU/Memoria) per pod. Visualizza l'utilizzo di risorse (CPU/Memoria). Visualizza informazioni sul cluster Mostra i cluster definiti nel kubeconfig Visualizza le impostazioni merged di kubeconfig o un file kubeconfig specificato Visualizza una o più risorse Visualizza il current-context Documentazione delle risorse Drain node in preparazione alla manutenzione Dump di un sacco di informazioni pertinenti per il debug e la diagnosi Modificare una risorsa sul server Email per il registro Docker Esegui un comando in un contenitore Inoltra una o più porte locali a un pod Aiuto per qualsiasi comando Se non è vuoto, impostare l'affinità di sessione per il servizio; Valori validi: 'None', 'ClientIP' Se non è vuoto, l'aggiornamento delle annotazioni avrà successo solo se questa è la resource-version corrente per l'oggetto. Valido solo quando si specifica una singola risorsa. Se non vuoto, l'aggiornamento delle label avrà successo solo se questa è la resource-version corrente per l'oggetto. Valido solo quando si specifica una singola risorsa. Contrassegnare il nodo come programmabile Contrassegnare il nodo come non programmabile Imposta la risorsa indicata in pausa Modificare le risorse del certificato. Modifica i file kubeconfig Nome o numero di porta nel container verso il quale il servizio deve dirigere il traffico. Opzionale. Restituisce solo i log dopo una data specificata (RFC3339). Predefinito tutti i log. È possibile utilizzare solo uno tra data-inizio/a-partire-da. Codice di completamento shell di output per la shell specificata (bash o zsh) Password per l'autenticazione al registro di Docker Percorso certificato di chiave pubblica codificato PEM. Percorso alla chiave privata associata a un certificato specificato. Prerequisito per la versione delle risorse. Richiede che la versione corrente delle risorse corrisponda a questo valore per scalare. Stampa per client e server le informazioni sulla versione Stampa l'elenco flag ereditati da tutti i comandi Stampa i log per container in un pod Sostituire una risorsa per nomefile o stdin Riprendere una risorsa in pausa Ruolo di riferimento per RoleBinding Esegui una particolare immagine nel cluster Eseguire un proxy al server Kubernetes API Posizione del server per il Registro Docker Imposta caratteristiche specifiche sugli oggetti Imposta l'annotazione dell'ultima-configurazione-applicata ad un oggetto live per abbinare il contenuto di un file. Impostare il selettore di una risorsa Imposta una voce cluster in kubeconfig Imposta una voce context in kubeconfig Imposta una voce utente in kubeconfig Imposta un singolo valore in un file kubeconfig Imposta il current-context in un file kubeconfig Mostra i dettagli di una specifica risorsa o un gruppo di risorse Mostra lo stato del rollout Sinonimo di --target-port Prende un replication controller, service, deployment o un pod e lo espone come nuovo servizio Kubernetes L'immagine per il container da eseguire. La politica di pull dell'immagine per il container. Se lasciato vuoto, questo valore non verrà specificato dal client e predefinito dal server Il numero minimo o la percentuale di pod disponibili che questo budget richiede. Il nome dell'oggetto appena creato. Il nome dell'oggetto appena creato. Se non specificato, verrà utilizzato il nome della risorsa di input. Il nome del generatore API da utilizzare. Ci sono 2 generatori: 'service/v1' e 'service/v2'. L'unica differenza tra loro è che la porta di servizio in v1 è denominata "predefinita", mentre viene lasciata unnamed in v2. Il valore predefinito è 'service/v2'. Il protocollo di rete per il servizio da creare. Il valore predefinito è 'TCP'. La porta che il servizio deve servire. Copiato dalla risorsa esposta, se non specificata I limiti delle richieste di risorse per questo contenitore.  Ad esempio, 'cpu=200m,memory=512Mi'. Si noti che i componenti lato server possono assegnare i limiti a seconda della configurazione del server, ad esempio intervalli di limiti. La risorsa necessita di richieste di requisiti per questo pod. Ad esempio, 'cpu = 100m, memoria = 256Mi'. Si noti che i componenti lato server possono assegnare i requisiti a seconda della configurazione del server, ad esempio intervalli di limiti. Tipo di segreto da creare Annulla un precedente rollout Annulla singolo valore in un file kubeconfig Aggiorna immagine di un pod template Aggiorna richieste di risorse/limiti sugli oggetti con pod template Aggiorna annotazioni di risorsa Aggiorna label di una risorsa Aggiorna i taints su uno o più nodi Nome utente per l'autenticazione nel registro Docker Visualizza ultime annotazioni dell'ultima configurazione applicata per risorsa/oggetto Visualizza la storia del rollout Dove eseguire l'output dei file. Se vuota o '-' utilizza lo stdout, altrimenti crea una gerarchia di directory in quella directory flag di riavvio finto) Kubectl controlla il gestore cluster di Kubernetes 