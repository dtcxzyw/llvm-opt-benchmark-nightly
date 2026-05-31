inline.NumInlined: 195
inline.NumDeleted: 32
begin_hunk_0
@readSyncBulkPayload.usemark = internal unnamed_addr global i1 false, align 4
@.str.126 = private unnamed_addr constant [45 x i8] c"I/O error reading bulk count from MASTER: %s\00", align 1
@.str.127 = private unnamed_addr constant [45 x i8] c"MASTER aborted replication with an error: %s\00", align 1
@.str.128 = private unnamed_addr constant [114 x i8] c"Bad protocol from MASTER, the first byte is not '$' (we received '%s'), are you sure the host and port are right?\00", align 1
@.str.130 = private unnamed_addr constant [72 x i8] c"MASTER <-> REPLICA sync: receiving streamed RDB from master with EOF %s\00", align 1
@.str.131 = private unnamed_addr constant [10 x i8] c"to parser\00", align 1
@.str.132 = private unnamed_addr constant [8 x i8] c"to disk\00", align 1
@.str.133 = private unnamed_addr constant [61 x i8] c"MASTER <-> REPLICA sync: receiving %lld bytes from master %s\00", align 1
@.str.134 = private unnamed_addr constant [41 x i8] c"I/O error trying to sync with MASTER: %s\00", align 1
@.str.135 = private unnamed_addr constant [16 x i8] c"connection lost\00", align 1
@.str.136 = private unnamed_addr constant [105 x i8] c"Write error or short write writing to the DB dump file needed for MASTER <-> REPLICA synchronization: %s\00", align 1
@.str.137 = private unnamed_addr constant [12 x i8] c"short write\00", align 1
@.str.138 = private unnamed_addr constant [68 x i8] c"Error truncating the RDB file received from the master for SYNC: %s\00", align 1
@.str.139 = private unnamed_addr constant [171 x i8] c"Replica is about to load the RDB file received from the master, but there is a pending RDB child running. Killing process %ld and removing its temp file to avoid any race\00", align 1
@.str.140 = private unnamed_addr constant [46 x i8] c"MASTER <-> REPLICA sync: Loading DB in memory\00", align 1
@__const.readSyncBulkPayload.rsi = private unnamed_addr constant { i32, i32, [41 x i8], [7 x i8], i64 } { i32 -1, i32 0, [41 x i8] c"0000000000000000000000000000000000000000\00", [7 x i8] zeroinitializer, i64 -1 }, align 8
@disklessLoadingRio = internal unnamed_addr global ptr null, align 8
@.str.141 = private unnamed_addr constant [43 x i8] c"MASTER <-> REPLICA sync: Flushing old data\00", align 1
@.str.142 = private unnamed_addr constant [84 x i8] c"Failed trying to load the MASTER synchronization DB from socket, check server logs.\00", align 1
@.str.143 = private unnamed_addr constant [40 x i8] c"Replication stream EOF marker is broken\00", align 1
@.str.144 = private unnamed_addr constant [63 x i8] c"MASTER <-> REPLICA sync: Discarding temporary DB in background\00", align 1
@.str.145 = private unnamed_addr constant [59 x i8] c"MASTER <-> REPLICA sync: Swapping active DB with loaded DB\00", align 1
@.str.146 = private unnamed_addr constant [57 x i8] c"MASTER <-> REPLICA sync: Discarding old DB in background\00", align 1
@.str.147 = private unnamed_addr constant [84 x i8] c"Failed trying to sync the temp DB to disk in MASTER <-> REPLICA synchronization: %s\00", align 1
@.str.148 = private unnamed_addr constant [86 x i8] c"Failed trying to rename the temp DB into %s in MASTER <-> REPLICA synchronization: %s\00", align 1
@.str.149 = private unnamed_addr constant [80 x i8] c"Failed trying to sync DB directory %s in MASTER <-> REPLICA synchronization: %s\00", align 1
@.str.150 = private unnamed_addr constant [82 x i8] c"Failed trying to load the MASTER synchronization DB from disk, check server logs.\00", align 1
@.str.151 = private unnamed_addr constant [86 x i8] c"Removing the RDB file obtained from the master. This replica has persistence disabled\00", align 1
@.str.152 = private unnamed_addr constant [47 x i8] c"MASTER <-> REPLICA sync: Finished with success\00", align 1
@.str.153 = private unnamed_addr constant [104 x i8] c"STATUS=MASTER <-> REPLICA sync: Finished with success. Ready to accept connections in read-write mode.\0A\00", align 1
@.str.154 = private unnamed_addr constant [62 x i8] c"MASTER <-> REPLICA sync: Starting AOF after a successful sync\00", align 1
@.str.155 = private unnamed_addr constant [44 x i8] c"Failed to read response from the server: %s\00", align 1
@.str.156 = private unnamed_addr constant [23 x i8] c"-Writing to master: %s\00", align 1
@.str.157 = private unnamed_addr constant [11 x i8] c"$%zu\0D\0A%s\0D\0A\00", align 1
@.str.158 = private unnamed_addr constant [7 x i8] c"*%zu\0D\0A\00", align 1
@.str.159 = private unnamed_addr constant [6 x i8] c"*%i\0D\0A\00", align 1
@.str.160 = private unnamed_addr constant [6 x i8] c"$%i\0D\0A\00", align 1
@.str.161 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.162 = private unnamed_addr constant [52 x i8] c"Trying a partial resynchronization (request %s:%s).\00", align 1
@.str.163 = private unnamed_addr constant [58 x i8] c"Partial resynchronization not possible (no cached master)\00", align 1
@.str.164 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.165 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.166 = private unnamed_addr constant [6 x i8] c"PSYNC\00", align 1
@.str.167 = private unnamed_addr constant [9 x i8] c"FAILOVER\00", align 1
@.str.168 = private unnamed_addr constant [35 x i8] c"Unable to send PSYNC to master: %s\00", align 1
@.str.169 = private unnamed_addr constant [46 x i8] c"Master did not reply to PSYNC, will try later\00", align 1
@.str.170 = private unnamed_addr constant [12 x i8] c"+FULLRESYNC\00", align 1
@.str.171 = private unnamed_addr constant [46 x i8] c"Master replied with wrong +FULLRESYNC syntax.\00", align 1
@.str.172 = private unnamed_addr constant [33 x i8] c"Full resync from master: %s:%lld\00", align 1
@.str.173 = private unnamed_addr constant [16 x i8] c"+RDBCHANNELSYNC\00", align 1
@.str.174 = private unnamed_addr constant [53 x i8] c"Master replied with wrong +RDBCHANNELSYNC syntax: %s\00", align 1
@.str.175 = private unnamed_addr constant [47 x i8] c"PSYNC is not possible, initialize RDB channel.\00", align 1
@.str.176 = private unnamed_addr constant [10 x i8] c"+CONTINUE\00", align 1
@.str.177 = private unnamed_addr constant [50 x i8] c"Successful partial resynchronization with master.\00", align 1
@.str.178 = private unnamed_addr constant [36 x i8] c"Master replication ID changed to %s\00", align 1
@.str.179 = private unnamed_addr constant [14 x i8] c"-NOMASTERLINK\00", align 1
@.str.180 = private unnamed_addr constant [9 x i8] c"-LOADING\00", align 1
@.str.181 = private unnamed_addr constant [68 x i8] c"Master is currently unable to PSYNC but should be in the future: %s\00", align 1
@.str.182 = private unnamed_addr constant [5 x i8] c"-ERR\00", align 1
@.str.183 = private unnamed_addr constant [42 x i8] c"Unexpected reply to PSYNC from master: %s\00", align 1
@.str.184 = private unnamed_addr constant [63 x i8] c"Master does not support PSYNC or is in error state (reply: %s)\00", align 1
@syncWithMaster.replconf_rdb_no_compress = internal unnamed_addr global i1 false, align 4
@.str.185 = private unnamed_addr constant [39 x i8] c"Error condition on socket for SYNC: %s\00", align 1
@.str.186 = private unnamed_addr constant [47 x i8] c"Non blocking connect for SYNC fired the event.\00", align 1
@.str.187 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@.str.188 = private unnamed_addr constant [8 x i8] c"-NOAUTH\00", align 1
@.str.189 = private unnamed_addr constant [8 x i8] c"-NOPERM\00", align 1
@.str.190 = private unnamed_addr constant [29 x i8] c"-ERR operation not permitted\00", align 1
@.str.191 = private unnamed_addr constant [38 x i8] c"Error reply to PING from master: '%s'\00", align 1
@.str.192 = private unnamed_addr constant [52 x i8] c"Master replied to PING, replication can continue...\00", align 1
@.str.193 = private unnamed_addr constant [5 x i8] c"AUTH\00", align 1
@.str.194 = private unnamed_addr constant [9 x i8] c"REPLCONF\00", align 1
@.str.195 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.196 = private unnamed_addr constant [29 x i8] c"Unable to AUTH to MASTER: %s\00", align 1
@.str.197 = private unnamed_addr constant [70 x i8] c"(Non critical) Master does not understand REPLCONF listening-port: %s\00", align 1
@.str.198 = private unnamed_addr constant [66 x i8] c"(Non critical) Master does not understand REPLCONF ip-address: %s\00", align 1
@.str.199 = private unnamed_addr constant [71 x i8] c"(Non critical) Master does not understand REPLCONF rdb-no-compress: %s\00", align 1
@.str.200 = private unnamed_addr constant [60 x i8] c"(Non critical) Master does not understand REPLCONF capa: %s\00", align 1
@.str.201 = private unnamed_addr constant [39 x i8] c"Write error sending the PSYNC command.\00", align 1
@.str.202 = private unnamed_addr constant [31 x i8] c"Write error to failover target\00", align 1
@.str.203 = private unnamed_addr constant [85 x i8] c"syncWithMaster(): state machine error, state should be RECEIVE_PSYNC_REPLY but is %d\00", align 1
@.str.204 = private unnamed_addr constant [39 x i8] c"Failover target rejected psync request\00", align 1
@.str.205 = private unnamed_addr constant [70 x i8] c"MASTER <-> REPLICA sync: Master accepted a Partial Resynchronization.\00", align 1
@.str.206 = private unnamed_addr constant [117 x i8] c"STATUS=MASTER <-> REPLICA sync: Partial Resynchronization accepted. Ready to accept connections in read-write mode.\0A\00", align 1
@.str.207 = private unnamed_addr constant [22 x i8] c"Retrying with SYNC...\00", align 1
@.str.208 = private unnamed_addr constant [7 x i8] c"SYNC\0D\0A\00", align 1
@.str.209 = private unnamed_addr constant [32 x i8] c"I/O error writing to MASTER: %s\00", align 1
@.str.210 = private unnamed_addr constant [16 x i8] c"temp-%d.%ld.rdb\00", align 1
@.str.211 = private unnamed_addr constant [72 x i8] c"Opening the temp file needed for MASTER <-> REPLICA synchronization: %s\00", align 1
@.str.212 = private unnamed_addr constant [32 x i8] c"Unable to connect to master: %s\00", align 1
@.str.213 = private unnamed_addr constant [46 x i8] c"Can't create readable event for SYNC: %s (%s)\00", align 1
@.str.214 = private unnamed_addr constant [56 x i8] c"Master did not respond to command during SYNC handshake\00", align 1
@.str.215 = private unnamed_addr constant [55 x i8] c"Sending command to master in replication handshake: %s\00", align 1
@.str.216 = private unnamed_addr constant [32 x i8] c"Unable to connect to MASTER: %s\00", align 1
@.str.217 = private unnamed_addr constant [32 x i8] c"MASTER <-> REPLICA sync started\00", align 1
@.str.218 = private unnamed_addr constant [41 x i8] c"server.repl_state == REPL_STATE_TRANSFER\00", align 1
@.str.219 = private unnamed_addr constant [43 x i8] c"Reconnecting to MASTER %s:%d after failure\00", align 1
@.str.220 = private unnamed_addr constant [27 x i8] c"Connecting to MASTER %s:%d\00", align 1
@.str.221 = private unnamed_addr constant [37 x i8] c"Restarting AOF after becoming master\00", align 1
@.str.222 = private unnamed_addr constant [29 x i8] c"Reconnecting to MASTER %s:%d\00", align 1
@.str.223 = private unnamed_addr constant [20 x i8] c"buf->blocks == NULL\00", align 1
@.str.224 = private unnamed_addr constant [141 x i8] c"Replication buffer limit has been reached (%llu bytes), stopped buffering replication stream. Further accumulation may occur on master side.\00", align 1
@.str.225 = private unnamed_addr constant [139 x i8] c"Slots sync buffer limit has been reached (%llu bytes), stopped buffering slots sync stream. Further accumulation may occur on source side.\00", align 1
@.str.226 = private unnamed_addr constant [39 x i8] c"REPLICAOF not allowed in cluster mode.\00", align 1
@.str.227 = private unnamed_addr constant [42 x i8] c"REPLICAOF not allowed while failing over.\00", align 1
@.str.228 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.229 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.230 = private unnamed_addr constant [45 x i8] c"MASTER MODE enabled (user request from '%s')\00", align 1
@.str.231 = private unnamed_addr constant [47 x i8] c"Command is not valid when client is a replica.\00", align 1
@.str.232 = private unnamed_addr constant [20 x i8] c"Invalid master port\00", align 1
@.str.233 = private unnamed_addr constant [115 x i8] c"REPLICAOF would result into synchronization with the master we are already connected with. No operation performed.\00", align 1
@.str.234 = private unnamed_addr constant [44 x i8] c"+OK Already connected to specified master\0D\0A\00", align 1
@.str.235 = private unnamed_addr constant [49 x i8] c"REPLICAOF %s:%d enabled (user request from '%s')\00", align 1
@.str.236 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.237 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@.str.238 = private unnamed_addr constant [10 x i8] c"handshake\00", align 1
@.str.239 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.240 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.241 = private unnamed_addr constant [11 x i8] c"connecting\00", align 1
@.str.242 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.243 = private unnamed_addr constant [10 x i8] c"connected\00", align 1
@.str.244 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.245 = private unnamed_addr constant [4 x i8] c"ACK\00", align 1
@.str.246 = private unnamed_addr constant [5 x i8] c"FACK\00", align 1
@.str.247 = private unnamed_addr constant [54 x i8] c"server.master != NULL && server.cached_master == NULL\00", align 1
@.str.248 = private unnamed_addr constant [46 x i8] c"server.master->tid == IOTHREAD_MAIN_THREAD_ID\00", align 1
@.str.249 = private unnamed_addr constant [39 x i8] c"Caching the disconnected master state.\00", align 1
@.str.250 = private unnamed_addr constant [172 x i8] c"Before turning into a replica, using my own master parameters to synthesize a cached master: I may be able to synchronize with the new master with just a partial transfer.\00", align 1
@.str.251 = private unnamed_addr constant [43 x i8] c"Discarding previously cached master state.\00", align 1
@.str.252 = private unnamed_addr constant [53 x i8] c"server.cached_master->tid == IOTHREAD_MAIN_THREAD_ID\00", align 1
@.str.253 = private unnamed_addr constant [81 x i8] c"Error resurrecting the cached master, impossible to add the readable handler: %s\00", align 1
@.str.254 = private unnamed_addr constant [81 x i8] c"Error resurrecting the cached master, impossible to add the writable handler: %s\00", align 1
@.str.255 = private unnamed_addr constant [209 x i8] c"WAIT cannot be used with replica instances. Please also note that since Redis 4.0 if a replica is configured to be writable (which is not the default) writes to replicas are just local and are not propagated.\00", align 1
@.str.256 = private unnamed_addr constant [127 x i8] c"WAITAOF cannot be used with replica instances. Please also note that writes to replicas are just local and are not propagated.\00", align 1
@.str.257 = private unnamed_addr constant [72 x i8] c"WAITAOF cannot be used when numlocal is set but appendonly is disabled.\00", align 1
@.str.258 = private unnamed_addr constant [11 x i8] c"ln != NULL\00", align 1
@.str.259 = private unnamed_addr constant [36 x i8] c"Timeout connecting to the MASTER...\00", align 1
@.str.260 = private unnamed_addr constant [140 x i8] c"Timeout receiving bulk data from MASTER... If the problem persists try to set the 'repl-timeout' parameter in redis.conf to a larger value.\00", align 1
@.str.261 = private unnamed_addr constant [52 x i8] c"Disconnecting timedout replica (streaming sync): %s\00", align 1
@.str.262 = private unnamed_addr constant [47 x i8] c"Disconnecting timedout replica (full sync): %s\00", align 1
@.str.263 = private unnamed_addr constant [71 x i8] c"Replication backlog freed after %d seconds without connected replicas.\00", align 1
@.str.264 = private unnamed_addr constant [67 x i8] c"o->refcount > 0 && o->refcount <= (int)listLength(server.slaves)+1\00", align 1
@.str.265 = private unnamed_addr constant [12 x i8] c"no-failover\00", align 1
@.str.266 = private unnamed_addr constant [21 x i8] c"failover-in-progress\00", align 1
@.str.267 = private unnamed_addr constant [17 x i8] c"waiting-for-sync\00", align 1
@.str.268 = private unnamed_addr constant [30 x i8] c"FAILOVER to %s:%d aborted: %s\00", align 1
@.str.269 = private unnamed_addr constant [36 x i8] c"FAILOVER to any replica aborted: %s\00", align 1
@.str.270 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@.str.271 = private unnamed_addr constant [25 x i8] c"No failover in progress.\00", align 1
@.str.272 = private unnamed_addr constant [26 x i8] c"Failover manually aborted\00", align 1
@.str.273 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.274 = private unnamed_addr constant [40 x i8] c"FAILOVER timeout must be greater than 0\00", align 1
@.str.275 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.276 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.277 = private unnamed_addr constant [30 x i8] c"FAILOVER already in progress.\00", align 1
@.str.278 = private unnamed_addr constant [48 x i8] c"FAILOVER is not valid when server is a replica.\00", align 1
@.str.279 = private unnamed_addr constant [38 x i8] c"FAILOVER requires connected replicas.\00", align 1
@.str.280 = private unnamed_addr constant [75 x i8] c"FAILOVER with force option requires both a timeout and target HOST and IP.\00", align 1
@.str.281 = private unnamed_addr constant [48 x i8] c"FAILOVER target HOST and PORT is not a replica.\00", align 1
@.str.282 = private unnamed_addr constant [39 x i8] c"FAILOVER target replica is not online.\00", align 1
@.str.283 = private unnamed_addr constant [30 x i8] c"FAILOVER requested to %s:%ld.\00", align 1
@.str.284 = private unnamed_addr constant [35 x i8] c"FAILOVER requested to any replica.\00", align 1
@.str.285 = private unnamed_addr constant [19 x i8] c"failover requested\00", align 1
@.str.286 = private unnamed_addr constant [51 x i8] c"FAILOVER to %s:%d time out exceeded, failing over.\00", align 1
@.str.287 = private unnamed_addr constant [39 x i8] c"Replica never caught up before timeout\00", align 1
@.str.288 = private unnamed_addr constant [47 x i8] c"Failover target %s:%d is synced, failing over.\00", align 1
@.str.289 = private unnamed_addr constant [8 x i8] c"[%s]:%d\00", align 1
@.str.290 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@.str.291 = private unnamed_addr constant [80 x i8] c"Skipping diskless-load because there are modules that don't handle read errors.\00", align 1
@.str.292 = private unnamed_addr constant [90 x i8] c"Skipping diskless-load because there are modules that are not aware of async replication.\00", align 1
@.str.293 = private unnamed_addr constant [15 x i8] c"server.loading\00", align 1
@.str.294 = private unnamed_addr constant [6 x i8] c"fd=%i\00", align 1
@.str.295 = private unnamed_addr constant [35 x i8] c"conn == server.repl_rdb_transfer_s\00", align 1
@.str.296 = private unnamed_addr constant [58 x i8] c"Error condition on socket for rdb channel replication: %s\00", align 1
@.str.297 = private unnamed_addr constant [30 x i8] c"Unknown rdb channel state: %d\00", align 1
@.str.298 = private unnamed_addr constant [39 x i8] c"rdb channel sync failed with error: %s\00", align 1
@__const.rdbChannelSendHandshake.args = private unnamed_addr constant [3 x ptr] [ptr @.str.193, ptr null, ptr null], align 16
@__const.rdbChannelSendHandshake.lens = private unnamed_addr constant [3 x i64] [i64 4, i64 0, i64 0], align 16
@.str.299 = private unnamed_addr constant [70 x i8] c"Error sending AUTH to master in rdb channel replication handshake: %s\00", align 1
@.str.300 = private unnamed_addr constant [70 x i8] c"Error sending REPLCONF command to master in rdb channel handshake: %s\00", align 1
@.str.301 = private unnamed_addr constant [68 x i8] c"Master did not respond to auth command during rdb channel handshake\00", align 1
@.str.302 = private unnamed_addr constant [29 x i8] c"Unable to AUTH to master: %s\00", align 1
@.str.303 = private unnamed_addr constant [72 x i8] c"Master did not respond to replconf command during rdb channel handshake\00", align 1
@.str.304 = private unnamed_addr constant [37 x i8] c"Master replied error to replconf: %s\00", align 1
@.str.305 = private unnamed_addr constant [32 x i8] c"I/O error writing to Master: %s\00", align 1
@.str.306 = private unnamed_addr constant [27 x i8] c"Received empty psync reply\00", align 1
@.str.307 = private unnamed_addr constant [36 x i8] c"Received unexpected psync reply: %s\00", align 1
@.str.308 = private unnamed_addr constant [60 x i8] c"Starting to receive RDB and replication stream in parallel.\00", align 1
@.str.309 = private unnamed_addr constant [44 x i8] c"Can't set read handler for main channel: %s\00", align 1
@.str.310 = private unnamed_addr constant [64 x i8] c"Can't create readable event for rdb channel connection: %s (%s)\00", align 1
@.str.311 = private unnamed_addr constant [49 x i8] c"Main channel error while reading from master: %s\00", align 1
@.str.312 = private unnamed_addr constant [35 x i8] c"block && block->size > block->used\00", align 1
@ReplNumMasterDisconnection = internal unnamed_addr global i64 0, align 8
@.str.313 = private unnamed_addr constant [88 x i8] c"MASTER <-> REPLICA sync: Starting to stream replication buffer into the db (%zu bytes).\00", align 1
@.str.314 = private unnamed_addr constant [99 x i8] c"MASTER <-> REPLICA sync: Successfully streamed replication buffer into the db (%zu bytes in total)\00", align 1
@.str.315 = private unnamed_addr constant [50 x i8] c"Can't create readable event for master client: %s\00", align 1
@.str.316 = private unnamed_addr constant [76 x i8] c"Master client was freed while streaming accumulated replication data to db.\00", align 1
@.str.317 = private unnamed_addr constant [49 x i8] c"Aborting rdb channel sync while loading the RDB.\00", align 1
@.str.318 = private unnamed_addr constant [55 x i8] c"After loading RDB, replica will try psync with master.\00", align 1
@.str.319 = private unnamed_addr constant [26 x i8] c"Aborting rdb channel sync\00", align 1
@switch.table.getFailoverStateString = private unnamed_addr constant [3 x ptr] [ptr @.str.265, ptr @.str.267, ptr @.str.266], align 8

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @replicationCheckHasMainChannel(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = and i64 %i.b, 2251799813685248
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.e = load i64, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %.not4 = icmp eq i64 %i.e, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @lookupClientByID(i64 noundef %i.e) #19
  %i.g = icmp ne ptr %i.f, null
  %spec.select = zext i1 %i.g to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

declare ptr @lookupClientByID(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @replicationLogicalReplicaCount() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.listIter, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1480), align 8, !tbaa !40
  call void @listRewind(ptr noundef %i.a, ptr noundef nonnull %0) #19
  %i.b = call ptr @listNext(ptr noundef nonnull %0) #19 ; 2 uses
  %.not9 = icmp eq ptr %i.b, null
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %replicationCheckHasMainChannel.exit.thread
  %i.c = phi ptr [ %i.n, %replicationCheckHasMainChannel.exit.thread ], [ %i.b, %bb.a ]
  %.010 = phi i64 [ %i.m, %replicationCheckHasMainChannel.exit.thread ], [ 0, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = and i64 %i.g, 2251799813685248
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %replicationCheckHasMainChannel.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 544
  %i.j = load i64, ptr %i.i, align 8, !tbaa !39   ; 2 uses
  %.not4.i = icmp eq i64 %i.j, 0
  br i1 %.not4.i, label %replicationCheckHasMainChannel.exit.thread, label %replicationCheckHasMainChannel.exit

replicationCheckHasMainChannel.exit:              ; preds = %bb.b
  %i.k = call ptr @lookupClientByID(i64 noundef %i.j) #19
  %.fr = freeze ptr %i.k
  %.not8 = icmp eq ptr %.fr, null
  %i.l = zext i1 %.not8 to i64
  br label %replicationCheckHasMainChannel.exit.thread

replicationCheckHasMainChannel.exit.thread:       ; preds = %bb.b, %.lr.ph, %replicationCheckHasMainChannel.exit
  %.pn = phi i64 [ %i.l, %replicationCheckHasMainChannel.exit ], [ 1, %.lr.ph ], [ 1, %bb.b ]
  %i.m = add i64 %.pn, %.010                      ; 2 uses
  %i.n = call ptr @listNext(ptr noundef nonnull %0) #19 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !64

._crit_edge:                                      ; preds = %replicationCheckHasMainChannel.exit.thread, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.m, %replicationCheckHasMainChannel.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  ret i64 %.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @listRewind(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @listNext(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @replicaFromIOThreadHasPendingRead(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !66
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !67

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 102) #19
  tail call void @abort() #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.d = load atomic i32, ptr %i.c seq_cst, align 8
  ret i32 %i.d
}

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @putReplicasInPendingClientsToIOThreads() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.listIter, align 8           ; 5 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1900), align 4, !tbaa !68
  %i.b = icmp slt i32 %i.a, 2
  br i1 %i.b, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @pthread_self() #21
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8), align 8, !tbaa !69
  %.not = icmp eq i64 %i.c, %i.d
  br i1 %.not, label %bb.d, label %bb.c, !prof !70

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 115) #19
  tail call void @abort() #20
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1480), align 8, !tbaa !40
  call void @listRewind(ptr noundef %i.e, ptr noundef nonnull %0) #19
  %i.f = call ptr @listNext(ptr noundef nonnull %0) #19 ; 2 uses
  %.not814 = icmp eq ptr %i.f, null
  br i1 %.not814, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.l
  %i.g = phi ptr [ %i.w, %bb.l ], [ %i.f, %bb.d ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !63   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !66
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.l, label %bb.e, !llvm.loop !71

bb.e:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 25
  %i.n = load i8, ptr %i.m, align 1, !tbaa !72
  %.not9 = icmp eq i8 %i.n, 0
  br i1 %.not9, label %bb.f, label %bb.l, !llvm.loop !71

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !13   ; 2 uses
  %i.q = and i64 %i.p, 1024
  %.not10 = icmp eq i64 %i.q, 0
  br i1 %.not10, label %bb.g, label %bb.l, !llvm.loop !71

bb.g:                                             ; preds = %bb.f
  %i.r = and i64 %i.p, 2097152
  %.not11 = icmp eq i64 %i.r, 0
  br i1 %.not11, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.s = call i32 @clientHasPendingReplies(ptr noundef nonnull %i.i) #19
  %.not12 = icmp eq i32 %i.s, 0
  br i1 %.not12, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.t = load i8, ptr %i.j, align 8, !tbaa !66
  %.not.i = icmp eq i8 %i.t, 0
  br i1 %.not.i, label %bb.j, label %replicaFromIOThreadHasPendingRead.exit, !prof !67

bb.j:                                             ; preds = %bb.i
  call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 102) #19
  call void @abort() #20
  unreachable

