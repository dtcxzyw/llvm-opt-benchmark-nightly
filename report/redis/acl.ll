inline.NumInlined: 130
inline.NumDeleted: 5
begin_hunk_0
@.str.21 = private unnamed_addr constant [96 x i8] c"ACLAddCommandCategory(ACLDefaultCommandCategories[j].name, ACLDefaultCommandCategories[j].flag)\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"acl.c\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"nopass\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"skip-sanitize-payload\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"sanitize-payload\00", align 1
@ACLUserFlags = dso_local local_unnamed_addr global [6 x %struct.ACLUserFlag] [%struct.ACLUserFlag { ptr @.str.23, i64 1 }, %struct.ACLUserFlag { ptr @.str.24, i64 2 }, %struct.ACLUserFlag { ptr @.str.25, i64 4 }, %struct.ACLUserFlag { ptr @.str.26, i64 16 }, %struct.ACLUserFlag { ptr @.str.27, i64 8 }, %struct.ACLUserFlag zeroinitializer], align 16
@.str.28 = private unnamed_addr constant [8 x i8] c"allkeys\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"allchannels\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"allcommands\00", align 1
@ACLSelectorFlags = dso_local local_unnamed_addr global [4 x %struct.ACLSelectorFlags] [%struct.ACLSelectorFlags { ptr @.str.28, i64 2 }, %struct.ACLSelectorFlags { ptr @.str.29, i64 8 }, %struct.ACLSelectorFlags { ptr @.str.30, i64 4 }, %struct.ACLSelectorFlags zeroinitializer], align 16
@.str.31 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"%R~\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"%W~\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"Invalid key pattern flag detected\00", align 1
@server = external local_unnamed_addr global %struct.redisServer, align 8
@.str.36 = private unnamed_addr constant [25 x i8] c"listLength(u->selectors)\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"s->flags & SELECTOR_FLAG_ROOT\00", align 1
@Users = dso_local local_unnamed_addr global ptr null, align 8
@.str.38 = private unnamed_addr constant [16 x i8] c"__fakeuser:%d__\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"retval != 0\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"+%S\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"-%S\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"argv != NULL\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"+@all\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"res == C_OK\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"-@all\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"+@all \00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"-@all \00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"%S \00", align 1
@.str.51 = private unnamed_addr constant [57 x i8] c"CRITICAL ERROR: User ACLs don't match final bitmap: '%s'\00", align 1
@.str.52 = private unnamed_addr constant [53 x i8] c"No bitmap match in ACLDescribeSelectorCommandRules()\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"~* \00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"&* \00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"resetchannels \00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.60 = private unnamed_addr constant [46 x i8] c"opset[0] == '(' && opset[opsetlen - 1] == ')'\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"~*\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"resetkeys\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"&*\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"resetchannels\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"nocommands\00", align 1
@.str.66 = private unnamed_addr constant [144 x i8] c"Deprecation warning: Allowing a first arg of an otherwise blocked command is a misuse of ACL and may get disabled in the future (offender: +%s)\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"resetpass\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"clearselectors\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"listNext(&li)\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.71 = private unnamed_addr constant [37 x i8] c"ACLSetUser(u,\22resetpass\22,-1) == C_OK\00", align 1
@.str.72 = private unnamed_addr constant [37 x i8] c"ACLSetUser(u,\22resetkeys\22,-1) == C_OK\00", align 1
@.str.73 = private unnamed_addr constant [41 x i8] c"ACLSetUser(u,\22resetchannels\22,-1) == C_OK\00", align 1
@.str.74 = private unnamed_addr constant [39 x i8] c"ACLSetUser(u,\22allchannels\22,-1) == C_OK\00", align 1
@.str.75 = private unnamed_addr constant [31 x i8] c"ACLSetUser(u,\22off\22,-1) == C_OK\00", align 1
@.str.76 = private unnamed_addr constant [44 x i8] c"ACLSetUser(u,\22sanitize-payload\22,-1) == C_OK\00", align 1
@.str.77 = private unnamed_addr constant [42 x i8] c"ACLSetUser(u,\22clearselectors\22,-1) == C_OK\00", align 1
@.str.78 = private unnamed_addr constant [33 x i8] c"ACLSetUser(u,\22-@all\22,-1) == C_OK\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"Wrong format\00", align 1
@.str.80 = private unnamed_addr constant [40 x i8] c"Unknown command or category name in ACL\00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c"Syntax error\00", align 1
@.str.82 = private unnamed_addr constant [160 x i8] c"Adding a pattern after the * pattern (or the 'allkeys' flag) is not valid and does not have any effect. Try 'resetkeys' to start with an empty list of patterns\00", align 1
@.str.83 = private unnamed_addr constant [168 x i8] c"Adding a pattern after the * pattern (or the 'allchannels' flag) is not valid and does not have any effect. Try 'resetchannels' to start with an empty list of channels\00", align 1
@.str.84 = private unnamed_addr constant [67 x i8] c"The password you are trying to remove from the user does not exist\00", align 1
@.str.85 = private unnamed_addr constant [98 x i8] c"The password hash must be exactly 64 characters and contain only lowercase hexadecimal characters\00", align 1
@.str.86 = private unnamed_addr constant [70 x i8] c"Duplicate user found. A user can only be defined once in config files\00", align 1
@.str.87 = private unnamed_addr constant [52 x i8] c"Allowing first-arg of a subcommand is not supported\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@UsersToLoad = dso_local local_unnamed_addr global ptr null, align 8
@ACLLog = dso_local local_unnamed_addr global ptr null, align 8
@DefaultUser = dso_local local_unnamed_addr global ptr null, align 8
@.str.89 = private unnamed_addr constant [63 x i8] c"-WRONGPASS invalid username-password pair or user is disabled.\00", align 1
@commandId = internal unnamed_addr global ptr null, align 8
@nextid = internal unnamed_addr global i64 0, align 8
@.str.90 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.91 = private unnamed_addr constant [30 x i8] c"u != NULL || username != NULL\00", align 1
@.str.92 = private unnamed_addr constant [56 x i8] c"Unmatched parenthesis in acl selector starting at '%s'.\00", align 1
@.str.93 = private unnamed_addr constant [39 x i8] c"Error in ACL SETUSER modifier '%s': %s\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"u != NULL\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.96 = private unnamed_addr constant [36 x i8] c"Spaces not allowed in ACL usernames\00", align 1
@.str.97 = private unnamed_addr constant [29 x i8] c"!strcmp(username, \22default\22)\00", align 1
@.str.98 = private unnamed_addr constant [56 x i8] c"Error loading ACL rule '%s' for the user named '%s': %s\00", align 1
@.str.99 = private unnamed_addr constant [124 x i8] c"The user '%s' is disabled (there is no 'on' modifier in the user description). Make sure this is not a configuration error.\00", align 1
@.str.100 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.101 = private unnamed_addr constant [42 x i8] c"Error loading ACLs, opening file '%s': %s\00", align 1
@.str.102 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c" \09\0D\0A\00", align 1
@.str.104 = private unnamed_addr constant [39 x i8] c"%s:%d: unbalanced quotes in acl line. \00", align 1
@.str.105 = private unnamed_addr constant [64 x i8] c"%s:%d should start with user keyword followed by the username. \00", align 1
@.str.106 = private unnamed_addr constant [52 x i8] c"'%s:%d: username '%s' contains invalid characters. \00", align 1
@.str.107 = private unnamed_addr constant [48 x i8] c"WARNING: Duplicate user '%s' found on line %d. \00", align 1
@.str.108 = private unnamed_addr constant [53 x i8] c"%s:%d: Unmatched parenthesis in selector definition.\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"\09\0D\0A\00", align 1
@.str.110 = private unnamed_addr constant [46 x i8] c"%s:%d: Error in applying operation '%s': %s. \00", align 1
@.str.111 = private unnamed_addr constant [12 x i8] c"%s:%d: %s. \00", align 1
@.str.112 = private unnamed_addr constant [89 x i8] c"WARNING: ACL errors detected, no change to the previously active ACL rules was performed\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"user \00", align 1
@.str.114 = private unnamed_addr constant [11 x i8] c".tmp-%i-%I\00", align 1
@.str.115 = private unnamed_addr constant [39 x i8] c"Opening temp ACL file for ACL SAVE: %s\00", align 1
@.str.116 = private unnamed_addr constant [34 x i8] c"Writing ACL file for ACL SAVE: %s\00", align 1
@.str.117 = private unnamed_addr constant [34 x i8] c"Syncing ACL file for ACL SAVE: %s\00", align 1
@.str.118 = private unnamed_addr constant [35 x i8] c"Renaming ACL file for ACL SAVE: %s\00", align 1
@.str.119 = private unnamed_addr constant [39 x i8] c"Syncing ACL directory for ACL SAVE: %s\00", align 1
@.str.120 = private unnamed_addr constant [275 x i8] c"Configuring Redis with users defined in redis.conf and at the same setting an ACL file path is invalid. This setup is very likely to lead to configuration errors and security holes, please define either an ACL file or declare users directly in your redis.conf, but not both.\00", align 1
@.str.121 = private unnamed_addr constant [44 x i8] c"Critical error while loading ACLs. Exiting.\00", align 1
@.str.122 = private unnamed_addr constant [49 x i8] c"Aborting Redis startup because of ACL errors: %s\00", align 1
@.str.123 = private unnamed_addr constant [28 x i8] c"Unknown ACL_DENIED encoding\00", align 1
@.str.124 = private unnamed_addr constant [51 x i8] c"User %S has no permissions to run the '%S' command\00", align 1
@.str.125 = private unnamed_addr constant [50 x i8] c"User %S has no permissions to access the '%S' key\00", align 1
@.str.126 = private unnamed_addr constant [31 x i8] c"No permissions to access a key\00", align 1
@.str.127 = private unnamed_addr constant [54 x i8] c"User %S has no permissions to access the '%S' channel\00", align 1
@.str.128 = private unnamed_addr constant [35 x i8] c"No permissions to access a channel\00", align 1
@.str.129 = private unnamed_addr constant [39 x i8] c"Reached deadcode on getAclErrorMessage\00", align 1
@.str.130 = private unnamed_addr constant [9 x i8] c"commands\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@.str.133 = private unnamed_addr constant [4 x i8] c"&%S\00", align 1
@.str.134 = private unnamed_addr constant [8 x i8] c"setuser\00", align 1
@.str.135 = private unnamed_addr constant [50 x i8] c"Usernames can't contain spaces or null characters\00", align 1
@shared = external local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str.136 = private unnamed_addr constant [8 x i8] c"deluser\00", align 1
@.str.137 = private unnamed_addr constant [37 x i8] c"The 'default' user cannot be removed\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"getuser\00", align 1
@.str.139 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.140 = private unnamed_addr constant [10 x i8] c"passwords\00", align 1
@.str.141 = private unnamed_addr constant [10 x i8] c"selectors\00", align 1
@.str.142 = private unnamed_addr constant [6 x i8] c"users\00", align 1
@.str.143 = private unnamed_addr constant [7 x i8] c"whoami\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.145 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@.str.146 = private unnamed_addr constant [251 x i8] c"This Redis instance is not configured to use an ACL file. You may want to specify users via the ACL SETUSER command and then issue a CONFIG REWRITE (assuming you have a Redis configuration file set) in order to store users in the Redis configuration.\00", align 1
@.str.147 = private unnamed_addr constant [94 x i8] c"There was an error trying to save the ACLs. Please check the server logs for more information\00", align 1
@.str.148 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@.str.149 = private unnamed_addr constant [26 x i8] c"Unknown category '%.128s'\00", align 1
@.str.150 = private unnamed_addr constant [8 x i8] c"genpass\00", align 1
@.str.151 = private unnamed_addr constant [100 x i8] c"ACL GENPASS argument must be the number of bits for the output password, a positive number up to %d\00", align 1
@.str.152 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.153 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.154 = private unnamed_addr constant [7 x i8] c"reason\00", align 1
@.str.155 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.156 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.157 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.158 = private unnamed_addr constant [5 x i8] c"auth\00", align 1
@.str.159 = private unnamed_addr constant [9 x i8] c"tls-cert\00", align 1
@.str.160 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.161 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.162 = private unnamed_addr constant [9 x i8] c"toplevel\00", align 1
@.str.163 = private unnamed_addr constant [6 x i8] c"multi\00", align 1
@.str.164 = private unnamed_addr constant [4 x i8] c"lua\00", align 1
@.str.165 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.166 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.167 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.168 = private unnamed_addr constant [12 x i8] c"age-seconds\00", align 1
@.str.169 = private unnamed_addr constant [12 x i8] c"client-info\00", align 1
@.str.170 = private unnamed_addr constant [9 x i8] c"entry-id\00", align 1
@.str.171 = private unnamed_addr constant [18 x i8] c"timestamp-created\00", align 1
@.str.172 = private unnamed_addr constant [23 x i8] c"timestamp-last-updated\00", align 1
@.str.173 = private unnamed_addr constant [7 x i8] c"dryrun\00", align 1
@.str.174 = private unnamed_addr constant [20 x i8] c"User '%s' not found\00", align 1
@.str.175 = private unnamed_addr constant [23 x i8] c"Command '%s' not found\00", align 1
@.str.176 = private unnamed_addr constant [43 x i8] c"wrong number of arguments for '%s' command\00", align 1
@.str.177 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.178 = private unnamed_addr constant [17 x i8] c"CAT [<category>]\00", align 1
@.str.179 = private unnamed_addr constant [75 x i8] c"    List all commands that belong to <category>, or all command categories\00", align 1
@.str.180 = private unnamed_addr constant [35 x i8] c"    when no category is specified.\00", align 1
@.str.181 = private unnamed_addr constant [36 x i8] c"DELUSER <username> [<username> ...]\00", align 1
@.str.182 = private unnamed_addr constant [28 x i8] c"    Delete a list of users.\00", align 1
@.str.183 = private unnamed_addr constant [40 x i8] c"DRYRUN <username> <command> [<arg> ...]\00", align 1
@.str.184 = private unnamed_addr constant [90 x i8] c"    Returns whether the user can execute the given command without executing the command.\00", align 1
@.str.185 = private unnamed_addr constant [19 x i8] c"GETUSER <username>\00", align 1
@.str.186 = private unnamed_addr constant [28 x i8] c"    Get the user's details.\00", align 1
@.str.187 = private unnamed_addr constant [17 x i8] c"GENPASS [<bits>]\00", align 1
@.str.188 = private unnamed_addr constant [78 x i8] c"    Generate a secure 256-bit user password. The optional `bits` argument can\00", align 1
@.str.189 = private unnamed_addr constant [41 x i8] c"    be used to specify a different size.\00", align 1
@.str.190 = private unnamed_addr constant [5 x i8] c"LIST\00", align 1
@.str.191 = private unnamed_addr constant [46 x i8] c"    Show users details in config file format.\00", align 1
@.str.192 = private unnamed_addr constant [5 x i8] c"LOAD\00", align 1
@.str.193 = private unnamed_addr constant [36 x i8] c"    Reload users from the ACL file.\00", align 1
@.str.194 = private unnamed_addr constant [22 x i8] c"LOG [<count> | RESET]\00", align 1
@.str.195 = private unnamed_addr constant [30 x i8] c"    Show the ACL log entries.\00", align 1
@.str.196 = private unnamed_addr constant [5 x i8] c"SAVE\00", align 1
@.str.197 = private unnamed_addr constant [45 x i8] c"    Save the current config to the ACL file.\00", align 1
@.str.198 = private unnamed_addr constant [49 x i8] c"SETUSER <username> <attribute> [<attribute> ...]\00", align 1
@.str.199 = private unnamed_addr constant [59 x i8] c"    Create or modify a user with the specified attributes.\00", align 1
@.str.200 = private unnamed_addr constant [6 x i8] c"USERS\00", align 1
@.str.201 = private unnamed_addr constant [39 x i8] c"    List all the registered usernames.\00", align 1
@.str.202 = private unnamed_addr constant [7 x i8] c"WHOAMI\00", align 1
@.str.203 = private unnamed_addr constant [44 x i8] c"    Return the current connection username.\00", align 1
@__const.aclCommand.help = private unnamed_addr constant [27 x ptr] [ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr null], align 16
@.str.204 = private unnamed_addr constant [4 x i8] c"@%s\00", align 1
@.str.205 = private unnamed_addr constant [121 x i8] c"AUTH <password> called without any password configured for the default user. Are you sure your configuration is correct?\00", align 1
@.str.206 = private unnamed_addr constant [20 x i8] c"internal connection\00", align 1
@.str.207 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.208 = private unnamed_addr constant [11 x i8] c"*redacted*\00", align 1
@.str.209 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.210 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.211 = private unnamed_addr constant [71 x i8] c"Cannot authenticate as an internal connection on non-cluster instances\00", align 1
@.str.212 = private unnamed_addr constant [37 x i8] c"-WRONGPASS invalid internal password\00", align 1
@switch.table.aclCommand = private unnamed_addr constant [5 x ptr] [ptr @.str.155, ptr @.str.156, ptr @.str.158, ptr @.str.157, ptr @.str.159], align 8
@switch.table.aclCommand.2 = private unnamed_addr constant [4 x ptr] [ptr @.str.162, ptr @.str.164, ptr @.str.163, ptr @.str.165], align 8

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ACLAddCommandCategory(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @nextCommandCategory, align 8, !tbaa !13
  %i.b = icmp ugt i64 %i.a, 63
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @zstrdup(ptr noundef %0) #25
  %i.d = load ptr, ptr @ACLCommandCategories, align 8, !tbaa !15
  %i.e = load i64, ptr @nextCommandCategory, align 8, !tbaa !13 ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.e ; 2 uses
  store ptr %i.c, ptr %i.f, align 8, !tbaa !18
  %.not = icmp eq i64 %1, 0
  %i.g = shl nuw i64 1, %i.e
  %i.h = select i1 %.not, i64 %i.g, i64 %1
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !21
  %i.j = add i64 %i.e, 1
  store i64 %i.j, ptr @nextCommandCategory, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare noalias ptr @zstrdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ACLInitCommandCategories() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(1040) ptr @zcalloc(i64 noundef 1040) #26
  store ptr %i.a, ptr @ACLCommandCategories, align 8, !tbaa !15
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @ACLDefaultCommandCategories, i64 8), align 8, !tbaa !21 ; 2 uses
  %.not8 = icmp eq i64 %i.b, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load i64, ptr @nextCommandCategory, align 8, !tbaa !13
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %i.c = phi i64 [ %.pre, %.lr.ph.preheader ], [ %i.m, %bb.c ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.d = phi i64 [ %i.b, %.lr.ph.preheader ], [ %i.p, %bb.c ]
  %i.e = icmp ugt i64 %i.c, 63
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  tail call void @_serverAssert(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 106) #25
  tail call void @abort() #27
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw [16 x i8], ptr @ACLDefaultCommandCategories, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !18
  %i.h = tail call noalias ptr @zstrdup(ptr noundef %i.g) #25
  %i.i = load ptr, ptr @ACLCommandCategories, align 8, !tbaa !15
  %i.j = load i64, ptr @nextCommandCategory, align 8, !tbaa !13 ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.j ; 2 uses
  store ptr %i.h, ptr %i.k, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !21
  %i.m = add i64 %i.j, 1                          ; 2 uses
  store i64 %i.m, ptr @nextCommandCategory, align 8, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr @ACLDefaultCommandCategories, i64 %indvars.iv.next
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !22
}

