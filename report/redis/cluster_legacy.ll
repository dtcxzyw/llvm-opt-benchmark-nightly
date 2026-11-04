Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/cluster_legacy?download=true
inline.NumInlined: 443
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0
@.str.3 = private unnamed_addr constant [9 x i8] c"tls-port\00", align 1
@auxFieldHandlers = dso_local local_unnamed_addr global [4 x %struct.auxFieldHandler] [%struct.auxFieldHandler { ptr @.str, ptr @auxShardIdSetter, ptr @auxShardIdGetter, ptr @auxShardIdPresent }, %struct.auxFieldHandler { ptr @.str.1, ptr @auxHumanNodenameSetter, ptr @auxHumanNodenameGetter, ptr @auxHumanNodenamePresent }, %struct.auxFieldHandler { ptr @.str.2, ptr @auxTcpPortSetter, ptr @auxTcpPortGetter, ptr @auxTcpPortPresent }, %struct.auxFieldHandler { ptr @.str.3, ptr @auxTlsPortSetter, ptr @auxTlsPortGetter, ptr @auxTlsPortPresent }], align 16
@.str.4 = private unnamed_addr constant [6 x i8] c"%.40s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Loading the cluster node config from %s: %s\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"Unable to obtain the cluster node config file stat %s: %s\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"vars\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"currentEpoch\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"lastVoteEpoch\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"Skipping unknown cluster config variable '%s'\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"myself\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"server.cluster->myself == NULL\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"cluster_legacy.c\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"fail?\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"handshake\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"noaddr\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"nofailover\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"noflags\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"Unknown flag in redis cluster config file\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"p != NULL\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"Node configuration loaded, I'm %.40s\00", align 1
@.str.30 = private unnamed_addr constant [57 x i8] c"Unrecoverable error: corrupted cluster config file \22%s\22.\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"vars currentEpoch %llu lastVoteEpoch %llu\0A\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"%s.tmp-%i-%I\00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"Could not open temp cluster config file: %s\00", align 1
@.str.34 = private unnamed_addr constant [64 x i8] c"Failed after writing (%zd) bytes to tmp cluster config file: %s\00", align 1
@.str.35 = private unnamed_addr constant [43 x i8] c"Could not sync tmp cluster config file: %s\00", align 1
@.str.36 = private unnamed_addr constant [45 x i8] c"Could not rename tmp cluster config file: %s\00", align 1
@.str.37 = private unnamed_addr constant [43 x i8] c"Could not sync cluster config file dir: %s\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c"Fatal: can't update cluster config file.\00", align 1
@.str.39 = private unnamed_addr constant [45 x i8] c"Can't open %s in order to acquire a lock: %s\00", align 1
@.str.40 = private unnamed_addr constant [173 x i8] c"Sorry, the cluster configuration file %s is already used by a different Redis Cluster node. Please make sure that different nodes use different cluster configuration files.\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"Impossible to lock %s: %s\00", align 1
@clusterUpdateMyselfIp.prev_ip = internal unnamed_addr global ptr null, align 8
@.str.42 = private unnamed_addr constant [42 x i8] c"No cluster configuration found, I'm %.40s\00", align 1
@.str.43 = private unnamed_addr constant [153 x i8] c"Redis port number too high. Cluster communication port is 10,000 port numbers higher than your Redis port. Your Redis port number must be 55535 or less.\00", align 1
@.str.44 = private unnamed_addr constant [71 x i8] c"No bind address is configured, but it is required for the Cluster bus.\00", align 1
@.str.45 = private unnamed_addr constant [68 x i8] c"Missing connection type %s, but it is required for the Cluster bus.\00", align 1
@.str.46 = private unnamed_addr constant [49 x i8] c"Failed listening on port %u (cluster), aborting.\00", align 1
@.str.47 = private unnamed_addr constant [66 x i8] c"Unrecoverable error creating Redis Cluster socket accept handler.\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"CLUSTER RESET\00", align 1
@.str.49 = private unnamed_addr constant [44 x i8] c"configEpoch set to 0 via CLUSTER RESET HARD\00", align 1
@.str.50 = private unnamed_addr constant [31 x i8] c"Node hard reset, now I'm %.40s\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"!link->inbound\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"link->inbound\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"!link->node\00", align 1
@.str.54 = private unnamed_addr constant [56 x i8] c"Replacing inbound link fd %d from node %.40s with fd %d\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"!node->inbound_link\00", align 1
@.str.56 = private unnamed_addr constant [33 x i8] c"Error accepting cluster node: %s\00", align 1
@.str.57 = private unnamed_addr constant [60 x i8] c"Error creating an accepting connection for cluster node: %s\00", align 1
@.str.58 = private unnamed_addr constant [45 x i8] c"Accepting cluster node connection from %s:%d\00", align 1
@.str.59 = private unnamed_addr constant [44 x i8] c"Error accepting cluster node connection: %s\00", align 1
@.str.60 = private unnamed_addr constant [54 x i8] c"dictDelete(server.cluster->nodes,nodename) == DICT_OK\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"retval == DICT_OK\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"node deleted\00", align 1
@.str.63 = private unnamed_addr constant [31 x i8] c"Renaming node %.40s into %.40s\00", align 1
@.str.64 = private unnamed_addr constant [49 x i8] c"dictAdd(server.cluster->shards, s, l) == DICT_OK\00", align 1
@.str.65 = private unnamed_addr constant [28 x i8] c"New configEpoch set to %llu\00", align 1
@.str.66 = private unnamed_addr constant [77 x i8] c"WARNING: configEpoch collision with node %.40s (%s). configEpoch set to %llu\00", align 1
@.str.67 = private unnamed_addr constant [53 x i8] c"Marking node %.40s (%s) as failing (quorum reached).\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"nodeFailed(node)\00", align 1
@.str.69 = private unnamed_addr constant [60 x i8] c"Clear FAIL state for node %.40s (%s):%s is reachable again.\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"replica\00", align 1
@.str.71 = private unnamed_addr constant [21 x i8] c"master without slots\00", align 1
@.str.72 = private unnamed_addr constant [106 x i8] c"Clear FAIL state for node %.40s (%s): is reachable again and nobody is serving its slots after some time.\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"\\x%02hhX\00", align 1
@.str.75 = private unnamed_addr constant [143 x i8] c"Received gossip about a node with invalid ID %.40s. For debugging purposes, the 48 bytes including the invalid ID and 8 trailing bytes are: %s\00", align 1
@.str.76 = private unnamed_addr constant [52 x i8] c"Node %.40s (%s) gossiped %d nodes with invalid IDs.\00", align 1
@.str.77 = private unnamed_addr constant [49 x i8] c"Unknown node gossiped %d nodes with invalid IDs.\00", align 1
@.str.78 = private unnamed_addr constant [25 x i8] c"GOSSIP %.40s %s:%d@%d %s\00", align 1
@.str.79 = private unnamed_addr constant [59 x i8] c"Node %.40s (%s) reported node %.40s (%s) as not reachable.\00", align 1
@.str.80 = private unnamed_addr constant [57 x i8] c"Node %.40s (%s) reported node %.40s (%s) is back online.\00", align 1
@.str.81 = private unnamed_addr constant [39 x i8] c"Error converting peer IP to string: %s\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"no link\00", align 1
@.str.83 = private unnamed_addr constant [47 x i8] c"Address updated for node %.40s (%s), now %s:%d\00", align 1
@.str.84 = private unnamed_addr constant [40 x i8] c"Discarding UPDATE message about myself.\00", align 1
@.str.85 = private unnamed_addr constant [28 x i8] c"slots configuration updated\00", align 1
@.str.86 = private unnamed_addr constant [29 x i8] c"ASM config update failed: %s\00", align 1
@.str.87 = private unnamed_addr constant [79 x i8] c"Configuration change detected. Reconfiguring myself as a replica of %.40s (%s)\00", align 1
@.str.88 = private unnamed_addr constant [79 x i8] c"I'm a sub-replica! Reconfiguring myself as a replica of grandmaster %.40s (%s)\00", align 1
@.str.89 = private unnamed_addr constant [35 x i8] c"Received unknown extension type %d\00", align 1
@.str.90 = private unnamed_addr constant [44 x i8] c"--- Processing packet of type %s, %lu bytes\00", align 1
@.str.91 = private unnamed_addr constant [47 x i8] c"Dropping packet that matches debug drop filter\00", align 1
@.str.92 = private unnamed_addr constant [55 x i8] c"Received a %s packet without proper padding (%d bytes)\00", align 1
@.str.93 = private unnamed_addr constant [87 x i8] c"Received invalid %s packet with extension data that exceeds total packet length (%lld)\00", align 1
@.str.94 = private unnamed_addr constant [67 x i8] c"Received invalid %s packet of length %lld but expected length %lld\00", align 1
@.str.95 = private unnamed_addr constant [68 x i8] c"Received replication offset for paused master manual failover: %lld\00", align 1
@.str.96 = private unnamed_addr constant [39 x i8] c"IP address for this node updated to %s\00", align 1
@.str.97 = private unnamed_addr constant [94 x i8] c"Closing link even though we received a MEET packet on it, because the connection has an error\00", align 1
@.str.98 = private unnamed_addr constant [26 x i8] c"%s packet received: %.40s\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.100 = private unnamed_addr constant [76 x i8] c"Handshake: we already know node %.40s (%s), updating the address if needed.\00", align 1
@.str.101 = private unnamed_addr constant [37 x i8] c"Handshake with node %.40s completed.\00", align 1
@.str.102 = private unnamed_addr constant [87 x i8] c"PONG contains mismatching sender ID. About node %.40s added %d ms ago, having flags %d\00", align 1
@.str.103 = private unnamed_addr constant [41 x i8] zeroinitializer, align 1
@.str.104 = private unnamed_addr constant [107 x i8] c"Ignore stale message from %.40s (%s) in shard %.40s; gossip config epoch: %llu, current config epoch: %llu\00", align 1
@.str.105 = private unnamed_addr constant [115 x i8] c"A failover occurred in shard %.40s; node %.40s (%s) lost %d slot(s) to node %.40s (%s) with a config epoch of %llu\00", align 1
@.str.106 = private unnamed_addr constant [90 x i8] c"Node %.40s (%s) is no longer master of shard %.40s; removed all %d slot(s) it used to own\00", align 1
@.str.107 = private unnamed_addr constant [43 x i8] c"Node %.40s (%s) is now part of shard %.40s\00", align 1
@.str.108 = private unnamed_addr constant [78 x i8] c"Node %.40s has old slots configuration, sending an UPDATE message about %.40s\00", align 1
@.str.109 = private unnamed_addr constant [55 x i8] c"FAIL message received from %.40s (%s) about %.40s (%s)\00", align 1
@.str.110 = private unnamed_addr constant [58 x i8] c"Ignoring FAIL message from unknown node %.40s about %.40s\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"manual failover\00", align 1
@.str.112 = private unnamed_addr constant [49 x i8] c"Manual failover requested by replica %.40s (%s).\00", align 1
@.str.113 = private unnamed_addr constant [33 x i8] c"Received unknown packet type: %d\00", align 1
@.str.114 = private unnamed_addr constant [35 x i8] c"I/O error writing to node link: %s\00", align 1
@.str.115 = private unnamed_addr constant [12 x i8] c"short write\00", align 1
@.str.116 = private unnamed_addr constant [35 x i8] c"(msg_offset + nwritten) == msg_len\00", align 1
@.str.117 = private unnamed_addr constant [47 x i8] c"Connection with Node %.40s at %s:%d failed: %s\00", align 1
@.str.118 = private unnamed_addr constant [36 x i8] c"Connecting with Node %.40s at %s:%d\00", align 1
@.str.120 = private unnamed_addr constant [61 x i8] c"Bad message length or signature received on the Cluster bus.\00", align 1
@.str.121 = private unnamed_addr constant [71 x i8] c"Bad message length or signature received on the Cluster bus from %s:%d\00", align 1
@.str.122 = private unnamed_addr constant [37 x i8] c"I/O error reading from node link: %s\00", align 1
@.str.123 = private unnamed_addr constant [18 x i8] c"connection closed\00", align 1
@clusterSendPing.cluster_pings_sent = internal unnamed_addr global i64 0, align 8
@.str.124 = private unnamed_addr constant [24 x i8] c"gossipcount < USHRT_MAX\00", align 1
@.str.125 = private unnamed_addr constant [23 x i8] c"nodes_for_slot != NULL\00", align 1
@.str.126 = private unnamed_addr constant [69 x i8] c"Failover auth denied to %.40s (%s): reqEpoch (%llu) < curEpoch(%llu)\00", align 1
@.str.127 = private unnamed_addr constant [65 x i8] c"Failover auth denied to %.40s (%s): already voted for epoch %llu\00", align 1
@.str.128 = private unnamed_addr constant [56 x i8] c"Failover auth denied to %.40s (%s): it is a master node\00", align 1
@.str.129 = private unnamed_addr constant [60 x i8] c"Failover auth denied to %.40s (%s): I don't know its master\00", align 1
@.str.130 = private unnamed_addr constant [53 x i8] c"Failover auth denied to %.40s (%s): its master is up\00", align 1
@.str.131 = private unnamed_addr constant [88 x i8] c"Failover auth denied to %.40s %s: can't vote about this master before %lld milliseconds\00", align 1
@.str.132 = private unnamed_addr constant [75 x i8] c"Failover auth denied to %.40s (%s): slot %d epoch (%llu) > reqEpoch (%llu)\00", align 1
@.str.133 = private unnamed_addr constant [51 x i8] c"Failover auth granted to %.40s (%s) for epoch %llu\00", align 1
@.str.134 = private unnamed_addr constant [20 x i8] c"nodeIsSlave(myself)\00", align 1
@clusterLogCantFailover.lastlog_time = internal unnamed_addr global i64 0, align 8
@.str.135 = private unnamed_addr constant [123 x i8] c"Disconnected from master for longer than allowed. Please check the 'cluster-replica-validity-factor' configuration option.\00", align 1
@.str.136 = private unnamed_addr constant [53 x i8] c"Waiting the delay before I can start a new failover.\00", align 1
@.str.137 = private unnamed_addr constant [26 x i8] c"Failover attempt expired.\00", align 1
@.str.138 = private unnamed_addr constant [51 x i8] c"Waiting for votes, but majority still not reached.\00", align 1
@.str.139 = private unnamed_addr constant [21 x i8] c"Unknown reason code.\00", align 1
@.str.140 = private unnamed_addr constant [33 x i8] c"Currently unable to failover: %s\00", align 1
@.str.141 = private unnamed_addr constant [55 x i8] c"Needed quorum: %d. Number of votes received so far: %d\00", align 1
@.str.142 = private unnamed_addr constant [73 x i8] c"Start of election delayed for %lld milliseconds (rank #%d, offset %lld).\00", align 1
@.str.143 = private unnamed_addr constant [63 x i8] c"Replica rank updated to #%d, added %lld milliseconds of delay.\00", align 1
@.str.144 = private unnamed_addr constant [45 x i8] c"Starting a failover election for epoch %llu.\00", align 1
@.str.145 = private unnamed_addr constant [43 x i8] c"Failover election won: I'm the new master.\00", align 1
@.str.146 = private unnamed_addr constant [50 x i8] c"configEpoch set to %llu after successful failover\00", align 1
@.str.147 = private unnamed_addr constant [35 x i8] c"Migrating to orphaned master %.40s\00", align 1
@.str.148 = private unnamed_addr constant [27 x i8] c"Manual failover timed out.\00", align 1
@.str.149 = private unnamed_addr constant [68 x i8] c"All master replication stream processed, manual failover can start.\00", align 1
@clusterCron.iteration = internal unnamed_addr global i64 0, align 8
@.str.150 = private unnamed_addr constant [19 x i8] c"Pinging node %.40s\00", align 1
@.str.151 = private unnamed_addr constant [32 x i8] c"*** NODE %.40s possibly failing\00", align 1
@.str.152 = private unnamed_addr constant [37 x i8] c"clusterNodeClearSlotBit(n,slot) == 1\00", align 1
@clusterUpdateState.among_minority_time = internal unnamed_addr global i64 0, align 8
@clusterUpdateState.first_call_time = internal unnamed_addr global i64 0, align 8
@.str.153 = private unnamed_addr constant [26 x i8] c"Cluster state changed: %s\00", align 1
@.str.154 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.155 = private unnamed_addr constant [66 x i8] c"I have keys for unassigned slot %d. Taking responsibility for it.\00", align 1
@.str.156 = private unnamed_addr constant [12 x i8] c"n != myself\00", align 1
@.str.157 = private unnamed_addr constant [22 x i8] c"myself->numslots == 0\00", align 1
@.str.158 = private unnamed_addr constant [21 x i8] c"switching to replica\00", align 1
@.str.159 = private unnamed_addr constant [9 x i8] c"noflags,\00", align 1
@.str.160 = private unnamed_addr constant [4 x i8] c" %i\00", align 1
@.str.161 = private unnamed_addr constant [7 x i8] c" %i-%i\00", align 1
@.str.162 = private unnamed_addr constant [10 x i8] c" %s:%i@%i\00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@.str.164 = private unnamed_addr constant [5 x i8] c",%s=\00", align 1
@.str.165 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.166 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.167 = private unnamed_addr constant [13 x i8] c" %I %I %U %s\00", align 1
@.str.168 = private unnamed_addr constant [10 x i8] c"connected\00", align 1
@.str.169 = private unnamed_addr constant [13 x i8] c"disconnected\00", align 1
@.str.170 = private unnamed_addr constant [14 x i8] c" [%d->-%.40s]\00", align 1
@.str.171 = private unnamed_addr constant [14 x i8] c" [%d-<-%.40s]\00", align 1
@.str.172 = private unnamed_addr constant [51 x i8] c"(n->slot_info_pairs_count + 1) < (2 * n->numslots)\00", align 1
@.str.173 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.174 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.175 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.176 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.177 = private unnamed_addr constant [11 x i8] c"link->node\00", align 1
@.str.178 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.179 = private unnamed_addr constant [12 x i8] c"create-time\00", align 1
@.str.180 = private unnamed_addr constant [7 x i8] c"events\00", align 1
@.str.181 = private unnamed_addr constant [22 x i8] c"send-buffer-allocated\00", align 1
@.str.182 = private unnamed_addr constant [17 x i8] c"send-buffer-used\00", align 1
@.str.183 = private unnamed_addr constant [5 x i8] c"ping\00", align 1
@.str.184 = private unnamed_addr constant [5 x i8] c"pong\00", align 1
@.str.185 = private unnamed_addr constant [5 x i8] c"meet\00", align 1
@.str.186 = private unnamed_addr constant [8 x i8] c"publish\00", align 1
@.str.187 = private unnamed_addr constant [13 x i8] c"publishshard\00", align 1
@.str.188 = private unnamed_addr constant [9 x i8] c"auth-req\00", align 1
@.str.189 = private unnamed_addr constant [9 x i8] c"auth-ack\00", align 1
@.str.190 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.191 = private unnamed_addr constant [8 x i8] c"mfstart\00", align 1
@.str.192 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.193 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.194 = private unnamed_addr constant [30 x i8] c"Slot %d is already unassigned\00", align 1
@.str.195 = private unnamed_addr constant [24 x i8] c"Slot %d is already busy\00", align 1
@.str.196 = private unnamed_addr constant [33 x i8] c"Slot %d specified multiple times\00", align 1
@.str.197 = private unnamed_addr constant [15 x i8] c"retval == C_OK\00", align 1
@__const.genClusterInfoString.statestr = private unnamed_addr constant [2 x ptr] [ptr @.str.154, ptr @.str.22], align 16
@.str.198 = private unnamed_addr constant [207 x i8] c"cluster_state:%s\0D\0Acluster_slots_assigned:%d\0D\0Acluster_slots_ok:%d\0D\0Acluster_slots_pfail:%d\0D\0Acluster_slots_fail:%d\0D\0Acluster_known_nodes:%lu\0D\0Acluster_size:%d\0D\0Acluster_current_epoch:%llu\0D\0Acluster_my_epoch:%llu\0D\0A\00", align 1
@.str.199 = private unnamed_addr constant [38 x i8] c"cluster_stats_messages_%s_sent:%lld\0D\0A\00", align 1
@.str.200 = private unnamed_addr constant [35 x i8] c"cluster_stats_messages_sent:%lld\0D\0A\00", align 1
@.str.201 = private unnamed_addr constant [42 x i8] c"cluster_stats_messages_%s_received:%lld\0D\0A\00", align 1
@.str.202 = private unnamed_addr constant [39 x i8] c"cluster_stats_messages_received:%lld\0D\0A\00", align 1
@.str.203 = private unnamed_addr constant [49 x i8] c"total_cluster_links_buffer_limit_exceeded:%llu\0D\0A\00", align 1
@.str.204 = private unnamed_addr constant [12 x i8] c"CLUSTERLINK\00", align 1
@.str.205 = private unnamed_addr constant [5 x i8] c"KILL\00", align 1
@.str.206 = private unnamed_addr constant [60 x i8] c"Debug option only available for cluster mode enabled setup!\00", align 1
@.str.207 = private unnamed_addr constant [16 x i8] c"Unknown node %s\00", align 1
@.str.208 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.209 = private unnamed_addr constant [21 x i8] c"Unknown direction %s\00", align 1
@shared = external local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@clusterDebugCommandExtendedHelp.help = internal global [3 x ptr] [ptr @.str.210, ptr @.str.211, ptr null], align 16
@.str.210 = private unnamed_addr constant [41 x i8] c"CLUSTERLINK KILL <to|from|all> <node-id>\00", align 1
@.str.211 = private unnamed_addr constant [81 x i8] c"    Kills the link based on the direction to/from (both) with the provided node.\00", align 1
@.str.212 = private unnamed_addr constant [32 x i8] c"Invalid base port specified: %s\00", align 1
@.str.213 = private unnamed_addr constant [31 x i8] c"Invalid bus port specified: %s\00", align 1
@.str.214 = private unnamed_addr constant [38 x i8] c"Invalid node address specified: %s:%s\00", align 1
@.str.215 = private unnamed_addr constant [11 x i8] c"flushslots\00", align 1
@.str.216 = private unnamed_addr constant [48 x i8] c"DB must be empty to perform CLUSTER FLUSHSLOTS.\00", align 1
@.str.217 = private unnamed_addr constant [9 x i8] c"addslots\00", align 1
@.str.218 = private unnamed_addr constant [9 x i8] c"delslots\00", align 1
@.str.219 = private unnamed_addr constant [14 x i8] c"addslotsrange\00", align 1
@.str.220 = private unnamed_addr constant [14 x i8] c"delslotsrange\00", align 1
@.str.221 = private unnamed_addr constant [56 x i8] c"start slot number %d is greater than end slot number %d\00", align 1
@.str.222 = private unnamed_addr constant [8 x i8] c"setslot\00", align 1
@.str.223 = private unnamed_addr constant [38 x i8] c"Please use SETSLOT only with masters.\00", align 1
@.str.224 = private unnamed_addr constant [206 x i8] c"Slot %d is currently in an active atomic slot migration. CLUSTER SETSLOT cannot be used at this time. To perform a legacy slot migration instead, first cancel the ongoing task with CLUSTER MIGRATION CANCEL\00", align 1
@.str.225 = private unnamed_addr constant [199 x i8] c"There is a pending trim job for slot %d. Most probably, this is due to a failed atomic slot migration. CLUSTER SETSLOT cannot be used at this time. Please retry later once the trim job is completed.\00", align 1
@.str.226 = private unnamed_addr constant [10 x i8] c"migrating\00", align 1
@.str.227 = private unnamed_addr constant [34 x i8] c"I'm not the owner of hash slot %u\00", align 1
@.str.228 = private unnamed_addr constant [27 x i8] c"I don't know about node %s\00", align 1
@.str.229 = private unnamed_addr constant [28 x i8] c"Target node is not a master\00", align 1
@.str.230 = private unnamed_addr constant [10 x i8] c"importing\00", align 1
@.str.231 = private unnamed_addr constant [38 x i8] c"I'm already the owner of hash slot %u\00", align 1
@.str.232 = private unnamed_addr constant [7 x i8] c"stable\00", align 1
@.str.233 = private unnamed_addr constant [89 x i8] c"Can't assign hashslot %d to a different node while I still hold keys for this hash slot.\00", align 1
@.str.234 = private unnamed_addr constant [44 x i8] c"configEpoch updated after importing slot %d\00", align 1
@.str.235 = private unnamed_addr constant [72 x i8] c"Invalid CLUSTER SETSLOT action or number of arguments. Try CLUSTER HELP\00", align 1
@.str.236 = private unnamed_addr constant [10 x i8] c"bumpepoch\00", align 1
@.str.237 = private unnamed_addr constant [11 x i8] c"+%s %llu\0D\0A\00", align 1
@.str.238 = private unnamed_addr constant [7 x i8] c"BUMPED\00", align 1
@.str.239 = private unnamed_addr constant [6 x i8] c"STILL\00", align 1
@.str.240 = private unnamed_addr constant [11 x i8] c"saveconfig\00", align 1
@.str.241 = private unnamed_addr constant [41 x i8] c"error saving the cluster node config: %s\00", align 1
@.str.242 = private unnamed_addr constant [7 x i8] c"forget\00", align 1
@.str.243 = private unnamed_addr constant [42 x i8] c"I tried hard but I can't forget myself...\00", align 1
@.str.244 = private unnamed_addr constant [24 x i8] c"Can't forget my master!\00", align 1
@.str.245 = private unnamed_addr constant [10 x i8] c"replicate\00", align 1
@.str.246 = private unnamed_addr constant [23 x i8] c"Can't replicate myself\00", align 1
@.str.247 = private unnamed_addr constant [46 x i8] c"I can only replicate a master, not a replica.\00", align 1
@.str.248 = private unnamed_addr constant [67 x i8] c"To set a master the node must be empty and without assigned slots.\00", align 1
@.str.249 = private unnamed_addr constant [22 x i8] c"count-failure-reports\00", align 1
@.str.250 = private unnamed_addr constant [9 x i8] c"failover\00", align 1
@.str.251 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.252 = private unnamed_addr constant [9 x i8] c"takeover\00", align 1
@.str.253 = private unnamed_addr constant [46 x i8] c"You should send CLUSTER FAILOVER to a replica\00", align 1
@.str.254 = private unnamed_addr constant [45 x i8] c"I'm a replica but my master is unknown to me\00", align 1
@.str.255 = private unnamed_addr constant [60 x i8] c"Master is down or failed, please use CLUSTER FAILOVER FORCE\00", align 1
@.str.256 = private unnamed_addr constant [39 x i8] c"Taking over the master (user request).\00", align 1
@.str.257 = private unnamed_addr constant [39 x i8] c"Forced failover user request accepted.\00", align 1
@.str.258 = private unnamed_addr constant [39 x i8] c"Manual failover user request accepted.\00", align 1
@.str.259 = private unnamed_addr constant [17 x i8] c"set-config-epoch\00", align 1
@.str.260 = private unnamed_addr constant [37 x i8] c"Invalid config epoch specified: %lld\00", align 1
@.str.261 = private unnamed_addr constant [84 x i8] c"The user can assign a config epoch only when the node does not know any other node.\00", align 1
@.str.262 = private unnamed_addr constant [38 x i8] c"Node config epoch is already non-zero\00", align 1
@.str.263 = private unnamed_addr constant [53 x i8] c"configEpoch set to %llu via CLUSTER SET-CONFIG-EPOCH\00", align 1
@.str.264 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.265 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.266 = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@.str.267 = private unnamed_addr constant [64 x i8] c"CLUSTER RESET can't be called with master nodes containing keys\00", align 1
@.str.268 = private unnamed_addr constant [6 x i8] c"links\00", align 1
@clusterCommandExtendedHelp.help = internal global [37 x ptr] [ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr null], align 16
@.str.269 = private unnamed_addr constant [29 x i8] c"ADDSLOTS <slot> [<slot> ...]\00", align 1
@.str.270 = private unnamed_addr constant [34 x i8] c"    Assign slots to current node.\00", align 1
@.str.271 = private unnamed_addr constant [68 x i8] c"ADDSLOTSRANGE <start slot> <end slot> [<start slot> <end slot> ...]\00", align 1
@.str.272 = private unnamed_addr constant [80 x i8] c"    Assign slots which are between <start-slot> and <end-slot> to current node.\00", align 1
@.str.273 = private unnamed_addr constant [10 x i8] c"BUMPEPOCH\00", align 1
@.str.274 = private unnamed_addr constant [38 x i8] c"    Advance the cluster config epoch.\00", align 1
@.str.275 = private unnamed_addr constant [32 x i8] c"COUNT-FAILURE-REPORTS <node-id>\00", align 1
@.str.276 = private unnamed_addr constant [52 x i8] c"    Return number of failure reports for <node-id>.\00", align 1
@.str.277 = private unnamed_addr constant [29 x i8] c"DELSLOTS <slot> [<slot> ...]\00", align 1
@.str.278 = private unnamed_addr constant [48 x i8] c"    Delete slots information from current node.\00", align 1
@.str.279 = private unnamed_addr constant [68 x i8] c"DELSLOTSRANGE <start slot> <end slot> [<start slot> <end slot> ...]\00", align 1
@.str.280 = private unnamed_addr constant [94 x i8] c"    Delete slots information which are between <start-slot> and <end-slot> from current node.\00", align 1
@.str.281 = private unnamed_addr constant [26 x i8] c"FAILOVER [FORCE|TAKEOVER]\00", align 1
@.str.282 = private unnamed_addr constant [52 x i8] c"    Promote current replica node to being a master.\00", align 1
@.str.283 = private unnamed_addr constant [17 x i8] c"FORGET <node-id>\00", align 1
@.str.284 = private unnamed_addr constant [36 x i8] c"    Remove a node from the cluster.\00", align 1
@.str.285 = private unnamed_addr constant [11 x i8] c"FLUSHSLOTS\00", align 1
@.str.286 = private unnamed_addr constant [47 x i8] c"    Delete current node own slots information.\00", align 1
@.str.287 = private unnamed_addr constant [30 x i8] c"MEET <ip> <port> [<bus-port>]\00", align 1
@.str.288 = private unnamed_addr constant [42 x i8] c"    Connect nodes into a working cluster.\00", align 1
@.str.289 = private unnamed_addr constant [20 x i8] c"REPLICATE <node-id>\00", align 1
@.str.290 = private unnamed_addr constant [52 x i8] c"    Configure current node as replica to <node-id>.\00", align 1
@.str.291 = private unnamed_addr constant [18 x i8] c"RESET [HARD|SOFT]\00", align 1
@.str.292 = private unnamed_addr constant [40 x i8] c"    Reset current node (default: soft).\00", align 1
@.str.293 = private unnamed_addr constant [25 x i8] c"SET-CONFIG-EPOCH <epoch>\00", align 1
@.str.294 = private unnamed_addr constant [38 x i8] c"    Set config epoch of current node.\00", align 1
@.str.295 = private unnamed_addr constant [79 x i8] c"SETSLOT <slot> (IMPORTING <node-id>|MIGRATING <node-id>|STABLE|NODE <node-id>)\00", align 1
@.str.296 = private unnamed_addr constant [20 x i8] c"    Set slot state.\00", align 1
@.str.297 = private unnamed_addr constant [11 x i8] c"SAVECONFIG\00", align 1
@.str.298 = private unnamed_addr constant [48 x i8] c"    Force saving cluster configuration on disk.\00", align 1
@.str.299 = private unnamed_addr constant [6 x i8] c"LINKS\00", align 1
@.str.300 = private unnamed_addr constant [80 x i8] c"    Return information about all network links between this node and its peers.\00", align 1
@.str.301 = private unnamed_addr constant [96 x i8] c"    Output format is an array where each array element is a map containing attributes of a link\00", align 1
@.str.302 = private unnamed_addr constant [67 x i8] c"MIGRATION IMPORT <start-slot end-slot [start-slot end-slot ...]> |\00", align 1
@.str.303 = private unnamed_addr constant [68 x i8] c"          STATUS [ID <task-id> | ALL] | CANCEL [ID <task-id> | ALL]\00", align 1
@.str.304 = private unnamed_addr constant [46 x i8] c"    Start, monitor and cancel slot migration.\00", align 1
@.str.305 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.306 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.307 = private unnamed_addr constant [76 x i8] c"FAILOVER not allowed in cluster mode. Use CLUSTER FAILOVER command instead.\00", align 1
@.str.308 = private unnamed_addr constant [55 x i8] c"Slot migration task %s received event %d for slots: %s\00", align 1
@.str.309 = private unnamed_addr constant [24 x i8] c"msgblock->refcount >= 0\00", align 1
@.str.310 = private unnamed_addr constant [98 x i8] c"Freeing cluster link(%s node %.40s, used memory: %llu) due to exceeding send buffer memory limit.\00", align 1
@.str.311 = private unnamed_addr constant [48 x i8] c"Unable to connect to Cluster Node [%s]:%d -> %s\00", align 1
@.str.312 = private unnamed_addr constant [8 x i8] c"myself,\00", align 1
@.str.313 = private unnamed_addr constant [8 x i8] c"master,\00", align 1
@.str.314 = private unnamed_addr constant [7 x i8] c"slave,\00", align 1
@.str.315 = private unnamed_addr constant [7 x i8] c"fail?,\00", align 1
@.str.316 = private unnamed_addr constant [6 x i8] c"fail,\00", align 1
@.str.317 = private unnamed_addr constant [11 x i8] c"handshake,\00", align 1
@.str.318 = private unnamed_addr constant [8 x i8] c"noaddr,\00", align 1
@.str.319 = private unnamed_addr constant [12 x i8] c"nofailover,\00", align 1
@switch.table.clusterProcessPacket.17 = private unnamed_addr constant [3 x ptr] [ptr @.str.183, ptr @.str.184, ptr @.str.185], align 8
@switch.table.clusterGetMessageTypeString = private unnamed_addr constant [11 x ptr] [ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.22, ptr @.str.186, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.187], align 8
@switch.table.clusterLogCantFailover = private unnamed_addr constant [4 x ptr] [ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @getNodeDefaultClientPort(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8488), align 8, !tbaa !64
  %.not = icmp eq i32 %i.a, 0
  %.in.v = select i1 %.not, i64 2328, i64 2332
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.b = load i32, ptr %.in, align 4, !tbaa !30
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @clusterNodeClientPort(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %.in.v = select i1 %.not, i64 2328, i64 2332
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.a = load i32, ptr %.in, align 4, !tbaa !30
  ret i32 %i.a
}

declare i64 @dictSdsHash(ptr noundef) #2

declare i32 @dictSdsKeyCompare(ptr noundef, ptr noundef, ptr noundef) #2

declare void @dictSdsDestructor(ptr noundef, ptr noundef) #2

declare i64 @dictSdsCaseHash(ptr noundef) #2

declare i32 @dictSdsKeyCaseCompare(ptr noundef, ptr noundef, ptr noundef) #2

declare void @dictListDestructor(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @auxShardIdSetter(ptr noundef %0, ptr noundef %1, i32 noundef %2) #3 {
bb.a:
  %i.a = tail call i32 @verifyClusterNodeId(ptr noundef %1, i32 noundef %2) #30
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 1 dereferenceable(40) %1, i64 40, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2168 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !70   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2176
  br label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.b
  tail call void @clusterAddNodeToShard(ptr noundef nonnull %1, ptr noundef nonnull %0)
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %i.h = phi i32 [ %i.e, %.lr.ph ], [ %i.m, %bb.e ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !71
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(40) %i.l, ptr noundef nonnull dereferenceable(40) %i.c, i64 40)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @updateShardId(ptr noundef nonnull %i.k, ptr noundef nonnull %i.c)
  %.pre = load i32, ptr %i.d, align 8, !tbaa !70
  br label %bb.e
end_hunk_0
begin_hunk_1_@clusterNextShardHandle:bb.a
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @dictGetVal(ptr noundef nonnull %i.a) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @clusterFreeShardIterator(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  tail call void @dictReleaseIterator(ptr noundef %0) #30
  ret void
}

declare void @dictReleaseIterator(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @clusterNodeHasSlotInfo(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.c = icmp ne ptr %i.b, null
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @clusterNodeSlotInfoCount(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2160
  %i.b = load i32, ptr %i.a, align 8, !tbaa !111
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i16 @clusterNodeSlotInfoEntry(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !77
  ret i16 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @clusterGetShardNodeCount(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !108
  %i.c = trunc i64 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @clusterShardHandleGetNodeIterator(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #35 ; 2 uses
  tail call void @listRewind(ptr noundef %0, ptr noundef %i.a) #30
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @clusterShardNodeIteratorFree(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  tail call void @zfree(ptr noundef %0) #30
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @clusterShardNodeIteratorNext(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @listNext(ptr noundef %0) #30 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !161
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @clusterShardNodeFirst(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !196    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !161
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @clusterNodeTcpPort(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2328
  %i.b = load i32, ptr %i.a, align 8, !tbaa !79
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @clusterNodeTlsPort(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2332
  %i.b = load i32, ptr %i.a, align 4, !tbaa !80
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local ptr @genClusterInfoString() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @sdsempty() #30
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !82 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 262192
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.h
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.04373 = phi i32 [ 0, %bb.a ], [ %.2, %bb.h ]  ; 4 uses
  %.04572 = phi i32 [ 0, %bb.a ], [ %.247, %bb.h ] ; 4 uses
  %.04871 = phi i32 [ 0, %bb.a ], [ %.250, %bb.h ] ; 4 uses
  %.05170 = phi i32 [ 0, %bb.a ], [ %.152, %bb.h ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %.05170, 1                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.i = load i32, ptr %i.h, align 8, !tbaa !97   ; 2 uses
  %i.j = and i32 %i.i, 8
  %.not61 = icmp eq i32 %i.j, 0
  br i1 %.not61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %.04373, 1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.l = and i32 %i.i, 4
  %.not62 = icmp eq i32 %i.l, 0
  br i1 %.not62, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = add nsw i32 %.04572, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.n = add nsw i32 %.04871, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.b
  %.152 = phi i32 [ %.05170, %bb.b ], [ %i.g, %bb.f ], [ %i.g, %bb.g ], [ %i.g, %bb.d ] ; 2 uses
  %.250 = phi i32 [ %.04871, %bb.b ], [ %.04871, %bb.f ], [ %i.n, %bb.g ], [ %.04871, %bb.d ] ; 2 uses
  %.247 = phi i32 [ %.04572, %bb.b ], [ %i.m, %bb.f ], [ %.04572, %bb.g ], [ %.04572, %bb.d ] ; 2 uses
  %.2 = phi i32 [ %.04373, %bb.b ], [ %.04373, %bb.f ], [ %.04373, %bb.g ], [ %i.k, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16384
  br i1 %exitcond.not, label %bb.i, label %bb.b, !llvm.loop !330

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr @myself, align 8, !tbaa !72 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.q = load i32, ptr %i.p, align 8, !tbaa !97
  %i.r = and i32 %i.q, 2
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 2184
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !81   ; 2 uses
  %.not60 = icmp eq ptr %i.t, null
  br i1 %.not60, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.pn = phi ptr [ %i.o, %bb.k ], [ %i.t, %bb.j ]
  %.in = getelementptr inbounds nuw i8, ptr %.pn, i64 96
  %i.u = load i64, ptr %.in, align 8, !tbaa !101
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !121
  %0 = sext i32 %i.w to i64
  %1 = getelementptr inbounds [8 x i8], ptr @__const.genClusterInfoString.statestr, i64 %0
  %2 = load ptr, ptr %1, align 8, !tbaa !88
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !91   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !78
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !78
  %i.ad = add i64 %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !122
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !89
  %i.ai = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.a, ptr noundef nonnull @.str.198, ptr noundef %2, i32 noundef %.152, i32 noundef %.250, i32 noundef %.247, i32 noundef %.2, i64 noundef %i.ad, i32 noundef %i.af, i64 noundef %i.ah, i64 noundef %i.u) #30 ; 2 uses
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !82 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 393392
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !183 ; 4 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.m, label %clusterGetMessageTypeString.exit

clusterGetMessageTypeString.exit:                 ; preds = %bb.l
  %i.an = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.ai, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.183, i64 noundef %i.al) #30
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !82
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %clusterGetMessageTypeString.exit
  %i.ao = phi ptr [ %i.aj, %bb.l ], [ %.pre, %clusterGetMessageTypeString.exit ] ; 2 uses
  %.154 = phi ptr [ %i.ai, %bb.l ], [ %i.an, %clusterGetMessageTypeString.exit ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 393400
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !183 ; 3 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.n, label %clusterGetMessageTypeString.exit.1

clusterGetMessageTypeString.exit.1:               ; preds = %bb.m
  %i.as = add nsw i64 %i.aq, %i.al
  %i.at = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.154, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.184, i64 noundef %i.aq) #30
  %.pre90 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !82
  br label %bb.n

bb.n:                                             ; preds = %clusterGetMessageTypeString.exit.1, %bb.m
  %i.au = phi ptr [ %i.ao, %bb.m ], [ %.pre90, %clusterGetMessageTypeString.exit.1 ] ; 2 uses
  %.154.1 = phi ptr [ %.154, %bb.m ], [ %i.at, %clusterGetMessageTypeString.exit.1 ] ; 2 uses
  %.141.1 = phi i64 [ %i.al, %bb.m ], [ %i.as, %clusterGetMessageTypeString.exit.1 ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 393408
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !183 ; 3 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.o, label %clusterGetMessageTypeString.exit.2

clusterGetMessageTypeString.exit.2:               ; preds = %bb.n
  %i.ay = add nsw i64 %i.aw, %.141.1
  %i.az = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.154.1, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.185, i64 noundef %i.aw) #30
  %.pre91 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !82
  br label %bb.o

bb.o:                                             ; preds = %clusterGetMessageTypeString.exit.2, %bb.n
  %i.ba = phi ptr [ %i.au, %bb.n ], [ %.pre91, %clusterGetMessageTypeString.exit.2 ] ; 2 uses
  %.154.2 = phi ptr [ %.154.1, %bb.n ], [ %i.az, %clusterGetMessageTypeString.exit.2 ] ; 2 uses
  %.141.2 = phi i64 [ %.141.1, %bb.n ], [ %i.ay, %clusterGetMessageTypeString.exit.2 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 393416
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !183 ; 3 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.p, label %clusterGetMessageTypeString.exit.3

clusterGetMessageTypeString.exit.3:               ; preds = %bb.o
  %i.be = add nsw i64 %i.bc, %.141.2
  %i.bf = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.154.2, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.22, i64 noundef %i.bc) #30
  %.pre92 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !82
  br label %bb.p

bb.p:                                             ; preds = %clusterGetMessageTypeString.exit.3, %bb.o
  %i.bg = phi ptr [ %i.ba, %bb.o ], [ %.pre92, %clusterGetMessageTypeString.exit.3 ] ; 2 uses
  %.154.3 = phi ptr [ %.154.2, %bb.o ], [ %i.bf, %clusterGetMessageTypeString.exit.3 ] ; 2 uses
  %.141.3 = phi i64 [ %.141.2, %bb.o ], [ %i.be, %clusterGetMessageTypeString.exit.3 ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 393424
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !183 ; 3 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.q, label %clusterGetMessageTypeString.exit.4

clusterGetMessageTypeString.exit.4:               ; preds = %bb.p
  %i.bk = add nsw i64 %i.bi, %.141.3
  %i.bl = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.154.3, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.186, i64 noundef %i.bi) #30
  %.pre93 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !82
  br label %bb.q

bb.q:                                             ; preds = %clusterGetMessageTypeString.exit.4, %bb.p
  %i.bm = phi ptr [ %i.bg, %bb.p ], [ %.pre93, %clusterGetMessageTypeString.exit.4 ] ; 2 uses
  %.154.4 = phi ptr [ %.154.3, %bb.p ], [ %i.bl, %clusterGetMessageTypeString.exit.4 ] ; 2 uses
  %.141.4 = phi i64 [ %.141.3, %bb.p ], [ %i.bk, %clusterGetMessageTypeString.exit.4 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 393432
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !183 ; 3 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.r, label %clusterGetMessageTypeString.exit.5

clusterGetMessageTypeString.exit.5:               ; preds = %bb.q
  %i.bq = add nsw i64 %i.bo, %.141.4
  %i.br = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.154.4, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.188, i64 noundef %i.bo) #30
  %.pre94 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !82
  br label %bb.r

bb.r:                                             ; preds = %clusterGetMessageTypeString.exit.5, %bb.q
  %i.bs = phi ptr [ %i.bm, %bb.q ], [ %.pre94, %clusterGetMessageTypeString.exit.5 ] ; 2 uses
  %.154.5 = phi ptr [ %.154.4, %bb.q ], [ %i.br, %clusterGetMessageTypeString.exit.5 ] ; 2 uses
  %.141.5 = phi i64 [ %.141.4, %bb.q ], [ %i.bq, %clusterGetMessageTypeString.exit.5 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 393440
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !183 ; 3 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.s, label %clusterGetMessageTypeString.exit.6

clusterGetMessageTypeString.exit.6:               ; preds = %bb.r
  %i.bw = add nsw i64 %i.bu, %.141.5
  %i.bx = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.154.5, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.189, i64 noundef %i.bu) #30
  %.pre95 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !82
  br label %bb.s

bb.s:                                             ; preds = %clusterGetMessageTypeString.exit.6, %bb.r
  %i.by = phi ptr [ %i.bs, %bb.r ], [ %.pre95, %clusterGetMessageTypeString.exit.6 ] ; 2 uses
  %.154.6 = phi ptr [ %.154.5, %bb.r ], [ %i.bx, %clusterGetMessageTypeString.exit.6 ] ; 2 uses
  %.141.6 = phi i64 [ %.141.5, %bb.r ], [ %i.bw, %clusterGetMessageTypeString.exit.6 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 393448
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !183 ; 3 uses
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.t, label %clusterGetMessageTypeString.exit.7

clusterGetMessageTypeString.exit.7:               ; preds = %bb.s
  %i.cc = add nsw i64 %i.ca, %.141.6
  %i.cd = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.154.6, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.190, i64 noundef %i.ca) #30
  %.pre96 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !82
  br label %bb.t

bb.t:                                             ; preds = %clusterGetMessageTypeString.exit.7, %bb.s
  %i.ce = phi ptr [ %i.by, %bb.s ], [ %.pre96, %clusterGetMessageTypeString.exit.7 ] ; 2 uses
  %.154.7 = phi ptr [ %.154.6, %bb.s ], [ %i.cd, %clusterGetMessageTypeString.exit.7 ] ; 2 uses
  %.141.7 = phi i64 [ %.141.6, %bb.s ], [ %i.cc, %clusterGetMessageTypeString.exit.7 ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 393456
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !183 ; 3 uses
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.u, label %clusterGetMessageTypeString.exit.8

clusterGetMessageTypeString.exit.8:               ; preds = %bb.t
  %i.ci = add nsw i64 %i.cg, %.141.7
  %i.cj = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.154.7, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.191, i64 noundef %i.cg) #30
  %.pre97 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !82
  br label %bb.u

bb.u:                                             ; preds = %clusterGetMessageTypeString.exit.8, %bb.t
  %i.ck = phi ptr [ %i.ce, %bb.t ], [ %.pre97, %clusterGetMessageTypeString.exit.8 ] ; 2 uses
  %.154.8 = phi ptr [ %.154.7, %bb.t ], [ %i.cj, %clusterGetMessageTypeString.exit.8 ] ; 2 uses
  %.141.8 = phi i64 [ %.141.7, %bb.t ], [ %i.ci, %clusterGetMessageTypeString.exit.8 ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 393464
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !183 ; 3 uses
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.v, label %clusterGetMessageTypeString.exit.9

clusterGetMessageTypeString.exit.9:               ; preds = %bb.u
  %i.co = add nsw i64 %i.cm, %.141.8
  %i.cp = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.154.8, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.192, i64 noundef %i.cm) #30
  %.pre98 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !82
  br label %bb.v

bb.v:                                             ; preds = %clusterGetMessageTypeString.exit.9, %bb.u
  %i.cq = phi ptr [ %i.ck, %bb.u ], [ %.pre98, %clusterGetMessageTypeString.exit.9 ]
  %.154.9 = phi ptr [ %.154.8, %bb.u ], [ %i.cp, %clusterGetMessageTypeString.exit.9 ] ; 2 uses
  %.141.9 = phi i64 [ %.141.8, %bb.u ], [ %i.co, %clusterGetMessageTypeString.exit.9 ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 393472
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !183 ; 3 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.w, label %clusterGetMessageTypeString.exit.10

clusterGetMessageTypeString.exit.10:              ; preds = %bb.v
  %i.cu = add nsw i64 %i.cs, %.141.9
  %i.cv = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.154.9, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.187, i64 noundef %i.cs) #30
  br label %bb.w

bb.w:                                             ; preds = %clusterGetMessageTypeString.exit.10, %bb.v
  %.154.10 = phi ptr [ %.154.9, %bb.v ], [ %i.cv, %clusterGetMessageTypeString.exit.10 ]
  %.141.10 = phi i64 [ %.141.9, %bb.v ], [ %i.cu, %clusterGetMessageTypeString.exit.10 ]
  %i.cw = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.154.10, ptr noundef nonnull @.str.200, i64 noundef %.141.10) #30 ; 2 uses
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !82 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 393480
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !183 ; 4 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %bb.x, label %clusterGetMessageTypeString.exit64

clusterGetMessageTypeString.exit64:               ; preds = %bb.w
  %i.db = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.cw, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.183, i64 noundef %i.cz) #30
  %.pre99 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !82
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %clusterGetMessageTypeString.exit64
  %i.dc = phi ptr [ %i.cx, %bb.w ], [ %.pre99, %clusterGetMessageTypeString.exit64 ] ; 2 uses
  %.3 = phi ptr [ %i.cw, %bb.w ], [ %i.db, %clusterGetMessageTypeString.exit64 ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 393488
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !183 ; 3 uses
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %bb.y, label %clusterGetMessageTypeString.exit64.1

clusterGetMessageTypeString.exit64.1:             ; preds = %bb.x
  %i.dg = add nsw i64 %i.de, %i.cz
  %i.dh = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.3, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.184, i64 noundef %i.de) #30
  %.pre100 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !82
  br label %bb.y

bb.y:                                             ; preds = %clusterGetMessageTypeString.exit64.1, %bb.x
  %i.di = phi ptr [ %i.dc, %bb.x ], [ %.pre100, %clusterGetMessageTypeString.exit64.1 ] ; 2 uses
  %.3.1 = phi ptr [ %.3, %bb.x ], [ %i.dh, %clusterGetMessageTypeString.exit64.1 ] ; 2 uses
  %.1.1 = phi i64 [ %i.cz, %bb.x ], [ %i.dg, %clusterGetMessageTypeString.exit64.1 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 393496
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !183 ; 3 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %bb.z, label %clusterGetMessageTypeString.exit64.2

clusterGetMessageTypeString.exit64.2:             ; preds = %bb.y
  %i.dm = add nsw i64 %i.dk, %.1.1
  %i.dn = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.3.1, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.185, i64 noundef %i.dk) #30
end_hunk_1