replicaFromIOThreadHasPendingRead.exit:           ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 1040
  %i.v = load atomic i32, ptr %i.u seq_cst, align 8
  %.not13 = icmp eq i32 %i.v, 0
  br i1 %.not13, label %bb.l, label %bb.k

bb.k:                                             ; preds = %replicaFromIOThreadHasPendingRead.exit, %bb.h, %bb.g
  call void @enqueuePendingClienstToIOThreads(ptr noundef nonnull %i.i) #19
  br label %bb.l

bb.l:                                             ; preds = %replicaFromIOThreadHasPendingRead.exit, %bb.k, %bb.f, %.lr.ph, %bb.e
  %i.w = call ptr @listNext(ptr noundef nonnull %0) #19 ; 2 uses
  %.not8 = icmp eq ptr %i.w, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.l, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  br label %bb.m

end_hunk_0
begin_hunk_1_@replicaofCommand:bb.a
  br label %bb.v

bb.k:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !13
  %i.w = and i64 %i.v, 1
  %.not23 = icmp eq i64 %i.w, 0
  br i1 %.not23, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.231) #19
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !128
  %i.z = call i32 @getRangeLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.y, i64 noundef 0, i64 noundef 65535, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.232) #19
  %.not24 = icmp eq i32 %i.z, 0
  br i1 %.not24, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7440), align 8, !tbaa !73 ; 2 uses
  %.not25 = icmp eq ptr %i.aa, null
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !159
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre28 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !128
  %.phi.trans.insert29 = getelementptr inbounds nuw i8, ptr %.pre28, i64 8
  %.pre30 = load ptr, ptr %.phi.trans.insert29, align 8, !tbaa !116 ; 2 uses
  br i1 %.not25, label %._crit_edge, label %bb.o