; Function Attrs: allocsize(0)
declare noalias ptr @zcalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local void @ACLCleanupCategoriesOnFailure(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @nextCommandCategory, align 8, !tbaa !13 ; 2 uses
  %i.b = sub i64 %i.a, %0                         ; 3 uses
  %i.c = icmp ult i64 %i.b, %i.a
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load ptr, ptr @ACLCommandCategories, align 8, !tbaa !15
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre10 = sub i64 %i.j, %0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre10, %._crit_edge.loopexit ], [ %i.b, %bb.a ]
  store i64 %.pre-phi, ptr @nextCommandCategory, align 8, !tbaa !13
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.d = phi ptr [ %i.g, %.lr.ph ], [ %.pre, %.lr.ph.preheader ]
  %.08 = phi i64 [ %i.i, %.lr.ph ], [ %i.b, %.lr.ph.preheader ] ; 3 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.08
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  tail call void @zfree(ptr noundef %i.f) #25
  %i.g = load ptr, ptr @ACLCommandCategories, align 8, !tbaa !15 ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.08
  %i.i = add nuw i64 %.08, 1                      ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.j = load i64, ptr @nextCommandCategory, align 8, !tbaa !13 ; 2 uses
  %i.k = icmp ult i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !24
}

declare void @zfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @time_independent_strcmp(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi12 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %wide.load = load <4 x i8>, ptr %i.b, align 1, !tbaa !25
  %wide.load13 = load <4 x i8>, ptr %i.c, align 1, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %wide.load14 = load <4 x i8>, ptr %i.d, align 1, !tbaa !25
  %wide.load15 = load <4 x i8>, ptr %i.e, align 1, !tbaa !25
  %i.f = xor <4 x i8> %wide.load14, %wide.load
  %i.g = xor <4 x i8> %wide.load15, %wide.load13
  %i.h = sext <4 x i8> %i.f to <4 x i32>
  %i.i = sext <4 x i8> %i.g to <4 x i32>
  %i.j = or <4 x i32> %vec.phi, %i.h              ; 2 uses
  %i.k = or <4 x i32> %vec.phi12, %i.i            ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.k, %i.j
  %i.m = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader16

.lr.ph.preheader16:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.089.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.08.lcssa = phi i32 [ 0, %bb.a ], [ %i.m, %middle.block ], [ %i.t, %.lr.ph ]
  ret i32 %.08.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader16, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader16 ] ; 3 uses
  %.089 = phi i32 [ %i.t, %.lr.ph ], [ %.089.ph, %.lr.ph.preheader16 ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.o = load i8, ptr %i.n, align 1, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.q = load i8, ptr %i.p, align 1, !tbaa !25
  %i.r = xor i8 %i.q, %i.o
  %i.s = sext i8 %i.r to i32
  %i.t = or i32 %.089, %i.s                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !29
}
end_hunk_0
begin_hunk_1_@ACLSelectorCheckKey:bb.a
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !98   ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !41
  %i.p = and i32 %i.o, %.331
  %.not38.us = icmp eq i32 %i.p, %.331
  br i1 %.not38.us, label %bb.c, label %bb.i, !llvm.loop !193

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39   ; 6 uses
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %.val.i.us = load i8, ptr %i.s, align 1, !tbaa !25 ; 2 uses
  %i.t = and i8 %.val.i.us, 7
  switch i8 %i.t, label %sdslen.exit.us [
    i8 0, label %bb.h
    i8 1, label %bb.g
    i8 2, label %bb.f
    i8 3, label %bb.e
    i8 4, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 -17
  %i.v = load i64, ptr %i.u, align 1, !tbaa !13
  br label %sdslen.exit.us

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 -9
  %i.x = load i32, ptr %i.w, align 1, !tbaa !9
  %i.y = zext i32 %i.x to i64
  br label %sdslen.exit.us

bb.f:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds i8, ptr %i.r, i64 -5
  %i.aa = load i16, ptr %i.z, align 1, !tbaa !35
  %i.ab = zext i16 %i.aa to i64
  br label %sdslen.exit.us

bb.g:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds i8, ptr %i.r, i64 -3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !25
  %i.ae = zext i8 %i.ad to i64
  br label %sdslen.exit.us

bb.h:                                             ; preds = %bb.c
  %i.af = lshr i8 %.val.i.us, 3
  %i.ag = zext nneg i8 %i.af to i64
  br label %sdslen.exit.us

sdslen.exit.us:                                   ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0.i.us = phi i64 [ %i.v, %bb.d ], [ %i.ag, %bb.h ], [ %i.ae, %bb.g ], [ %i.ab, %bb.f ], [ %i.y, %bb.e ], [ 0, %bb.c ]
  %i.ah = trunc i64 %.0.i.us to i32
  %i.ai = call i32 @stringmatchlen(ptr noundef nonnull %i.r, i32 noundef %i.ah, ptr noundef %1, i32 noundef %2, i32 noundef 0) #25
  %.not40.us = icmp eq i32 %i.ai, 0
  br i1 %.not40.us, label %bb.i, label %.thread

bb.i:                                             ; preds = %sdslen.exit.us, %.lr.ph.split.us
  %i.aj = call ptr @listNext(ptr noundef nonnull %4) #25 ; 2 uses
  %.not37.us = icmp eq ptr %i.aj, null
  br i1 %.not37.us, label %.thread, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.p
  %i.ak = phi ptr [ %i.bi, %bb.p ], [ %i.j, %.lr.ph ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !98 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !41
  %i.ao = and i32 %i.an, %.331
  %.not38 = icmp eq i32 %i.ao, %.331
  br i1 %.not38, label %bb.j, label %bb.p, !llvm.loop !193

bb.j:                                             ; preds = %.lr.ph.split
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !39 ; 6 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 -1
  %.val.i = load i8, ptr %i.ar, align 1, !tbaa !25 ; 2 uses
  %i.as = and i8 %.val.i, 7
  switch i8 %i.as, label %sdslen.exit [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %i.at = lshr i8 %.val.i, 3
  %i.au = zext nneg i8 %i.at to i64
  br label %sdslen.exit

bb.l:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds i8, ptr %i.aq, i64 -3
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !25
  %i.ax = zext i8 %i.aw to i64
  br label %sdslen.exit

bb.m:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds i8, ptr %i.aq, i64 -5
  %i.az = load i16, ptr %i.ay, align 1, !tbaa !35
  %i.ba = zext i16 %i.az to i64
  br label %sdslen.exit

bb.n:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds i8, ptr %i.aq, i64 -9
  %i.bc = load i32, ptr %i.bb, align 1, !tbaa !9
  %i.bd = zext i32 %i.bc to i64
  br label %sdslen.exit

bb.o:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds i8, ptr %i.aq, i64 -17
  %i.bf = load i64, ptr %i.be, align 1, !tbaa !13
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.0.i = phi i64 [ %i.bf, %bb.o ], [ %i.au, %bb.k ], [ %i.ax, %bb.l ], [ %i.ba, %bb.m ], [ %i.bd, %bb.n ], [ 0, %bb.j ]
  %i.bg = trunc i64 %.0.i to i32
  %i.bh = call i32 @prefixmatch(ptr noundef nonnull %i.aq, i32 noundef %i.bg, ptr noundef %1, i32 noundef %2, i32 noundef 0) #25
  %.not41 = icmp eq i32 %i.bh, 0
  br i1 %.not41, label %bb.p, label %.thread

bb.p:                                             ; preds = %sdslen.exit, %.lr.ph.split
  %i.bi = call ptr @listNext(ptr noundef nonnull %4) #25 ; 2 uses
  %.not37 = icmp eq ptr %i.bi, null
  br i1 %.not37, label %.thread, label %.lr.ph.split

.thread:                                          ; preds = %bb.p, %sdslen.exit, %bb.i, %sdslen.exit.us, %bb.b
  %.3 = phi i32 [ 2, %bb.b ], [ 0, %sdslen.exit.us ], [ 2, %bb.i ], [ 0, %sdslen.exit ], [ 2, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %.thread
  %.4 = phi i32 [ %.3, %.thread ], [ 0, %bb.a ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ACLUserCheckCmdWithUnrestrictedKeyAccess(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.listIter, align 8           ; 6 uses
  %6 = alloca %struct.listIter, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %7 = alloca %struct.aclKeyResultCache, align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store i32 0, ptr %7, align 8, !tbaa !189
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92
  call void @listRewind(ptr noundef %i.d, ptr noundef nonnull %6) #25
  %i.e = call ptr @listNext(ptr noundef nonnull %6) #25 ; 2 uses
  %.not23 = icmp eq ptr %i.e, null
  br i1 %.not23, label %cleanupACLKeyResultCache.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.f = lshr i32 %4, 4
  %.lobit.i = and i32 %i.f, 1
  %i.g = lshr i32 %4, 5
  %i.h = and i32 %i.g, 2
  %i.i = and i32 %4, 160
  %i.j = icmp eq i32 %i.i, 0
  %.320.v.i = select i1 %i.j, i32 %i.h, i32 2
  %.320.i = or disjoint i32 %.320.v.i, %.lobit.i  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %i.k = phi ptr [ %i.e, %.lr.ph ], [ %i.ad, %bb.h ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !98   ; 3 uses
  %i.n = call fastcc i32 @ACLSelectorCheckCmd(ptr noundef %i.m, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %i.a, ptr noundef %7)
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.m, align 8, !tbaa !73
  %i.q = and i32 %i.p, 2
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !77
  call void @listRewind(ptr noundef %i.s, ptr noundef nonnull %5) #25
  %i.t = call ptr @listNext(ptr noundef nonnull %5) #25 ; 2 uses
  %.not2630.i = icmp eq ptr %i.t, null
  br i1 %.not2630.i, label %ACLSelectorHasUnrestrictedKeyAccess.exit.thread20, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.g
  %i.u = phi ptr [ %i.ab, %bb.g ], [ %i.t, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !98   ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = and i32 %i.x, %.320.i
  %.not27.i = icmp eq i32 %i.y, %.320.i
  br i1 %.not27.i, label %bb.f, label %bb.g, !llvm.loop !194

bb.f:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39
  %8 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef nonnull dereferenceable(2) @.str.210) #29
  %.fr.i = freeze i32 %8
  %.not28.i = icmp eq i32 %.fr.i, 0
  br i1 %.not28.i, label %ACLSelectorHasUnrestrictedKeyAccess.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %i.ab = call ptr @listNext(ptr noundef nonnull %5) #25 ; 2 uses
  %.not26.i = icmp eq ptr %i.ab, null
  br i1 %.not26.i, label %ACLSelectorHasUnrestrictedKeyAccess.exit.thread20, label %.lr.ph.i

ACLSelectorHasUnrestrictedKeyAccess.exit.thread20: ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.h

ACLSelectorHasUnrestrictedKeyAccess.exit:         ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %ACLSelectorHasUnrestrictedKeyAccess.exit
  %i.ac = load i32, ptr %7, align 8, !tbaa !189
  %.not.i15 = icmp eq i32 %i.ac, 0
  br i1 %.not.i15, label %cleanupACLKeyResultCache.exit, label %cleanupACLKeyResultCache.exit.sink.split

bb.h:                                             ; preds = %ACLSelectorHasUnrestrictedKeyAccess.exit.thread20, %bb.c
  %i.ad = call ptr @listNext(ptr noundef nonnull %6) #25 ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !195

._crit_edge:                                      ; preds = %bb.h
  %.pre = load i32, ptr %7, align 8, !tbaa !189
  %i.ae = icmp eq i32 %.pre, 0
  br i1 %i.ae, label %cleanupACLKeyResultCache.exit, label %cleanupACLKeyResultCache.exit.sink.split

cleanupACLKeyResultCache.exit.sink.split:         ; preds = %._crit_edge, %.critedge
  %.2.ph = phi i32 [ 1, %.critedge ], [ 0, %._crit_edge ]
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @getKeysFreeResult(ptr noundef nonnull %i.af) #25
  br label %cleanupACLKeyResultCache.exit

cleanupACLKeyResultCache.exit:                    ; preds = %cleanupACLKeyResultCache.exit.sink.split, %bb.b, %._crit_edge, %.critedge
  %.2 = phi i32 [ 0, %bb.b ], [ 1, %.critedge ], [ 0, %._crit_edge ], [ %.2.ph, %cleanupACLKeyResultCache.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %cleanupACLKeyResultCache.exit
  %.3 = phi i32 [ %.2, %cleanupACLKeyResultCache.exit ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 5) i32 @ACLSelectorCheckCmd(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull writeonly captures(none) %4, ptr noundef nonnull %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.getKeysResult, align 8      ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.b = load i32, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !73     ; 2 uses
  %i.e = and i32 %i.d, 4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %.loopexit138

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.g = load i64, ptr %i.f, align 8, !tbaa !196
  %i.h = and i64 %i.g, 32768
  %.not102 = icmp eq i64 %i.h, 0
  br i1 %.not102, label %bb.c, label %.loopexit138

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ugt i32 %i.b, 1023
  br i1 %i.i, label %ACLGetSelectorCommandBit.exit.thread, label %ACLGetSelectorCommandBit.exit

ACLGetSelectorCommandBit.exit:                    ; preds = %bb.c
  %i.j = lshr i64 %i.c, 6
  %i.k = and i64 %i.c, 63
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.j
  %i.n = load i64, ptr %i.m, align 8, !tbaa !13
  %i.o = shl nuw i64 1, %i.k
  %i.p = and i64 %i.n, %i.o
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %ACLGetSelectorCommandBit.exit.thread, label %.loopexit138

ACLGetSelectorCommandBit.exit.thread:             ; preds = %bb.c, %ACLGetSelectorCommandBit.exit
  %i.r = icmp slt i32 %3, 2
  br i1 %i.r, label %.critedge, label %bb.d

bb.d:                                             ; preds = %ACLGetSelectorCommandBit.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !79   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.c
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !86   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 296
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.g
  %.094 = phi i64 [ %i.ai, %bb.g ], [ 0, %.preheader ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.094
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !38  ; 2 uses
  %.not105 = icmp eq ptr %i.aa, null
  br i1 %.not105, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !143
  %.not103 = icmp eq ptr %i.ab, null
  %i.ac = select i1 %.not103, i64 1, i64 2
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !186
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !161
  %i.ah = tail call i32 @strcasecmp(ptr noundef %i.ag, ptr noundef nonnull %i.aa) #29
  %.not104 = icmp eq i32 %i.ah, 0
  %i.ai = add nuw nsw i64 %.094, 1
  br i1 %.not104, label %.loopexit138, label %bb.f

.loopexit138:                                     ; preds = %bb.g, %ACLGetSelectorCommandBit.exit, %bb.b, %bb.a
  %i.aj = and i32 %i.d, 2
  %.not106 = icmp eq i32 %i.aj, 0
  br i1 %.not106, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.loopexit138
  %i.ak = tail call i32 @doesCommandHaveKeys(ptr noundef nonnull %1) #25
  %.not107 = icmp eq i32 %i.ak, 0
  br i1 %.not107, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load i32, ptr %5, align 8, !tbaa !189
  %.not108 = icmp eq i32 %i.al, 0
  br i1 %.not108, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.am, align 8, !tbaa !9
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 6, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !9
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.0..sroa_idx, i8 0, i64 56, i1 false)
  %i.an = tail call i32 @getKeysFromCommandWithSpecs(ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef nonnull %i.am) #25 ; 0 uses
  store i32 1, ptr %5, align 8, !tbaa !189
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !197
  %i.ar = load i32, ptr %i.ao, align 8, !tbaa !198
  %.not110142 = icmp sgt i32 %i.ar, 0
  br i1 %.not110142, label %.lr.ph, label %.loopexit

bb.l:                                             ; preds = %sdslen.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = load i32, ptr %i.ao, align 8, !tbaa !198
  %i.at = sext i32 %i.as to i64
  %.not110 = icmp slt i64 %indvars.iv.next, %i.at
  br i1 %.not110, label %.lr.ph, label %.loopexit, !llvm.loop !199

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv ; 3 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !200
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !186
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !161 ; 6 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 -1
  %.val.i = load i8, ptr %i.bb, align 1, !tbaa !25 ; 2 uses
  %i.bc = and i8 %.val.i, 7
  switch i8 %i.bc, label %sdslen.exit [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.p
    i8 4, label %bb.q
  ]

bb.m:                                             ; preds = %.lr.ph
  %i.bd = lshr i8 %.val.i, 3
  %i.be = zext nneg i8 %i.bd to i64
  br label %sdslen.exit

bb.n:                                             ; preds = %.lr.ph
  %i.bf = getelementptr inbounds i8, ptr %i.ba, i64 -3
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !25
  %i.bh = zext i8 %i.bg to i64
  br label %sdslen.exit

bb.o:                                             ; preds = %.lr.ph
  %i.bi = getelementptr inbounds i8, ptr %i.ba, i64 -5
  %i.bj = load i16, ptr %i.bi, align 1, !tbaa !35
  %i.bk = zext i16 %i.bj to i64
  br label %sdslen.exit

bb.p:                                             ; preds = %.lr.ph
  %i.bl = getelementptr inbounds i8, ptr %i.ba, i64 -9
  %i.bm = load i32, ptr %i.bl, align 1, !tbaa !9
  %i.bn = zext i32 %i.bm to i64
  br label %sdslen.exit

bb.q:                                             ; preds = %.lr.ph
  %i.bo = getelementptr inbounds i8, ptr %i.ba, i64 -17
  %i.bp = load i64, ptr %i.bo, align 1, !tbaa !13
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %.lr.ph, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
end_hunk_1
