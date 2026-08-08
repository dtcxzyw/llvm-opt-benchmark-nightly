begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SimpleStringList = type { ptr, ptr }
%struct._connParams = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.PQExpBufferData = type { ptr, i64, i64 }

@main.long_options = internal global [30 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str, i32 1, [4 x i8] zeroinitializer, ptr null, i32 97, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.1, i32 1, [4 x i8] zeroinitializer, ptr null, i32 99, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.2, i32 0, [4 x i8] zeroinitializer, ptr null, i32 100, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.3, i32 0, [4 x i8] zeroinitializer, ptr null, i32 68, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.4, i32 0, [4 x i8] zeroinitializer, ptr null, i32 101, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.5, i32 0, [4 x i8] zeroinitializer, ptr null, i32 69, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.6, i32 1, [4 x i8] zeroinitializer, ptr null, i32 103, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.7, i32 1, [4 x i8] zeroinitializer, ptr null, i32 103, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.8, i32 1, [4 x i8] zeroinitializer, ptr null, i32 104, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.9, i32 0, [4 x i8] zeroinitializer, ptr null, i32 105, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.10, i32 0, [4 x i8] zeroinitializer, ptr null, i32 73, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.11, i32 0, [4 x i8] zeroinitializer, ptr null, i32 108, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.12, i32 0, [4 x i8] zeroinitializer, ptr null, i32 76, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.13, i32 1, [4 x i8] zeroinitializer, ptr null, i32 109, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.14, i32 1, [4 x i8] zeroinitializer, ptr null, i32 112, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.15, i32 0, [4 x i8] zeroinitializer, ptr null, i32 80, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.16, i32 0, [4 x i8] zeroinitializer, ptr null, i32 114, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.17, i32 0, [4 x i8] zeroinitializer, ptr null, i32 82, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.18, i32 0, [4 x i8] zeroinitializer, ptr null, i32 115, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.19, i32 0, [4 x i8] zeroinitializer, ptr null, i32 83, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.20, i32 1, [4 x i8] zeroinitializer, ptr null, i32 85, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.21, i32 1, [4 x i8] zeroinitializer, ptr null, i32 118, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.22, i32 0, [4 x i8] zeroinitializer, ptr null, i32 119, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.23, i32 0, [4 x i8] zeroinitializer, ptr null, i32 87, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.24, i32 0, [4 x i8] zeroinitializer, ptr null, i32 1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.25, i32 0, [4 x i8] zeroinitializer, ptr null, i32 2, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.26, i32 0, [4 x i8] zeroinitializer, ptr null, i32 3, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.27, i32 0, [4 x i8] zeroinitializer, ptr null, i32 4, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.28, i32 0, [4 x i8] zeroinitializer, ptr null, i32 5, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16
@.str = private unnamed_addr constant [11 x i8] c"with-admin\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"connection-limit\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"createdb\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"no-createdb\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"encrypted\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"member-of\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"inherit\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"no-inherit\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"login\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"no-login\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"with-member\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"pwprompt\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"createrole\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"no-createrole\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"superuser\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"no-superuser\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"valid-until\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"no-password\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"replication\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"no-replication\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"interactive\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"bypassrls\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"no-bypassrls\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"pgscripts-19\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"createuser\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"a:c:dDeEg:h:iIlLm:p:PrRsSU:v:wW\00", align 1
@optarg = external local_unnamed_addr global ptr, align 8
@.str.32 = private unnamed_addr constant [22 x i8] c"-c/--connection-limit\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"Try \22%s --help\22 for more information.\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.34 = private unnamed_addr constant [48 x i8] c"too many command-line arguments (first is \22%s\22)\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"Enter name of role to add: \00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"PGUSER\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"Enter password for new role: \00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"Enter it again: \00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.39 = private unnamed_addr constant [25 x i8] c"Passwords didn't match.\0A\00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c"Shall the new role be a superuser?\00", align 1
@.str.41 = private unnamed_addr constant [51 x i8] c"Shall the new role be allowed to create databases?\00", align 1
@.str.42 = private unnamed_addr constant [56 x i8] c"Shall the new role be allowed to create more new roles?\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"CREATE ROLE %s\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c" PASSWORD \00", align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"password encryption failed: %s\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c" SUPERUSER\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c" NOSUPERUSER\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c" CREATEDB\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c" NOCREATEDB\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c" CREATEROLE\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c" NOCREATEROLE\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c" INHERIT\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c" NOINHERIT\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c" LOGIN\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c" NOLOGIN\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c" REPLICATION\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c" NOREPLICATION\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c" BYPASSRLS\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c" NOBYPASSRLS\00", align 1
@.str.60 = private unnamed_addr constant [21 x i8] c" CONNECTION LIMIT %d\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c" VALID UNTIL \00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c" IN ROLE \00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"%s,\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c" ROLE \00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c" ADMIN \00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.67 = private unnamed_addr constant [32 x i8] c"creation of new role failed: %s\00", align 1
@.str.68 = private unnamed_addr constant [36 x i8] c"%s creates a new PostgreSQL role.\0A\0A\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"Usage:\0A\00", align 1
@.str.70 = private unnamed_addr constant [29 x i8] c"  %s [OPTION]... [ROLENAME]\0A\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"\0AOptions:\0A\00", align 1
@.str.72 = private unnamed_addr constant [109 x i8] c"  -a, --with-admin=ROLE     ROLE will be a member of new role with admin\0A                            option\0A\00", align 1
@.str.73 = private unnamed_addr constant [75 x i8] c"  -c, --connection-limit=N  connection limit for role (default: no limit)\0A\00", align 1
@.str.74 = private unnamed_addr constant [59 x i8] c"  -d, --createdb            role can create new databases\0A\00", align 1
@.str.75 = private unnamed_addr constant [68 x i8] c"  -D, --no-createdb         role cannot create databases (default)\0A\00", align 1
@.str.76 = private unnamed_addr constant [72 x i8] c"  -e, --echo                show the commands being sent to the server\0A\00", align 1
@.str.77 = private unnamed_addr constant [63 x i8] c"  -g, --member-of=ROLE      new role will be a member of ROLE\0A\00", align 1
@.str.78 = private unnamed_addr constant [63 x i8] c"  --role=ROLE               (same as --member-of, deprecated)\0A\00", align 1
@.str.79 = private unnamed_addr constant [119 x i8] c"  -i, --inherit             role inherits privileges of roles it is a\0A                            member of (default)\0A\00", align 1
@.str.80 = private unnamed_addr constant [62 x i8] c"  -I, --no-inherit          role does not inherit privileges\0A\00", align 1
@.str.81 = private unnamed_addr constant [54 x i8] c"  -l, --login               role can login (default)\0A\00", align 1
@.str.82 = private unnamed_addr constant [47 x i8] c"  -L, --no-login            role cannot login\0A\00", align 1
@.str.83 = private unnamed_addr constant [63 x i8] c"  -m, --with-member=ROLE    ROLE will be a member of new role\0A\00", align 1
@.str.84 = private unnamed_addr constant [59 x i8] c"  -P, --pwprompt            assign a password to new role\0A\00", align 1
@.str.85 = private unnamed_addr constant [55 x i8] c"  -r, --createrole          role can create new roles\0A\00", align 1
@.str.86 = private unnamed_addr constant [64 x i8] c"  -R, --no-createrole       role cannot create roles (default)\0A\00", align 1
@.str.87 = private unnamed_addr constant [52 x i8] c"  -s, --superuser           role will be superuser\0A\00", align 1
@.str.88 = private unnamed_addr constant [66 x i8] c"  -S, --no-superuser        role will not be superuser (default)\0A\00", align 1
@.str.89 = private unnamed_addr constant [102 x i8] c"  -v, --valid-until=TIMESTAMP\0A                            password expiration date and time for role\0A\00", align 1
@.str.90 = private unnamed_addr constant [67 x i8] c"  -V, --version             output version information, then exit\0A\00", align 1
@.str.91 = private unnamed_addr constant [128 x i8] c"  --interactive             prompt for missing role name and attributes rather\0A                            than using defaults\0A\00", align 1
@.str.92 = private unnamed_addr constant [77 x i8] c"  --bypassrls               role can bypass row-level security (RLS) policy\0A\00", align 1
@.str.93 = private unnamed_addr constant [118 x i8] c"  --no-bypassrls            role cannot bypass row-level security (RLS) policy\0A                            (default)\0A\00", align 1
@.str.94 = private unnamed_addr constant [59 x i8] c"  --replication             role can initiate replication\0A\00", align 1
@.str.95 = private unnamed_addr constant [72 x i8] c"  --no-replication          role cannot initiate replication (default)\0A\00", align 1
@.str.96 = private unnamed_addr constant [55 x i8] c"  -?, --help                show this help, then exit\0A\00", align 1
@.str.97 = private unnamed_addr constant [22 x i8] c"\0AConnection options:\0A\00", align 1
@.str.98 = private unnamed_addr constant [70 x i8] c"  -h, --host=HOSTNAME       database server host or socket directory\0A\00", align 1
@.str.99 = private unnamed_addr constant [50 x i8] c"  -p, --port=PORT           database server port\0A\00", align 1
@.str.100 = private unnamed_addr constant [77 x i8] c"  -U, --username=USERNAME   user name to connect as (not the one to create)\0A\00", align 1
@.str.101 = private unnamed_addr constant [55 x i8] c"  -w, --no-password         never prompt for password\0A\00", align 1
@.str.102 = private unnamed_addr constant [51 x i8] c"  -W, --password            force password prompt\0A\00", align 1
@.str.103 = private unnamed_addr constant [23 x i8] c"\0AReport bugs to <%s>.\0A\00", align 1
@.str.104 = private unnamed_addr constant [32 x i8] c"pgsql-bugs@lists.postgresql.org\00", align 1
@.str.105 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"PostgreSQL\00", align 1
@.str.107 = private unnamed_addr constant [28 x i8] c"https://www.postgresql.org/\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %2 = alloca %struct.SimpleStringList, align 8   ; 5 uses
  %3 = alloca %struct.SimpleStringList, align 8   ; 5 uses
  %4 = alloca %struct.SimpleStringList, align 8   ; 5 uses
  %5 = alloca %struct._connParams, align 8        ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %struct.PQExpBufferData, align 8    ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 -2, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.c = load ptr, ptr %1, align 8
  tail call void @pg_logging_init(ptr noundef %i.c) #10
  %i.d = load ptr, ptr %1, align 8
  %i.e = tail call ptr @get_progname(ptr noundef %i.d) #10 ; 4 uses
  %i.f = load ptr, ptr %1, align 8
  tail call void @set_pglocale_pgservice(ptr noundef %i.f, ptr noundef nonnull @.str.29) #10
  tail call void @handle_help_version_opts(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.30, ptr noundef nonnull @help) #10
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.0124 = phi i32 [ 0, %bb.a ], [ %.0124.be, %.backedge ] ; 27 uses
  %.0122 = phi i1 [ false, %bb.a ], [ %.0122.be, %.backedge ] ; 29 uses
  %.0120 = phi i8 [ 0, %bb.a ], [ %.0120.be, %.backedge ] ; 31 uses
  %.0118 = phi i1 [ false, %bb.a ], [ %.0118.be, %.backedge ] ; 28 uses
  %.0115 = phi ptr [ null, %bb.a ], [ %.0115.be, %.backedge ] ; 29 uses
  %.0111 = phi i32 [ 0, %bb.a ], [ %.0111.be, %.backedge ] ; 27 uses
  %.0108 = phi i32 [ 0, %bb.a ], [ %.0108.be, %.backedge ] ; 28 uses
  %.0106 = phi i32 [ 0, %bb.a ], [ %.0106.be, %.backedge ] ; 27 uses
  %.0104 = phi i32 [ 0, %bb.a ], [ %.0104.be, %.backedge ] ; 28 uses
  %.0102 = phi i32 [ 0, %bb.a ], [ %.0102.be, %.backedge ] ; 28 uses
  %.0100 = phi i32 [ 0, %bb.a ], [ %.0100.be, %.backedge ] ; 27 uses
  %.098 = phi i32 [ 0, %bb.a ], [ %.098.be, %.backedge ] ; 27 uses
  %.096 = phi ptr [ null, %bb.a ], [ %.096.be, %.backedge ] ; 28 uses
  %.094 = phi ptr [ null, %bb.a ], [ %.094.be, %.backedge ] ; 28 uses
  %.092 = phi ptr [ null, %bb.a ], [ %.092.be, %.backedge ] ; 28 uses
  %i.g = call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.31, ptr noundef nonnull @main.long_options, ptr noundef nonnull %i.a) #10
  switch i32 %i.g, label %bb.ae [
    i32 -1, label %bb.af
    i32 97, label %bb.c
    i32 99, label %bb.d
    i32 100, label %bb.f
    i32 68, label %bb.g
    i32 101, label %bb.h
    i32 69, label %.backedge
    i32 103, label %bb.i
    i32 104, label %bb.j
    i32 105, label %bb.k
    i32 73, label %bb.l
    i32 108, label %bb.m
    i32 76, label %bb.n
    i32 109, label %bb.o
    i32 112, label %bb.p
    i32 80, label %bb.q
    i32 114, label %bb.r
    i32 82, label %bb.s
    i32 115, label %bb.t
    i32 83, label %bb.u
    i32 85, label %bb.v
    i32 118, label %bb.w
    i32 119, label %bb.x
    i32 87, label %bb.y
    i32 1, label %bb.z
    i32 2, label %bb.aa
    i32 3, label %bb.ab
    i32 4, label %bb.ac
    i32 5, label %bb.ad
  ]

