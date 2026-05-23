inline.NumInlined: 302
inline.NumDeleted: 51
begin_hunk_0
@.str.119 = private unnamed_addr constant [47 x i8] c"KILL <option> <value> [<option> <value> [...]]\00", align 1
@.str.120 = private unnamed_addr constant [35 x i8] c"    Kill connections. Options are:\00", align 1
@.str.121 = private unnamed_addr constant [38 x i8] c"    * ADDR (<ip:port>|<unixsocket>:0)\00", align 1
@.str.122 = private unnamed_addr constant [55 x i8] c"      Kill connections made from the specified address\00", align 1
@.str.123 = private unnamed_addr constant [39 x i8] c"    * LADDR (<ip:port>|<unixsocket>:0)\00", align 1
@.str.124 = private unnamed_addr constant [55 x i8] c"      Kill connections made to specified local address\00", align 1
@.str.125 = private unnamed_addr constant [42 x i8] c"    * TYPE (NORMAL|MASTER|REPLICA|PUBSUB)\00", align 1
@.str.126 = private unnamed_addr constant [32 x i8] c"      Kill connections by type.\00", align 1
@.str.127 = private unnamed_addr constant [22 x i8] c"    * USER <username>\00", align 1
@.str.128 = private unnamed_addr constant [52 x i8] c"      Kill connections authenticated by <username>.\00", align 1
@.str.129 = private unnamed_addr constant [22 x i8] c"    * SKIPME (YES|NO)\00", align 1
@.str.130 = private unnamed_addr constant [54 x i8] c"      Skip killing current connection (default: yes).\00", align 1
@.str.131 = private unnamed_addr constant [21 x i8] c"    * ID <client-id>\00", align 1
@.str.132 = private unnamed_addr constant [37 x i8] c"      Kill connections by client id.\00", align 1
@.str.133 = private unnamed_addr constant [22 x i8] c"    * MAXAGE <maxage>\00", align 1
@.str.134 = private unnamed_addr constant [53 x i8] c"      Kill connections older than the specified age.\00", align 1
@.str.135 = private unnamed_addr constant [19 x i8] c"LIST [options ...]\00", align 1
@.str.136 = private unnamed_addr constant [58 x i8] c"    Return information about client connections. Options:\00", align 1
@.str.137 = private unnamed_addr constant [40 x i8] c"      Return clients of specified type.\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"UNPAUSE\00", align 1
@.str.139 = private unnamed_addr constant [53 x i8] c"    Stop the current client pause, resuming traffic.\00", align 1
@.str.140 = private unnamed_addr constant [28 x i8] c"PAUSE <timeout> [WRITE|ALL]\00", align 1
@.str.141 = private unnamed_addr constant [68 x i8] c"    Suspend all, or just write, clients for <timeout> milliseconds.\00", align 1
@.str.142 = private unnamed_addr constant [20 x i8] c"REPLY (ON|OFF|SKIP)\00", align 1
@.str.143 = private unnamed_addr constant [56 x i8] c"    Control the replies sent to the current connection.\00", align 1
@.str.144 = private unnamed_addr constant [15 x i8] c"SETNAME <name>\00", align 1
@.str.145 = private unnamed_addr constant [54 x i8] c"    Assign the name <name> to the current connection.\00", align 1
@.str.146 = private unnamed_addr constant [25 x i8] c"SETINFO <option> <value>\00", align 1
@.str.147 = private unnamed_addr constant [39 x i8] c"    Set client meta attr. Options are:\00", align 1
@.str.148 = private unnamed_addr constant [37 x i8] c"    * LIB-NAME: the client lib name.\00", align 1
@.str.149 = private unnamed_addr constant [39 x i8] c"    * LIB-VER: the client lib version.\00", align 1
@.str.150 = private unnamed_addr constant [35 x i8] c"UNBLOCK <clientid> [TIMEOUT|ERROR]\00", align 1
@.str.151 = private unnamed_addr constant [42 x i8] c"    Unblock the specified blocked client.\00", align 1
@.str.152 = private unnamed_addr constant [66 x i8] c"TRACKING (ON|OFF) [REDIRECT <id>] [BCAST] [PREFIX <prefix> [...]]\00", align 1
@.str.153 = private unnamed_addr constant [35 x i8] c"         [OPTIN] [OPTOUT] [NOLOOP]\00", align 1
@.str.154 = private unnamed_addr constant [49 x i8] c"    Control server assisted client side caching.\00", align 1
@.str.155 = private unnamed_addr constant [13 x i8] c"TRACKINGINFO\00", align 1
@.str.156 = private unnamed_addr constant [55 x i8] c"    Report tracking status for the current connection.\00", align 1
@.str.157 = private unnamed_addr constant [18 x i8] c"NO-EVICT (ON|OFF)\00", align 1
@.str.158 = private unnamed_addr constant [53 x i8] c"    Protect current client connection from eviction.\00", align 1
@.str.159 = private unnamed_addr constant [18 x i8] c"NO-TOUCH (ON|OFF)\00", align 1
@.str.160 = private unnamed_addr constant [55 x i8] c"    Will not touch LRU/LFU stats when this mode is on.\00", align 1
@__const.clientCommand.help = private unnamed_addr constant [56 x ptr] [ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.125, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr null], align 16
@.str.161 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.162 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c"txt\00", align 1
@.str.164 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.165 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.166 = private unnamed_addr constant [25 x i8] c"Unknown client type '%s'\00", align 1
@.str.167 = private unnamed_addr constant [18 x i8] c"Invalid client ID\00", align 1
@.str.168 = private unnamed_addr constant [6 x i8] c"reply\00", align 1
@.str.169 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.170 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.171 = private unnamed_addr constant [5 x i8] c"skip\00", align 1
@.str.172 = private unnamed_addr constant [9 x i8] c"no-evict\00", align 1
@.str.173 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.174 = private unnamed_addr constant [35 x i8] c"client-id should be greater than 0\00", align 1
@.str.175 = private unnamed_addr constant [7 x i8] c"maxage\00", align 1
@.str.176 = private unnamed_addr constant [41 x i8] c"maxage is not an integer or out of range\00", align 1
@.str.177 = private unnamed_addr constant [32 x i8] c"maxage should be greater than 0\00", align 1
@.str.178 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.179 = private unnamed_addr constant [6 x i8] c"laddr\00", align 1
@.str.180 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.181 = private unnamed_addr constant [18 x i8] c"No such user '%s'\00", align 1
@.str.182 = private unnamed_addr constant [7 x i8] c"skipme\00", align 1
@.str.183 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.184 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.185 = private unnamed_addr constant [15 x i8] c"No such client\00", align 1
@.str.186 = private unnamed_addr constant [8 x i8] c"unblock\00", align 1
@.str.187 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.188 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.189 = private unnamed_addr constant [49 x i8] c"CLIENT UNBLOCK reason should be TIMEOUT or ERROR\00", align 1
@.str.190 = private unnamed_addr constant [47 x i8] c"-UNBLOCKED client unblocked via CLIENT UNBLOCK\00", align 1
@.str.191 = private unnamed_addr constant [8 x i8] c"setname\00", align 1
@.str.192 = private unnamed_addr constant [8 x i8] c"getname\00", align 1
@.str.193 = private unnamed_addr constant [8 x i8] c"unpause\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@.str.195 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.196 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.197 = private unnamed_addr constant [39 x i8] c"CLIENT PAUSE mode must be WRITE or ALL\00", align 1
@.str.198 = private unnamed_addr constant [9 x i8] c"tracking\00", align 1
@.str.199 = private unnamed_addr constant [9 x i8] c"redirect\00", align 1
@.str.200 = private unnamed_addr constant [52 x i8] c"A client can only redirect to a single other client\00", align 1
@.str.201 = private unnamed_addr constant [50 x i8] c"The client ID you want redirect to does not exist\00", align 1
@.str.202 = private unnamed_addr constant [6 x i8] c"bcast\00", align 1
@.str.203 = private unnamed_addr constant [6 x i8] c"optin\00", align 1
@.str.204 = private unnamed_addr constant [7 x i8] c"optout\00", align 1
@.str.205 = private unnamed_addr constant [7 x i8] c"noloop\00", align 1
@.str.206 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.207 = private unnamed_addr constant [48 x i8] c"PREFIX option requires BCAST mode to be enabled\00", align 1
@.str.208 = private unnamed_addr constant [125 x i8] c"You can't switch BCAST mode on/off before disabling tracking for this client, and then re-enabling it with a different mode.\00", align 1
@.str.209 = private unnamed_addr constant [47 x i8] c"OPTIN and OPTOUT are not compatible with BCAST\00", align 1
@.str.210 = private unnamed_addr constant [50 x i8] c"You can't specify both OPTIN mode and OPTOUT mode\00", align 1
@.str.211 = private unnamed_addr constant [125 x i8] c"You can't switch OPTIN/OPTOUT mode before disabling tracking for this client, and then re-enabling it with a different mode.\00", align 1
@.str.212 = private unnamed_addr constant [8 x i8] c"caching\00", align 1
@.str.213 = private unnamed_addr constant [104 x i8] c"CLIENT CACHING can be called only when the client is in tracking mode with OPTIN or OPTOUT mode enabled\00", align 1
@.str.214 = private unnamed_addr constant [73 x i8] c"CLIENT CACHING YES is only valid when tracking is enabled in OPTIN mode.\00", align 1
@.str.215 = private unnamed_addr constant [73 x i8] c"CLIENT CACHING NO is only valid when tracking is enabled in OPTOUT mode.\00", align 1
@.str.216 = private unnamed_addr constant [9 x i8] c"getredir\00", align 1
@.str.217 = private unnamed_addr constant [13 x i8] c"trackinginfo\00", align 1
@.str.218 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.219 = private unnamed_addr constant [12 x i8] c"caching-yes\00", align 1
@.str.220 = private unnamed_addr constant [11 x i8] c"caching-no\00", align 1
@.str.221 = private unnamed_addr constant [16 x i8] c"broken_redirect\00", align 1
@.str.222 = private unnamed_addr constant [9 x i8] c"prefixes\00", align 1
@.str.223 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.224 = private unnamed_addr constant [9 x i8] c"no-touch\00", align 1
@.str.225 = private unnamed_addr constant [51 x i8] c"Protocol version is not an integer or out of range\00", align 1
@.str.226 = private unnamed_addr constant [38 x i8] c"-NOPROTO unsupported protocol version\00", align 1
@.str.227 = private unnamed_addr constant [5 x i8] c"AUTH\00", align 1
@.str.228 = private unnamed_addr constant [8 x i8] c"SETNAME\00", align 1
@.str.229 = private unnamed_addr constant [34 x i8] c"Syntax error in HELLO option '%s'\00", align 1
@.str.230 = private unnamed_addr constant [215 x i8] c"-NOAUTH HELLO must be called with the client already authenticated, otherwise the HELLO <proto> AUTH <user> <pass> option can be used to authenticate the client and select the RESP protocol version at the same time\00", align 1
@.str.231 = private unnamed_addr constant [6 x i8] c"redis\00", align 1
@.str.232 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.233 = private unnamed_addr constant [6 x i8] c"8.6.1\00", align 1
@.str.234 = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@.str.235 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.236 = private unnamed_addr constant [9 x i8] c"sentinel\00", align 1
@.str.237 = private unnamed_addr constant [8 x i8] c"cluster\00", align 1
@.str.238 = private unnamed_addr constant [11 x i8] c"standalone\00", align 1
@.str.239 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.240 = private unnamed_addr constant [8 x i8] c"modules\00", align 1
@securityWarningCommand.logged_time = internal unnamed_addr global i64 0, align 8
@.str.241 = private unnamed_addr constant [234 x i8] c"Possible SECURITY ATTACK detected. It looks like somebody is sending POST or Host: commands to Redis. This is likely due to an attacker attempting to use Cross Protocol Scripting to compromise your Redis instance. Connection aborted.\00", align 1
@.str.242 = private unnamed_addr constant [245 x i8] c"Possible SECURITY ATTACK detected. It looks like somebody is sending POST or Host: commands to Redis. This is likely due to an attacker attempting to use Cross Protocol Scripting to compromise your Redis instance. Connection from %s:%d aborted.\00", align 1
@.str.243 = private unnamed_addr constant [45 x i8] c"!(pcmd->flags & PENDING_CMD_FLAG_INCOMPLETE)\00", align 1
@.str.244 = private unnamed_addr constant [42 x i8] c"c->mstate.executing_cmd < c->mstate.count\00", align 1
@.str.245 = private unnamed_addr constant [22 x i8] c"pcmd->argv == c->argv\00", align 1
@.str.246 = private unnamed_addr constant [15 x i8] c"c->cmd != NULL\00", align 1
@.str.247 = private unnamed_addr constant [22 x i8] c"!clientTypeIsSlave(c)\00", align 1
@.str.248 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.249 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@.str.250 = private unnamed_addr constant [7 x i8] c"pubsub\00", align 1
@.str.251 = private unnamed_addr constant [36 x i8] c"c->reply_bytes < SIZE_MAX-(1024*64)\00", align 1
@.str.252 = private unnamed_addr constant [57 x i8] c"Client %s closed for overcoming of output buffer limits.\00", align 1
@.str.253 = private unnamed_addr constant [23 x i8] c"!asmImportInProgress()\00", align 1
@.str.254 = private unnamed_addr constant [34 x i8] c"ProcessingEventsWhileBlocked >= 0\00", align 1
@.str.255 = private unnamed_addr constant [20 x i8] c"Evicting client: %s\00", align 1
@.str.256 = private unnamed_addr constant [59 x i8] c"Over client maxmemory after evicting all evictable clients\00", align 1
@.str.257 = private unnamed_addr constant [42 x i8] c"c->all_argv_len_sum >= pcmd->argv_len_sum\00", align 1
@.str.258 = private unnamed_addr constant [45 x i8] c"Shrunk pending command pool: capacity %d->%d\00", align 1
@.str.259 = private unnamed_addr constant [86 x i8] c"tryAddPayload(tail->buf, &tail->used, tail->size, payload_type, (void *)payload, len)\00", align 1
@.str.260 = private unnamed_addr constant [44 x i8] c"c->bufpos == 0 && listLength(c->reply) == 0\00", align 1
@.str.261 = private unnamed_addr constant [8 x i8] c"[%s]:%d\00", align 1
@.str.262 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@.str.263 = private unnamed_addr constant [33 x i8] c"Unknown deferred object type: %d\00", align 1
@.str.264 = private unnamed_addr constant [45 x i8] c"c->io_flags & CLIENT_IO_REUSABLE_QUERYBUFFER\00", align 1
@.str.265 = private unnamed_addr constant [36 x i8] c"header->payload_type == PLAIN_REPLY\00", align 1
@.str.266 = private unnamed_addr constant [28 x i8] c"o->used >= c->ref_block_pos\00", align 1
@.str.267 = private unnamed_addr constant [20 x i8] c"c->reply_bytes == 0\00", align 1
@.str.268 = private unnamed_addr constant [56 x i8] c"start_ptr >= c->buf && start_ptr < (c->buf + c->bufpos)\00", align 1
@.str.269 = private unnamed_addr constant [13 x i8] c"!last_header\00", align 1
@.str.270 = private unnamed_addr constant [17 x i8] c"c->duration == 0\00", align 1
@.str.271 = private unnamed_addr constant [49 x i8] c"Query buffer during protocol error: '*redacted*'\00", align 1
@.str.272 = private unnamed_addr constant [41 x i8] c"Query buffer during protocol error: '%s'\00", align 1
@.str.273 = private unnamed_addr constant [75 x i8] c"Query buffer during protocol error: '%.*s' (... more %zu bytes ...) '%.*s'\00", align 1
@.str.274 = private unnamed_addr constant [40 x i8] c"Protocol error (%s) from client: %s. %s\00", align 1
@.str.275 = private unnamed_addr constant [16 x i8] c"pcmd->argc == 0\00", align 1
@.str.276 = private unnamed_addr constant [30 x i8] c"c->querybuf[c->qb_pos] == '*'\00", align 1
@.str.277 = private unnamed_addr constant [20 x i8] c"c->multibulklen > 0\00", align 1
@.str.278 = private unnamed_addr constant [42 x i8] c"pcmd->flags & PENDING_CMD_FLAG_INCOMPLETE\00", align 1
@.str.279 = private unnamed_addr constant [6 x i8] c"fd=%i\00", align 1
@.str.280 = private unnamed_addr constant [23 x i8] c"client pause requested\00", align 1
@.str.281 = private unnamed_addr constant [59 x i8] c"server.io_threads_active == 0 || server.cmd_pool.size == 0\00", align 1
@switch.table.getClientTypeName = private unnamed_addr constant [4 x ptr] [ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.12], align 8

