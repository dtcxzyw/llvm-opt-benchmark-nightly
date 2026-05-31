inline.NumInlined: 166
inline.NumDeleted: 2
begin_hunk_0
@.str.260 = private unnamed_addr constant [22 x i8] c"master-link-down-time\00", align 1
@.str.261 = private unnamed_addr constant [19 x i8] c"master-link-status\00", align 1
@.str.262 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.263 = private unnamed_addr constant [4 x i8] c"err\00", align 1
@.str.264 = private unnamed_addr constant [12 x i8] c"master-host\00", align 1
@.str.265 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.266 = private unnamed_addr constant [12 x i8] c"master-port\00", align 1
@.str.267 = private unnamed_addr constant [15 x i8] c"slave-priority\00", align 1
@.str.268 = private unnamed_addr constant [18 x i8] c"slave-repl-offset\00", align 1
@.str.269 = private unnamed_addr constant [18 x i8] c"replica-announced\00", align 1
@.str.270 = private unnamed_addr constant [19 x i8] c"last-hello-message\00", align 1
@.str.271 = private unnamed_addr constant [13 x i8] c"voted-leader\00", align 1
@.str.272 = private unnamed_addr constant [19 x i8] c"voted-leader-epoch\00", align 1
@.str.273 = private unnamed_addr constant [12 x i8] c"info-period\00", align 1
@.str.274 = private unnamed_addr constant [12 x i8] c"ping-period\00", align 1
@.str.275 = private unnamed_addr constant [11 x i8] c"ask-period\00", align 1
@sentinel_ask_period = internal unnamed_addr global i64 1000, align 8
@.str.276 = private unnamed_addr constant [15 x i8] c"publish-period\00", align 1
@.str.277 = private unnamed_addr constant [19 x i8] c"default-down-after\00", align 1
@.str.278 = private unnamed_addr constant [13 x i8] c"tilt-trigger\00", align 1
@sentinel_tilt_trigger = internal unnamed_addr global i64 2000, align 8
@.str.279 = private unnamed_addr constant [12 x i8] c"tilt-period\00", align 1
@sentinel_tilt_period = internal unnamed_addr global i64 30000, align 8
@.str.280 = private unnamed_addr constant [21 x i8] c"slave-reconf-timeout\00", align 1
@sentinel_slave_reconf_timeout = internal unnamed_addr global i64 10000, align 8
@.str.281 = private unnamed_addr constant [26 x i8] c"min-link-reconnect-period\00", align 1
@sentinel_min_link_reconnect_period = internal unnamed_addr global i64 15000, align 8
@.str.282 = private unnamed_addr constant [25 x i8] c"default-failover-timeout\00", align 1
@.str.283 = private unnamed_addr constant [17 x i8] c"election-timeout\00", align 1
@sentinel_election_timeout = internal unnamed_addr global i64 10000, align 8
@.str.284 = private unnamed_addr constant [19 x i8] c"script-max-runtime\00", align 1
@.str.285 = private unnamed_addr constant [19 x i8] c"script-retry-delay\00", align 1
@.str.286 = private unnamed_addr constant [62 x i8] c"Unknown option or number of arguments for SENTINEL DEBUG '%s'\00", align 1
@shared = external local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str.287 = private unnamed_addr constant [46 x i8] c"Invalid argument '%s' for SENTINEL DEBUG '%s'\00", align 1
@.str.288 = private unnamed_addr constant [12 x i8] c"INFO-PERIOD\00", align 1
@.str.289 = private unnamed_addr constant [12 x i8] c"PING-PERIOD\00", align 1
@.str.290 = private unnamed_addr constant [11 x i8] c"ASK-PERIOD\00", align 1
@.str.291 = private unnamed_addr constant [15 x i8] c"PUBLISH-PERIOD\00", align 1
@.str.292 = private unnamed_addr constant [19 x i8] c"DEFAULT-DOWN-AFTER\00", align 1
@.str.293 = private unnamed_addr constant [25 x i8] c"DEFAULT-FAILOVER-TIMEOUT\00", align 1
@.str.294 = private unnamed_addr constant [13 x i8] c"TILT-TRIGGER\00", align 1
@.str.295 = private unnamed_addr constant [12 x i8] c"TILT-PERIOD\00", align 1
@.str.296 = private unnamed_addr constant [21 x i8] c"SLAVE-RECONF-TIMEOUT\00", align 1
@.str.297 = private unnamed_addr constant [26 x i8] c"MIN-LINK-RECONNECT-PERIOD\00", align 1
@.str.298 = private unnamed_addr constant [17 x i8] c"ELECTION-TIMEOUT\00", align 1
@.str.299 = private unnamed_addr constant [19 x i8] c"SCRIPT-MAX-RUNTIME\00", align 1
@.str.300 = private unnamed_addr constant [19 x i8] c"SCRIPT-RETRY-DELAY\00", align 1
@.str.301 = private unnamed_addr constant [30 x i8] c"No such master with that name\00", align 1
@.str.302 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.303 = private unnamed_addr constant [23 x i8] c"CKQUORUM <master-name>\00", align 1
@.str.304 = private unnamed_addr constant [76 x i8] c"    Check if the current Sentinel configuration is able to reach the quorum\00", align 1
@.str.305 = private unnamed_addr constant [73 x i8] c"    needed to failover a master and the majority needed to authorize the\00", align 1
@.str.306 = private unnamed_addr constant [14 x i8] c"    failover.\00", align 1
@.str.307 = private unnamed_addr constant [41 x i8] c"CONFIG SET param value [param value ...]\00", align 1
@.str.308 = private unnamed_addr constant [51 x i8] c"    Set a global Sentinel configuration parameter.\00", align 1
@.str.309 = private unnamed_addr constant [43 x i8] c"CONFIG GET <param> [param param param ...]\00", align 1
@.str.310 = private unnamed_addr constant [49 x i8] c"    Get global Sentinel configuration parameter.\00", align 1
@.str.311 = private unnamed_addr constant [28 x i8] c"DEBUG [<param> <value> ...]\00", align 1
@.str.312 = private unnamed_addr constant [81 x i8] c"    Show a list of configurable time parameters and their values (milliseconds).\00", align 1
@.str.313 = private unnamed_addr constant [68 x i8] c"    Or update current configurable parameters values (one or more).\00", align 1
@.str.314 = private unnamed_addr constant [38 x i8] c"GET-MASTER-ADDR-BY-NAME <master-name>\00", align 1
@.str.315 = private unnamed_addr constant [64 x i8] c"    Return the ip and port number of the master with that name.\00", align 1
@.str.316 = private unnamed_addr constant [23 x i8] c"FAILOVER <master-name>\00", align 1
@.str.317 = private unnamed_addr constant [76 x i8] c"    Manually failover a master node without asking for agreement from other\00", align 1
@.str.318 = private unnamed_addr constant [14 x i8] c"    Sentinels\00", align 1
@.str.319 = private unnamed_addr constant [12 x i8] c"FLUSHCONFIG\00", align 1
@.str.320 = private unnamed_addr constant [79 x i8] c"    Force Sentinel to rewrite its configuration on disk, including the current\00", align 1
@.str.321 = private unnamed_addr constant [20 x i8] c"    Sentinel state.\00", align 1
@.str.322 = private unnamed_addr constant [25 x i8] c"INFO-CACHE <master-name>\00", align 1
@.str.323 = private unnamed_addr constant [70 x i8] c"    Return last cached INFO output from masters and all its replicas.\00", align 1
@.str.324 = private unnamed_addr constant [59 x i8] c"IS-MASTER-DOWN-BY-ADDR <ip> <port> <current-epoch> <runid>\00", align 1
@.str.325 = private unnamed_addr constant [77 x i8] c"    Check if the master specified by ip:port is down from current Sentinel's\00", align 1
@.str.326 = private unnamed_addr constant [19 x i8] c"    point of view.\00", align 1
@.str.327 = private unnamed_addr constant [21 x i8] c"MASTER <master-name>\00", align 1
@.str.328 = private unnamed_addr constant [53 x i8] c"    Show the state and info of the specified master.\00", align 1
@.str.329 = private unnamed_addr constant [8 x i8] c"MASTERS\00", align 1
@.str.330 = private unnamed_addr constant [54 x i8] c"    Show a list of monitored masters and their state.\00", align 1
@.str.331 = private unnamed_addr constant [36 x i8] c"MONITOR <name> <ip> <port> <quorum>\00", align 1
@.str.332 = private unnamed_addr constant [80 x i8] c"    Start monitoring a new master with the specified name, ip, port and quorum.\00", align 1
@.str.333 = private unnamed_addr constant [5 x i8] c"MYID\00", align 1
@.str.334 = private unnamed_addr constant [44 x i8] c"    Return the ID of the Sentinel instance.\00", align 1
@.str.335 = private unnamed_addr constant [16 x i8] c"PENDING-SCRIPTS\00", align 1
@.str.336 = private unnamed_addr constant [37 x i8] c"    Get pending scripts information.\00", align 1
@.str.337 = private unnamed_addr constant [21 x i8] c"REMOVE <master-name>\00", align 1
@.str.338 = private unnamed_addr constant [48 x i8] c"    Remove master from Sentinel's monitor list.\00", align 1
@.str.339 = private unnamed_addr constant [23 x i8] c"REPLICAS <master-name>\00", align 1
@.str.340 = private unnamed_addr constant [61 x i8] c"    Show a list of replicas for this master and their state.\00", align 1
@.str.341 = private unnamed_addr constant [16 x i8] c"RESET <pattern>\00", align 1
@.str.342 = private unnamed_addr constant [66 x i8] c"    Reset masters for specific master name matching this pattern.\00", align 1
@.str.343 = private unnamed_addr constant [24 x i8] c"SENTINELS <master-name>\00", align 1
@.str.344 = private unnamed_addr constant [71 x i8] c"    Show a list of Sentinel instances for this master and their state.\00", align 1
@.str.345 = private unnamed_addr constant [58 x i8] c"SET <master-name> <option> <value> [<option> <value> ...]\00", align 1
@.str.346 = private unnamed_addr constant [54 x i8] c"    Set configuration parameters for certain masters.\00", align 1
@.str.347 = private unnamed_addr constant [71 x i8] c"SIMULATE-FAILURE [CRASH-AFTER-ELECTION] [CRASH-AFTER-PROMOTION] [HELP]\00", align 1
@.str.348 = private unnamed_addr constant [31 x i8] c"    Simulate a Sentinel crash.\00", align 1
@__const.sentinelCommand.help = private unnamed_addr constant [47 x ptr] [ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr null], align 16
@.str.349 = private unnamed_addr constant [8 x i8] c"masters\00", align 1
@.str.350 = private unnamed_addr constant [7 x i8] c"slaves\00", align 1
@.str.351 = private unnamed_addr constant [9 x i8] c"replicas\00", align 1
@.str.352 = private unnamed_addr constant [10 x i8] c"sentinels\00", align 1
@.str.353 = private unnamed_addr constant [23 x i8] c"is-master-down-by-addr\00", align 1
@.str.354 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.355 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.356 = private unnamed_addr constant [24 x i8] c"get-master-addr-by-name\00", align 1
@.str.357 = private unnamed_addr constant [9 x i8] c"failover\00", align 1
@.str.358 = private unnamed_addr constant [37 x i8] c"-INPROG Failover already in progress\00", align 1
@.str.359 = private unnamed_addr constant [44 x i8] c"-NOGOODSLAVE No suitable replica to promote\00", align 1
@.str.360 = private unnamed_addr constant [42 x i8] c"Executing user requested FAILOVER of '%s'\00", align 1
@.str.361 = private unnamed_addr constant [16 x i8] c"pending-scripts\00", align 1
@.str.362 = private unnamed_addr constant [15 x i8] c"Invalid quorum\00", align 1
@.str.363 = private unnamed_addr constant [13 x i8] c"Invalid port\00", align 1
@.str.364 = private unnamed_addr constant [41 x i8] c"Invalid IP address or hostname specified\00", align 1
@.str.365 = private unnamed_addr constant [12 x i8] c"flushconfig\00", align 1
@.str.366 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.367 = private unnamed_addr constant [9 x i8] c"-monitor\00", align 1
@.str.368 = private unnamed_addr constant [9 x i8] c"ckquorum\00", align 1
@.str.369 = private unnamed_addr constant [76 x i8] c"+OK %i usable Sentinels. Quorum and failover authorization can be reached\0D\0A\00", align 1
@.str.370 = private unnamed_addr constant [32 x i8] c"-NOQUORUM %i usable Sentinels. \00", align 1
@.str.371 = private unnamed_addr constant [77 x i8] c"Not enough available Sentinels to reach the specified quorum for this master\00", align 1
@.str.372 = private unnamed_addr constant [3 x i8] c". \00", align 1
@.str.373 = private unnamed_addr constant [78 x i8] c"Not enough available Sentinels to reach the majority and authorize a failover\00", align 1
@.str.374 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.375 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.376 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.377 = private unnamed_addr constant [114 x i8] c"Only SENTINEL CONFIG GET <param> [<param> <param> ...] / SET <param> <value> [<param> <value> ...] are supported.\00", align 1
@.str.378 = private unnamed_addr constant [11 x i8] c"info-cache\00", align 1
@.str.379 = private unnamed_addr constant [17 x i8] c"simulate-failure\00", align 1
@.str.380 = private unnamed_addr constant [21 x i8] c"crash-after-election\00", align 1
@.str.381 = private unnamed_addr constant [97 x i8] c"Failure simulation: this Sentinel will crash after being successfully elected as failover leader\00", align 1
@.str.382 = private unnamed_addr constant [22 x i8] c"crash-after-promotion\00", align 1
@.str.383 = private unnamed_addr constant [92 x i8] c"Failure simulation: this Sentinel will crash after promoting the selected replica to master\00", align 1
@.str.384 = private unnamed_addr constant [37 x i8] c"Unknown failure simulation specified\00", align 1
@.str.385 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.386 = private unnamed_addr constant [8 x i8] c"clients\00", align 1
@.str.387 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.388 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@__const.sentinelInfoCommand.sentinel_sections = private unnamed_addr constant [6 x ptr] [ptr @.str.385, ptr @.str.386, ptr @.str.387, ptr @.str.388, ptr @.str.50, ptr null], align 16
@sentinelInfoCommand.cached_all_info_sections = internal unnamed_addr global ptr null, align 8
@.str.389 = private unnamed_addr constant [211 x i8] c"# Sentinel\0D\0Asentinel_masters:%lu\0D\0Asentinel_tilt:%d\0D\0Asentinel_tilt_since_seconds:%jd\0D\0Asentinel_total_tilt:%d\0D\0Asentinel_running_scripts:%d\0D\0Asentinel_scripts_queue_length:%ld\0D\0Asentinel_simulate_failure_flags:%lu\0D\0A\00", align 1
@.str.390 = private unnamed_addr constant [6 x i8] c"odown\00", align 1
@.str.391 = private unnamed_addr constant [6 x i8] c"sdown\00", align 1
@.str.392 = private unnamed_addr constant [68 x i8] c"master%d:name=%s,status=%s,address=%s:%d,slaves=%lu,sentinels=%lu\0D\0A\00", align 1
@.str.393 = private unnamed_addr constant [151 x i8] c"Reconfiguration of scripts path is denied for security reasons. Check the deny-scripts-reconfig configuration directive in your Sentinel configuration\00", align 1
@.str.394 = private unnamed_addr constant [57 x i8] c"Notification script seems non existing or non executable\00", align 1
@.str.395 = private unnamed_addr constant [67 x i8] c"Client reconfiguration script seems non existing or non executable\00", align 1
@.str.396 = private unnamed_addr constant [60 x i8] c"Unknown option or number of arguments for SENTINEL SET '%s'\00", align 1
@.str.397 = private unnamed_addr constant [5 x i8] c"+set\00", align 1
@.str.398 = private unnamed_addr constant [9 x i8] c"%@ %s %s\00", align 1
@.str.399 = private unnamed_addr constant [7 x i8] c"******\00", align 1
@.str.400 = private unnamed_addr constant [12 x i8] c"%@ %s %s %s\00", align 1
@.str.401 = private unnamed_addr constant [6 x i8] c"%@ %s\00", align 1
@.str.402 = private unnamed_addr constant [44 x i8] c"Invalid argument '%s' for SENTINEL SET '%s'\00", align 1
@.str.403 = private unnamed_addr constant [56 x i8] c"Only HELLO messages are accepted by Sentinel instances.\00", align 1
@.str.404 = private unnamed_addr constant [7 x i8] c"+sdown\00", align 1
@.str.405 = private unnamed_addr constant [7 x i8] c"-sdown\00", align 1
@.str.406 = private unnamed_addr constant [7 x i8] c"+odown\00", align 1
@.str.407 = private unnamed_addr constant [17 x i8] c"%@ #quorum %d/%d\00", align 1
@.str.408 = private unnamed_addr constant [7 x i8] c"-odown\00", align 1
@.str.409 = private unnamed_addr constant [21 x i8] c"%s voted for %s %llu\00", align 1
@.str.410 = private unnamed_addr constant [40 x i8] c"%s is-master-down-by-addr %s %s %llu %s\00", align 1
@.str.411 = private unnamed_addr constant [9 x i8] c"SENTINEL\00", align 1
@.str.412 = private unnamed_addr constant [52 x i8] c"Sentinel CRASH because of SENTINEL simulate-failure\00", align 1
@.str.413 = private unnamed_addr constant [17 x i8] c"+vote-for-leader\00", align 1
@.str.414 = private unnamed_addr constant [8 x i8] c"%s %llu\00", align 1
@.str.415 = private unnamed_addr constant [11 x i8] c"de != NULL\00", align 1
@.str.416 = private unnamed_addr constant [54 x i8] c"master->flags & (SRI_O_DOWN|SRI_FAILOVER_IN_PROGRESS)\00", align 1
@.str.417 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.419 = private unnamed_addr constant [6 x i8] c"MULTI\00", align 1
@.str.420 = private unnamed_addr constant [8 x i8] c"SLAVEOF\00", align 1
@.str.421 = private unnamed_addr constant [11 x i8] c"%s REWRITE\00", align 1
@.str.422 = private unnamed_addr constant [7 x i8] c"CONFIG\00", align 1
@.str.423 = private unnamed_addr constant [16 x i8] c"%s KILL TYPE %s\00", align 1
@.str.424 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.425 = private unnamed_addr constant [5 x i8] c"EXEC\00", align 1
@.str.426 = private unnamed_addr constant [27 x i8] c"master->flags & SRI_MASTER\00", align 1
@.str.427 = private unnamed_addr constant [14 x i8] c"+try-failover\00", align 1
@.str.428 = private unnamed_addr constant [59 x i8] c"Next failover delay: I will not start a failover before %s\00", align 1
@.str.429 = private unnamed_addr constant [28 x i8] c"-failover-abort-not-elected\00", align 1
@.str.430 = private unnamed_addr constant [16 x i8] c"+elected-leader\00", align 1
@.str.431 = private unnamed_addr constant [29 x i8] c"+failover-state-select-slave\00", align 1
@.str.432 = private unnamed_addr constant [30 x i8] c"-failover-abort-no-good-slave\00", align 1
@.str.433 = private unnamed_addr constant [16 x i8] c"+selected-slave\00", align 1
@.str.434 = private unnamed_addr constant [35 x i8] c"+failover-state-send-slaveof-noone\00", align 1
@.str.435 = private unnamed_addr constant [30 x i8] c"-failover-abort-slave-timeout\00", align 1
@.str.436 = private unnamed_addr constant [31 x i8] c"+failover-state-wait-promotion\00", align 1
@.str.437 = private unnamed_addr constant [26 x i8] c"+failover-end-for-timeout\00", align 1
@.str.438 = private unnamed_addr constant [14 x i8] c"+failover-end\00", align 1
@.str.439 = private unnamed_addr constant [22 x i8] c"+slave-reconf-sent-be\00", align 1
@.str.440 = private unnamed_addr constant [27 x i8] c"-slave-reconf-sent-timeout\00", align 1
@.str.441 = private unnamed_addr constant [19 x i8] c"+slave-reconf-sent\00", align 1
@.str.442 = private unnamed_addr constant [37 x i8] c"ri->flags & SRI_FAILOVER_IN_PROGRESS\00", align 1
@.str.443 = private unnamed_addr constant [61 x i8] c"ri->failover_state <= SENTINEL_FAILOVER_STATE_WAIT_PROMOTION\00", align 1
@.str.444 = private unnamed_addr constant [6 x i8] c"-tilt\00", align 1
@.str.445 = private unnamed_addr constant [18 x i8] c"#tilt mode exited\00", align 1
@.str.446 = private unnamed_addr constant [6 x i8] c"+tilt\00", align 1
@.str.447 = private unnamed_addr constant [19 x i8] c"#tilt mode entered\00", align 1
@redis_tls_ctx = external local_unnamed_addr global ptr, align 8
@redis_tls_client_ctx = external local_unnamed_addr global ptr, align 8
@.str.448 = private unnamed_addr constant [47 x i8] c"Failed to save config file. Check server logs.\00", align 1
@switch.table.sentinelConfigGetCommand = private unnamed_addr constant [5 x ptr] [ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211], align 8
@switch.table.addReplySentinelRedisInstance = private unnamed_addr constant [7 x ptr] [ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226], align 8