.backedge:                                        ; preds = %bb.b, %bb.d, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.c
  %.0124.be = phi i32 [ %.0124, %bb.c ], [ %.0124, %bb.d ], [ %.0124, %bb.f ], [ %.0124, %bb.g ], [ %.0124, %bb.h ], [ %.0124, %bb.b ], [ %.0124, %bb.i ], [ %.0124, %bb.j ], [ %.0124, %bb.k ], [ %.0124, %bb.l ], [ %.0124, %bb.m ], [ %.0124, %bb.n ], [ %.0124, %bb.o ], [ %.0124, %bb.p ], [ %.0124, %bb.q ], [ %.0124, %bb.r ], [ %.0124, %bb.s ], [ %.0124, %bb.t ], [ %.0124, %bb.u ], [ %.0124, %bb.v ], [ %.0124, %bb.w ], [ 1, %bb.x ], [ 2, %bb.y ], [ %.0124, %bb.z ], [ %.0124, %bb.aa ], [ %.0124, %bb.ab ], [ %.0124, %bb.ac ], [ %.0124, %bb.ad ]
  %.0122.be = phi i1 [ %.0122, %bb.c ], [ %.0122, %bb.d ], [ %.0122, %bb.f ], [ %.0122, %bb.g ], [ true, %bb.h ], [ %.0122, %bb.b ], [ %.0122, %bb.i ], [ %.0122, %bb.j ], [ %.0122, %bb.k ], [ %.0122, %bb.l ], [ %.0122, %bb.m ], [ %.0122, %bb.n ], [ %.0122, %bb.o ], [ %.0122, %bb.p ], [ %.0122, %bb.q ], [ %.0122, %bb.r ], [ %.0122, %bb.s ], [ %.0122, %bb.t ], [ %.0122, %bb.u ], [ %.0122, %bb.v ], [ %.0122, %bb.w ], [ %.0122, %bb.x ], [ %.0122, %bb.y ], [ %.0122, %bb.z ], [ %.0122, %bb.aa ], [ %.0122, %bb.ab ], [ %.0122, %bb.ac ], [ %.0122, %bb.ad ]
  %.0120.be = phi i8 [ %.0120, %bb.c ], [ %.0120, %bb.d ], [ %.0120, %bb.f ], [ %.0120, %bb.g ], [ %.0120, %bb.h ], [ %.0120, %bb.b ], [ %.0120, %bb.i ], [ %.0120, %bb.j ], [ %.0120, %bb.k ], [ %.0120, %bb.l ], [ %.0120, %bb.m ], [ %.0120, %bb.n ], [ %.0120, %bb.o ], [ %.0120, %bb.p ], [ %.0120, %bb.q ], [ %.0120, %bb.r ], [ %.0120, %bb.s ], [ %.0120, %bb.t ], [ %.0120, %bb.u ], [ %.0120, %bb.v ], [ %.0120, %bb.w ], [ %.0120, %bb.x ], [ %.0120, %bb.y ], [ %.0120, %bb.z ], [ %.0120, %bb.aa ], [ 1, %bb.ab ], [ %.0120, %bb.ac ], [ %.0120, %bb.ad ]
  %.0118.be = phi i1 [ %.0118, %bb.c ], [ %.0118, %bb.d ], [ %.0118, %bb.f ], [ %.0118, %bb.g ], [ %.0118, %bb.h ], [ %.0118, %bb.b ], [ %.0118, %bb.i ], [ %.0118, %bb.j ], [ %.0118, %bb.k ], [ %.0118, %bb.l ], [ %.0118, %bb.m ], [ %.0118, %bb.n ], [ %.0118, %bb.o ], [ %.0118, %bb.p ], [ true, %bb.q ], [ %.0118, %bb.r ], [ %.0118, %bb.s ], [ %.0118, %bb.t ], [ %.0118, %bb.u ], [ %.0118, %bb.v ], [ %.0118, %bb.w ], [ %.0118, %bb.x ], [ %.0118, %bb.y ], [ %.0118, %bb.z ], [ %.0118, %bb.aa ], [ %.0118, %bb.ab ], [ %.0118, %bb.ac ], [ %.0118, %bb.ad ]
  %.0115.be = phi ptr [ %.0115, %bb.c ], [ %.0115, %bb.d ], [ %.0115, %bb.f ], [ %.0115, %bb.g ], [ %.0115, %bb.h ], [ %.0115, %bb.b ], [ %.0115, %bb.i ], [ %.0115, %bb.j ], [ %.0115, %bb.k ], [ %.0115, %bb.l ], [ %.0115, %bb.m ], [ %.0115, %bb.n ], [ %.0115, %bb.o ], [ %.0115, %bb.p ], [ %.0115, %bb.q ], [ %.0115, %bb.r ], [ %.0115, %bb.s ], [ %.0115, %bb.t ], [ %.0115, %bb.u ], [ %.0115, %bb.v ], [ %i.t, %bb.w ], [ %.0115, %bb.x ], [ %.0115, %bb.y ], [ %.0115, %bb.z ], [ %.0115, %bb.aa ], [ %.0115, %bb.ab ], [ %.0115, %bb.ac ], [ %.0115, %bb.ad ]
  %.0111.be = phi i32 [ %.0111, %bb.c ], [ %.0111, %bb.d ], [ 2, %bb.f ], [ 1, %bb.g ], [ %.0111, %bb.h ], [ %.0111, %bb.b ], [ %.0111, %bb.i ], [ %.0111, %bb.j ], [ %.0111, %bb.k ], [ %.0111, %bb.l ], [ %.0111, %bb.m ], [ %.0111, %bb.n ], [ %.0111, %bb.o ], [ %.0111, %bb.p ], [ %.0111, %bb.q ], [ %.0111, %bb.r ], [ %.0111, %bb.s ], [ %.0111, %bb.t ], [ %.0111, %bb.u ], [ %.0111, %bb.v ], [ %.0111, %bb.w ], [ %.0111, %bb.x ], [ %.0111, %bb.y ], [ %.0111, %bb.z ], [ %.0111, %bb.aa ], [ %.0111, %bb.ab ], [ %.0111, %bb.ac ], [ %.0111, %bb.ad ]
  %.0108.be = phi i32 [ %.0108, %bb.c ], [ %.0108, %bb.d ], [ %.0108, %bb.f ], [ %.0108, %bb.g ], [ %.0108, %bb.h ], [ %.0108, %bb.b ], [ %.0108, %bb.i ], [ %.0108, %bb.j ], [ %.0108, %bb.k ], [ %.0108, %bb.l ], [ %.0108, %bb.m ], [ %.0108, %bb.n ], [ %.0108, %bb.o ], [ %.0108, %bb.p ], [ %.0108, %bb.q ], [ %.0108, %bb.r ], [ %.0108, %bb.s ], [ 2, %bb.t ], [ 1, %bb.u ], [ %.0108, %bb.v ], [ %.0108, %bb.w ], [ %.0108, %bb.x ], [ %.0108, %bb.y ], [ %.0108, %bb.z ], [ %.0108, %bb.aa ], [ %.0108, %bb.ab ], [ %.0108, %bb.ac ], [ %.0108, %bb.ad ]
  %.0106.be = phi i32 [ %.0106, %bb.c ], [ %.0106, %bb.d ], [ %.0106, %bb.f ], [ %.0106, %bb.g ], [ %.0106, %bb.h ], [ %.0106, %bb.b ], [ %.0106, %bb.i ], [ %.0106, %bb.j ], [ %.0106, %bb.k ], [ %.0106, %bb.l ], [ %.0106, %bb.m ], [ %.0106, %bb.n ], [ %.0106, %bb.o ], [ %.0106, %bb.p ], [ %.0106, %bb.q ], [ 2, %bb.r ], [ 1, %bb.s ], [ %.0106, %bb.t ], [ %.0106, %bb.u ], [ %.0106, %bb.v ], [ %.0106, %bb.w ], [ %.0106, %bb.x ], [ %.0106, %bb.y ], [ %.0106, %bb.z ], [ %.0106, %bb.aa ], [ %.0106, %bb.ab ], [ %.0106, %bb.ac ], [ %.0106, %bb.ad ]
  %.0104.be = phi i32 [ %.0104, %bb.c ], [ %.0104, %bb.d ], [ %.0104, %bb.f ], [ %.0104, %bb.g ], [ %.0104, %bb.h ], [ %.0104, %bb.b ], [ %.0104, %bb.i ], [ %.0104, %bb.j ], [ 2, %bb.k ], [ 1, %bb.l ], [ %.0104, %bb.m ], [ %.0104, %bb.n ], [ %.0104, %bb.o ], [ %.0104, %bb.p ], [ %.0104, %bb.q ], [ %.0104, %bb.r ], [ %.0104, %bb.s ], [ %.0104, %bb.t ], [ %.0104, %bb.u ], [ %.0104, %bb.v ], [ %.0104, %bb.w ], [ %.0104, %bb.x ], [ %.0104, %bb.y ], [ %.0104, %bb.z ], [ %.0104, %bb.aa ], [ %.0104, %bb.ab ], [ %.0104, %bb.ac ], [ %.0104, %bb.ad ]
  %.0102.be = phi i32 [ %.0102, %bb.c ], [ %.0102, %bb.d ], [ %.0102, %bb.f ], [ %.0102, %bb.g ], [ %.0102, %bb.h ], [ %.0102, %bb.b ], [ %.0102, %bb.i ], [ %.0102, %bb.j ], [ %.0102, %bb.k ], [ %.0102, %bb.l ], [ 2, %bb.m ], [ 1, %bb.n ], [ %.0102, %bb.o ], [ %.0102, %bb.p ], [ %.0102, %bb.q ], [ %.0102, %bb.r ], [ %.0102, %bb.s ], [ %.0102, %bb.t ], [ %.0102, %bb.u ], [ %.0102, %bb.v ], [ %.0102, %bb.w ], [ %.0102, %bb.x ], [ %.0102, %bb.y ], [ %.0102, %bb.z ], [ %.0102, %bb.aa ], [ %.0102, %bb.ab ], [ %.0102, %bb.ac ], [ %.0102, %bb.ad ]
  %.0100.be = phi i32 [ %.0100, %bb.c ], [ %.0100, %bb.d ], [ %.0100, %bb.f ], [ %.0100, %bb.g ], [ %.0100, %bb.h ], [ %.0100, %bb.b ], [ %.0100, %bb.i ], [ %.0100, %bb.j ], [ %.0100, %bb.k ], [ %.0100, %bb.l ], [ %.0100, %bb.m ], [ %.0100, %bb.n ], [ %.0100, %bb.o ], [ %.0100, %bb.p ], [ %.0100, %bb.q ], [ %.0100, %bb.r ], [ %.0100, %bb.s ], [ %.0100, %bb.t ], [ %.0100, %bb.u ], [ %.0100, %bb.v ], [ %.0100, %bb.w ], [ %.0100, %bb.x ], [ %.0100, %bb.y ], [ 2, %bb.z ], [ 1, %bb.aa ], [ %.0100, %bb.ab ], [ %.0100, %bb.ac ], [ %.0100, %bb.ad ]
  %.098.be = phi i32 [ %.098, %bb.c ], [ %.098, %bb.d ], [ %.098, %bb.f ], [ %.098, %bb.g ], [ %.098, %bb.h ], [ %.098, %bb.b ], [ %.098, %bb.i ], [ %.098, %bb.j ], [ %.098, %bb.k ], [ %.098, %bb.l ], [ %.098, %bb.m ], [ %.098, %bb.n ], [ %.098, %bb.o ], [ %.098, %bb.p ], [ %.098, %bb.q ], [ %.098, %bb.r ], [ %.098, %bb.s ], [ %.098, %bb.t ], [ %.098, %bb.u ], [ %.098, %bb.v ], [ %.098, %bb.w ], [ %.098, %bb.x ], [ %.098, %bb.y ], [ %.098, %bb.z ], [ %.098, %bb.aa ], [ %.098, %bb.ab ], [ 2, %bb.ac ], [ 1, %bb.ad ]
  %.096.be = phi ptr [ %.096, %bb.c ], [ %.096, %bb.d ], [ %.096, %bb.f ], [ %.096, %bb.g ], [ %.096, %bb.h ], [ %.096, %bb.b ], [ %.096, %bb.i ], [ %.096, %bb.j ], [ %.096, %bb.k ], [ %.096, %bb.l ], [ %.096, %bb.m ], [ %.096, %bb.n ], [ %.096, %bb.o ], [ %.096, %bb.p ], [ %.096, %bb.q ], [ %.096, %bb.r ], [ %.096, %bb.s ], [ %.096, %bb.t ], [ %.096, %bb.u ], [ %i.r, %bb.v ], [ %.096, %bb.w ], [ %.096, %bb.x ], [ %.096, %bb.y ], [ %.096, %bb.z ], [ %.096, %bb.aa ], [ %.096, %bb.ab ], [ %.096, %bb.ac ], [ %.096, %bb.ad ]
  %.094.be = phi ptr [ %.094, %bb.c ], [ %.094, %bb.d ], [ %.094, %bb.f ], [ %.094, %bb.g ], [ %.094, %bb.h ], [ %.094, %bb.b ], [ %.094, %bb.i ], [ %.094, %bb.j ], [ %.094, %bb.k ], [ %.094, %bb.l ], [ %.094, %bb.m ], [ %.094, %bb.n ], [ %.094, %bb.o ], [ %i.p, %bb.p ], [ %.094, %bb.q ], [ %.094, %bb.r ], [ %.094, %bb.s ], [ %.094, %bb.t ], [ %.094, %bb.u ], [ %.094, %bb.v ], [ %.094, %bb.w ], [ %.094, %bb.x ], [ %.094, %bb.y ], [ %.094, %bb.z ], [ %.094, %bb.aa ], [ %.094, %bb.ab ], [ %.094, %bb.ac ], [ %.094, %bb.ad ]
  %.092.be = phi ptr [ %.092, %bb.c ], [ %.092, %bb.d ], [ %.092, %bb.f ], [ %.092, %bb.g ], [ %.092, %bb.h ], [ %.092, %bb.b ], [ %.092, %bb.i ], [ %i.m, %bb.j ], [ %.092, %bb.k ], [ %.092, %bb.l ], [ %.092, %bb.m ], [ %.092, %bb.n ], [ %.092, %bb.o ], [ %.092, %bb.p ], [ %.092, %bb.q ], [ %.092, %bb.r ], [ %.092, %bb.s ], [ %.092, %bb.t ], [ %.092, %bb.u ], [ %.092, %bb.v ], [ %.092, %bb.w ], [ %.092, %bb.x ], [ %.092, %bb.y ], [ %.092, %bb.z ], [ %.092, %bb.aa ], [ %.092, %bb.ab ], [ %.092, %bb.ac ], [ %.092, %bb.ad ]
  br label %bb.b, !llvm.loop !4

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @optarg, align 8
  call void @simple_string_list_append(ptr noundef nonnull %4, ptr noundef %i.h) #10
  br label %.backedge

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @optarg, align 8
  %i.j = call zeroext i1 @option_parse_int(ptr noundef %i.i, ptr noundef nonnull @.str.32, i32 noundef -1, i32 noundef 2147483647, ptr noundef nonnull %i.b) #10
  br i1 %i.j, label %.backedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @exit(i32 noundef 1) #11
  unreachable