; Function Attrs: nounwind uwtable
define dso_local i64 @sdsZmallocSize(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @sdsAllocPtr(ptr noundef %0) #29
  %i.b = tail call i64 @je_malloc_usable_size(ptr noundef %i.a) #29
  ret i64 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @sdsAllocPtr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @je_malloc_usable_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @getStringObjectSdsUsedMemory(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 15
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssertWithInfo(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 57) #29
  tail call void @abort() #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %1 = trunc i64 %i.a to i8
  switch i8 %1, label %bb.f [
    i8 0, label %bb.d
    i8 -128, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = tail call ptr @sdsAllocPtr(ptr noundef %i.e) #29
  %i.g = tail call i64 @je_malloc_usable_size(ptr noundef %i.f) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = tail call i64 @je_malloc_usable_size(ptr noundef nonnull %0) #29
  %i.i = add i64 %i.h, -16
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  %.0 = phi i64 [ %i.i, %bb.e ], [ %i.g, %bb.d ], [ 0, %bb.c ]
  ret i64 %.0
}

declare void @_serverAssertWithInfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @getStringObjectLen(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 15
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssertWithInfo(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 68) #29
  tail call void @abort() #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %1 = trunc i64 %i.a to i8
  switch i8 %1, label %sdslen.exit [
    i8 0, label %bb.d
    i8 -128, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 5 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %.val.i = load i8, ptr %i.f, align 1, !tbaa !17 ; 2 uses
  %i.g = and i8 %.val.i, 7
  switch i8 %i.g, label %sdslen.exit [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = lshr i8 %.val.i, 3
  %i.i = zext nneg i8 %i.h to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 -3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !17
  %i.l = zext i8 %i.k to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds i8, ptr %i.e, i64 -5
  %i.n = load i16, ptr %i.m, align 1, !tbaa !18
  %i.o = zext i16 %i.n to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds i8, ptr %i.e, i64 -9
  %i.q = load i32, ptr %i.p, align 1, !tbaa !9
  %i.r = zext i32 %i.q to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds i8, ptr %i.e, i64 -17
  %i.t = load i64, ptr %i.s, align 1, !tbaa !20
  br label %sdslen.exit

bb.j:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14   ; 5 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -1
  %.val.i5 = load i8, ptr %i.w, align 1, !tbaa !17 ; 2 uses
  %i.x = and i8 %.val.i5, 7
  switch i8 %i.x, label %sdslen.exit [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %i.y = lshr i8 %.val.i5, 3
  %i.z = zext nneg i8 %i.y to i64
  br label %sdslen.exit

bb.l:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 -3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !17
  %i.ac = zext i8 %i.ab to i64
  br label %sdslen.exit

bb.m:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds i8, ptr %i.v, i64 -5
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !18
  %i.af = zext i16 %i.ae to i64
  br label %sdslen.exit

bb.n:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds i8, ptr %i.v, i64 -9
  %i.ah = load i32, ptr %i.ag, align 1, !tbaa !9
  %i.ai = zext i32 %i.ah to i64
  br label %sdslen.exit

bb.o:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds i8, ptr %i.v, i64 -17
  %i.ak = load i64, ptr %i.aj, align 1, !tbaa !20
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.c ], [ %i.t, %bb.i ], [ %i.i, %bb.e ], [ %i.l, %bb.f ], [ %i.o, %bb.g ], [ %i.r, %bb.h ], [ %i.ak, %bb.o ], [ %i.z, %bb.k ], [ %i.ac, %bb.l ], [ %i.af, %bb.m ], [ %i.ai, %bb.n ], [ 0, %bb.j ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @sdslen(ptr noundef readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -1
  %.val = load i8, ptr %i.a, align 1, !tbaa !17   ; 2 uses
  %i.b = and i8 %.val, 7
  switch i8 %i.b, label %bb.g [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i8 %.val, 3
  %i.d = zext nneg i8 %i.c to i64
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !17
  %i.g = zext i8 %i.f to i64
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %0, i64 -5
  %i.i = load i16, ptr %i.h, align 1, !tbaa !18
  %i.j = zext i16 %i.i to i64
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -9
  %i.l = load i32, ptr %i.k, align 1, !tbaa !9
  %i.m = zext i32 %i.l to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %0, i64 -17
  %i.o = load i64, ptr %i.n, align 1, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.o, %bb.f ], [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @dupClientReplyValue(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !20
  %i.b = add i64 %i.a, 24
  %i.c = tail call noalias ptr @zmalloc(i64 noundef %i.b) #31 ; 2 uses
  %i.d = load i64, ptr %0, align 8, !tbaa !20
  %i.e = add i64 %i.d, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.c, ptr nonnull align 1 %0, i64 %i.e, i1 false)
  ret ptr %i.c
}

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @freeClientReplyValue(ptr noundef %0) #0 {
bb.a:
  tail call void @zfree(ptr noundef %0) #29
  ret void
}

declare void @zfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @linkClient(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1440), align 8, !tbaa !22
  %i.c = tail call ptr @listAddNodeTail(ptr noundef %i.b, ptr noundef %0) #29 ; 0 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1440), align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 720
  store ptr %i.f, ptr %i.g, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.h = load i64, ptr %0, align 8, !tbaa !71
  %i.i = tail call i64 @llvm.bswap.i64(i64 %i.h)
  store i64 %i.i, ptr %i.a, align 8, !tbaa !20
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1536), align 8, !tbaa !72
  %i.k = call i32 @raxInsert(ptr noundef %i.j, ptr noundef nonnull %i.a, i64 noundef 8, ptr noundef nonnull %0, ptr noundef null) #29 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

declare ptr @listAddNodeTail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #7

declare i32 @raxInsert(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @authRequired(ptr noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @DefaultUser, align 8, !tbaa !73
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load atomic i32, ptr %i.b monotonic, align 8
  %i.d = and i32 %i.c, 6
end_hunk_0
begin_hunk_1_@_addReplyPayloadToList:bb.a
  %i.i = load i64, ptr %i.e, align 8, !tbaa !20
  %i.j = load i64, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  %i.k = add i64 %3, 9
  %i.l = add i64 %i.k, %i.j                       ; 2 uses
  %i.m = icmp ugt i64 %i.l, %i.i
  br i1 %i.m, label %bb.h, label %.thread78

.thread78:                                        ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.j ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i8 %4, ptr %i.p, align 1, !tbaa !156
  store i64 %3, ptr %i.o, align 1, !tbaa !158
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr readonly align 1 %2, i64 %3, i1 false)
  store i64 %i.l, ptr %i.h, align 8, !tbaa !20
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  br i1 %.not68, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr %i.e, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !20   ; 3 uses
  %i.u = sub i64 %i.r, %i.t
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %3) ; 5 uses
  %.not65 = icmp eq i64 %i.v, 0
  br i1 %.not65, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %2, i64 %i.v, i1 false)
  %i.y = add i64 %i.v, %i.t
  store i64 %i.y, ptr %i.s, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %i.v
  %i.aa = sub i64 %3, %i.v
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %.thread, %bb.f, %bb.g, %bb.e, %bb.b
  %.not6875 = phi i1 [ %.not68, %bb.b ], [ true, %bb.f ], [ false, %bb.e ], [ %.not6873, %.thread ], [ true, %bb.g ], [ %.not68, %bb.d ] ; 2 uses
  %.158 = phi i64 [ %3, %bb.b ], [ %3, %bb.f ], [ %3, %bb.e ], [ %3, %.thread ], [ %i.aa, %bb.g ], [ %3, %bb.d ] ; 7 uses
  %.1 = phi ptr [ %2, %bb.b ], [ %2, %bb.f ], [ %2, %bb.e ], [ %2, %.thread ], [ %i.z, %bb.g ], [ %2, %bb.d ] ; 2 uses
  %.not67 = icmp eq i64 %.158, 0
  br i1 %.not67, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.ab = add i64 %.158, 9                        ; 3 uses
  %i.ac = select i1 %.not6875, i64 %.158, i64 %i.ab
  %i.ad = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 16384)
  %i.ae = add i64 %i.ad, 24
  %i.af = call ptr @zmalloc_usable(i64 noundef %i.ae, ptr noundef nonnull %i.a) #29 ; 9 uses
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !20
  %i.ah = add i64 %i.ag, -24                      ; 2 uses
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  store i64 0, ptr %i.ai, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i8 %4, ptr %i.aj, align 8, !tbaa !17
  br i1 %.not6875, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = icmp ugt i64 %i.ab, %i.ah
  br i1 %i.ak, label %bb.k, label %tryAddPayload.exit72

tryAddPayload.exit72:                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 17
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 25
  store i8 %4, ptr %i.am, align 1, !tbaa !156
  store i64 %.158, ptr %i.al, align 1, !tbaa !158
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 26
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr readonly align 1 %.1, i64 %.158, i1 false)
  store i64 %i.ab, ptr %i.ai, align 8, !tbaa !20
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @_serverAssert(ptr noundef nonnull @.str.259, ptr noundef nonnull @.str.1, i32 noundef 423) #29
  call void @abort() #30
  unreachable

bb.l:                                             ; preds = %bb.i
  store i64 %.158, ptr %i.ai, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr align 1 %.1, i64 %.158, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %tryAddPayload.exit72, %bb.l
  %i.ap = call ptr @listAddNodeTail(ptr noundef nonnull %1, ptr noundef nonnull %i.af) #29 ; 0 uses
  %i.aq = load i64, ptr %i.af, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !161
  %i.at = add i64 %i.as, %i.aq
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !161
  %i.au = call i32 @closeClientOnOutputBufferLimitReached(ptr noundef %0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.n

bb.n:                                             ; preds = %.thread78, %bb.m, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @addReply(ptr noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !99   ; 7 uses
  %i.d = and i64 %i.c, 134217984
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.m, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, 1024
  %.not11.i = icmp eq i64 %i.e, 0
  br i1 %.not11.i, label %bb.c, label %_prepareClientToWrite.exit, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %i.c, 20971520
  %.not12.i = icmp ne i64 %i.f, 0
  %i.g = and i64 %i.c, 70368744177664
  %.not13.i = icmp eq i64 %i.g, 0
  %i.h = and i1 %.not12.i, %.not13.i
  %i.i = and i64 %i.c, 8194
  %i.j = icmp eq i64 %i.i, 2
  %or.cond.i = or i1 %i.j, %i.h
  br i1 %or.cond.i, label %_prepareClientToWrite.exit, label %bb.d, !prof !141

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !86
  %.not16.i = icmp eq ptr %i.l, null
  br i1 %.not16.i, label %_prepareClientToWrite.exit, label %bb.e, !prof !142

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.n = load i8, ptr %i.m, align 1, !tbaa !84
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.m, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.p = and i64 %i.c, 9007199254740997
  %.not.i.i = icmp eq i64 %i.p, 1
  br i1 %.not.i.i, label %bb.g, label %bb.h, !prof !142

bb.g:                                             ; preds = %bb.f
  %i.q = tail call fastcc i32 @_clientHasPendingRepliesSlave(ptr noundef nonnull readonly %0)
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %._crit_edge, label %bb.m

._crit_edge:                                      ; preds = %bb.g
  %.pre = load i64, ptr %i.b, align 8, !tbaa !99
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.t = load i64, ptr %i.s, align 8, !tbaa !87
  %.not.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i, label %clientHasPendingReplies.exit.i, label %bb.m

clientHasPendingReplies.exit.i:                   ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !113
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !143
  %.not21.i = icmp eq i64 %i.x, 0
  br i1 %.not21.i, label %bb.i, label %bb.m

bb.i:                                             ; preds = %._crit_edge, %clientHasPendingReplies.exit.i
  %i.y = phi i64 [ %.pre, %._crit_edge ], [ %i.c, %clientHasPendingReplies.exit.i ] ; 2 uses
  %i.z = and i64 %i.y, 2097152
  %.not.i18.i = icmp eq i64 %i.z, 0
  br i1 %.not.i18.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !111
  switch i32 %i.ab, label %bb.m [
    i32 0, label %bb.l
    i32 12, label %bb.l
    i32 9, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !112
  %.not7.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not7.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.j
  %i.ae = or disjoint i64 %i.y, 2097152
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !99
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1456), align 8, !tbaa !140
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 880
  tail call void @listLinkNodeHead(ptr noundef %i.af, ptr noundef nonnull %i.ag) #29
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.h, %bb.l, %clientHasPendingReplies.exit.i, %bb.e, %bb.i, %bb.j, %bb.k, %bb.g
  %i.ah = load i64, ptr %1, align 8
  %2 = trunc i64 %i.ah to i8
  %trunc = and i8 %2, -16
  switch i8 %trunc, label %bb.u [
    i8 0, label %bb.n
    i8 -128, label %bb.n
    i8 16, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !14 ; 6 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -1
  %.val.i = load i8, ptr %i.ak, align 1, !tbaa !17 ; 2 uses
  %i.al = and i8 %.val.i, 7
  switch i8 %i.al, label %sdslen.exit [
    i8 0, label %bb.o
    i8 1, label %bb.p
    i8 2, label %bb.q
    i8 3, label %bb.r
    i8 4, label %bb.s
  ]

bb.o:                                             ; preds = %bb.n
  %i.am = lshr i8 %.val.i, 3
  %i.an = zext nneg i8 %i.am to i64
  br label %sdslen.exit

bb.p:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds i8, ptr %i.aj, i64 -3
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !17
  %i.aq = zext i8 %i.ap to i64
  br label %sdslen.exit

bb.q:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds i8, ptr %i.aj, i64 -5
  %i.as = load i16, ptr %i.ar, align 1, !tbaa !18
  %i.at = zext i16 %i.as to i64
  br label %sdslen.exit

bb.r:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds i8, ptr %i.aj, i64 -9
  %i.av = load i32, ptr %i.au, align 1, !tbaa !9
  %i.aw = zext i32 %i.av to i64
  br label %sdslen.exit

bb.s:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds i8, ptr %i.aj, i64 -17
  %i.ay = load i64, ptr %i.ax, align 1, !tbaa !20
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %.0.i9 = phi i64 [ %i.ay, %bb.s ], [ %i.an, %bb.o ], [ %i.aq, %bb.p ], [ %i.at, %bb.q ], [ %i.aw, %bb.r ], [ 0, %bb.n ]
  tail call void @_addReplyToBufferOrList(ptr noundef nonnull %0, ptr noundef nonnull %i.aj, i64 noundef %.0.i9)
  br label %_prepareClientToWrite.exit

bb.t:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !14
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = call i32 @ll2string(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %i.bb) #29
  %i.bd = sext i32 %i.bc to i64
  call void @_addReplyToBufferOrList(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %_prepareClientToWrite.exit

bb.u:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 585, ptr noundef nonnull @.str.4) #29
  tail call void @abort() #30
  unreachable

_prepareClientToWrite.exit:                       ; preds = %bb.d, %bb.c, %bb.b, %bb.t, %sdslen.exit
  ret void
}

declare i32 @ll2string(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @_serverPanic(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @addReplySds(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !99   ; 7 uses
  %i.c = and i64 %i.b, 134217984
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.m, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 1024
  %.not11.i = icmp eq i64 %i.d, 0
  br i1 %.not11.i, label %bb.c, label %_prepareClientToWrite.exit, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %i.b, 20971520
  %.not12.i = icmp ne i64 %i.e, 0
  %i.f = and i64 %i.b, 70368744177664
  %.not13.i = icmp eq i64 %i.f, 0
  %i.g = and i1 %.not12.i, %.not13.i
  %i.h = and i64 %i.b, 8194
  %i.i = icmp eq i64 %i.h, 2
  %or.cond.i = or i1 %i.i, %i.g
  br i1 %or.cond.i, label %_prepareClientToWrite.exit, label %bb.d, !prof !141

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !86
  %.not16.i = icmp eq ptr %i.k, null
  br i1 %.not16.i, label %_prepareClientToWrite.exit, label %bb.e, !prof !142

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.m = load i8, ptr %i.l, align 1, !tbaa !84
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.m, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.o = and i64 %i.b, 9007199254740997
  %.not.i.i = icmp eq i64 %i.o, 1
  br i1 %.not.i.i, label %bb.g, label %bb.h, !prof !142

bb.g:                                             ; preds = %bb.f
  %i.p = tail call fastcc i32 @_clientHasPendingRepliesSlave(ptr noundef nonnull readonly %0)
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %._crit_edge, label %bb.m

._crit_edge:                                      ; preds = %bb.g
  %.pre = load i64, ptr %i.a, align 8, !tbaa !99
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.s = load i64, ptr %i.r, align 8, !tbaa !87
  %.not.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i, label %clientHasPendingReplies.exit.i, label %bb.m

clientHasPendingReplies.exit.i:                   ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !113
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !143
  %.not21.i = icmp eq i64 %i.w, 0
  br i1 %.not21.i, label %bb.i, label %bb.m

bb.i:                                             ; preds = %._crit_edge, %clientHasPendingReplies.exit.i
  %i.x = phi i64 [ %.pre, %._crit_edge ], [ %i.b, %clientHasPendingReplies.exit.i ] ; 2 uses
  %i.y = and i64 %i.x, 2097152
  %.not.i18.i = icmp eq i64 %i.y, 0
  br i1 %.not.i18.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !111
  switch i32 %i.aa, label %bb.m [
    i32 0, label %bb.l
    i32 12, label %bb.l
    i32 9, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !112
  %.not7.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not7.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.j
  %i.ad = or disjoint i64 %i.x, 2097152
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !99
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1456), align 8, !tbaa !140
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 880
  tail call void @listLinkNodeHead(ptr noundef %i.ae, ptr noundef nonnull %i.af) #29
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.h, %bb.l, %clientHasPendingReplies.exit.i, %bb.e, %bb.i, %bb.j, %bb.k, %bb.g
  %i.ag = getelementptr i8, ptr %1, i64 -1
  %.val.i = load i8, ptr %i.ag, align 1, !tbaa !17 ; 2 uses
  %i.ah = and i8 %.val.i, 7
  switch i8 %i.ah, label %sdslen.exit [
    i8 0, label %bb.n
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.q
    i8 4, label %bb.r
  ]

bb.n:                                             ; preds = %bb.m
  %i.ai = lshr i8 %.val.i, 3
  %i.aj = zext nneg i8 %i.ai to i64
  br label %sdslen.exit

bb.o:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds i8, ptr %1, i64 -3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !17
  %i.am = zext i8 %i.al to i64
  br label %sdslen.exit

bb.p:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds i8, ptr %1, i64 -5
  %i.ao = load i16, ptr %i.an, align 1, !tbaa !18
  %i.ap = zext i16 %i.ao to i64
  br label %sdslen.exit

bb.q:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds i8, ptr %1, i64 -9
  %i.ar = load i32, ptr %i.aq, align 1, !tbaa !9
  %i.as = zext i32 %i.ar to i64
end_hunk_1
begin_hunk_2_@afterErrorReply:bb.a
  %or.cond.i = icmp eq i64 %i.ac, 1
  %or.cond = or i1 %.not.i, %or.cond.i
  %.pre = load i64, ptr %0, align 8, !tbaa !71
  %.pre.fr = freeze i64 %.pre
  %.not66 = icmp eq i64 %.pre.fr, -1              ; 3 uses
  br i1 %or.cond, label %getClientType.exit.thread, label %getClientType.exit

getClientType.exit:                               ; preds = %bb.l
  br i1 %.not66, label %.thread98, label %bb.x

getClientType.exit.thread:                        ; preds = %bb.l
  %i.ad = and i64 %.fr102, 18014398509481984
  %.not57 = icmp eq i64 %i.ad, 0                  ; 2 uses
  %.str.13..str.11 = select i1 %.not57, ptr @.str.13, ptr @.str.11
  %.str.12..str.10 = select i1 %.not57, ptr @.str.12, ptr @.str.10
  %.str.13..str.11..str.12 = select i1 %.not.i, ptr %.str.13..str.11, ptr @.str.12
  %.str.9..str.13..str.11..str.12 = select i1 %.not66, ptr @.str.9, ptr %.str.13..str.11..str.12
  %.str.12..str.10..str.13 = select i1 %.not.i, ptr %.str.12..str.10, ptr @.str.13
  %spec.select = select i1 %.not66, ptr @.str.8, ptr %.str.12..str.10..str.13
  br label %.thread98

.thread98:                                        ; preds = %getClientType.exit.thread, %getClientType.exit
  %i.ae = phi i1 [ %.not.i, %getClientType.exit.thread ], [ false, %getClientType.exit ] ; 2 uses
  %i.af = phi ptr [ %.str.9..str.13..str.11..str.12, %getClientType.exit.thread ], [ @.str.9, %getClientType.exit ] ; 2 uses
  %i.ag = phi ptr [ %spec.select, %getClientType.exit.thread ], [ @.str.8, %getClientType.exit ] ; 2 uses
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %2, i64 4096)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !150 ; 2 uses
  %.not58 = icmp eq ptr %i.ai, null
  br i1 %.not58, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread98
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 216
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !151
  br label %bb.n

bb.n:                                             ; preds = %.thread98, %bb.m
  %i.al = phi ptr [ %i.ak, %bb.m ], [ null, %.thread98 ] ; 4 uses
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !159
  %i.an = icmp sgt i32 %i.am, 3
  br i1 %i.an, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = trunc nuw nsw i64 %spec.store.select to i32
  %.not59 = icmp eq ptr %i.al, null
  %i.ap = select i1 %.not59, ptr @.str.3, ptr %i.al
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag, i32 noundef %i.ao, ptr noundef %1, ptr noundef nonnull %i.ap) #29
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7272), align 8 ; 2 uses
  %i.ar = icmp ne ptr %i.aq, null
  %or.cond3 = select i1 %i.ae, i1 %i.ar, i1 false
  br i1 %or.cond3, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.as = load i64, ptr %i.a, align 8, !tbaa !99
  %i.at = and i64 %i.as, 18014398509481984
  %.not60 = icmp eq i64 %i.at, 0
  br i1 %.not60, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !166
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @showLatestBacklog() #29
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %i.ax = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3088), align 8, !tbaa !168
  %i.ay = add nsw i64 %i.ax, 1
  store i64 %i.ay, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3088), align 8, !tbaa !168
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7572), align 4
  %i.ba = icmp ne i32 %i.az, 0
  %or.cond5 = select i1 %i.ae, i1 %i.ba, i1 false
  %.pre67 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7624), align 8 ; 2 uses
  br i1 %or.cond5, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bb = add i32 %.pre67, -1
  %i.bc = icmp ult i32 %i.bb, 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bd = phi i1 [ %i.bc, %bb.u ], [ false, %bb.t ]
  %i.be = load i64, ptr %0, align 8, !tbaa !71
  %i.bf = icmp eq i64 %i.be, -1
  %i.bg = icmp eq i32 %.pre67, 1
  %i.bh = select i1 %i.bf, i1 %i.bg, i1 false
  %or.cond7 = select i1 %i.bd, i1 true, i1 %i.bh
  br i1 %or.cond7, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.not61 = icmp eq ptr %i.al, null
  %i.bi = select i1 %.not61, ptr @.str.3, ptr %i.al
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 727, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.bi) #29
  tail call void @abort() #30
  unreachable