; Function Attrs: nounwind uwtable
define dso_local void @dictInstancesValDestructor(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  tail call void @releaseSentinelRedisInstance(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @releaseSentinelRedisInstance(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  tail call void @dictRelease(ptr noundef %i.b) #26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  tail call void @dictRelease(ptr noundef %i.d) #26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.g = tail call ptr @releaseInstanceLink(ptr noundef %i.f, ptr noundef %0) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  tail call void @sdsfree(ptr noundef %i.i) #26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  tail call void @sdsfree(ptr noundef %i.k) #26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27
  tail call void @sdsfree(ptr noundef %i.m) #26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28
  tail call void @sdsfree(ptr noundef %i.o) #26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29
  tail call void @sdsfree(ptr noundef %i.q) #26
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30
  tail call void @sdsfree(ptr noundef %i.s) #26
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31
  tail call void @sdsfree(ptr noundef %i.u) #26
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !32
  tail call void @sdsfree(ptr noundef %i.w) #26
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !33
  tail call void @sdsfree(ptr noundef %i.y) #26
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34  ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !35
  tail call void @sdsfree(ptr noundef %i.ab) #26
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !37
  tail call void @sdsfree(ptr noundef %i.ad) #26
  tail call void @zfree(ptr noundef nonnull %i.aa) #26
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !38
  tail call void @dictRelease(ptr noundef %i.af) #26
  %i.ag = load i32, ptr %0, align 8, !tbaa !39
  %i.ah = and i32 %i.ag, 130
  %or.cond.not = icmp eq i32 %i.ah, 130
  br i1 %or.cond.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !40 ; 2 uses
  %.not21 = icmp eq ptr %i.aj, null
  br i1 %.not21, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 312
  store ptr null, ptr %i.ak, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void @zfree(ptr noundef nonnull %0) #26
  ret void
}

declare i64 @dictSdsHash(ptr noundef) #1

declare i32 @dictSdsKeyCompare(ptr noundef, ptr noundef, ptr noundef) #1

declare i64 @dictSdsCaseHash(ptr noundef) #1

declare i32 @dictSdsKeyCaseCompare(ptr noundef, ptr noundef, ptr noundef) #1

declare void @dictSdsDestructor(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @initSentinelConfig() local_unnamed_addr #2 {
bb.a:
  store i32 26379, ptr getelementptr inbounds nuw (i8, ptr @server, i64 324), align 4, !tbaa !42
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1896), align 8, !tbaa !71
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @initSentinel() local_unnamed_addr #0 {
bb.a:
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 48), align 8, !tbaa !72
  %i.a = tail call ptr @dictCreate(ptr noundef nonnull @instancesDictType) #26
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 56), align 8, !tbaa !74
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 64), align 8, !tbaa !75
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 80), align 8, !tbaa !76
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 68), align 4, !tbaa !77
  %i.b = tail call i64 @mstime() #26
  store i64 %i.b, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 88), align 8, !tbaa !78
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 72), align 8, !tbaa !79
  %i.c = tail call ptr @listCreate() #26
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 96), align 8, !tbaa !80
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 104), align 8, !tbaa !81
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 112), align 8, !tbaa !82
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 120), align 8, !tbaa !83
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 128), align 8, !tbaa !84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) @sentinel, i8 0, i64 41, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @sentinel, i64 136), i8 0, i64 24, i1 false)
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8656), align 8, !tbaa !85
  ret void
}