bb.f:                                             ; preds = %bb.b
  br label %.backedge

bb.g:                                             ; preds = %bb.b
  br label %.backedge

bb.h:                                             ; preds = %bb.b
  br label %.backedge

bb.i:                                             ; preds = %bb.b
  %i.k = load ptr, ptr @optarg, align 8
  call void @simple_string_list_append(ptr noundef nonnull %2, ptr noundef %i.k) #10
  br label %.backedge

bb.j:                                             ; preds = %bb.b
  %i.l = load ptr, ptr @optarg, align 8
  %i.m = call ptr @pg_strdup(ptr noundef %i.l) #10
  br label %.backedge

bb.k:                                             ; preds = %bb.b
  br label %.backedge

bb.l:                                             ; preds = %bb.b
  br label %.backedge

bb.m:                                             ; preds = %bb.b
  br label %.backedge

bb.n:                                             ; preds = %bb.b
  br label %.backedge

bb.o:                                             ; preds = %bb.b
  %i.n = load ptr, ptr @optarg, align 8
  call void @simple_string_list_append(ptr noundef nonnull %3, ptr noundef %i.n) #10
  br label %.backedge

bb.p:                                             ; preds = %bb.b
  %i.o = load ptr, ptr @optarg, align 8
  %i.p = call ptr @pg_strdup(ptr noundef %i.o) #10
  br label %.backedge