._crit_edge:                                      ; preds = %bb.n
  %.pre31 = load i64, ptr %i.a, align 8, !tbaa !106
  br label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.ab = call i32 @strcasecmp(ptr noundef nonnull %i.aa, ptr noundef %.pre30) #22
  %.not26 = icmp eq i32 %i.ab, 0
  %.pre32 = load i64, ptr %i.a, align 8, !tbaa !106 ; 2 uses
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7448), align 8
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i64 %.pre32, %i.ad
  %or.cond = select i1 %.not26, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !78
  %i.ag = icmp sgt i32 %i.af, 2
  br i1 %i.ag, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.233) #19
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ah = call ptr @sdsnew(ptr noundef nonnull @.str.234) #19
  call void @addReplySds(ptr noundef nonnull %0, ptr noundef %i.ah) #19
  br label %.thread

bb.s:                                             ; preds = %._crit_edge, %bb.o
  %i.ai = phi i64 [ %.pre31, %._crit_edge ], [ %.pre32, %bb.o ]
  %i.aj = trunc i64 %i.ai to i32
  call void @replicationSetMaster(ptr noundef %.pre30, i32 noundef %i.aj)
  %i.ak = call ptr @sdsempty() #19
  %i.al = call ptr @catClientInfoString(ptr noundef %i.ak, ptr noundef nonnull %0) #19 ; 2 uses
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !78
  %i.an = icmp sgt i32 %i.am, 2
  br i1 %i.an, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7440), align 8, !tbaa !73
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7448), align 8, !tbaa !251
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.235, ptr noundef %i.ao, i32 noundef %i.ap, ptr noundef %i.al) #19
  br label %bb.u

