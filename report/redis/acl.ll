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
begin_hunk_1_@ACLDescribeSelectorCommandRules:bb.a
  br label %sdslen.exit

bb.e:                                             ; preds = %._crit_edge
  %i.ak = getelementptr inbounds i8, ptr %i.af, i64 -3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !25
  %i.am = zext i8 %i.al to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds i8, ptr %i.af, i64 -5
  %i.ao = load i16, ptr %i.an, align 1, !tbaa !35
  %i.ap = zext i16 %i.ao to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %._crit_edge
  %i.aq = getelementptr inbounds i8, ptr %i.af, i64 -9
  %i.ar = load i32, ptr %i.aq, align 1, !tbaa !9
  %i.as = zext i32 %i.ar to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %._crit_edge
  %i.at = getelementptr inbounds i8, ptr %i.af, i64 -17
  %i.au = load i64, ptr %i.at, align 1, !tbaa !13
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi i64 [ %i.au, %bb.h ], [ %i.aj, %bb.d ], [ %i.am, %bb.e ], [ %i.ap, %bb.f ], [ %i.as, %bb.g ]
  %.not25 = icmp eq i64 %.0.i, 0
  br i1 %.not25, label %sdslen.exit.thread, label %bb.j

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.preheader ] ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !38
  %i.ax = call i32 @ACLSetSelector(ptr noundef nonnull %i.c, ptr noundef %i.aw, i64 noundef -1)
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.c, label %bb.i, !prof !135

bb.i:                                             ; preds = %.lr.ph
  call void @_serverAssert(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.22, i32 noundef 788) #25
  call void @abort() #27
  unreachable

bb.j:                                             ; preds = %sdslen.exit
  %i.az = call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %i.u, ptr noundef nonnull @.str.50, ptr noundef nonnull %i.af) #25
  %.pre = load i32, ptr %i.a, align 4, !tbaa !9
  br label %sdslen.exit.thread

sdslen.exit.thread:                               ; preds = %._crit_edge, %bb.j, %sdslen.exit
  %i.ba = phi i32 [ %.pre, %bb.j ], [ %i.ae, %sdslen.exit ], [ %i.ae, %._crit_edge ]
  %.1 = phi ptr [ %i.az, %bb.j ], [ %i.u, %sdslen.exit ], [ %i.u, %._crit_edge ] ; 4 uses
  call void @sdsfreesplitres(ptr noundef nonnull %i.y, i32 noundef %i.ba) #25
  call void @sdsrange(ptr noundef %.1, i64 noundef 0, i64 noundef -2) #25
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(128) %i.r, ptr noundef nonnull dereferenceable(128) %i.bb, i64 128)
  %.not26 = icmp eq i32 %bcmp, 0
  br i1 %.not26, label %bb.n, label %bb.k

bb.k:                                             ; preds = %sdslen.exit.thread
  %i.bc = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !144
  %i.bd = icmp sgt i32 %i.bc, 3
  br i1 %i.bd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6420), align 4, !tbaa !145
  %.not.i = icmp eq i32 %i.be, 0
  %.not2.i = icmp eq ptr %.1, null
  %i.bf = select i1 %.not2.i, ptr @.str.209, ptr %.1
  %i.bg = select i1 %.not.i, ptr %i.bf, ptr @.str.208
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.51, ptr noundef nonnull %i.bg) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.22, i32 noundef 809, ptr noundef nonnull @.str.52) #25
  call void @abort() #27
  unreachable

bb.n:                                             ; preds = %sdslen.exit.thread
  call void @ACLFreeSelector(ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret ptr %.1
}