bb.x:                                             ; preds = %getClientType.exit, %bb.v, %bb.d
  ret void
}

declare void @sdsfreegeneric(ptr noundef) #2

declare ptr @sdsnewlen(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @incrementErrorCount(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 4) i32 @getClientType(ptr noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !99   ; 3 uses
  %i.c = and i64 %i.b, 2
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 5
  %or.cond = icmp eq i64 %i.d, 1
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = trunc i64 %i.b to i32
  %i.f = lshr i32 %i.e, 17
  %. = and i32 %i.f, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 3, %bb.a ], [ %., %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

declare void @_serverLog(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @showLatestBacklog() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @addReplyErrorObject(ptr noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @addReply(ptr noundef %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 6 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -1
  %.val.i = load i8, ptr %i.c, align 1, !tbaa !17 ; 2 uses
  %i.d = and i8 %.val.i, 7
  switch i8 %i.d, label %sdslen.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i8 %.val.i, 3
  %i.f = zext nneg i8 %i.e to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 -3
  %i.h = load i8, ptr %i.g, align 1, !tbaa !17
  %i.i = zext i8 %i.h to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 -5
  %i.k = load i16, ptr %i.j, align 1, !tbaa !18
  %i.l = zext i16 %i.k to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %i.b, i64 -9
  %i.n = load i32, ptr %i.m, align 1, !tbaa !9
  %i.o = zext i32 %i.n to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds i8, ptr %i.b, i64 -17
  %i.q = load i64, ptr %i.p, align 1, !tbaa !20
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.q, %bb.f ], [ %i.f, %bb.b ], [ %i.i, %bb.c ], [ %i.l, %bb.d ], [ %i.o, %bb.e ], [ 0, %bb.a ]
  %i.r = add i64 %.0.i, -2
  tail call void @afterErrorReply(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef %i.r, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @addReplyOrErrorObject(ptr noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %2 = trunc i64 %i.a to i8
  %trunc = and i8 %2, -16
  switch i8 %trunc, label %bb.b [
    i8 -128, label %bb.c
    i8 0, label %bb.c
  ], !prof !169

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 745) #29
  tail call void @abort() #30
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 6 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -1
  %.val.i = load i8, ptr %i.d, align 1, !tbaa !17 ; 2 uses
  %i.e = and i8 %.val.i, 7
  switch i8 %i.e, label %sdslen.exit.thread [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = lshr i8 %.val.i, 3
  %i.g = zext nneg i8 %i.f to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 -3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !17
  %i.j = zext i8 %i.i to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds i8, ptr %i.c, i64 -5
  %i.l = load i16, ptr %i.k, align 1, !tbaa !18
  %i.m = zext i16 %i.l to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds i8, ptr %i.c, i64 -9
  %i.o = load i32, ptr %i.n, align 1, !tbaa !9
  %i.p = zext i32 %i.o to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds i8, ptr %i.c, i64 -17
  %i.r = load i64, ptr %i.q, align 1, !tbaa !20
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi i64 [ %i.r, %bb.h ], [ %i.g, %bb.d ], [ %i.j, %bb.e ], [ %i.m, %bb.f ], [ %i.p, %bb.g ]
  %i.s = icmp ugt i64 %.0.i, 1
  br i1 %i.s, label %bb.i, label %sdslen.exit.thread

bb.i:                                             ; preds = %sdslen.exit
  %i.t = load i8, ptr %i.c, align 1, !tbaa !17
  %i.u = icmp eq i8 %i.t, 45
  br i1 %i.u, label %bb.j, label %sdslen.exit.thread

bb.j:                                             ; preds = %bb.i
  tail call void @addReply(ptr noundef %0, ptr noundef nonnull readonly %1)
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !14   ; 6 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -1
  %.val.i.i = load i8, ptr %i.w, align 1, !tbaa !17 ; 2 uses
  %i.x = and i8 %.val.i.i, 7
  switch i8 %i.x, label %addReplyErrorObject.exit [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %i.y = lshr i8 %.val.i.i, 3
  %i.z = zext nneg i8 %i.y to i64
  br label %addReplyErrorObject.exit

bb.l:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 -3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !17
  %i.ac = zext i8 %i.ab to i64
  br label %addReplyErrorObject.exit

bb.m:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds i8, ptr %i.v, i64 -5
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !18
  %i.af = zext i16 %i.ae to i64
  br label %addReplyErrorObject.exit

bb.n:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds i8, ptr %i.v, i64 -9
  %i.ah = load i32, ptr %i.ag, align 1, !tbaa !9
  %i.ai = zext i32 %i.ah to i64
  br label %addReplyErrorObject.exit

bb.o:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds i8, ptr %i.v, i64 -17
  %i.ak = load i64, ptr %i.aj, align 1, !tbaa !20
  br label %addReplyErrorObject.exit

addReplyErrorObject.exit:                         ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.0.i.i = phi i64 [ %i.ak, %bb.o ], [ %i.z, %bb.k ], [ %i.ac, %bb.l ], [ %i.af, %bb.m ], [ %i.ai, %bb.n ], [ 0, %bb.j ]
  %i.al = add i64 %.0.i.i, -2
  tail call void @afterErrorReply(ptr noundef %0, ptr noundef nonnull %i.v, i64 noundef %i.al, i32 noundef 0)
  br label %bb.p

sdslen.exit.thread:                               ; preds = %bb.c, %bb.i, %sdslen.exit
  tail call void @addReply(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.p

bb.p:                                             ; preds = %sdslen.exit.thread, %addReplyErrorObject.exit
  ret void
}

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @addReplyError(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #33 ; 2 uses
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %.split7.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !17
  %.not8.i = icmp eq i8 %i.b, 45
  br i1 %.not8.i, label %addReplyErrorLength.exit, label %.split7.i

.split7.i:                                        ; preds = %bb.b, %bb.a
  tail call void @addReplyProto(ptr noundef %0, ptr noundef nonnull @.str.5, i64 noundef 5)
  br label %addReplyErrorLength.exit

addReplyErrorLength.exit:                         ; preds = %bb.b, %.split7.i
  tail call void @addReplyProto(ptr noundef %0, ptr noundef nonnull readonly %1, i64 noundef %i.a)
  tail call void @addReplyProto(ptr noundef %0, ptr noundef nonnull @.str.6, i64 noundef 2)
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #33
  tail call void @afterErrorReply(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.c, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local void @addReplyErrorSdsEx(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 -1         ; 2 uses
  %.val.i = load i8, ptr %i.a, align 1, !tbaa !17 ; 2 uses
  %i.b = and i8 %.val.i, 7
  switch i8 %i.b, label %.split7.i [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i8 %.val.i, 3
  %i.d = zext nneg i8 %i.c to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %1, i64 -3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !17
  %i.g = zext i8 %i.f to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %1, i64 -5
  %i.i = load i16, ptr %i.h, align 1, !tbaa !18
  %i.j = zext i16 %i.i to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %1, i64 -9
  %i.l = load i32, ptr %i.k, align 1, !tbaa !9
  %i.m = zext i32 %i.l to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %1, i64 -17
  %i.o = load i64, ptr %i.n, align 1, !tbaa !20
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.o, %bb.f ], [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ] ; 3 uses
  %.not.i = icmp eq i64 %.0.i, 0
  br i1 %.not.i, label %.split7.i, label %bb.g

bb.g:                                             ; preds = %sdslen.exit
  %i.p = load i8, ptr %1, align 1, !tbaa !17
  %.not8.i = icmp eq i8 %i.p, 45
  br i1 %.not8.i, label %addReplyErrorLength.exit, label %.split7.i

.split7.i:                                        ; preds = %bb.a, %bb.g, %sdslen.exit
  %.0.i13 = phi i64 [ 0, %sdslen.exit ], [ %.0.i, %bb.g ], [ 0, %bb.a ]
  tail call void @addReplyProto(ptr noundef %0, ptr noundef nonnull @.str.5, i64 noundef 5)
  br label %addReplyErrorLength.exit
end_hunk_2
begin_hunk_3_@addReplyBulkCBuffer:bb.a
bb.i:                                             ; preds = %._crit_edge, %clientHasPendingReplies.exit.i
  %i.y = phi i64 [ %.pre, %._crit_edge ], [ %i.c, %clientHasPendingReplies.exit.i ] ; 2 uses
  %i.z = and i64 %i.y, 2097152
  %.not.i18.i = icmp eq i64 %i.z, 0
  br i1 %.not.i18.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !111
  switch i32 %i.ab, label %bb.m [
    i32 0, label %bb.l
    i32 12, label %bb.l
    i32 9, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !112
  %.not7.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not7.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.j
  %i.ae = or disjoint i64 %i.y, 2097152
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !99
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1456), align 8, !tbaa !140
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 880
  tail call void @listLinkNodeHead(ptr noundef %i.af, ptr noundef nonnull %i.ag) #29
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.h, %bb.l, %clientHasPendingReplies.exit.i, %bb.e, %bb.i, %bb.j, %bb.k, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.ah = icmp ult i64 %2, 32
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81152), i64 %2
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !173
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !14
  %i.am = icmp samesign ult i64 %2, 10
  %i.an = select i1 %i.am, i64 4, i64 5
  tail call void @_addReplyToBufferOrList(ptr noundef nonnull %0, ptr noundef %i.al, i64 noundef %i.an)
  br label %_addReplyLongLongBulk.exit

bb.o:                                             ; preds = %bb.m
  store i8 36, ptr %i.a, align 16, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ap = call i32 @ll2string(ptr noundef nonnull %i.ao, i64 noundef 127, i64 noundef %2) #29 ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr i8, ptr %i.a, i64 %i.aq   ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 1
  store i8 13, ptr %i.as, align 1, !tbaa !17
  %i.at = getelementptr i8, ptr %i.ar, i64 2
  store i8 10, ptr %i.at, align 1, !tbaa !17
  %i.au = add nsw i32 %i.ap, 3
  %i.av = sext i32 %i.au to i64
  call void @_addReplyToBufferOrList(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.av)
  br label %_addReplyLongLongBulk.exit

_addReplyLongLongBulk.exit:                       ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @_addReplyToBufferOrList(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2)
  call void @_addReplyToBufferOrList(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i64 noundef 2)
  br label %_prepareClientToWrite.exit

_prepareClientToWrite.exit:                       ; preds = %bb.d, %bb.c, %bb.b, %_addReplyLongLongBulk.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @addReplyHumanLongDouble(ptr noundef %0, x86_fp80 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [5120 x i8], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !85
  %i.d = icmp eq i32 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @createStringObjectFromLongDouble(x86_fp80 noundef %1, i32 noundef 1) #29 ; 2 uses
  tail call void @addReplyBulk(ptr noundef nonnull %0, ptr noundef %i.e)
  tail call void @decrRefCount(ptr noundef %i.e) #29
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.f = call i32 @ld2string(ptr noundef nonnull %i.a, i64 noundef 5120, x86_fp80 noundef %1, i32 noundef 1) #29
  call void @addReplyProto(ptr noundef nonnull %0, ptr noundef nonnull @.str.28, i64 noundef 1)
  %i.g = sext i32 %i.f to i64
  call void @addReplyProto(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.g)
  call void @addReplyProto(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare ptr @createStringObjectFromLongDouble(x86_fp80 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @addReplyBulk(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  %i.b = alloca [128 x i8], align 16              ; 6 uses
  %2 = alloca %struct.bulkStrRef, align 8         ; 11 uses
  %i.c = alloca [34 x i8], align 16               ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !99   ; 7 uses
  %i.f = and i64 %i.e, 134217984
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.b, label %bb.m, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %i.e, 1024
  %.not11.i = icmp eq i64 %i.g, 0
  br i1 %.not11.i, label %bb.c, label %_prepareClientToWrite.exit, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.h = and i64 %i.e, 20971520
  %.not12.i = icmp ne i64 %i.h, 0
  %i.i = and i64 %i.e, 70368744177664
  %.not13.i = icmp eq i64 %i.i, 0
  %i.j = and i1 %.not12.i, %.not13.i
  %i.k = and i64 %i.e, 8194
  %i.l = icmp eq i64 %i.k, 2
  %or.cond.i = or i1 %i.l, %i.j
  br i1 %or.cond.i, label %_prepareClientToWrite.exit, label %bb.d, !prof !141

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !86
  %.not16.i = icmp eq ptr %i.n, null
  br i1 %.not16.i, label %_prepareClientToWrite.exit, label %bb.e, !prof !142

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.p = load i8, ptr %i.o, align 1, !tbaa !84
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.m, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.r = and i64 %i.e, 9007199254740997
  %.not.i.i = icmp eq i64 %i.r, 1
  br i1 %.not.i.i, label %bb.g, label %bb.h, !prof !142

bb.g:                                             ; preds = %bb.f
  %i.s = tail call fastcc i32 @_clientHasPendingRepliesSlave(ptr noundef nonnull readonly %0)
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %._crit_edge, label %bb.m

._crit_edge:                                      ; preds = %bb.g
  %.pre = load i64, ptr %i.d, align 8, !tbaa !99
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.v = load i64, ptr %i.u, align 8, !tbaa !87
  %.not.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i, label %clientHasPendingReplies.exit.i, label %bb.m

clientHasPendingReplies.exit.i:                   ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !113
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !143
  %.not21.i = icmp eq i64 %i.z, 0
  br i1 %.not21.i, label %bb.i, label %bb.m

bb.i:                                             ; preds = %._crit_edge, %clientHasPendingReplies.exit.i
  %i.aa = phi i64 [ %.pre, %._crit_edge ], [ %i.e, %clientHasPendingReplies.exit.i ] ; 2 uses
  %i.ab = and i64 %i.aa, 2097152
  %.not.i18.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i18.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !111
  switch i32 %i.ad, label %bb.m [
    i32 0, label %bb.l
    i32 12, label %bb.l
    i32 9, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !112
  %.not7.i.i = icmp eq i32 %i.af, 0
  br i1 %.not7.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.j
  %i.ag = or disjoint i64 %i.aa, 2097152
  store i64 %i.ag, ptr %i.d, align 8, !tbaa !99
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1456), align 8, !tbaa !140
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 880
  tail call void @listLinkNodeHead(ptr noundef %i.ah, ptr noundef nonnull %i.ai) #29
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.h, %bb.l, %clientHasPendingReplies.exit.i, %bb.e, %bb.i, %bb.j, %bb.k, %bb.g
  %i.aj = load i64, ptr %1, align 8               ; 3 uses
  %3 = trunc i64 %i.aj to i8
  %trunc = and i8 %3, -16
  switch i8 %trunc, label %bb.aq [
    i8 0, label %bb.n
    i8 -128, label %bb.n
    i8 16, label %bb.an
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !14 ; 5 uses
  %i.am = getelementptr i8, ptr %i.al, i64 -1
  %.val.i = load i8, ptr %i.am, align 1, !tbaa !17 ; 2 uses
  %i.an = and i8 %.val.i, 7
  switch i8 %i.an, label %sdslen.exit [
    i8 0, label %bb.o
    i8 1, label %bb.p
    i8 2, label %bb.q
    i8 3, label %bb.r
    i8 4, label %bb.s
  ]

bb.o:                                             ; preds = %bb.n
  %i.ao = lshr i8 %.val.i, 3
  %i.ap = zext nneg i8 %i.ao to i64
  br label %sdslen.exit

bb.p:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds i8, ptr %i.al, i64 -3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !17
  %i.as = zext i8 %i.ar to i64
  br label %sdslen.exit

bb.q:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds i8, ptr %i.al, i64 -5
  %i.au = load i16, ptr %i.at, align 1, !tbaa !18
  %i.av = zext i16 %i.au to i64
  br label %sdslen.exit

bb.r:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds i8, ptr %i.al, i64 -9
  %i.ax = load i32, ptr %i.aw, align 1, !tbaa !9
  %i.ay = zext i32 %i.ax to i64
  br label %sdslen.exit

bb.s:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds i8, ptr %i.al, i64 -17
  %i.ba = load i64, ptr %i.az, align 1, !tbaa !20
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %.0.i20 = phi i64 [ %i.ba, %bb.s ], [ %i.ap, %bb.o ], [ %i.as, %bb.p ], [ %i.av, %bb.q ], [ %i.ay, %bb.r ], [ 0, %bb.n ] ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !86
  %i.bd = icmp ne ptr %i.bc, null
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8716), align 4
  %i.bf = icmp ne i32 %i.be, 0
  %or.cond.i.i = select i1 %i.bd, i1 %i.bf, i1 false
  br i1 %or.cond.i.i, label %bb.t, label %bb.ak

bb.t:                                             ; preds = %sdslen.exit
  %i.bg = load i64, ptr %i.d, align 8, !tbaa !99  ; 3 uses
  %i.bh = and i64 %i.bg, 5
  %or.cond.i.i.i = icmp ne i64 %i.bh, 1
  %i.bi = and i64 %i.bg, 70368744439810
  %i.bj = icmp eq i64 %i.bi, 0
  %or.cond18.i.i = and i1 %i.bj, %or.cond.i.i.i
  br i1 %or.cond18.i.i, label %bb.u, label %bb.ak

bb.u:                                             ; preds = %bb.t
  %i.bk = and i64 %i.aj, 240
  %.not11.i.i = icmp ne i64 %i.bk, 0
  %i.bl = and i64 %i.aj, 2147483136
  %i.bm = icmp eq i64 %i.bl, 2147483136
  %or.cond13.i.i = or i1 %.not11.i.i, %i.bm
  br i1 %or.cond13.i.i, label %bb.ak, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bn = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1900), align 4, !tbaa !122 ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, 6
  br i1 %i.bo, label %isCopyAvoidPreferred.exit.thread12.i, label %isCopyAvoidPreferred.exit.i

isCopyAvoidPreferred.exit.i:                      ; preds = %bb.v
  %i.bp = icmp eq i32 %i.bn, 1
  %.0.shrunk.i.v.i = select i1 %i.bp, i64 16383, i64 65535
  %.0.shrunk.i.not.i = icmp ugt i64 %.0.i20, %.0.shrunk.i.v.i
  br i1 %.0.shrunk.i.not.i, label %isCopyAvoidPreferred.exit.thread12.i, label %bb.ak

isCopyAvoidPreferred.exit.thread12.i:             ; preds = %isCopyAvoidPreferred.exit.i, %bb.v
  %i.bq = and i64 %i.bg, 64
  %.not.i.i22 = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i22, label %bb.w, label %_prepareClientToWrite.exit

bb.w:                                             ; preds = %isCopyAvoidPreferred.exit.thread12.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr %1, ptr %2, align 8, !tbaa !176
  tail call void @incrRefCount(ptr noundef nonnull %1) #29
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i8 36, ptr %i.br, align 4, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.bt = call i32 @ll2string(ptr noundef nonnull %i.bs, i64 noundef 21, i64 noundef %.0.i20) #29 ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr i8, ptr %i.br, i64 %i.bu  ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 1
  store i8 13, ptr %i.bw, align 1, !tbaa !17
  %i.bx = getelementptr i8, ptr %i.bv, i64 2
  store i8 10, ptr %i.bx, align 1, !tbaa !17
  %i.by = add i32 %i.bt, 3                        ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.by, ptr %i.bz, align 8, !tbaa !178
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i8 13, ptr %i.ca, align 4, !tbaa !17
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 37
  store i8 10, ptr %i.cb, align 1, !tbaa !17
  %i.cc = zext i32 %i.by to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !152
  %i.cf = add i64 %.0.i20, 2
  %i.cg = add i64 %i.cf, %i.cc
  %i.ch = add i64 %i.cg, %i.ce
  store i64 %i.ch, ptr %i.cd, align 8, !tbaa !152
  call void @reqresSaveClientReplyOffset(ptr noundef nonnull %0) #29
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 3 uses
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !92
  %.not.i.i.i23 = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.i23, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 3 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !87
  %.not12.i.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not12.i.i.i, label %bb.y, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.x
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !113
  br label %bb.ah

bb.y:                                             ; preds = %bb.x
  store i8 1, ptr %i.ci, align 8, !tbaa !92
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !113 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !143
  %.not.i.i.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.i.i, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !88
  %i.cs = icmp ult i64 %i.cr, 47
  br i1 %i.cs, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !82 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i8 1, ptr %i.cv, align 1, !tbaa !156
  store i64 38, ptr %i.cu, align 1, !tbaa !158
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.cw, ptr noundef nonnull readonly align 8 dereferenceable(38) %2, i64 38, i1 false)
  %i.cx = load i64, ptr %i.ck, align 8, !tbaa !20
  %i.cy = add i64 %i.cx, 47                       ; 3 uses
  store i64 %i.cy, ptr %i.ck, align 8, !tbaa !20
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !89
  %i.db = icmp ult i64 %i.da, %i.cy
  br i1 %i.db, label %bb.ab, label %_addBulkStrRefToBuffer.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !89
  br label %_addBulkStrRefToBuffer.exit.i.i

bb.ac:                                            ; preds = %bb.z, %bb.y
  store i8 0, ptr %i.ci, align 8, !tbaa !92
  br label %bb.ah

bb.ad:                                            ; preds = %bb.w
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !113 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.df = load i64, ptr %i.de, align 8, !tbaa !143
  %.not.i14.i.i.i = icmp eq i64 %i.df, 0
  br i1 %.not.i14.i.i.i, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !88
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 3 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !20 ; 2 uses
  %i.dk = add i64 %i.dj, 47
  %i.dl = icmp ugt i64 %i.dk, %i.dh
  br i1 %i.dl, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !82
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dj ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i8 1, ptr %i.dp, align 1, !tbaa !156
  store i64 38, ptr %i.do, align 1, !tbaa !158
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.dq, ptr noundef nonnull readonly align 8 dereferenceable(38) %2, i64 38, i1 false)
  %i.dr = load i64, ptr %i.di, align 8, !tbaa !20
  %i.ds = add i64 %i.dr, 47                       ; 3 uses
  store i64 %i.ds, ptr %i.di, align 8, !tbaa !20
end_hunk_3