declare ptr @dictCreate(ptr noundef) local_unnamed_addr #1

declare i64 @mstime() local_unnamed_addr #1

declare ptr @listCreate() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local void @sentinelCheckConfigFile() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 16), align 8, !tbaa !86 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !87
  %i.d = icmp sgt i32 %i.c, 3
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.9) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  tail call void @exit(i32 noundef 1) #27
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.e = tail call i32 @access(ptr noundef nonnull %i.a, i32 noundef 2) #26
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !87
  %i.h = icmp sgt i32 %i.g, 3
  br i1 %i.h, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 16), align 8, !tbaa !86
  %i.j = tail call ptr @__errno_location() #28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9
  %i.l = tail call ptr @strerror(i32 noundef %i.k) #26
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.10, ptr noundef %i.i, ptr noundef %i.l) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  tail call void @exit(i32 noundef 1) #27
  unreachable

bb.i:                                             ; preds = %bb.e
  ret void
}

declare void @_serverLog(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @sentinelIsRunning() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.dictIterator, align 8       ; 6 uses
  %i.a = load <32 x i8>, ptr @sentinel, align 32
  %.fr = freeze <32 x i8> %i.a
  %i.b = icmp eq <32 x i8> %.fr, zeroinitializer  ; 2 uses
  %i.c = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 32), align 32
  %.fr45 = freeze <8 x i8> %i.c
  %i.d = icmp eq <8 x i8> %.fr45, zeroinitializer
end_hunk_0
begin_hunk_1_@queueSentinelConfig:bb.a
  %i.r = tail call noalias dereferenceable_or_null(32) ptr @zmalloc(i64 noundef 32) #29 ; 5 uses
  %i.s = sext i32 %1 to i64
  %i.t = shl nsw i64 %i.s, 3
  %i.u = tail call noalias ptr @zmalloc(i64 noundef %i.t) #29 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !196
  store i32 %1, ptr %i.r, align 8, !tbaa !198
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i32 %2, ptr %i.w, align 8, !tbaa !200
  %i.x = tail call ptr @sdsdup(ptr noundef %3) #26
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.x, ptr %i.y, align 8, !tbaa !199
  %i.z = icmp sgt i32 %1, 0
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !95
  %i.ac = tail call ptr @sdsdup(ptr noundef %i.ab) #26
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !95
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !201

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.ae = load ptr, ptr %0, align 8, !tbaa !95    ; 2 uses
  %i.af = tail call i32 @strcasecmp(ptr noundef %i.ae, ptr noundef nonnull @.str.63) #30
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8656), align 8, !tbaa !85
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ai = tail call i32 @searchPreMonitorCfgName(ptr noundef %i.ae)
  %.not19 = icmp eq i32 %i.ai, 0
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8656), align 8, !tbaa !85
  %spec.select.idx = select i1 %.not19, i64 16, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %i.aj, i64 %spec.select.idx
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink.in = phi ptr [ %i.ah, %bb.d ], [ %spec.select, %bb.e ]
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !202
  %i.ak = tail call ptr @listAddNodeTail(ptr noundef %.sink, ptr noundef nonnull %i.r) #26 ; 0 uses
  ret void
}

declare ptr @sdsdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @loadSentinelConfigFromQueue() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.listIter, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8656), align 8, !tbaa !85 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !193
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !191
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !194
  call void @listRewind(ptr noundef %i.c, ptr noundef nonnull %0) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.h = call ptr @listNext(ptr noundef nonnull %0) #26 ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !107  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !196
  %i.m = load i32, ptr %i.j, align 8, !tbaa !198
  %i.n = call ptr @sentinelHandleConfiguration(ptr noundef %i.l, i32 noundef %i.m) ; 2 uses
  %.not19 = icmp eq ptr %i.n, null
  br i1 %.not19, label %bb.c, label %.loopexit

bb.e:                                             ; preds = %bb.c
  call void @listRewind(ptr noundef %i.e, ptr noundef nonnull %0) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.o = call ptr @listNext(ptr noundef nonnull %0) #26 ; 2 uses
  %.not.1 = icmp eq ptr %i.o, null
  br i1 %.not.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !107  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !196
  %i.t = load i32, ptr %i.q, align 8, !tbaa !198
  %i.u = call ptr @sentinelHandleConfiguration(ptr noundef %i.s, i32 noundef %i.t) ; 2 uses
  %.not19.1 = icmp eq ptr %i.u, null
  br i1 %.not19.1, label %bb.f, label %.loopexit

bb.h:                                             ; preds = %bb.f
  call void @listRewind(ptr noundef %i.g, ptr noundef nonnull %0) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.v = call ptr @listNext(ptr noundef nonnull %0) #26 ; 2 uses
  %.not.2 = icmp eq ptr %i.v, null
  br i1 %.not.2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !107  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !196
  %i.aa = load i32, ptr %i.x, align 8, !tbaa !198
  %i.ab = call ptr @sentinelHandleConfiguration(ptr noundef %i.z, i32 noundef %i.aa) ; 2 uses
  %.not19.2 = icmp eq ptr %i.ab, null
  br i1 %.not19.2, label %bb.i, label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8656), align 8, !tbaa !85
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !193
  call void @listRelease(ptr noundef %i.ad) #26
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8656), align 8, !tbaa !85
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !191
  call void @listRelease(ptr noundef %i.ag) #26
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8656), align 8, !tbaa !85
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !194
  call void @listRelease(ptr noundef %i.aj) #26
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8656), align 8, !tbaa !85
  call void @zfree(ptr noundef %i.ak) #26
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8656), align 8, !tbaa !85
  br label %bb.l