.thread:                                          ; preds = %bb.l, %bb.r, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.w

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @sdsfree(ptr noundef %i.al) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.g, %bb.j
  %i.aq = load ptr, ptr @shared, align 8, !tbaa !197
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.aq) #19
  br label %bb.w

bb.w:                                             ; preds = %.thread, %bb.v, %bb.d, %bb.b
  ret void
}

declare void @addReplySds(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @roleCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.listIter, align 8           ; 5 uses
  %i.a = alloca [46 x i8], align 16               ; 4 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 204), align 4, !tbaa !340
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @sentinelRoleCommand(ptr noundef %0) #19
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7440), align 8, !tbaa !73
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  tail call void @addReplyArrayLen(ptr noundef %0, i64 noundef 3) #19
  tail call void @addReplyBulkCBuffer(ptr noundef %0, ptr noundef nonnull @.str.236, i64 noundef 6) #19
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7232), align 8, !tbaa !98
  tail call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.e) #19
  %i.f = tail call ptr @addReplyDeferredLen(ptr noundef %0) #19
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1480), align 8, !tbaa !40
  call void @listRewind(ptr noundef %i.g, ptr noundef nonnull %1) #19
  %i.h = call ptr @listNext(ptr noundef nonnull %1) #19 ; 2 uses
  %.not3438 = icmp eq ptr %i.h, null
  br i1 %.not3438, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %connAddrPeerName.exit.thread
  %i.i = phi ptr [ %i.ac, %connAddrPeerName.exit.thread ], [ %i.h, %bb.d ]
  %.02839 = phi i32 [ %.1, %connAddrPeerName.exit.thread ], [ 0, %bb.d ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 528
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !84   ; 2 uses
  %.not35 = icmp eq ptr %i.m, null
  br i1 %.not35, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !85   ; 3 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %connAddrPeerName.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !86
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !89   ; 2 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %connAddrPeerName.exit.thread, label %connAddrPeerName.exit

connAddrPeerName.exit:                            ; preds = %bb.f
  %i.s = call i32 %i.r(ptr noundef nonnull %i.o, ptr noundef nonnull %i.a, i64 noundef 46, ptr noundef null, i32 noundef 1) #19, !inline_history !91
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %connAddrPeerName.exit.thread, label %bb.g, !llvm.loop !341

bb.g:                                             ; preds = %connAddrPeerName.exit, %.lr.ph
  %.027 = phi ptr [ %i.m, %.lr.ph ], [ %i.a, %connAddrPeerName.exit ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 356
  %i.v = load i32, ptr %i.u, align 4, !tbaa !113
  %.not36 = icmp eq i32 %i.v, 9
  br i1 %.not36, label %bb.h, label %connAddrPeerName.exit.thread, !llvm.loop !341

bb.h:                                             ; preds = %bb.g
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef 3) #19
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull %.027) #19
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 524
  %i.x = load i32, ptr %i.w, align 4, !tbaa !92
  %i.y = sext i32 %i.x to i64
  call void @addReplyBulkLongLong(ptr noundef %0, i64 noundef %i.y) #19
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 432
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !191
  call void @addReplyBulkLongLong(ptr noundef %0, i64 noundef %i.aa) #19
  %i.ab = add nsw i32 %.02839, 1
  br label %connAddrPeerName.exit.thread