bb.q:                                             ; preds = %bb.b
  br label %.backedge

bb.r:                                             ; preds = %bb.b
  br label %.backedge

bb.s:                                             ; preds = %bb.b
  br label %.backedge

bb.t:                                             ; preds = %bb.b
  br label %.backedge

bb.u:                                             ; preds = %bb.b
  br label %.backedge

bb.v:                                             ; preds = %bb.b
  %i.q = load ptr, ptr @optarg, align 8
  %i.r = call ptr @pg_strdup(ptr noundef %i.q) #10
  br label %.backedge

bb.w:                                             ; preds = %bb.b
  %i.s = load ptr, ptr @optarg, align 8
  %i.t = call ptr @pg_strdup(ptr noundef %i.s) #10
  br label %.backedge

bb.x:                                             ; preds = %bb.b
  br label %.backedge

bb.y:                                             ; preds = %bb.b
  br label %.backedge

bb.z:                                             ; preds = %bb.b
  br label %.backedge

bb.aa:                                            ; preds = %bb.b
  br label %.backedge

bb.ab:                                            ; preds = %bb.b
  br label %.backedge

bb.ac:                                            ; preds = %bb.b
  br label %.backedge

bb.ad:                                            ; preds = %bb.b
  br label %.backedge

bb.ae:                                            ; preds = %bb.b
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 2, ptr noundef nonnull @.str.33, ptr noundef %i.e) #10
  call void @exit(i32 noundef 1) #11
  unreachable