.loopexit:                                        ; preds = %bb.d, %bb.g, %bb.j
  %.lcssa28 = phi ptr [ %i.x, %bb.j ], [ %i.q, %bb.g ], [ %i.j, %bb.d ] ; 2 uses
  %.lcssa = phi ptr [ %i.ab, %bb.j ], [ %i.u, %bb.g ], [ %i.n, %bb.d ]
  %i.al = getelementptr inbounds nuw i8, ptr %.lcssa28, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !200
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa28, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !199
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !203
  %i.aq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ap, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65) #32 ; 0 uses
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !203
  %i.as = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ar, ptr noundef nonnull @.str.66, i32 noundef %i.am) #32 ; 0 uses
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !203
  %i.au = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.at, ptr noundef nonnull @.str.67, ptr noundef %i.ao) #32 ; 0 uses
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !203
  %i.aw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.68, ptr noundef nonnull %.lcssa) #32 ; 0 uses
  call void @exit(i32 noundef 1) #27
  unreachable

bb.l:                                             ; preds = %bb.a, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @sentinelHandleConfiguration(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.dictIterator, align 8       ; 6 uses
  %i.a = alloca [3 x ptr], align 16               ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !95     ; 24 uses
  %i.c = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.63) #30
  %i.d = icmp eq i32 %i.c, 0
  %i.e = icmp eq i32 %1, 5                        ; 2 uses
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !95
  %i.h = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.g, ptr noundef null, i32 noundef 10) #26, !inline_history !205
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !95
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !95
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !95
  %i.q = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.p, ptr noundef null, i32 noundef 10) #26, !inline_history !205
  %i.r = trunc i64 %i.q to i32
  %i.s = tail call ptr @createSentinelRedisInstance(ptr noundef %i.l, i32 noundef 1, ptr noundef %i.n, i32 noundef %i.r, i32 noundef %i.i, ptr noundef null)
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.d, label %.critedge.a

bb.d:                                             ; preds = %bb.c
  %i.u = tail call ptr @__errno_location() #28
  %i.v = load i32, ptr %i.u, align 4, !tbaa !9
  switch i32 %i.v, label %7 [
    i32 16, label %3
    i32 2, label %sentinelCheckCreateInstanceErrors.exit.thread
    i32 22, label %6
  ]

3:                                                ; preds = %bb.d
  br label %sentinelCheckCreateInstanceErrors.exit.thread

bb.e:                                             ; preds = %bb.a
  %i.w = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.70) #30
  %i.x = icmp eq i32 %i.w, 0
  %i.y = icmp eq i32 %1, 3                        ; 10 uses
  %or.cond6 = and i1 %i.y, %i.x
  br i1 %or.cond6, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !95
  %i.ab = tail call ptr @sdsnew(ptr noundef %i.aa) #26 ; 2 uses
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 56), align 8, !tbaa !74
  %i.ad = tail call ptr @dictFetchValue(ptr noundef %i.ac, ptr noundef %i.ab) #26 ; 4 uses
  tail call void @sdsfree(ptr noundef %i.ab) #26
  %.not247 = icmp eq ptr %i.ad, null
  br i1 %.not247, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !95
  %i.ag = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.af, ptr noundef null, i32 noundef 10) #26, !inline_history !205 ; 2 uses
  %i.ah = trunc i64 %i.ag to i32
  %sext261 = shl i64 %i.ag, 32
  %i.ai = ashr exact i64 %sext261, 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 88 ; 2 uses
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !165
  %i.ak = icmp slt i32 %i.ah, 1
  br i1 %i.ak, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !23 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 152
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !13
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !188
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.aq, align 16, !tbaa !188
  %.not11.i = icmp eq ptr %i.am, null
  br i1 %.not11.i, label %sentinelPropagateDownAfterPeriod.exit, label %.lr.ph14.i

.lr.ph14.i:                                       ; preds = %bb.h, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 0, %bb.h ]
  %i.ar = phi ptr [ %i.az, %._crit_edge.i ], [ %i.am, %bb.h ]
  call void @dictInitIterator(ptr noundef nonnull %2, ptr noundef nonnull %i.ar) #26
  %i.as = call ptr @dictNext(ptr noundef nonnull %2) #26 ; 2 uses
  %.not910.i = icmp eq ptr %i.as, null
  br i1 %.not910.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph14.i, %.lr.ph.i
  %i.at = phi ptr [ %i.ax, %.lr.ph.i ], [ %i.as, %.lr.ph14.i ]
  %i.au = call ptr @dictGetVal(ptr noundef nonnull %i.at) #26
  %i.av = load i64, ptr %i.aj, align 8, !tbaa !165
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !165
  %i.ax = call ptr @dictNext(ptr noundef nonnull %2) #26 ; 2 uses
  %.not9.i = icmp eq ptr %i.ax, null
  br i1 %.not9.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !189

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph14.i
  call void @dictResetIterator(ptr noundef nonnull %2) #26
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !188 ; 2 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %sentinelPropagateDownAfterPeriod.exit, label %.lr.ph14.i, !llvm.loop !190

sentinelPropagateDownAfterPeriod.exit:            ; preds = %._crit_edge.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %.critedge.a

bb.i:                                             ; preds = %bb.e
  %i.ba = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.73) #30
  %i.bb = icmp eq i32 %i.ba, 0
  %or.cond8 = and i1 %i.y, %i.bb
  br i1 %or.cond8, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !95
  %i.be = tail call ptr @sdsnew(ptr noundef %i.bd) #26 ; 2 uses
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 56), align 8, !tbaa !74
  %i.bg = tail call ptr @dictFetchValue(ptr noundef %i.bf, ptr noundef %i.be) #26 ; 2 uses
  tail call void @sdsfree(ptr noundef %i.be) #26
  %.not246 = icmp eq ptr %i.bg, null
  br i1 %.not246, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !95
  %i.bj = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.bi, ptr noundef null, i32 noundef 10) #26, !inline_history !205 ; 2 uses
  %i.bk = trunc i64 %i.bj to i32
  %sext260 = shl i64 %i.bj, 32
  %i.bl = ashr exact i64 %sext260, 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 296
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !175
  %i.bn = icmp slt i32 %i.bk, 1
  br i1 %i.bn, label %sentinelCheckCreateInstanceErrors.exit.thread, label %.critedge.a

bb.l:                                             ; preds = %bb.i
  %i.bo = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.74) #30
  %i.bp = icmp eq i32 %i.bo, 0
  %or.cond10 = and i1 %i.y, %i.bp
  br i1 %or.cond10, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !95
  %i.bs = tail call ptr @sdsnew(ptr noundef %i.br) #26 ; 2 uses
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 56), align 8, !tbaa !74
  %i.bu = tail call ptr @dictFetchValue(ptr noundef %i.bt, ptr noundef %i.bs) #26 ; 2 uses
  tail call void @sdsfree(ptr noundef %i.bs) #26
  %.not245 = icmp eq ptr %i.bu, null
  br i1 %.not245, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !95
  %i.bx = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.bw, ptr noundef null, i32 noundef 10) #26, !inline_history !205
  %i.by = trunc i64 %i.bx to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 172
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !173
  br label %.critedge.a

bb.o:                                             ; preds = %bb.l
  %i.ca = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.75) #30
  %i.cb = icmp eq i32 %i.ca, 0
  %or.cond12 = and i1 %i.y, %i.cb
  br i1 %or.cond12, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !95
  %i.ce = tail call ptr @sdsnew(ptr noundef %i.cd) #26 ; 2 uses
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 56), align 8, !tbaa !74
  %i.cg = tail call ptr @dictFetchValue(ptr noundef %i.cf, ptr noundef %i.ce) #26 ; 2 uses
  tail call void @sdsfree(ptr noundef %i.ce) #26
  %.not244 = icmp eq ptr %i.cg, null
  br i1 %.not244, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !95
  %i.cj = tail call i32 @access(ptr noundef %i.ci, i32 noundef 1) #26
  %i.ck = icmp eq i32 %i.cj, -1
  br i1 %i.ck, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = load ptr, ptr %i.ch, align 8, !tbaa !95
  %i.cm = tail call ptr @sdsnew(ptr noundef %i.cl) #26
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 320
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !27
  br label %.critedge.a

bb.s:                                             ; preds = %bb.o
  %i.co = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.77) #30
  %i.cp = icmp eq i32 %i.co, 0
  %or.cond14 = and i1 %i.y, %i.cp
  br i1 %or.cond14, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !95
  %i.cs = tail call ptr @sentinelGetMasterByName(ptr noundef %i.cr) ; 2 uses
  %.not243 = icmp eq ptr %i.cs, null
  br i1 %.not243, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !95
  %i.cv = tail call i32 @access(ptr noundef %i.cu, i32 noundef 1) #26
  %i.cw = icmp eq i32 %i.cv, -1
  br i1 %i.cw, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !95
  %i.cy = tail call ptr @sdsnew(ptr noundef %i.cx) #26
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 328
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !28
  br label %.critedge.a

bb.w:                                             ; preds = %bb.s
  %i.da = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.79) #30
  %i.db = icmp eq i32 %i.da, 0
  %or.cond16 = and i1 %i.y, %i.db
  br i1 %or.cond16, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !95
  %i.de = tail call ptr @sentinelGetMasterByName(ptr noundef %i.dd) ; 2 uses
  %.not242 = icmp eq ptr %i.de, null
  br i1 %.not242, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !95
  %i.dh = tail call ptr @sdsnew(ptr noundef %i.dg) #26
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 176
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !31
  br label %.critedge.a