connAddrPeerName.exit.thread:                     ; preds = %bb.e, %bb.f, %bb.g, %connAddrPeerName.exit, %bb.h
  %.1 = phi i32 [ %.02839, %connAddrPeerName.exit ], [ %i.ab, %bb.h ], [ %.02839, %bb.g ], [ %.02839, %bb.f ], [ %.02839, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ac = call ptr @listNext(ptr noundef nonnull %1) #19 ; 2 uses
  %.not34 = icmp eq ptr %i.ac, null
  br i1 %.not34, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %connAddrPeerName.exit.thread
  %i.ad = sext i32 %.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %.028.lcssa = phi i64 [ 0, %bb.d ], [ %i.ad, %._crit_edge.loopexit ]
  call void @setDeferredArrayLen(ptr noundef %0, ptr noundef %i.f, i64 noundef %.028.lcssa) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.o

bb.i:                                             ; preds = %bb.c
  tail call void @addReplyArrayLen(ptr noundef %0, i64 noundef 5) #19
  tail call void @addReplyBulkCBuffer(ptr noundef %0, ptr noundef nonnull @.str.237, i64 noundef 5) #19
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7440), align 8, !tbaa !73
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef %i.ae) #19
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7448), align 8, !tbaa !251
  %i.ag = sext i32 %i.af to i64
  tail call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.ag) #19
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7476), align 4, !tbaa !74 ; 2 uses
  %i.ai = add i32 %i.ah, -12
  %i.aj = icmp ult i32 %i.ai, -9
  br i1 %i.aj, label %2, label %bb.l