bb.af:                                            ; preds = %bb.b
  %i.u = load i32, ptr @optind, align 4           ; 3 uses
  %i.v = sub i32 %0, %i.u
  switch i32 %i.v, label %bb.ag [
    i32 0, label %.thread
    i32 1, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  %i.w = add i32 %i.u, 1
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %1, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.34, ptr noundef %i.z) #10
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 2, ptr noundef nonnull @.str.33, ptr noundef %i.e) #10
  call void @exit(i32 noundef 1) #11
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.aa = sext i32 %i.u to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %1, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.thread, label %bb.al

.thread:                                          ; preds = %bb.af, %bb.ah
  %i.ae = trunc nuw i8 %.0120 to i1
  br i1 %i.ae, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.thread
  %i.af = call ptr @simple_prompt(ptr noundef nonnull @.str.35, i1 noundef zeroext true) #10
  br label %bb.al

bb.aj:                                            ; preds = %.thread
  %i.ag = call ptr @getenv(ptr noundef nonnull @.str.36) #10 ; 2 uses
  %.not130 = icmp eq ptr %i.ag, null
  br i1 %.not130, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ah = call ptr @get_user_name_or_exit(ptr noundef %i.e) #10
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ai, %bb.ak, %bb.ah
  %.1 = phi ptr [ %i.af, %bb.ai ], [ %i.ac, %bb.ah ], [ %i.ah, %bb.ak ], [ %i.ag, %bb.aj ] ; 2 uses
  br i1 %.0118, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.ai = call ptr @simple_prompt(ptr noundef nonnull @.str.37, i1 noundef zeroext false) #10 ; 2 uses
  %i.aj = call ptr @simple_prompt(ptr noundef nonnull @.str.38, i1 noundef zeroext false) #10 ; 2 uses
  %i.ak = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ai, ptr noundef nonnull dereferenceable(1) %i.aj) #12
  %.not131 = icmp eq i32 %i.ak, 0
  br i1 %.not131, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.al = load ptr, ptr @stderr, align 8
  %i.am = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.al, ptr noundef nonnull @.str.39) #10 ; 0 uses
  call void @exit(i32 noundef 1) #11
  unreachable