declare void @sdsrange(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @_serverLog(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @ACLDescribeSelector(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.listIter, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = tail call ptr @sdsempty() #25            ; 3 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !73
  %i.c = and i32 %i.b, 2
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @sdscatlen(ptr noundef %i.a, ptr noundef nonnull @.str.53, i64 noundef 3) #25
  br label %.loopexit26

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !77
  call void @listRewind(ptr noundef %i.f, ptr noundef nonnull %1) #25
  %i.g = call ptr @listNext(ptr noundef nonnull %1) #25 ; 2 uses
  %.not2327 = icmp eq ptr %i.g, null
  br i1 %.not2327, label %.loopexit26, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %i.h = phi ptr [ %i.m, %.lr.ph ], [ %i.g, %bb.c ]
  %.028 = phi ptr [ %i.l, %.lr.ph ], [ %i.a, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.k = call ptr @sdsCatPatternString(ptr noundef %.028, ptr noundef %i.j)
  %i.l = call ptr @sdscatlen(ptr noundef %i.k, ptr noundef nonnull @.str.40, i64 noundef 1) #25 ; 2 uses
  %i.m = call ptr @listNext(ptr noundef nonnull %1) #25 ; 2 uses
  %.not23 = icmp eq ptr %i.m, null
  br i1 %.not23, label %.loopexit26, label %.lr.ph, !llvm.loop !149

.loopexit26:                                      ; preds = %.lr.ph, %bb.c, %bb.b
  %.1 = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.c ], [ %i.l, %.lr.ph ] ; 2 uses
  %i.n = load i32, ptr %0, align 8, !tbaa !73
  %i.o = and i32 %i.n, 8
  %.not24 = icmp eq i32 %i.o, 0
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit26
  %i.p = call ptr @sdscatlen(ptr noundef %.1, ptr noundef nonnull @.str.54, i64 noundef 3) #25
  br label %.loopexit

bb.e:                                             ; preds = %.loopexit26
  %i.q = call ptr @sdscatlen(ptr noundef %.1, ptr noundef nonnull @.str.55, i64 noundef 14) #25 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !78
  call void @listRewind(ptr noundef %i.s, ptr noundef nonnull %1) #25
  %i.t = call ptr @listNext(ptr noundef nonnull %1) #25 ; 2 uses
  %.not2529 = icmp eq ptr %i.t, null
  br i1 %.not2529, label %.loopexit, label %.lr.ph31

.lr.ph31:                                         ; preds = %bb.e, %.lr.ph31
  %i.u = phi ptr [ %i.aa, %.lr.ph31 ], [ %i.t, %bb.e ]
  %.230 = phi ptr [ %i.z, %.lr.ph31 ], [ %i.q, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !98
  %i.x = call ptr @sdscatlen(ptr noundef %.230, ptr noundef nonnull @.str.56, i64 noundef 1) #25
  %i.y = call ptr @sdscatsds(ptr noundef %i.x, ptr noundef %i.w) #25
  %i.z = call ptr @sdscatlen(ptr noundef %i.y, ptr noundef nonnull @.str.40, i64 noundef 1) #25 ; 2 uses
  %i.aa = call ptr @listNext(ptr noundef nonnull %1) #25 ; 2 uses
  %.not25 = icmp eq ptr %i.aa, null
  br i1 %.not25, label %.loopexit, label %.lr.ph31, !llvm.loop !150

.loopexit:                                        ; preds = %.lr.ph31, %bb.e, %bb.d
  %.3 = phi ptr [ %i.p, %bb.d ], [ %i.q, %bb.e ], [ %i.z, %.lr.ph31 ]
  %i.ab = call ptr @ACLDescribeSelectorCommandRules(ptr noundef nonnull %0) ; 2 uses
  %i.ac = call ptr @sdscatsds(ptr noundef %.3, ptr noundef %i.ab) #25
  call void @sdsfree(ptr noundef %i.ab) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret ptr %i.ac
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ACLDescribeUser(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.listIter, align 8           ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @incrRefCount(ptr noundef nonnull %i.b) #25
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !103
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @sdsempty() #25            ; 2 uses
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @ACLUserFlags, i64 8), align 8, !tbaa !151
  %.not3439 = icmp eq i64 %i.e, 0
  br i1 %.not3439, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %bb.f, %bb.c
  %.029.lcssa = phi ptr [ %i.d, %bb.c ], [ %.1, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !102
  call void @listRewind(ptr noundef %i.h, ptr noundef nonnull %1) #25
  %i.i = call ptr @listNext(ptr noundef nonnull %1) #25 ; 2 uses
  %.not3542 = icmp eq ptr %i.i, null
  br i1 %.not3542, label %._crit_edge46, label %.lr.ph45

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.j = phi ptr [ getelementptr inbounds nuw (i8, ptr @ACLUserFlags, i64 8), %.lr.ph ], [ %i.t, %bb.f ]
  %.02941 = phi ptr [ %i.d, %.lr.ph ], [ %.1, %bb.f ] ; 2 uses
  %i.k = load atomic i32, ptr %i.f seq_cst, align 4, !tbaa !118
  %i.l = zext i32 %i.k to i64
  %i.m = load i64, ptr %i.j, align 8, !tbaa !151
  %i.n = and i64 %i.m, %i.l
  %.not38 = icmp eq i64 %i.n, 0
  br i1 %.not38, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw [16 x i8], ptr @ACLUserFlags, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !153
  %i.q = tail call ptr @sdscat(ptr noundef %.02941, ptr noundef %i.p) #25
  %i.r = tail call ptr @sdscatlen(ptr noundef %i.q, ptr noundef nonnull @.str.40, i64 noundef 1) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.1 = phi ptr [ %i.r, %bb.e ], [ %.02941, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr @ACLUserFlags, i64 %indvars.iv.next
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !151
  %.not34 = icmp eq i64 %i.u, 0
  br i1 %.not34, label %._crit_edge, label %bb.d, !llvm.loop !154

.lr.ph45:                                         ; preds = %._crit_edge, %.lr.ph45
  %i.v = phi ptr [ %i.ab, %.lr.ph45 ], [ %i.i, %._crit_edge ]
  %.243 = phi ptr [ %i.aa, %.lr.ph45 ], [ %.029.lcssa, %._crit_edge ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !98
  %i.y = call ptr @sdscatlen(ptr noundef %.243, ptr noundef nonnull @.str.57, i64 noundef 1) #25
  %i.z = call ptr @sdscatsds(ptr noundef %i.y, ptr noundef %i.x) #25
  %i.aa = call ptr @sdscatlen(ptr noundef %i.z, ptr noundef nonnull @.str.40, i64 noundef 1) #25 ; 2 uses
  %i.ab = call ptr @listNext(ptr noundef nonnull %1) #25 ; 2 uses
  %.not35 = icmp eq ptr %i.ab, null
  br i1 %.not35, label %._crit_edge46, label %.lr.ph45, !llvm.loop !155

._crit_edge46:                                    ; preds = %.lr.ph45, %._crit_edge
  %.2.lcssa = phi ptr [ %.029.lcssa, %._crit_edge ], [ %i.aa, %.lr.ph45 ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !92
  call void @listRewind(ptr noundef %i.ad, ptr noundef nonnull %1) #25
  %i.ae = call ptr @listNext(ptr noundef nonnull %1) #25 ; 2 uses
  %.not3648 = icmp eq ptr %i.ae, null
  br i1 %.not3648, label %._crit_edge52, label %.lr.ph51

.lr.ph51:                                         ; preds = %._crit_edge46, %.lr.ph51
  %i.af = phi ptr [ %i.am, %.lr.ph51 ], [ %i.ae, %._crit_edge46 ]
  %.349 = phi ptr [ %i.al, %.lr.ph51 ], [ %.2.lcssa, %._crit_edge46 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !98 ; 2 uses
  %i.ai = call ptr @ACLDescribeSelector(ptr noundef %i.ah) ; 2 uses
  %i.aj = load i32, ptr %i.ah, align 8, !tbaa !73
  %i.ak = and i32 %i.aj, 1
  %.not37 = icmp eq i32 %i.ak, 0
  %.str.59..str.58 = select i1 %.not37, ptr @.str.59, ptr @.str.58
  %i.al = call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %.349, ptr noundef nonnull %.str.59..str.58, ptr noundef %i.ai) #25 ; 2 uses
  call void @sdsfree(ptr noundef %i.ai) #25
  %i.am = call ptr @listNext(ptr noundef nonnull %1) #25 ; 2 uses
  %.not36 = icmp eq ptr %i.am, null
  br i1 %.not36, label %._crit_edge52, label %.lr.ph51, !llvm.loop !156

._crit_edge52:                                    ; preds = %.lr.ph51, %._crit_edge46
  %.3.lcssa = phi ptr [ %.2.lcssa, %._crit_edge46 ], [ %i.al, %.lr.ph51 ]
  %i.an = call ptr @createObject(i32 noundef 0, ptr noundef %.3.lcssa) #25 ; 2 uses
  store ptr %i.an, ptr %i.a, align 8, !tbaa !103
  call void @incrRefCount(ptr noundef %i.an) #25
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge52, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.ao, %._crit_edge52 ]
  ret ptr %.0
}

declare ptr @createObject(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @ACLLookupCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @sdsnew(ptr noundef %0) #25 ; 2 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 80), align 8, !tbaa !146
  %i.c = tail call ptr @lookupCommandBySdsLogic(ptr noundef %i.b, ptr noundef %i.a) #25
  tail call void @sdsfree(ptr noundef %i.a) #25
  ret ptr %i.c
}

declare ptr @lookupCommandBySdsLogic(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(1)
declare ptr @zrealloc(ptr noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @aclCreateSelectorFromOpSet(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !25
  %i.c = icmp eq i8 %i.b, 40
  br i1 %i.c, label %bb.b, label %.critedge, !prof !135

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 %1
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !25
  %i.g = icmp eq i8 %i.f, 41
  br i1 %i.g, label %bb.c, label %.critedge, !prof !135

.critedge:                                        ; preds = %bb.a, %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.22, i32 noundef 980) #25
  tail call void @abort() #27
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noalias dereferenceable_or_null(168) ptr @zmalloc(i64 noundef 168) #26 ; 10 uses
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8424), align 8, !tbaa !42
  store i32 %i.i, ptr %i.h, align 8, !tbaa !73
  %i.j = tail call ptr @listCreate() #25          ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  store ptr %i.j, ptr %i.k, align 8, !tbaa !77
  %i.l = tail call ptr @listCreate() #25          ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  store ptr %i.l, ptr %i.m, align 8, !tbaa !78
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  store ptr null, ptr %i.n, align 8, !tbaa !79
  %i.o = tail call ptr @sdsempty() #25
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  store ptr %i.o, ptr %i.p, align 8, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr @ACLListMatchKeyPattern, ptr %i.q, align 8, !tbaa !81
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @ACLListFreeKeyPattern, ptr %i.r, align 8, !tbaa !84
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr @ACLListDupKeyPattern, ptr %i.s, align 8, !tbaa !85
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr @ACLListMatchSds, ptr %i.t, align 8, !tbaa !81
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @ACLListFreeSds, ptr %i.u, align 8, !tbaa !84
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr @ACLListDupSds, ptr %i.v, align 8, !tbaa !85
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.w, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.y = add i64 %1, -2
  %i.z = tail call ptr @sdsnewlen(ptr noundef nonnull %i.x, i64 noundef %i.y) #25 ; 2 uses
  %i.aa = call ptr @sdssplitargs(ptr noundef %i.z, ptr noundef nonnull %i.a) #25 ; 2 uses
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !9   ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph, label %.loopexit

bb.d:                                             ; preds = %sdslen.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !9   ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp slt i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %.lr.ph, label %.loopexit, !llvm.loop !157

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38 ; 6 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 -1
  %.val.i = load i8, ptr %i.ai, align 1, !tbaa !25 ; 2 uses
  %i.aj = and i8 %.val.i, 7
  switch i8 %i.aj, label %sdslen.exit [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
  ]

bb.e:                                             ; preds = %.lr.ph
  %i.ak = lshr i8 %.val.i, 3
  %i.al = zext nneg i8 %i.ak to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 -3
  %i.an = load i8, ptr %i.am, align 1, !tbaa !25
  %i.ao = zext i8 %i.an to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %.lr.ph
  %i.ap = getelementptr inbounds i8, ptr %i.ah, i64 -5
  %i.aq = load i16, ptr %i.ap, align 1, !tbaa !35
  %i.ar = zext i16 %i.aq to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds i8, ptr %i.ah, i64 -9
  %i.at = load i32, ptr %i.as, align 1, !tbaa !9
  %i.au = zext i32 %i.at to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %.lr.ph
  %i.av = getelementptr inbounds i8, ptr %i.ah, i64 -17
  %i.aw = load i64, ptr %i.av, align 1, !tbaa !13
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %.lr.ph, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.aw, %bb.i ], [ %i.al, %bb.e ], [ %i.ao, %bb.f ], [ %i.ar, %bb.g ], [ %i.au, %bb.h ], [ 0, %.lr.ph ]
  %i.ax = call i32 @ACLSetSelector(ptr noundef nonnull %i.h, ptr noundef nonnull %i.ah, i64 noundef %.0.i)
  %i.ay = icmp eq i32 %i.ax, -1
  br i1 %i.ay, label %bb.j, label %bb.d

bb.j:                                             ; preds = %sdslen.exit
  call void @ACLFreeSelector(ptr noundef nonnull %i.h)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.j
  %i.az = phi i32 [ %.pre, %bb.j ], [ %i.ab, %bb.c ], [ %i.ad, %bb.d ]
  %.020 = phi ptr [ null, %bb.j ], [ %i.h, %bb.c ], [ %i.h, %bb.d ]
  call void @sdsfreesplitres(ptr noundef %i.aa, i32 noundef %i.az) #25
  call void @sdsfree(ptr noundef %i.z) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret ptr %.020
}

declare void @listEmpty(ptr noundef) local_unnamed_addr #1

declare void @sdsclear(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #7

declare ptr @listSearchKey(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @listAddNodeTail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @ACLSetUser(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.listIter, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @decrRefCount(ptr noundef nonnull %i.b) #25
  store ptr null, ptr %i.a, align 8, !tbaa !103
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = icmp eq i64 %2, -1
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.093 = phi i64 [ %i.d, %bb.d ], [ %2, %bb.c ]  ; 8 uses
  %i.e = icmp eq i64 %.093, 0
  br i1 %i.e, label %.thread132, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.23) #29
  %.not105 = icmp eq i32 %i.f, 0
  br i1 %.not105, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load atomic i32, ptr %i.g seq_cst, align 4, !tbaa !118
  %i.i = and i32 %i.h, -4
  %i.j = or disjoint i32 %i.i, 1
  store atomic i32 %i.j, ptr %i.g monotonic, align 8
  br label %bb.bd

bb.h:                                             ; preds = %bb.f
  %i.k = tail call i32 @strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.24) #29
  %.not106 = icmp eq i32 %i.k, 0
  br i1 %.not106, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load atomic i32, ptr %i.l seq_cst, align 4, !tbaa !118
  %i.n = and i32 %i.m, -4
  %i.o = or disjoint i32 %i.n, 2
  store atomic i32 %i.o, ptr %i.l monotonic, align 8
  br label %bb.bd

bb.j:                                             ; preds = %bb.h
  %i.p = tail call i32 @strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.26) #29
  %.not107 = icmp eq i32 %i.p, 0
  br i1 %.not107, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load atomic i32, ptr %i.q seq_cst, align 4, !tbaa !118
  %i.s = and i32 %i.r, -25
  %i.t = or disjoint i32 %i.s, 16
  store atomic i32 %i.t, ptr %i.q monotonic, align 8
  br label %bb.bd

bb.l:                                             ; preds = %bb.j
  %i.u = tail call i32 @strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.27) #29
  %.not108 = icmp eq i32 %i.u, 0
  br i1 %.not108, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load atomic i32, ptr %i.v seq_cst, align 4, !tbaa !118
  %i.x = and i32 %i.w, -25
  %i.y = or disjoint i32 %i.x, 8
  store atomic i32 %i.y, ptr %i.v monotonic, align 8
  br label %bb.bd

bb.n:                                             ; preds = %bb.l
  %i.z = tail call i32 @strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.25) #29
  %.not109 = icmp eq i32 %i.z, 0
  br i1 %.not109, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load atomic i32, ptr %i.aa seq_cst, align 4, !tbaa !118
  %i.ac = or i32 %i.ab, 4
  store atomic i32 %i.ac, ptr %i.aa monotonic, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !102
  tail call void @listEmpty(ptr noundef %i.ae) #25
  br label %bb.bd

bb.p:                                             ; preds = %bb.n
  %i.af = tail call i32 @strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.67) #29
  %.not110 = icmp eq i32 %i.af, 0
  br i1 %.not110, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load atomic i32, ptr %i.ag seq_cst, align 4, !tbaa !118
  %i.ai = and i32 %i.ah, -5
  store atomic i32 %i.ai, ptr %i.ag monotonic, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !102
  tail call void @listEmpty(ptr noundef %i.ak) #25
  br label %bb.bd

bb.r:                                             ; preds = %bb.p
  %i.al = load i8, ptr %1, align 1, !tbaa !25
  switch i8 %i.al, label %bb.ah [
    i8 40, label %bb.ae
    i8 35, label %bb.t
    i8 62, label %bb.s
    i8 60, label %bb.y
    i8 33, label %bb.z
  ]

bb.s:                                             ; preds = %bb.r
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.an = add nsw i64 %.093, -1
  %i.ao = tail call ptr @ACLHashPassword(ptr noundef nonnull %i.am, i64 noundef %i.an)
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %i.aq = add nsw i64 %.093, -1                   ; 2 uses
  %i.ar = and i64 %i.aq, 4294967295
  %.not.i = icmp eq i64 %i.ar, 64
  br i1 %.not.i, label %.preheader.i, label %.loopexit

.preheader.i.1:                                   ; preds = %.preheader.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !25  ; 2 uses
  %i.av = add i8 %i.au, -97
  %or.cond.i.1 = icmp ult i8 %i.av, 6
  %i.aw = add i8 %i.au, -48
  %or.cond5.i.1 = icmp ult i8 %i.aw, 10
  %or.cond19.not.i.1 = or i1 %or.cond.i.1, %or.cond5.i.1
  br i1 %or.cond19.not.i.1, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %.preheader.i.1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 64
  br i1 %exitcond.not.i.1, label %ACLCheckPasswordHash.exit, label %.preheader.i, !llvm.loop !31

.preheader.i:                                     ; preds = %bb.t, %bb.u
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.u ], [ 0, %bb.t ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.i
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !25  ; 2 uses
  %i.az = add i8 %i.ay, -97
  %or.cond.i = icmp ult i8 %i.az, 6
  %i.ba = add i8 %i.ay, -48
  %or.cond5.i = icmp ult i8 %i.ba, 10
  %or.cond19.not.i = or i1 %or.cond.i, %or.cond5.i
  br i1 %or.cond19.not.i, label %.preheader.i.1, label %.loopexit

ACLCheckPasswordHash.exit:                        ; preds = %bb.u
  %i.bb = tail call ptr @sdsnewlen(ptr noundef nonnull %i.ap, i64 noundef %i.aq) #25
  br label %bb.v

bb.v:                                             ; preds = %ACLCheckPasswordHash.exit, %bb.s
  %.094 = phi ptr [ %i.ao, %bb.s ], [ %i.bb, %ACLCheckPasswordHash.exit ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !102
  %i.be = tail call ptr @listSearchKey(ptr noundef %i.bd, ptr noundef %.094) #25
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !102
  %i.bh = tail call ptr @listAddNodeTail(ptr noundef %i.bg, ptr noundef %.094) #25 ; 0 uses
  br label %.thread

bb.x:                                             ; preds = %bb.v
  tail call void @sdsfree(ptr noundef %.094) #25
  br label %.thread

.thread:                                          ; preds = %bb.w, %bb.x
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bj = load atomic i32, ptr %i.bi seq_cst, align 4, !tbaa !118
  %i.bk = and i32 %i.bj, -5
  store atomic i32 %i.bk, ptr %i.bi monotonic, align 8
  br label %bb.bd

.loopexit:                                        ; preds = %.preheader.i, %.preheader.i.1, %bb.t
  %i.bl = tail call ptr @__errno_location() #28
  store i32 74, ptr %i.bl, align 4, !tbaa !9
  br label %.thread132

bb.y:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bn = add nsw i64 %.093, -1
  %i.bo = tail call ptr @ACLHashPassword(ptr noundef nonnull %i.bm, i64 noundef %i.bn)
  br label %bb.ab

bb.z:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %i.bq = add nsw i64 %.093, -1                   ; 2 uses
  %i.br = and i64 %i.bq, 4294967295
  %.not.i119 = icmp eq i64 %i.br, 64
  br i1 %.not.i119, label %.preheader.i121, label %.loopexit135

.preheader.i121.1:                                ; preds = %.preheader.i121
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %indvars.iv.i122
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !25  ; 2 uses
  %i.bv = add i8 %i.bu, -97
  %or.cond.i123.1 = icmp ult i8 %i.bv, 6
  %i.bw = add i8 %i.bu, -48
  %or.cond5.i124.1 = icmp ult i8 %i.bw, 10
  %or.cond19.not.i125.1 = or i1 %or.cond.i123.1, %or.cond5.i124.1
  br i1 %or.cond19.not.i125.1, label %bb.aa, label %.loopexit135

bb.aa:                                            ; preds = %.preheader.i121.1
  %indvars.iv.next.i126.1 = add nuw nsw i64 %indvars.iv.i122, 2 ; 2 uses
  %exitcond.not.i127.1 = icmp eq i64 %indvars.iv.next.i126.1, 64
  br i1 %exitcond.not.i127.1, label %ACLCheckPasswordHash.exit128, label %.preheader.i121, !llvm.loop !31

.preheader.i121:                                  ; preds = %bb.z, %bb.aa
  %indvars.iv.i122 = phi i64 [ %indvars.iv.next.i126.1, %bb.aa ], [ 0, %bb.z ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 %indvars.iv.i122
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !25  ; 2 uses
  %i.bz = add i8 %i.by, -97
  %or.cond.i123 = icmp ult i8 %i.bz, 6
  %i.ca = add i8 %i.by, -48
  %or.cond5.i124 = icmp ult i8 %i.ca, 10
  %or.cond19.not.i125 = or i1 %or.cond.i123, %or.cond5.i124
  br i1 %or.cond19.not.i125, label %.preheader.i121.1, label %.loopexit135

.loopexit135:                                     ; preds = %.preheader.i121, %.preheader.i121.1, %bb.z
  %i.cb = tail call ptr @__errno_location() #28
  store i32 74, ptr %i.cb, align 4, !tbaa !9
  br label %.thread132

ACLCheckPasswordHash.exit128:                     ; preds = %bb.aa
  %i.cc = tail call ptr @sdsnewlen(ptr noundef nonnull %i.bp, i64 noundef %i.bq) #25
  br label %bb.ab

bb.ab:                                            ; preds = %ACLCheckPasswordHash.exit128, %bb.y
  %.099 = phi ptr [ %i.bo, %bb.y ], [ %i.cc, %ACLCheckPasswordHash.exit128 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !102
  %i.cf = tail call ptr @listSearchKey(ptr noundef %i.ce, ptr noundef %.099) #25 ; 2 uses
  tail call void @sdsfree(ptr noundef %.099) #25
  %.not117 = icmp eq ptr %i.cf, null
  br i1 %.not117, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cg = tail call ptr @__errno_location() #28
  store i32 19, ptr %i.cg, align 4, !tbaa !9
  br label %.thread132

bb.ad:                                            ; preds = %bb.ab
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !102
  tail call void @listDelNode(ptr noundef %i.ch, ptr noundef nonnull %i.cf) #25
  br label %bb.bd

bb.ae:                                            ; preds = %bb.r
  %i.ci = getelementptr i8, ptr %1, i64 %.093
  %i.cj = getelementptr i8, ptr %i.ci, i64 -1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !25
  %i.cl = icmp eq i8 %i.ck, 41
  br i1 %i.cl, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.cm = tail call ptr @aclCreateSelectorFromOpSet(ptr noundef nonnull %1, i64 noundef %.093) ; 2 uses
  %.not116 = icmp eq ptr %i.cm, null
  br i1 %.not116, label %.thread132, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !92
  %i.cp = tail call ptr @listAddNodeTail(ptr noundef %i.co, ptr noundef nonnull %i.cm) #25 ; 0 uses
  br label %.thread132

bb.ah:                                            ; preds = %bb.r, %bb.ae
  %i.cq = tail call i32 @strcasecmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.68) #29
  %.not111 = icmp eq i32 %i.cq, 0
  br i1 %.not111, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !92
  call void @listRewind(ptr noundef %i.cs, ptr noundef nonnull %3) #25
  %i.ct = call ptr @listNext(ptr noundef nonnull %3) #25
  %.not112 = icmp eq ptr %i.ct, null
  br i1 %.not112, label %bb.aj, label %.preheader, !prof !96

.preheader:                                       ; preds = %bb.ai
  %i.cu = call ptr @listNext(ptr noundef nonnull %3) #25 ; 2 uses
  %.not113136 = icmp eq ptr %i.cu, null
  br i1 %.not113136, label %._crit_edge, label %.lr.ph

bb.aj:                                            ; preds = %bb.ai
  call void @_serverAssert(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.22, i32 noundef 1358) #25
  call void @abort() #27
  unreachable

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.cv = phi ptr [ %i.cx, %.lr.ph ], [ %i.cu, %.preheader ]
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !92
  call void @listDelNode(ptr noundef %i.cw, ptr noundef nonnull %i.cv) #25
  %i.cx = call ptr @listNext(ptr noundef nonnull %3) #25 ; 2 uses
  %.not113 = icmp eq ptr %i.cx, null
  br i1 %.not113, label %._crit_edge, label %.lr.ph, !llvm.loop !158

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.thread132

bb.ak:                                            ; preds = %bb.ah
  %i.cy = tail call i32 @strcasecmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.70) #29
  %.not114 = icmp eq i32 %i.cy, 0
  br i1 %.not114, label %bb.al, label %bb.bc

bb.al:                                            ; preds = %bb.ak
  %i.cz = tail call i32 @ACLSetUser(ptr noundef nonnull %0, ptr noundef nonnull @.str.67, i64 noundef -1)
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.an, label %bb.am, !prof !135

bb.am:                                            ; preds = %bb.al
  tail call void @_serverAssert(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.22, i32 noundef 1364) #25
  tail call void @abort() #27
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.db = tail call i32 @ACLSetUser(ptr noundef nonnull %0, ptr noundef nonnull @.str.62, i64 noundef -1)
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.ap, label %bb.ao, !prof !135

bb.ao:                                            ; preds = %bb.an
  tail call void @_serverAssert(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.22, i32 noundef 1365) #25
  tail call void @abort() #27
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.dd = tail call i32 @ACLSetUser(ptr noundef nonnull %0, ptr noundef nonnull @.str.64, i64 noundef -1)
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.ar, label %bb.aq, !prof !135

bb.aq:                                            ; preds = %bb.ap
  tail call void @_serverAssert(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.22, i32 noundef 1366) #25
  tail call void @abort() #27
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.df = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8424), align 8, !tbaa !42
  %i.dg = and i32 %i.df, 8
  %.not115 = icmp eq i32 %i.dg, 0
  br i1 %.not115, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dh = tail call i32 @ACLSetUser(ptr noundef nonnull %0, ptr noundef nonnull @.str.29, i64 noundef -1)
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.au, label %bb.at, !prof !135

bb.at:                                            ; preds = %bb.as
  tail call void @_serverAssert(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.22, i32 noundef 1368) #25
  tail call void @abort() #27
  unreachable

bb.au:                                            ; preds = %bb.as, %bb.ar
  %i.dj = tail call i32 @ACLSetUser(ptr noundef nonnull %0, ptr noundef nonnull @.str.24, i64 noundef -1)
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.aw, label %bb.av, !prof !135

bb.av:                                            ; preds = %bb.au
  tail call void @_serverAssert(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.22, i32 noundef 1369) #25
  tail call void @abort() #27
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.dl = tail call i32 @ACLSetUser(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, i64 noundef -1)
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.ay, label %bb.ax, !prof !135

bb.ax:                                            ; preds = %bb.aw
  tail call void @_serverAssert(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.22, i32 noundef 1370) #25
  tail call void @abort() #27
end_hunk_1
begin_hunk_2_@ACLSelectorCheckKey:bb.a
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
  br i1 %i.b, label %bb.g, label %bb.b

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

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %i.k = phi ptr [ %i.e, %.lr.ph ], [ %i.ad, %bb.f ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !98   ; 3 uses
  %i.n = call fastcc i32 @ACLSelectorCheckCmd(ptr noundef %i.m, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %i.a, ptr noundef %7)
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.f

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

.lr.ph.i:                                         ; preds = %bb.e, %.tail.thread.i
  %i.u = phi ptr [ %i.ab, %.tail.thread.i ], [ %i.t, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !98   ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = and i32 %i.x, %.320.i
  %.not27.i = icmp eq i32 %i.y, %.320.i
  br i1 %.not27.i, label %sub_0.i, label %.tail.thread.i, !llvm.loop !194

sub_0.i:                                          ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39  ; 2 uses
  %8 = load i8, ptr %i.aa, align 1
  %.not32.i = icmp eq i8 %8, 42
  br i1 %.not32.i, label %.tail.i, label %.tail.thread.i

.tail.i:                                          ; preds = %sub_0.i
  %9 = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %ACLSelectorHasUnrestrictedKeyAccess.exit, label %.tail.thread.i

.tail.thread.i:                                   ; preds = %.tail.i, %sub_0.i, %.lr.ph.i
  %i.ab = call ptr @listNext(ptr noundef nonnull %5) #25 ; 2 uses
  %.not26.i = icmp eq ptr %i.ab, null
  br i1 %.not26.i, label %ACLSelectorHasUnrestrictedKeyAccess.exit.thread20, label %.lr.ph.i

ACLSelectorHasUnrestrictedKeyAccess.exit.thread20: ; preds = %.tail.thread.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.f

ACLSelectorHasUnrestrictedKeyAccess.exit:         ; preds = %.tail.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %ACLSelectorHasUnrestrictedKeyAccess.exit
  %i.ac = load i32, ptr %7, align 8, !tbaa !189
  %.not.i15 = icmp eq i32 %i.ac, 0
  br i1 %.not.i15, label %cleanupACLKeyResultCache.exit, label %cleanupACLKeyResultCache.exit.sink.split

bb.f:                                             ; preds = %ACLSelectorHasUnrestrictedKeyAccess.exit.thread20, %bb.c
  %i.ad = call ptr @listNext(ptr noundef nonnull %6) #25 ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !195

._crit_edge:                                      ; preds = %bb.f
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
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %cleanupACLKeyResultCache.exit
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
end_hunk_2