2:                                                ; preds = %bb.i
  switch i32 %i.ah, label %bb.k [
    i32 0, label %bb.l
    i32 1, label %3
    i32 2, label %4
    i32 12, label %5
    i32 13, label %bb.j
  ]

3:                                                ; preds = %2
  br label %bb.l

4:                                                ; preds = %2
  br label %bb.l

5:                                                ; preds = %2
  br label %bb.l

bb.j:                                             ; preds = %2
  br label %bb.l

bb.k:                                             ; preds = %2
  br label %bb.l

bb.l:                                             ; preds = %2, %bb.i, %3, %4, %5, %bb.j, %bb.k
  %.0 = phi ptr [ @.str.243, %bb.j ], [ @.str.244, %bb.k ], [ @.str.238, %bb.i ], [ @.str.240, %3 ], [ @.str.241, %4 ], [ @.str.242, %5 ], [ @.str.239, %2 ]
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull %.0) #19
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7456), align 8, !tbaa !75 ; 2 uses
  %.not33 = icmp eq ptr %i.ak, null
  br i1 %.not33, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 408
  %i.am = load i64, ptr %i.al, align 8, !tbaa !80
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.an = phi i64 [ %i.am, %bb.m ], [ -1, %bb.l ]
  tail call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.an) #19
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge, %bb.b
  ret void
}