bb.z:                                             ; preds = %bb.w
  %i.dj = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.80) #30
  %i.dk = icmp eq i32 %i.dj, 0
  %or.cond18 = and i1 %i.y, %i.dk
  br i1 %or.cond18, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !95
  %i.dn = tail call ptr @sentinelGetMasterByName(ptr noundef %i.dm) ; 2 uses
  %.not241 = icmp eq ptr %i.dn, null
  br i1 %.not241, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !95
  %i.dq = tail call ptr @sdsnew(ptr noundef %i.dp) #26
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 184
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !32
  br label %.critedge.a

bb.ac:                                            ; preds = %bb.z
  %i.ds = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.5) #30
  %i.dt = icmp eq i32 %i.ds, 0
  %i.du = icmp eq i32 %1, 2                       ; 9 uses
  %or.cond20 = and i1 %i.du, %i.dt
  br i1 %or.cond20, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !95
  %i.dx = tail call i64 @__isoc23_strtoull(ptr noundef %i.dw, ptr noundef null, i32 noundef 10) #26 ; 2 uses
  %i.dy = load i64, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 48), align 16, !tbaa !72
  %i.dz = icmp ugt i64 %i.dx, %i.dy
  br i1 %i.dz, label %bb.ae, label %.critedge.a

bb.ae:                                            ; preds = %bb.ad
  store i64 %i.dx, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 48), align 16, !tbaa !72
  br label %.critedge.a

bb.af:                                            ; preds = %bb.ac
  %i.ea = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.6) #30
  %i.eb = icmp eq i32 %i.ea, 0
  %or.cond22 = and i1 %i.du, %i.eb
  br i1 %or.cond22, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !95 ; 2 uses
  %i.ee = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ed) #30
  %.not240 = icmp eq i64 %i.ee, 40
  br i1 %.not240, label %bb.ah, label %sentinelCheckCreateInstanceErrors.exit.thread

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(40) @sentinel, ptr noundef nonnull align 1 dereferenceable(40) %i.ed, i64 40, i1 false)
  br label %.critedge.a

bb.ai:                                            ; preds = %bb.af
  %i.ef = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.82) #30
  %i.eg = icmp eq i32 %i.ef, 0
  %or.cond24 = and i1 %i.y, %i.eg
  br i1 %or.cond24, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !95
  %i.ej = tail call ptr @sentinelGetMasterByName(ptr noundef %i.ei) ; 2 uses
  %.not239 = icmp eq ptr %i.ej, null
  br i1 %.not239, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !95
  %i.em = tail call i64 @__isoc23_strtoull(ptr noundef %i.el, ptr noundef null, i32 noundef 10) #26 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  store i64 %i.em, ptr %i.en, align 8, !tbaa !206
  %i.eo = load i64, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 48), align 16, !tbaa !72
  %i.ep = icmp ugt i64 %i.em, %i.eo
  br i1 %i.ep, label %bb.al, label %.critedge.a

bb.al:                                            ; preds = %bb.ak
  store i64 %i.em, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 48), align 16, !tbaa !72
  br label %.critedge.a

bb.am:                                            ; preds = %bb.ai
  %i.eq = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.83) #30
  %i.er = icmp eq i32 %i.eq, 0
  %or.cond26 = and i1 %i.y, %i.er
  br i1 %or.cond26, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !95
  %i.eu = tail call ptr @sentinelGetMasterByName(ptr noundef %i.et) ; 2 uses
  %.not238 = icmp eq ptr %i.eu, null
  br i1 %.not238, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !95
  %i.ex = tail call i64 @__isoc23_strtoull(ptr noundef %i.ew, ptr noundef null, i32 noundef 10) #26
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 256
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !207
  br label %.critedge.a

bb.ap:                                            ; preds = %bb.am
  %i.ez = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.84) #30
  %.not = icmp eq i32 %i.ez, 0
  br i1 %.not, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fa = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.85) #30
  %i.fb = icmp eq i32 %i.fa, 0
  %i.fc = icmp eq i32 %1, 4
  %or.cond28 = and i1 %i.fc, %i.fb
  br i1 %or.cond28, label %bb.as, label %bb.av

bb.ar:                                            ; preds = %bb.ap
  %.old27 = icmp eq i32 %1, 4
  br i1 %.old27, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !95
  %i.ff = tail call ptr @sentinelGetMasterByName(ptr noundef %i.fe) ; 3 uses
  %.not237 = icmp eq ptr %i.ff, null
  br i1 %.not237, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !95
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !95
  %i.fk = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.fj, ptr noundef null, i32 noundef 10) #26, !inline_history !205
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ff, i64 168
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !89
  %i.fo = tail call ptr @createSentinelRedisInstance(ptr noundef null, i32 noundef 2, ptr noundef %i.fh, i32 noundef %i.fl, i32 noundef %i.fn, ptr noundef nonnull %i.ff)
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %bb.au, label %.critedge.a

bb.au:                                            ; preds = %bb.at
  %i.fq = tail call ptr @__errno_location() #28
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !9
  switch i32 %i.fr, label %7 [
    i32 16, label %4
    i32 2, label %sentinelCheckCreateInstanceErrors.exit.thread
    i32 22, label %6
  ]

4:                                                ; preds = %bb.au
  br label %sentinelCheckCreateInstanceErrors.exit.thread

bb.av:                                            ; preds = %bb.ar, %bb.aq
  %i.fs = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.86) #30
  %.not227 = icmp eq i32 %i.fs, 0
  %i.ft = and i32 %1, -2
  %or.cond31 = icmp eq i32 %i.ft, 4
  %or.cond248 = and i1 %or.cond31, %.not227
  br i1 %or.cond248, label %bb.aw, label %bb.bb

bb.aw:                                            ; preds = %bb.av
  br i1 %i.e, label %bb.ax, label %.critedge.a

bb.ax:                                            ; preds = %bb.aw
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !95
  %i.fw = tail call ptr @sentinelGetMasterByName(ptr noundef %i.fv) ; 3 uses
  %.not228 = icmp eq ptr %i.fw, null
  br i1 %.not228, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !95
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !95
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !95
  %i.gd = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.gc, ptr noundef null, i32 noundef 10) #26, !inline_history !205
  %i.ge = trunc i64 %i.gd to i32
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fw, i64 168
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !89
  %i.gh = tail call ptr @createSentinelRedisInstance(ptr noundef %i.fy, i32 noundef 4, ptr noundef %i.ga, i32 noundef %i.ge, i32 noundef %i.gg, ptr noundef nonnull %i.fw) ; 3 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.gj = tail call ptr @__errno_location() #28
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !9
  switch i32 %i.gk, label %7 [
    i32 16, label %5
    i32 2, label %sentinelCheckCreateInstanceErrors.exit.thread
    i32 22, label %6
  ]

5:                                                ; preds = %bb.az
  br label %sentinelCheckCreateInstanceErrors.exit.thread

6:                                                ; preds = %bb.d, %bb.au, %bb.az
  br label %sentinelCheckCreateInstanceErrors.exit.thread

7:                                                ; preds = %bb.d, %bb.au, %bb.az
  br label %sentinelCheckCreateInstanceErrors.exit.thread

bb.ba:                                            ; preds = %bb.ay
  %i.gl = load ptr, ptr %i.fx, align 8, !tbaa !95
  %i.gm = tail call ptr @sdsnew(ptr noundef %i.gl) #26
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store ptr %i.gm, ptr %i.gn, align 8, !tbaa !26
  %i.go = tail call i32 @sentinelTryConnectionSharing(ptr noundef nonnull %i.gh) ; 0 uses
  br label %.critedge.a

bb.bb:                                            ; preds = %bb.av
  %i.gp = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.87) #30
  %i.gq = icmp eq i32 %i.gp, 0
  %i.gr = icmp eq i32 %1, 4
  %or.cond34 = and i1 %i.gr, %i.gq
  br i1 %or.cond34, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !95
  %i.gu = tail call ptr @sentinelGetMasterByName(ptr noundef %i.gt) ; 2 uses
  %.not235 = icmp eq ptr %i.gu, null
  br i1 %.not235, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !95
  %i.gx = tail call ptr @sdsnew(ptr noundef %i.gw) #26 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !95
  %i.ha = tail call ptr @sdsnew(ptr noundef %i.gz) #26 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gu, i64 120
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !38
  %i.hd = tail call i32 @dictAdd(ptr noundef %i.hc, ptr noundef %i.gx, ptr noundef %i.ha) #26
  %.not236 = icmp eq i32 %i.hd, 0
  br i1 %.not236, label %.critedge.a, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @sdsfree(ptr noundef %i.gx) #26
  tail call void @sdsfree(ptr noundef %i.ha) #26
  br label %sentinelCheckCreateInstanceErrors.exit.thread

bb.bf:                                            ; preds = %bb.bb
  %i.he = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str) #30
  %i.hf = icmp eq i32 %i.he, 0
  %or.cond37 = and i1 %i.du, %i.hf
  br i1 %or.cond37, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !95 ; 2 uses
  %char0233 = load i8, ptr %i.hh, align 1
  %.not234 = icmp eq i8 %char0233, 0
  br i1 %.not234, label %.critedge.a, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hi = tail call ptr @sdsnew(ptr noundef nonnull %i.hh) #26
  store ptr %i.hi, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 104), align 8, !tbaa !81
  br label %.critedge.a

bb.bi:                                            ; preds = %bb.bf
  %i.hj = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.1) #30
  %i.hk = icmp eq i32 %i.hj, 0
  %or.cond40 = and i1 %i.du, %i.hk
  br i1 %or.cond40, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !95
  %i.hn = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.hm, ptr noundef null, i32 noundef 10) #26, !inline_history !205
  %i.ho = trunc i64 %i.hn to i32
  store i32 %i.ho, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 112), align 16, !tbaa !82
  br label %.critedge.a

bb.bk:                                            ; preds = %bb.bi
  %i.hp = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.2) #30
  %i.hq = icmp eq i32 %i.hp, 0
  %or.cond43 = and i1 %i.du, %i.hq
  br i1 %or.cond43, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !95
  %i.ht = tail call i32 @yesnotoi(ptr noundef %i.hs) #26 ; 2 uses
  store i32 %i.ht, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 128), align 32, !tbaa !84
  %i.hu = icmp eq i32 %i.ht, -1
  br i1 %i.hu, label %sentinelCheckCreateInstanceErrors.exit.thread, label %.critedge.a