bb.ao:                                            ; preds = %bb.am
  call void @free(ptr noundef nonnull %i.aj) #10
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.al
  %.0117 = phi ptr [ %i.ai, %bb.ao ], [ null, %bb.al ] ; 2 uses
  %i.an = icmp eq i32 %.0108, 0
  br i1 %i.an, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.ao = trunc nuw i8 %.0120 to i1
  br i1 %i.ao, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ap = call zeroext i1 @yesno_prompt(ptr noundef nonnull @.str.40) #10
  br i1 %i.ap, label %.thread153, label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar, %bb.ap
  %.2110 = phi i32 [ %.0108, %bb.ap ], [ 1, %bb.ar ], [ 1, %bb.aq ] ; 4 uses
  %i.aq = icmp eq i32 %.2110, 2                   ; 5 uses
  %spec.select = select i1 %i.aq, i32 2, i32 %.0111 ; 2 uses
  %spec.select145 = select i1 %i.aq, i32 2, i32 %.0106 ; 2 uses
  %i.ar = icmp eq i32 %spec.select, 0
  br i1 %i.ar, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.as = trunc nuw i8 %.0120 to i1
  br i1 %i.as, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.at = call zeroext i1 @yesno_prompt(ptr noundef nonnull @.str.41) #10
  br i1 %i.at, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av, %bb.as
  %.3114 = phi i32 [ %spec.select, %bb.as ], [ 1, %bb.av ], [ 2, %bb.au ] ; 3 uses
  %i.au = icmp eq i32 %spec.select145, 0
  br i1 %i.au, label %bb.ax, label %.thread153

bb.ax:                                            ; preds = %bb.aw
  %i.av = trunc nuw i8 %.0120 to i1
  br i1 %i.av, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.aw = call zeroext i1 @yesno_prompt(ptr noundef nonnull @.str.42) #10
  br i1 %i.aw, label %.thread153, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  br label %.thread153

.thread153:                                       ; preds = %bb.ar, %bb.ay, %bb.az, %bb.aw
  %.3114158 = phi i32 [ %.3114, %bb.aw ], [ %.3114, %bb.az ], [ %.3114, %bb.ay ], [ 2, %bb.ar ]
  %.2110151157 = phi i32 [ %.2110, %bb.aw ], [ %.2110, %bb.az ], [ %.2110, %bb.ay ], [ 2, %bb.ar ]
  %i.ax = phi i1 [ %i.aq, %bb.aw ], [ %i.aq, %bb.az ], [ %i.aq, %bb.ay ], [ true, %bb.ar ]
  %.3 = phi i32 [ %spec.select145, %bb.aw ], [ 1, %bb.az ], [ 2, %bb.ay ], [ 2, %bb.ar ]
  %7 = icmp eq i32 %.0104, 0
  %spec.store.select1 = select i1 %7, i32 2, i32 %.0104
  %8 = icmp eq i32 %.0102, 0
  %spec.store.select3 = select i1 %8, i32 2, i32 %.0102
  store ptr null, ptr %5, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.092, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.094, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %.096, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %.0124, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.bc, align 8
  %i.bd = call ptr @connectMaintenanceDatabase(ptr noundef nonnull %5, ptr noundef %i.e, i1 noundef zeroext %.0122) #10 ; 9 uses
  %i.be = call i32 @PQclientEncoding(ptr noundef %i.bd) #10
  call void @setFmtEncoding(i32 noundef %i.be) #10
  call void @initPQExpBuffer(ptr noundef nonnull %6) #10
  %i.bf = call ptr @fmtId(ptr noundef %.1) #10
  call void (ptr, ptr, ...) @printfPQExpBuffer(ptr noundef nonnull %6, ptr noundef nonnull @.str.43, ptr noundef %i.bf) #10
  %.not132 = icmp eq ptr %.0117, null
  br i1 %.not132, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %.thread153
  call void @appendPQExpBufferStr(ptr noundef nonnull %6, ptr noundef nonnull @.str.44) #10
  %i.bg = call ptr @PQencryptPasswordConn(ptr noundef %i.bd, ptr noundef nonnull %.0117, ptr noundef %.1, ptr noundef null) #10 ; 3 uses
  %.not133 = icmp eq ptr %i.bg, null
  br i1 %.not133, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.bh = call ptr @PQerrorMessage(ptr noundef %i.bd) #10
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef %i.bh) #10
  call void @exit(i32 noundef 1) #11
  unreachable