declare void @sentinelRoleCommand(ptr noundef) local_unnamed_addr #1

declare void @addReplyArrayLen(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @addReplyBulkCBuffer(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @addReplyLongLong(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @addReplyDeferredLen(ptr noundef) local_unnamed_addr #1

declare void @addReplyBulkCString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @addReplyBulkLongLong(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @setDeferredArrayLen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @replicationCacheMaster(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7456), align 8, !tbaa !75 ; 2 uses
  %i.b = icmp ne ptr %i.a, null
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7464), align 8
  %i.d = icmp eq ptr %i.c, null
  %i.e = select i1 %i.b, i1 %i.d, i1 false, !prof !70
  br i1 %i.e, label %bb.c, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.1, i32 noundef 4451) #19
  tail call void @abort() #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load i8, ptr %i.f, align 8, !tbaa !66
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.d, !prof !70

bb.d:                                             ; preds = %bb.c
  tail call void @_serverAssert(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.1, i32 noundef 4452) #19
  tail call void @abort() #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !78
  %i.j = icmp sgt i32 %i.i, 2
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.249) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  tail call void @unlinkClient(ptr noundef %0) #19
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7456), align 8, !tbaa !75
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !235
  tail call void @sdsclear(ptr noundef %i.m) #19
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7456), align 8, !tbaa !75 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  store i64 0, ptr %i.o, align 8, !tbaa !342
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 424
  store i64 0, ptr %i.p, align 8, !tbaa !343
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 408
  %i.r = load i64, ptr %i.q, align 8, !tbaa !80
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 392
  store i64 %i.r, ptr %i.s, align 8, !tbaa !238
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 416
  store i64 0, ptr %i.t, align 8, !tbaa !344
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !13
  %i.w = and i64 %i.v, 8
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @discardTransaction(ptr noundef nonnull %0) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !345
  tail call void @listEmpty(ptr noundef %i.y) #19
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 0, ptr %i.z, align 8, !tbaa !346
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 0, ptr %i.aa, align 8, !tbaa !347
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 960
  store i64 0, ptr %i.ab, align 8, !tbaa !348
  tail call void @resetClient(ptr noundef nonnull %0, i32 noundef -1) #19
  tail call void @resetClientQbufState(ptr noundef nonnull %0) #19
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7456), align 8, !tbaa !75
  store ptr %i.ac, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7464), align 8, !tbaa !182
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !349 ; 2 uses
  %.not17 = icmp eq ptr %i.ae, null
  br i1 %.not17, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @sdsfree(ptr noundef nonnull %i.ae) #19
  store ptr null, ptr %i.ad, align 8, !tbaa !349
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !350 ; 2 uses
  %.not18 = icmp eq ptr %i.ag, null
  br i1 %.not18, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @sdsfree(ptr noundef nonnull %i.ag) #19
  store ptr null, ptr %i.af, align 8, !tbaa !350
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @replicationHandleMasterDisconnection()
  ret void
}