bb.bm:                                            ; preds = %bb.bk
  %i.hv = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.3) #30
  %i.hw = icmp eq i32 %i.hv, 0
  %or.cond46 = and i1 %i.du, %i.hw
  br i1 %or.cond46, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !95 ; 2 uses
  %char0231 = load i8, ptr %i.hy, align 1
  %.not232 = icmp eq i8 %char0231, 0
  br i1 %.not232, label %.critedge.a, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hz = tail call ptr @sdsnew(ptr noundef nonnull %i.hy) #26
  store ptr %i.hz, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 144), align 16, !tbaa !208
  br label %.critedge.a

bb.bp:                                            ; preds = %bb.bm
  %i.ia = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.4) #30
  %i.ib = icmp eq i32 %i.ia, 0
  %or.cond49 = and i1 %i.du, %i.ib
  br i1 %or.cond49, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !95 ; 2 uses
  %char0 = load i8, ptr %i.id, align 1
  %.not230 = icmp eq i8 %char0, 0
  br i1 %.not230, label %.critedge.a, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ie = tail call ptr @sdsnew(ptr noundef nonnull %i.id) #26
  store ptr %i.ie, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 136), align 8, !tbaa !209
  br label %.critedge.a

bb.bs:                                            ; preds = %bb.bp
  %i.if = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.7) #30
  %i.ig = icmp eq i32 %i.if, 0
  %or.cond52 = and i1 %i.du, %i.ig
  br i1 %or.cond52, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !95
  %i.ij = tail call i32 @yesnotoi(ptr noundef %i.ii) #26 ; 2 uses
  store i32 %i.ij, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 152), align 8, !tbaa !92
  %i.ik = icmp eq i32 %i.ij, -1
  br i1 %i.ik, label %sentinelCheckCreateInstanceErrors.exit.thread, label %.critedge.a

bb.bu:                                            ; preds = %bb.bs
  %i.il = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.8) #30
  %i.im = icmp eq i32 %i.il, 0
  %or.cond55 = and i1 %i.du, %i.im
  br i1 %or.cond55, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !95
  %i.ip = tail call i32 @yesnotoi(ptr noundef %i.io) #26 ; 2 uses
  store i32 %i.ip, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 156), align 4, !tbaa !96
  %i.iq = icmp eq i32 %i.ip, -1
  br i1 %i.iq, label %sentinelCheckCreateInstanceErrors.exit.thread, label %.critedge.a

bb.bw:                                            ; preds = %bb.bu
  %i.ir = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.92) #30
  %i.is = icmp eq i32 %i.ir, 0
  %or.cond58 = and i1 %i.y, %i.is
  br i1 %or.cond58, label %bb.bx, label %sentinelCheckCreateInstanceErrors.exit.thread

bb.bx:                                            ; preds = %bb.bw
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !95
  %i.iv = tail call ptr @sentinelGetMasterByName(ptr noundef %i.iu) ; 2 uses
  %.not229 = icmp eq ptr %i.iv, null
  br i1 %.not229, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !95
  %i.iy = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.ix, ptr noundef null, i32 noundef 10) #26, !inline_history !205 ; 2 uses
  %sext = shl i64 %i.iy, 32
  %i.iz = ashr exact i64 %sext, 32
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 96
  store i64 %i.iz, ptr %i.ja, align 8, !tbaa !166
  %i.jb = and i64 %i.iy, 2147483648
  %.not259 = icmp eq i64 %i.jb, 0
  br i1 %.not259, label %.critedge.a, label %sentinelCheckCreateInstanceErrors.exit.thread

.critedge.a:                                      ; preds = %bb.ba, %bb.aw, %bb.at, %bb.c, %bb.bd, %bb.ad, %bb.ae, %sentinelPropagateDownAfterPeriod.exit, %bb.n, %bb.v, %bb.ab, %bb.ah, %bb.ao, %bb.bh, %bb.bg, %bb.bl, %bb.br, %bb.bq, %bb.bv, %bb.by, %bb.bt, %bb.bn, %bb.bo, %bb.bj, %bb.ak, %bb.al, %bb.y, %bb.r, %bb.k
  br label %sentinelCheckCreateInstanceErrors.exit.thread

sentinelCheckCreateInstanceErrors.exit.thread:    ; preds = %7, %6, %5, %bb.az, %bb.ax, %4, %bb.au, %bb.as, %3, %bb.d, %bb.b, %bb.be, %bb.bw, %bb.by, %bb.bx, %bb.bv, %bb.bt, %bb.bl, %bb.bc, %bb.an, %bb.aj, %bb.ag, %bb.aa, %bb.x, %bb.u, %bb.t, %bb.q, %bb.p, %bb.m, %bb.k, %bb.j, %bb.g, %bb.f, %.critedge.a
  %.4 = phi ptr [ null, %.critedge.a ], [ @.str.94, %bb.bw ], [ @.str.71, %bb.f ], [ @.str.71, %bb.as ], [ @.str.71, %bb.j ], [ @.str.72, %bb.g ], [ @.str.72, %bb.k ], [ @.str.71, %bb.p ], [ @.str.71, %bb.m ], [ @.str.71, %bb.t ], [ @.str.76, %bb.q ], [ @.str.78, %bb.u ], [ @.str.71, %bb.x ], [ @.str.71, %bb.aa ], [ @.str.81, %bb.ag ], [ @.str.71, %bb.aj ], [ @.str.69, %bb.b ], [ @.str.88, %bb.be ], [ @.str.71, %bb.an ], [ @.str.71, %bb.bc ], [ @.str.89, %bb.bl ], [ @.str.90, %bb.bt ], [ @.str.71, %bb.bx ], [ @.str.91, %bb.bv ], [ @.str.93, %bb.by ], [ @.str.60, %bb.d ], [ @.str.56, %3 ], [ @.str.71, %bb.ax ], [ @.str.62, %7 ], [ @.str.60, %bb.au ], [ @.str.57, %4 ], [ @.str.61, %6 ], [ @.str.60, %bb.az ], [ @.str.58, %5 ]
  ret ptr %.4
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @yesnotoi(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @rewriteConfigSentinelOption(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.dictIterator, align 8       ; 6 uses
  %2 = alloca %struct.dictIterator, align 8       ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = tail call ptr @sdsempty() #26
  %i.b = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.a, ptr noundef nonnull @.str.95, ptr noundef nonnull @sentinel) #26
  %i.c = tail call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.96, ptr noundef %i.b, i32 noundef 1) #26 ; 0 uses
  %i.d = tail call ptr @sdsempty() #26
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 128), align 32, !tbaa !84
  %.not = icmp eq i32 %i.e, 0
  %i.f = select i1 %.not, ptr @.str.99, ptr @.str.98
  %i.g = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.d, ptr noundef nonnull @.str.97, ptr noundef nonnull %i.f) #26
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 128), align 32, !tbaa !84
  %i.i = icmp ne i32 %i.h, 1
  %i.j = zext i1 %i.i to i32
  %i.k = tail call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.100, ptr noundef %i.g, i32 noundef %i.j) #26 ; 0 uses
  %i.l = tail call ptr @sdsempty() #26
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 152), align 8, !tbaa !92
  %.not128 = icmp eq i32 %i.m, 0
  %i.n = select i1 %.not128, ptr @.str.99, ptr @.str.98
  %i.o = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.l, ptr noundef nonnull @.str.101, ptr noundef nonnull %i.n) #26
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 152), align 8, !tbaa !92
  %i.q = icmp ne i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = tail call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.102, ptr noundef %i.o, i32 noundef %i.r) #26 ; 0 uses
  %i.t = tail call ptr @sdsempty() #26
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 156), align 4, !tbaa !96
  %.not129 = icmp eq i32 %i.u, 0
  %i.v = select i1 %.not129, ptr @.str.99, ptr @.str.98
  %i.w = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.t, ptr noundef nonnull @.str.103, ptr noundef nonnull %i.v) #26
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 156), align 4, !tbaa !96
  %i.y = icmp ne i32 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %i.aa = tail call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.104, ptr noundef %i.w, i32 noundef %i.z) #26 ; 0 uses
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 56), align 8, !tbaa !74
  call void @dictInitIterator(ptr noundef nonnull %1, ptr noundef %i.ab) #26
  %i.ac = call ptr @dictNext(ptr noundef nonnull %1) #26 ; 2 uses
  %.not130168 = icmp eq ptr %i.ac, null
  br i1 %.not130168, label %._crit_edge171, label %.lr.ph170

.lr.ph170:                                        ; preds = %bb.a, %._crit_edge167
  %i.ad = phi ptr [ %i.gb, %._crit_edge167 ], [ %i.ac, %bb.a ]
  %i.ae = call ptr @dictGetVal(ptr noundef nonnull %i.ad) #26 ; 20 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !39
  %i.ag = and i32 %i.af, 64
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph170
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 312
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !41 ; 2 uses
  %.not7.i = icmp eq ptr %i.ai, null
  br i1 %.not7.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 272
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !180
  %i.al = icmp sgt i32 %i.ak, 4
  br i1 %i.al, label %sentinelGetCurrentMasterAddress.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph170
  br label %sentinelGetCurrentMasterAddress.exit