bb.bc:                                            ; preds = %bb.ba
  call void @appendStringLiteralConn(ptr noundef nonnull %6, ptr noundef nonnull %i.bg, ptr noundef %i.bd) #10
  call void @PQfreemem(ptr noundef nonnull %i.bg) #10
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.thread153
  br i1 %i.ax, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @appendPQExpBufferStr(ptr noundef nonnull %6, ptr noundef nonnull @.str.46) #10
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.bi = icmp eq i32 %.2110151157, 1
  br i1 %i.bi, label %9, label %10

9:                                                ; preds = %bb.bf
  call void @appendPQExpBufferStr(ptr noundef nonnull %6, ptr noundef nonnull @.str.47) #10
  br label %10

10:                                               ; preds = %9, %bb.bf
  %11 = icmp eq i32 %.3114158, 2
  %.str.48..str.49 = select i1 %11, ptr @.str.48, ptr @.str.49
  call void @appendPQExpBufferStr(ptr noundef nonnull %6, ptr noundef nonnull %.str.48..str.49) #10
  %12 = icmp eq i32 %.3, 2
  %spec.select269 = select i1 %12, ptr @.str.50, ptr @.str.51
  call void @appendPQExpBufferStr(ptr noundef nonnull %6, ptr noundef nonnull %spec.select269) #10
  switch i32 %spec.store.select1, label %14 [
    i32 2, label %.sink.split
    i32 1, label %13
  ]

13:                                               ; preds = %10
  br label %.sink.split

.sink.split:                                      ; preds = %10, %13
  %.str.52.sink = phi ptr [ @.str.53, %13 ], [ @.str.52, %10 ]
  call void @appendPQExpBufferStr(ptr noundef nonnull %6, ptr noundef nonnull %.str.52.sink) #10
  br label %14

14:                                               ; preds = %.sink.split, %10
  switch i32 %spec.store.select3, label %.thread160 [
    i32 2, label %.sink.split268
    i32 1, label %15
  ]

15:                                               ; preds = %14
  br label %.sink.split268

.sink.split268:                                   ; preds = %14, %15
  %.str.54.sink = phi ptr [ @.str.55, %15 ], [ @.str.54, %14 ]
  call void @appendPQExpBufferStr(ptr noundef nonnull %6, ptr noundef nonnull %.str.54.sink) #10
  br label %.thread160

.thread160:                                       ; preds = %.sink.split268, %14
  %i.bj = icmp eq i32 %.0100, 2
  %.str.56..str.57 = select i1 %i.bj, ptr @.str.56, ptr @.str.57
  call void @appendPQExpBufferStr(ptr noundef nonnull %6, ptr noundef nonnull %.str.56..str.57) #10
  %i.bk = icmp eq i32 %.098, 2
  %.str.58.sink = select i1 %i.bk, ptr @.str.58, ptr @.str.59
  call void @appendPQExpBufferStr(ptr noundef nonnull %6, ptr noundef nonnull %.str.58.sink) #10
  %i.bl = load i32, ptr %i.b, align 4             ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, -2
  br i1 %i.bm, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.thread160
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %6, ptr noundef nonnull @.str.60, i32 noundef %i.bl) #10
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.thread160
  %.not134 = icmp eq ptr %.0115, null
  br i1 %.not134, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @appendPQExpBufferStr(ptr noundef nonnull %6, ptr noundef nonnull @.str.61) #10
  call void @appendStringLiteralConn(ptr noundef nonnull %6, ptr noundef nonnull %.0115, ptr noundef %i.bd) #10
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.bn = load ptr, ptr %2, align 8
  %.not135 = icmp eq ptr %i.bn, null
  br i1 %.not135, label %.loopexit162, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @appendPQExpBufferStr(ptr noundef nonnull %6, ptr noundef nonnull @.str.62) #10
  %.090193 = load ptr, ptr %2, align 8            ; 2 uses
  %.not136194 = icmp eq ptr %.090193, null
  br i1 %.not136194, label %.loopexit162, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bk, %bb.bn
  %.090195 = phi ptr [ %.090, %bb.bn ], [ %.090193, %bb.bk ] ; 3 uses
  %i.bo = load ptr, ptr %.090195, align 8
  %.not144 = icmp eq ptr %i.bo, null
  %i.bp = getelementptr inbounds nuw i8, ptr %.090195, i64 9
  %i.bq = call ptr @fmtId(ptr noundef nonnull %i.bp) #10 ; 2 uses
  br i1 %.not144, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %6, ptr noundef nonnull @.str.63, ptr noundef %i.bq) #10
  br label %bb.bn

bb.bm:                                            ; preds = %.lr.ph
  call void @appendPQExpBufferStr(ptr noundef nonnull %6, ptr noundef %i.bq) #10
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm
  %.090 = load ptr, ptr %.090195, align 8         ; 2 uses
  %.not136 = icmp eq ptr %.090, null
  br i1 %.not136, label %.loopexit162, label %.lr.ph, !llvm.loop !6

.loopexit162:                                     ; preds = %bb.bn, %bb.bk, %bb.bj
  %i.br = load ptr, ptr %3, align 8
  %.not137 = icmp eq ptr %i.br, null
  br i1 %.not137, label %.loopexit161, label %bb.bo