declare void @unlinkClient(ptr noundef) local_unnamed_addr #1

declare void @sdsclear(ptr noundef) local_unnamed_addr #1

declare void @discardTransaction(ptr noundef) local_unnamed_addr #1

declare void @listEmpty(ptr noundef) local_unnamed_addr #1

declare void @resetClient(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @resetClientQbufState(ptr noundef) local_unnamed_addr #1

declare void @linkClient(ptr noundef) local_unnamed_addr #1

declare void @sendReplyToClient(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @checkGoodReplicasStatus() local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7440), align 8, !tbaa !73
  %i.b = icmp ne ptr %i.a, null
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7364), align 4
  %i.d = icmp eq i32 %i.c, 0
  %or.cond.not6 = select i1 %i.b, i1 true, i1 %i.d
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7360), align 8 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  %or.cond3.not = select i1 %or.cond.not6, i1 true, i1 %i.f
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7368), align 8
  %i.h = icmp sge i32 %i.g, %i.e
  %narrow = select i1 %or.cond3.not, i1 true, i1 %i.h
  %i.i = zext i1 %narrow to i32
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @replicationRequestAckFromSlaves() local_unnamed_addr #11 {
bb.a:
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7704), align 8, !tbaa !351
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @replicationCountAcksByOffset(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.listIter, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1480), align 8, !tbaa !40
  call void @listRewind(ptr noundef %i.a, ptr noundef nonnull %1) #19
  %i.b = call ptr @listNext(ptr noundef nonnull %1) #19 ; 2 uses
  %.not8 = icmp eq ptr %i.b, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.c = phi ptr [ %i.k, %bb.c ], [ %i.b, %bb.a ]
  %.09 = phi i32 [ %.2, %bb.c ], [ 0, %bb.a ]     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 356
  %i.g = load i32, ptr %i.f, align 4, !tbaa !113
  %.not6 = icmp eq i32 %i.g, 9
  br i1 %.not6, label %bb.b, label %bb.c, !llvm.loop !352

bb.b:                                             ; preds = %.lr.ph
end_hunk_1