sentinelGetCurrentMasterAddress.exit:             ; preds = %bb.c, %bb.d
  %.pn.i = phi ptr [ %i.ae, %bb.d ], [ %i.ai, %bb.c ]
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !34 ; 4 uses
  %i.am = call ptr @sdsempty() #26
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 14 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 156), align 4, !tbaa !96
  %.not.i147 = icmp eq i32 %i.ap, 0
  %.in.idx.i = select i1 %.not.i147, i64 8, i64 0
  %.in.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.in.idx.i
  %i.aq = load ptr, ptr %.in.i, align 8, !tbaa !95
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !94
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 168
  %i.au = load i32, ptr %i.at, align 8, !tbaa !89
  %i.av = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.am, ptr noundef nonnull @.str.105, ptr noundef %i.ao, ptr noundef %i.aq, i32 noundef %i.as, i32 noundef %i.au) #26
  %i.aw = call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.106, ptr noundef %i.av, i32 noundef 1) #26 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 88 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !165
  %i.az = load i64, ptr @sentinel_default_down_after, align 8, !tbaa !115
  %.not135 = icmp eq i64 %i.ay, %i.az
  br i1 %.not135, label %bb.f, label %bb.e

bb.e:                                             ; preds = %sentinelGetCurrentMasterAddress.exit
  %i.ba = call ptr @sdsempty() #26
  %i.bb = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.bc = load i64, ptr %i.ax, align 8, !tbaa !165
  %i.bd = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.ba, ptr noundef nonnull @.str.107, ptr noundef %i.bb, i64 noundef %i.bc) #26
  %i.be = call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.108, ptr noundef %i.bd, i32 noundef 1) #26 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %sentinelGetCurrentMasterAddress.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 296 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !175
  %i.bh = load i64, ptr @sentinel_default_failover_timeout, align 8, !tbaa !115
  %.not136 = icmp eq i64 %i.bg, %i.bh
  br i1 %.not136, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = call ptr @sdsempty() #26
  %i.bj = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.bk = load i64, ptr %i.bf, align 8, !tbaa !175
  %i.bl = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.109, ptr noundef %i.bj, i64 noundef %i.bk) #26
  %i.bm = call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.110, ptr noundef %i.bl, i32 noundef 1) #26 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ae, i64 172 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !173
  %.not137 = icmp eq i32 %i.bo, 1
  br i1 %.not137, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = call ptr @sdsempty() #26
  %i.bq = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.br = load i32, ptr %i.bn, align 4, !tbaa !173
  %i.bs = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.bp, ptr noundef nonnull @.str.111, ptr noundef %i.bq, i32 noundef %i.br) #26
  %i.bt = call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.112, ptr noundef %i.bs, i32 noundef 1) #26 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ae, i64 320 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !27
  %.not138 = icmp eq ptr %i.bv, null
  br i1 %.not138, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = call ptr @sdsempty() #26
  %i.bx = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.by = load ptr, ptr %i.bu, align 8, !tbaa !27
  %i.bz = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.bw, ptr noundef nonnull @.str.113, ptr noundef %i.bx, ptr noundef %i.by) #26
  %i.ca = call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.114, ptr noundef %i.bz, i32 noundef 1) #26 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ae, i64 328 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !28
  %.not139 = icmp eq ptr %i.cc, null
  br i1 %.not139, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = call ptr @sdsempty() #26
  %i.ce = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !28
  %i.cg = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.cd, ptr noundef nonnull @.str.115, ptr noundef %i.ce, ptr noundef %i.cf) #26
  %i.ch = call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.116, ptr noundef %i.cg, i32 noundef 1) #26 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ae, i64 176 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !31
  %.not140 = icmp eq ptr %i.cj, null
  br i1 %.not140, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ck = call ptr @sdsempty() #26
  %i.cl = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !31
  %i.cn = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.ck, ptr noundef nonnull @.str.117, ptr noundef %i.cl, ptr noundef %i.cm) #26
  %i.co = call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.118, ptr noundef %i.cn, i32 noundef 1) #26 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ae, i64 184 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !32
  %.not141 = icmp eq ptr %i.cq, null
  br i1 %.not141, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = call ptr @sdsempty() #26
  %i.cs = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !32
  %i.cu = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.cr, ptr noundef nonnull @.str.119, ptr noundef %i.cs, ptr noundef %i.ct) #26
  %i.cv = call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.120, ptr noundef %i.cu, i32 noundef 1) #26 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ae, i64 96 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !166
  %.not142 = icmp eq i64 %i.cx, 0
  br i1 %.not142, label %bb.t, label %bb.s

end_hunk_1
begin_hunk_2_@sentinelCommand:bb.a
  %i.cj = tail call i32 @strcasecmp(ptr noundef %.pre375, ptr noundef nonnull @.str.356) #30
  %.not259 = icmp eq i32 %i.cj, 0
  br i1 %.not259, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  %.not260 = icmp eq i32 %i.j, 3
  br i1 %.not260, label %bb.aj, label %.thread402

bb.aj:                                            ; preds = %bb.ai
  %i.ck = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !273
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !274
  %i.co = tail call ptr @sentinelGetMasterByName(ptr noundef %i.cn) ; 5 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call void @addReplyNullArray(ptr noundef nonnull %0) #26
  br label %.thread

bb.al:                                            ; preds = %bb.aj
  %i.cq = load i32, ptr %i.co, align 8, !tbaa !39
  %i.cr = and i32 %i.cq, 64
  %.not.i313 = icmp eq i32 %i.cr, 0
  br i1 %.not.i313, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 312
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !41 ; 2 uses
  %.not7.i = icmp eq ptr %i.ct, null
  br i1 %.not7.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 272
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !180
  %i.cw = icmp sgt i32 %i.cv, 4
  br i1 %i.cw, label %sentinelGetCurrentMasterAddress.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  br label %sentinelGetCurrentMasterAddress.exit

sentinelGetCurrentMasterAddress.exit:             ; preds = %bb.an, %bb.ao
  %.pn.i = phi ptr [ %i.co, %bb.ao ], [ %i.ct, %bb.an ]
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !34 ; 2 uses
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 2) #26
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 156), align 4, !tbaa !96
  %.not.i314 = icmp eq i32 %i.cx, 0
  %.in.idx.i = select i1 %.not.i314, i64 8, i64 0
  %.in.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.in.idx.i
  %i.cy = load ptr, ptr %.in.i, align 8, !tbaa !95
  tail call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef %i.cy) #26
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !94
  %i.db = sext i32 %i.da to i64
  tail call void @addReplyBulkLongLong(ptr noundef nonnull %0, i64 noundef %i.db) #26
  br label %.thread

bb.ap:                                            ; preds = %bb.ah
  %i.dc = tail call i32 @strcasecmp(ptr noundef %.pre375, ptr noundef nonnull @.str.357) #30
  %.not261 = icmp eq i32 %i.dc, 0
  br i1 %.not261, label %bb.aq, label %bb.az

bb.aq:                                            ; preds = %bb.ap
  %.not262 = icmp eq i32 %i.j, 3
  br i1 %.not262, label %bb.ar, label %.thread402

bb.ar:                                            ; preds = %bb.aq
  %i.dd = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !273
  %i.df = tail call ptr @sentinelGetMasterByNameOrReplyError(ptr noundef nonnull %0, ptr noundef %i.de) ; 7 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dh = load i32, ptr %i.df, align 8, !tbaa !39
  %i.di = and i32 %i.dh, 64
  %.not263 = icmp eq i32 %i.di, 0
  br i1 %.not263, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.358) #26
  br label %.thread

bb.au:                                            ; preds = %bb.as
  %i.dj = tail call ptr @sentinelSelectSlave(ptr noundef nonnull %i.df)
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.359) #26
  br label %.thread

bb.aw:                                            ; preds = %bb.au
  %i.dl = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !87
  %i.dm = icmp sgt i32 %i.dl, 2
  br i1 %i.dm, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !25
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.360, ptr noundef %i.do) #26
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  tail call void @sentinelStartFailover(ptr noundef nonnull %i.df)
  %i.dp = load i32, ptr %i.df, align 8, !tbaa !39
  %i.dq = or i32 %i.dp, 2048
  store i32 %i.dq, ptr %i.df, align 8, !tbaa !39
  %i.dr = load ptr, ptr @shared, align 8, !tbaa !278
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.dr) #26
  br label %.thread

bb.az:                                            ; preds = %bb.ap
  %i.ds = tail call i32 @strcasecmp(ptr noundef %.pre375, ptr noundef nonnull @.str.361) #30
  %.not264 = icmp eq i32 %i.ds, 0
  br i1 %.not264, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  br i1 %i.k, label %.thread402, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @sentinelPendingScriptsCommand(ptr noundef nonnull %0)
  br label %.thread

bb.bc:                                            ; preds = %bb.az
  %i.dt = tail call i32 @strcasecmp(ptr noundef %.pre375, ptr noundef nonnull @.str.63) #30
  %.not266 = icmp eq i32 %i.dt, 0
  br i1 %.not266, label %bb.bd, label %bb.bp

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  %.not267 = icmp eq i32 %i.j, 6
  br i1 %.not267, label %bb.be, label %bb.bo

bb.be:                                            ; preds = %bb.bd
  %i.du = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !273
  %i.dw = call i32 @getLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.dv, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.362) #26
  %.not268 = icmp eq i32 %i.dw, 0
  br i1 %.not268, label %bb.bf, label %.thread338

bb.bf:                                            ; preds = %bb.be
  %i.dx = load ptr, ptr %i.x, align 8, !tbaa !272
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !273
  %i.ea = call i32 @getLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.dz, ptr noundef nonnull %i.f, ptr noundef nonnull @.str.363) #26
  %.not269 = icmp eq i32 %i.ea, 0
  br i1 %.not269, label %bb.bg, label %.thread338

bb.bg:                                            ; preds = %bb.bf
  %i.eb = load i64, ptr %i.e, align 8, !tbaa !182
  %i.ec = icmp slt i64 %i.eb, 1
  br i1 %i.ec, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.69) #26
  br label %.thread338

bb.bi:                                            ; preds = %bb.bg
  %i.ed = load ptr, ptr %i.x, align 8, !tbaa !272
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !273
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !274
  %i.ei = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 152), align 8, !tbaa !92
  %.not270 = icmp eq i32 %i.ei, 0
  %i.ej = zext i1 %.not270 to i32
  %i.ek = call i32 @anetResolve(ptr noundef null, ptr noundef %i.eh, ptr noundef nonnull %i.g, i64 noundef 46, i32 noundef %i.ej) #26
  %i.el = icmp eq i32 %i.ek, -1
  br i1 %i.el, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.364) #26
  br label %.thread338