bb.bo:                                            ; preds = %.loopexit162
  call void @appendPQExpBufferStr(ptr noundef nonnull %6, ptr noundef nonnull @.str.64) #10
  %.089196 = load ptr, ptr %3, align 8            ; 2 uses
  %.not138197 = icmp eq ptr %.089196, null
  br i1 %.not138197, label %.loopexit161, label %.lr.ph199

.lr.ph199:                                        ; preds = %bb.bo, %bb.br
  %.089198 = phi ptr [ %.089, %bb.br ], [ %.089196, %bb.bo ] ; 3 uses
  %i.bs = load ptr, ptr %.089198, align 8
  %.not143 = icmp eq ptr %i.bs, null
  %i.bt = getelementptr inbounds nuw i8, ptr %.089198, i64 9
  %i.bu = call ptr @fmtId(ptr noundef nonnull %i.bt) #10 ; 2 uses
  br i1 %.not143, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph199
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %6, ptr noundef nonnull @.str.63, ptr noundef %i.bu) #10
  br label %bb.br

bb.bq:                                            ; preds = %.lr.ph199
  call void @appendPQExpBufferStr(ptr noundef nonnull %6, ptr noundef %i.bu) #10
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %.089 = load ptr, ptr %.089198, align 8         ; 2 uses
  %.not138 = icmp eq ptr %.089, null
  br i1 %.not138, label %.loopexit161, label %.lr.ph199, !llvm.loop !7

.loopexit161:                                     ; preds = %bb.br, %bb.bo, %.loopexit162
  %i.bv = load ptr, ptr %4, align 8
  %.not139 = icmp eq ptr %i.bv, null
  br i1 %.not139, label %.loopexit, label %bb.bs

bb.bs:                                            ; preds = %.loopexit161
  call void @appendPQExpBufferStr(ptr noundef nonnull %6, ptr noundef nonnull @.str.65) #10
  %.0200 = load ptr, ptr %4, align 8              ; 2 uses
  %.not140201 = icmp eq ptr %.0200, null
  br i1 %.not140201, label %.loopexit, label %.lr.ph203

.lr.ph203:                                        ; preds = %bb.bs, %bb.bv
  %.0202 = phi ptr [ %.0, %bb.bv ], [ %.0200, %bb.bs ] ; 3 uses
  %i.bw = load ptr, ptr %.0202, align 8
  %.not142 = icmp eq ptr %i.bw, null
  %i.bx = getelementptr inbounds nuw i8, ptr %.0202, i64 9
  %i.by = call ptr @fmtId(ptr noundef nonnull %i.bx) #10 ; 2 uses
  br i1 %.not142, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph203
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %6, ptr noundef nonnull @.str.63, ptr noundef %i.by) #10
  br label %bb.bv

bb.bu:                                            ; preds = %.lr.ph203
  call void @appendPQExpBufferStr(ptr noundef nonnull %6, ptr noundef %i.by) #10
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %.0 = load ptr, ptr %.0202, align 8             ; 2 uses
  %.not140 = icmp eq ptr %.0, null
  br i1 %.not140, label %.loopexit, label %.lr.ph203, !llvm.loop !8

.loopexit:                                        ; preds = %bb.bv, %bb.bs, %.loopexit161
  call void @appendPQExpBufferChar(ptr noundef nonnull %6, i8 noundef signext 59) #10
  br i1 %.0122, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %.loopexit
  %i.bz = load ptr, ptr %6, align 8
  %i.ca = call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.66, ptr noundef %i.bz) #10 ; 0 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.loopexit
  %i.cb = load ptr, ptr %6, align 8
  %i.cc = call ptr @PQexec(ptr noundef %i.bd, ptr noundef %i.cb) #10 ; 2 uses
  %i.cd = call i32 @PQresultStatus(ptr noundef %i.cc) #10
  %.not141 = icmp eq i32 %i.cd, 1
  br i1 %.not141, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ce = call ptr @PQerrorMessage(ptr noundef %i.bd) #10
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.67, ptr noundef %i.ce) #10
  call void @PQfinish(ptr noundef %i.bd) #10
  call void @exit(i32 noundef 1) #11
  unreachable

bb.bz:                                            ; preds = %bb.bx
  call void @PQclear(ptr noundef %i.cc) #10
  call void @PQfinish(ptr noundef %i.bd) #10
  call void @exit(i32 noundef 0) #13
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare void @pg_logging_init(ptr noundef) local_unnamed_addr #3

declare ptr @get_progname(ptr noundef) local_unnamed_addr #3

declare void @set_pglocale_pgservice(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @handle_help_version_opts(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @help(ptr noundef %0) #4 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.68, ptr noundef %0) #10 ; 0 uses
  %i.b = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.69) #10 ; 0 uses
  %i.c = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.70, ptr noundef %0) #10 ; 0 uses
  %i.d = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.71) #10 ; 0 uses
  %i.e = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.72) #10 ; 0 uses
  %i.f = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.73) #10 ; 0 uses
  %i.g = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.74) #10 ; 0 uses
  %i.h = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.75) #10 ; 0 uses
  %i.i = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.76) #10 ; 0 uses
  %i.j = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.77) #10 ; 0 uses
  %i.k = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.78) #10 ; 0 uses
  %i.l = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.79) #10 ; 0 uses
  %i.m = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.80) #10 ; 0 uses
  %i.n = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.81) #10 ; 0 uses
  %i.o = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.82) #10 ; 0 uses
  %i.p = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.83) #10 ; 0 uses
  %i.q = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.84) #10 ; 0 uses
  %i.r = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.85) #10 ; 0 uses
  %i.s = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.86) #10 ; 0 uses
  %i.t = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.87) #10 ; 0 uses
  %i.u = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.88) #10 ; 0 uses
  %i.v = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.89) #10 ; 0 uses
  %i.w = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.90) #10 ; 0 uses
  %i.x = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.91) #10 ; 0 uses
  %i.y = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.92) #10 ; 0 uses
  %i.z = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.93) #10 ; 0 uses
  %i.aa = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.94) #10 ; 0 uses
  %i.ab = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.95) #10 ; 0 uses
  %i.ac = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.96) #10 ; 0 uses
  %i.ad = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.97) #10 ; 0 uses
  %i.ae = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.98) #10 ; 0 uses
  %i.af = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.99) #10 ; 0 uses
  %i.ag = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.100) #10 ; 0 uses
  %i.ah = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.101) #10 ; 0 uses
end_hunk_0