bb.bk:                                            ; preds = %bb.bi
  %i.em = load ptr, ptr %i.x, align 8, !tbaa !272 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !273
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !274
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !273
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !274
  %i.ev = load i64, ptr %i.f, align 8, !tbaa !182
  %i.ew = trunc i64 %i.ev to i32
  %i.ex = load i64, ptr %i.e, align 8, !tbaa !182
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = call ptr @createSentinelRedisInstance(ptr noundef %i.eq, i32 noundef 1, ptr noundef %i.eu, i32 noundef %i.ew, i32 noundef %i.ey, ptr noundef null) ; 3 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.fb = tail call ptr @__errno_location() #28
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !9
  switch i32 %i.fc, label %bb.bm [
    i32 16, label %4
    i32 2, label %sentinelCheckCreateInstanceErrors.exit
    i32 22, label %5
  ]

4:                                                ; preds = %bb.bl
  br label %sentinelCheckCreateInstanceErrors.exit

5:                                                ; preds = %bb.bl
  br label %sentinelCheckCreateInstanceErrors.exit

bb.bm:                                            ; preds = %bb.bl
  br label %sentinelCheckCreateInstanceErrors.exit

sentinelCheckCreateInstanceErrors.exit:           ; preds = %bb.bl, %4, %5, %bb.bm
  %.0.i315 = phi ptr [ @.str.62, %bb.bm ], [ @.str.61, %5 ], [ @.str.56, %4 ], [ @.str.60, %bb.bl ]
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull %.0.i315) #26
  br label %.thread338

bb.bn:                                            ; preds = %bb.bk
  call fastcc void @sentinelFlushConfigAndReply(ptr noundef nonnull %0)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 168
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !89
  call void (i32, ptr, ptr, ptr, ...) @sentinelEvent(i32 noundef 3, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.ez, ptr noundef nonnull @.str.19, i32 noundef %i.fe)
  br label %.thread338

.thread338:                                       ; preds = %bb.bf, %bb.be, %bb.bh, %bb.bj, %bb.bn, %sentinelCheckCreateInstanceErrors.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br label %.thread

bb.bo:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br label %.thread402

bb.bp:                                            ; preds = %bb.bc
  %i.ff = tail call i32 @strcasecmp(ptr noundef %.pre375, ptr noundef nonnull @.str.365) #30
  %.not271 = icmp eq i32 %i.ff, 0
  br i1 %.not271, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.k, label %.thread402, label %bb.br

bb.br:                                            ; preds = %bb.bq
  tail call fastcc void @sentinelFlushConfigAndReply(ptr noundef nonnull %0)
  br label %.thread

bb.bs:                                            ; preds = %bb.bp
  %i.fg = tail call i32 @strcasecmp(ptr noundef %.pre375, ptr noundef nonnull @.str.366) #30
  %.not273 = icmp eq i32 %i.fg, 0
  br i1 %.not273, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %.not274 = icmp eq i32 %i.j, 3
  br i1 %.not274, label %bb.bu, label %.thread402

bb.bu:                                            ; preds = %bb.bt
  %i.fh = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !273
  %i.fj = tail call ptr @sentinelGetMasterByNameOrReplyError(ptr noundef nonnull %0, ptr noundef %i.fi) ; 2 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  tail call void (i32, ptr, ptr, ptr, ...) @sentinelEvent(i32 noundef 3, ptr noundef nonnull @.str.367, ptr noundef nonnull %i.fj, ptr noundef nonnull @.str.54)
  %i.fl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 56), align 8, !tbaa !74
  %i.fm = load ptr, ptr %i.x, align 8, !tbaa !272
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !273
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !274
  %i.fr = tail call i32 @dictDelete(ptr noundef %i.fl, ptr noundef %i.fq) #26 ; 0 uses
  tail call fastcc void @sentinelFlushConfigAndReply(ptr noundef nonnull %0)
  br label %.thread

bb.bw:                                            ; preds = %bb.bs
  %i.fs = tail call i32 @strcasecmp(ptr noundef %.pre375, ptr noundef nonnull @.str.368) #30
  %.not275 = icmp eq i32 %i.fs, 0
  br i1 %.not275, label %bb.bx, label %bb.cg

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  %.not276 = icmp eq i32 %i.j, 3
  br i1 %.not276, label %bb.by, label %bb.cf

bb.by:                                            ; preds = %bb.bx
  %i.ft = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !273
  %i.fv = tail call ptr @sentinelGetMasterByNameOrReplyError(ptr noundef nonnull %0, ptr noundef %i.fu) ; 2 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %.thread351, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fx = call i32 @sentinelIsQuorumReachable(ptr noundef nonnull %i.fv, ptr noundef nonnull %i.h) ; 3 uses
  %i.fy = icmp eq i32 %i.fx, 0
  %i.fz = call ptr @sdsempty() #26                ; 2 uses
  %i.ga = load i32, ptr %i.h, align 4, !tbaa !9   ; 2 uses
  br i1 %i.fy, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.gb = call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %i.fz, ptr noundef nonnull @.str.369, i32 noundef %i.ga) #26
  call void @addReplySds(ptr noundef nonnull %0, ptr noundef %i.gb) #26
  br label %.thread351

bb.cb:                                            ; preds = %bb.bz
  %i.gc = call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %i.fz, ptr noundef nonnull @.str.370, i32 noundef %i.ga) #26 ; 2 uses
  %i.gd = and i32 %i.fx, 1
  %.not277 = icmp eq i32 %i.gd, 0
  br i1 %.not277, label %bb.cd, label %.thread343

.thread343:                                       ; preds = %bb.cb
  %i.ge = call ptr @sdscat(ptr noundef %i.gc, ptr noundef nonnull @.str.371) #26 ; 2 uses
  %.not278345 = icmp eq i32 %i.fx, 1
  br i1 %.not278345, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %.thread343
  %i.gf = call ptr @sdscat(ptr noundef %i.ge, ptr noundef nonnull @.str.372) #26
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %.1215 = phi ptr [ %i.gf, %bb.cc ], [ %i.gc, %bb.cb ]
  %i.gg = call ptr @sdscat(ptr noundef %.1215, ptr noundef nonnull @.str.373) #26
  br label %bb.ce

bb.ce:                                            ; preds = %.thread343, %bb.cd
  %.2216 = phi ptr [ %i.gg, %bb.cd ], [ %i.ge, %.thread343 ]
  call void @addReplyErrorSds(ptr noundef nonnull %0, ptr noundef %.2216) #26
  br label %.thread351

.thread351:                                       ; preds = %bb.by, %bb.ce, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  br label %.thread

bb.cf:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  br label %.thread402

bb.cg:                                            ; preds = %bb.bw
  %i.gh = tail call i32 @strcasecmp(ptr noundef %.pre375, ptr noundef nonnull @.str.374) #30
  %.not279 = icmp eq i32 %i.gh, 0
  br i1 %.not279, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  tail call void @sentinelSetCommand(ptr noundef nonnull %0)
  br label %.thread

bb.ci:                                            ; preds = %bb.cg
  %i.gi = tail call i32 @strcasecmp(ptr noundef %.pre375, ptr noundef nonnull @.str.375) #30
  %.not280 = icmp eq i32 %i.gi, 0
  br i1 %.not280, label %bb.cj, label %bb.cp

bb.cj:                                            ; preds = %bb.ci
  %i.gj = icmp slt i32 %i.j, 4
  br i1 %i.gj, label %.thread402, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.gk = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !273
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !274 ; 2 uses
  %i.go = tail call i32 @strcasecmp(ptr noundef %i.gn, ptr noundef nonnull @.str.374) #30
  %.not281 = icmp ne i32 %i.go, 0
  %.not282 = icmp eq i32 %i.j, 4
  %or.cond307 = or i1 %.not282, %.not281
  br i1 %or.cond307, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  tail call void @sentinelConfigSetCommand(ptr noundef nonnull %0)
  br label %.thread

bb.cm:                                            ; preds = %bb.ck
  %i.gp = tail call i32 @strcasecmp(ptr noundef %i.gn, ptr noundef nonnull @.str.376) #30
  %.not283 = icmp eq i32 %i.gp, 0
  br i1 %.not283, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  tail call void @sentinelConfigGetCommand(ptr noundef nonnull %0)
  br label %.thread

bb.co:                                            ; preds = %bb.cm
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.377) #26
  br label %.thread

bb.cp:                                            ; preds = %bb.ci
  %i.gq = tail call i32 @strcasecmp(ptr noundef %.pre375, ptr noundef nonnull @.str.378) #30
  %.not284 = icmp eq i32 %i.gq, 0
  br i1 %.not284, label %bb.cq, label %bb.dk

bb.cq:                                            ; preds = %bb.cp
  %i.gr = icmp slt i32 %i.j, 2
  br i1 %i.gr, label %.thread402, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.gs = tail call i64 @mstime() #26             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(120) @instancesDictType, i64 120, i1 false), !tbaa.struct !283
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr null, ptr %i.gt, align 8, !tbaa !285
  %i.gu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 56), align 8, !tbaa !74
  %i.gv = load i32, ptr %i.i, align 8, !tbaa !259
  %i.gw = icmp sgt i32 %i.gv, 2
  br i1 %i.gw, label %bb.cs, label %.loopexit

bb.cs:                                            ; preds = %bb.cr
  %i.gx = call ptr @dictCreate(ptr noundef nonnull %1) #26 ; 3 uses
  %i.gy = load i32, ptr %i.i, align 8, !tbaa !259
  %i.gz = icmp sgt i32 %i.gy, 2
  br i1 %i.gz, label %.lr.ph357, label %.loopexit

.lr.ph357:                                        ; preds = %bb.cs, %bb.cu
  %indvars.iv368 = phi i64 [ %indvars.iv.next369, %bb.cu ], [ 2, %bb.cs ] ; 2 uses
  %i.ha = load ptr, ptr %i.x, align 8, !tbaa !272
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv368
end_hunk_2
