Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/controldata?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ClusterInfo = type { %struct.ControlData, ptr, %struct.DbInfoArr, ptr, ptr, ptr, ptr, ptr, i16, i32, ptr, i32, ptr, i32, ptr, i32, i8 }
%struct.ControlData = type { i32, i32, [25 x i8], i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8 }
%struct.DbInfoArr = type { ptr, i32 }
%struct.UserOpts = type { i8, i8, i8, i32, i32, ptr, ptr, i8, i32 }

@old_cluster = external global %struct.ClusterInfo, align 8
@user_opts = external local_unnamed_addr global %struct.UserOpts, align 8
@.str = private unnamed_addr constant [11 x i8] c"LC_COLLATE\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"LC_CTYPE\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"LC_MONETARY\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"LC_NUMERIC\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"LC_TIME\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"LANG\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"LANGUAGE\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"LC_ALL\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"LC_MESSAGES\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"\22%s/pg_controldata\22 \22%s\22\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"could not get control data using %s: %m\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Database cluster state:\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"%d: database cluster state problem\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"shut down in recovery\00", align 1
@.str.16 = private unnamed_addr constant [126 x i8] c"The source cluster was shut down while in recovery mode.  To upgrade, use \22rsync\22 as documented or shut it down as a primary.\00", align 1
@.str.17 = private unnamed_addr constant [126 x i8] c"The target cluster was shut down while in recovery mode.  To upgrade, use \22rsync\22 as documented or shut it down as a primary.\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"shut down\00", align 1
@.str.19 = private unnamed_addr constant [70 x i8] c"The source cluster was not shut down cleanly, state reported as: \22%s\22\00", align 1
@.str.20 = private unnamed_addr constant [70 x i8] c"The target cluster was not shut down cleanly, state reported as: \22%s\22\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"could not get control data using %s: %s\00", align 1
@.str.22 = private unnamed_addr constant [52 x i8] c"The source cluster lacks cluster state information:\00", align 1
@.str.23 = private unnamed_addr constant [52 x i8] c"The target cluster lacks cluster state information:\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"pg_resetxlog\22 -n\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"pg_resetwal\22 -n\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"\22%s/%s \22%s\22\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"pg_controldata\22\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"pg_control version number:\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"%d: pg_resetwal problem\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"Catalog version number:\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"%d: controldata retrieval problem\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"Latest checkpoint's TimeLineID:\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"First log file ID after reset:\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"First log file segment after reset:\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"Latest checkpoint's NextXID:\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"Latest checkpoint's NextOID:\00", align 1
@.str.38 = private unnamed_addr constant [37 x i8] c"Latest checkpoint's NextMultiXactId:\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"Latest checkpoint's oldestXID:\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"Latest checkpoint's oldestMultiXid:\00", align 1
@.str.41 = private unnamed_addr constant [37 x i8] c"Latest checkpoint's NextMultiOffset:\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"First log segment after reset:\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"Float8 argument passing:\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"by value\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"Maximum data alignment:\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"Database block size:\00", align 1
@.str.48 = private unnamed_addr constant [38 x i8] c"Blocks per segment of large relation:\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"WAL block size:\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"Bytes per WAL segment:\00", align 1
@.str.51 = private unnamed_addr constant [31 x i8] c"Maximum length of identifiers:\00", align 1
@.str.52 = private unnamed_addr constant [29 x i8] c"Maximum columns in an index:\00", align 1
@.str.53 = private unnamed_addr constant [31 x i8] c"Maximum size of a TOAST chunk:\00", align 1
@.str.54 = private unnamed_addr constant [30 x i8] c"Size of a large-object chunk:\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"Date/time type storage:\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"64-bit integers\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"checksum\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"Default char data signedness:\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"%08X%08X%08X\00", align 1
@.str.62 = private unnamed_addr constant [60 x i8] c"The source cluster lacks some required control information:\00", align 1
@.str.63 = private unnamed_addr constant [60 x i8] c"The target cluster lacks some required control information:\00", align 1
@.str.64 = private unnamed_addr constant [22 x i8] c"  checkpoint next XID\00", align 1
@.str.65 = private unnamed_addr constant [29 x i8] c"  latest checkpoint next OID\00", align 1
@.str.66 = private unnamed_addr constant [37 x i8] c"  latest checkpoint next MultiXactId\00", align 1
@.str.67 = private unnamed_addr constant [39 x i8] c"  latest checkpoint oldest MultiXactId\00", align 1
@.str.68 = private unnamed_addr constant [30 x i8] c"  latest checkpoint oldestXID\00", align 1
@.str.69 = private unnamed_addr constant [41 x i8] c"  latest checkpoint next MultiXactOffset\00", align 1
@.str.70 = private unnamed_addr constant [32 x i8] c"  first WAL segment after reset\00", align 1
@.str.71 = private unnamed_addr constant [33 x i8] c"  float8 argument passing method\00", align 1
@.str.72 = private unnamed_addr constant [20 x i8] c"  maximum alignment\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"  block size\00", align 1
@.str.74 = private unnamed_addr constant [30 x i8] c"  large relation segment size\00", align 1
@.str.75 = private unnamed_addr constant [17 x i8] c"  WAL block size\00", align 1
@.str.76 = private unnamed_addr constant [19 x i8] c"  WAL segment size\00", align 1
@.str.77 = private unnamed_addr constant [28 x i8] c"  maximum identifier length\00", align 1
@.str.78 = private unnamed_addr constant [36 x i8] c"  maximum number of indexed columns\00", align 1
@.str.79 = private unnamed_addr constant [27 x i8] c"  maximum TOAST chunk size\00", align 1
@.str.80 = private unnamed_addr constant [26 x i8] c"  large-object chunk size\00", align 1
@.str.81 = private unnamed_addr constant [28 x i8] c"  dates/times are integers?\00", align 1
@.str.82 = private unnamed_addr constant [24 x i8] c"  data checksum version\00", align 1
@.str.83 = private unnamed_addr constant [26 x i8] c"  default char signedness\00", align 1
@.str.84 = private unnamed_addr constant [66 x i8] c"Cannot continue without required control information, terminating\00", align 1
@.str.85 = private unnamed_addr constant [124 x i8] c"old and new pg_controldata alignments are invalid or do not match.\0ALikely one cluster is a 32-bit install, the other 64-bit\00", align 1
@.str.86 = private unnamed_addr constant [67 x i8] c"old and new pg_controldata block sizes are invalid or do not match\00", align 1
@.str.87 = private unnamed_addr constant [86 x i8] c"old and new pg_controldata maximum relation segment sizes are invalid or do not match\00", align 1
@.str.88 = private unnamed_addr constant [71 x i8] c"old and new pg_controldata WAL block sizes are invalid or do not match\00", align 1
@.str.89 = private unnamed_addr constant [73 x i8] c"old and new pg_controldata WAL segment sizes are invalid or do not match\00", align 1
@.str.90 = private unnamed_addr constant [82 x i8] c"old and new pg_controldata maximum identifier lengths are invalid or do not match\00", align 1
@.str.91 = private unnamed_addr constant [79 x i8] c"old and new pg_controldata maximum indexed columns are invalid or do not match\00", align 1
@.str.92 = private unnamed_addr constant [81 x i8] c"old and new pg_controldata maximum TOAST chunk sizes are invalid or do not match\00", align 1
@.str.93 = private unnamed_addr constant [80 x i8] c"old and new pg_controldata large-object chunk sizes are invalid or do not match\00", align 1
@.str.94 = private unnamed_addr constant [64 x i8] c"old and new pg_controldata date/time storage types do not match\00", align 1
@.str.95 = private unnamed_addr constant [47 x i8] c"checksums are being enabled in the old cluster\00", align 1
@.str.96 = private unnamed_addr constant [61 x i8] c"old cluster does not use data checksums but the new one does\00", align 1
@.str.97 = private unnamed_addr constant [57 x i8] c"old cluster uses data checksums but the new one does not\00", align 1
@.str.98 = private unnamed_addr constant [66 x i8] c"old and new cluster pg_controldata checksum versions do not match\00", align 1
@.str.99 = private unnamed_addr constant [33 x i8] c"Adding \22.old\22 suffix to old \22%s\22\00", align 1
@.str.100 = private unnamed_addr constant [18 x i8] c"global/pg_control\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"%s/%s.old\00", align 1
@.str.103 = private unnamed_addr constant [39 x i8] c"could not rename file \22%s\22 to \22%s\22: %m\00", align 1
@.str.104 = private unnamed_addr constant [209 x i8] c"\0AIf you want to start the old cluster, you will need to remove\0Athe \22.old\22 suffix from \22%s/%s.old\22.\0ABecause \22link\22 mode was used, the old cluster cannot be safely\0Astarted once the new cluster has been started.\00", align 1
@.str.105 = private unnamed_addr constant [80 x i8] c"\0ABecause \22swap\22 mode was used, the old cluster can no longer be\0Asafely started.\00", align 1
@.str.106 = private unnamed_addr constant [27 x i8] c"unrecognized transfer mode\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @get_control_data(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 10 uses
  %i.b = alloca [1024 x i8], align 16             ; 34 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.c = icmp eq ptr %0, @old_cluster             ; 5 uses
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @user_opts, i64 1), align 1, !range !4
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = select i1 %i.c, i1 %i.e, i1 false        ; 4 uses
  %i.g = tail call ptr @getenv(ptr noundef nonnull @.str) #9 ; 2 uses
  %.not465 = icmp eq ptr %i.g, null
  br i1 %.not465, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @pg_strdup(ptr noundef nonnull %i.g) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0346 = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.i = tail call ptr @getenv(ptr noundef nonnull @.str.1) #9 ; 2 uses
  %.not466 = icmp eq ptr %i.i, null
  br i1 %.not466, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @pg_strdup(ptr noundef nonnull %i.i) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0345 = phi ptr [ %i.j, %bb.d ], [ null, %bb.c ] ; 3 uses
  %i.k = tail call ptr @getenv(ptr noundef nonnull @.str.2) #9 ; 2 uses
  %.not467 = icmp eq ptr %i.k, null
  br i1 %.not467, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @pg_strdup(ptr noundef nonnull %i.k) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0344 = phi ptr [ %i.l, %bb.f ], [ null, %bb.e ] ; 3 uses
  %i.m = tail call ptr @getenv(ptr noundef nonnull @.str.3) #9 ; 2 uses
  %.not468 = icmp eq ptr %i.m, null
  br i1 %.not468, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call ptr @pg_strdup(ptr noundef nonnull %i.m) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0343 = phi ptr [ %i.n, %bb.h ], [ null, %bb.g ] ; 3 uses
  %i.o = tail call ptr @getenv(ptr noundef nonnull @.str.4) #9 ; 2 uses
  %.not469 = icmp eq ptr %i.o, null
  br i1 %.not469, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call ptr @pg_strdup(ptr noundef nonnull %i.o) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0342 = phi ptr [ %i.p, %bb.j ], [ null, %bb.i ] ; 3 uses
  %i.q = tail call ptr @getenv(ptr noundef nonnull @.str.5) #9 ; 2 uses
  %.not470 = icmp eq ptr %i.q, null
  br i1 %.not470, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = tail call ptr @pg_strdup(ptr noundef nonnull %i.q) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0341 = phi ptr [ %i.r, %bb.l ], [ null, %bb.k ] ; 3 uses
  %i.s = tail call ptr @getenv(ptr noundef nonnull @.str.6) #9 ; 2 uses
  %.not471 = icmp eq ptr %i.s, null
  br i1 %.not471, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = tail call ptr @pg_strdup(ptr noundef nonnull %i.s) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0340 = phi ptr [ %i.t, %bb.n ], [ null, %bb.m ] ; 3 uses
  %i.u = tail call ptr @getenv(ptr noundef nonnull @.str.7) #9 ; 2 uses
  %.not472 = icmp eq ptr %i.u, null
  br i1 %.not472, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = tail call ptr @pg_strdup(ptr noundef nonnull %i.u) #9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0339 = phi ptr [ %i.v, %bb.p ], [ null, %bb.o ] ; 3 uses
  %i.w = tail call ptr @getenv(ptr noundef nonnull @.str.8) #9 ; 2 uses
  %.not473 = icmp eq ptr %i.w, null
  br i1 %.not473, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.x = tail call ptr @pg_strdup(ptr noundef nonnull %i.w) #9
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0338 = phi ptr [ %i.x, %bb.r ], [ null, %bb.q ] ; 3 uses
  %i.y = tail call i32 @unsetenv(ptr noundef nonnull @.str) #9 ; 0 uses
  %i.z = tail call i32 @unsetenv(ptr noundef nonnull @.str.1) #9 ; 0 uses
  %i.aa = tail call i32 @unsetenv(ptr noundef nonnull @.str.2) #9 ; 0 uses
  %i.ab = tail call i32 @unsetenv(ptr noundef nonnull @.str.3) #9 ; 0 uses
  %i.ac = tail call i32 @unsetenv(ptr noundef nonnull @.str.4) #9 ; 0 uses
  %i.ad = tail call i32 @unsetenv(ptr noundef nonnull @.str.5) #9 ; 0 uses
  %i.ae = tail call i32 @unsetenv(ptr noundef nonnull @.str.6) #9 ; 0 uses
  %i.af = tail call i32 @unsetenv(ptr noundef nonnull @.str.7) #9 ; 0 uses
  %i.ag = tail call i32 @setenv(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 1) #9 ; 0 uses
  br i1 %i.f, label %bb.an, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull @.str.10, ptr noundef %i.ai, ptr noundef %i.ak) #9 ; 0 uses
  %i.am = call i32 @fflush(ptr noundef null)      ; 0 uses
  %i.an = call noalias ptr @popen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.11) ; 5 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.u, label %.preheader530

.preheader530:                                    ; preds = %bb.t
  %i.ap = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 1024, ptr noundef nonnull %i.an)
  %.not1292 = icmp eq ptr %i.ap, null
  br i1 %.not1292, label %._crit_edge.thread, label %.lr.ph

bb.u:                                             ; preds = %bb.t
  call void (ptr, ...) @pg_fatal(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.a) #10
  unreachable

.lr.ph:                                           ; preds = %.preheader530, %bb.ai
  %.03491293 = phi i1 [ %.1350, %bb.ai ], [ false, %.preheader530 ]
  %i.aq = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.13) #11 ; 2 uses
  %.not516.a = icmp eq ptr %i.aq, null
  br i1 %.not516.a, label %bb.ai, label %bb.v

bb.v:                                             ; preds = %.lr.ph
  %i.ar = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.aq, i32 noundef 58) #11 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.at = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ar) #11
  %i.au = icmp ult i64 %i.at, 2
  br i1 %i.au, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  call void (ptr, ...) @pg_fatal(ptr noundef nonnull @.str.14, i32 noundef 144) #10
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 2 uses
  %i.aw = call i32 @pg_strip_crlf(ptr noundef nonnull %i.av) #9 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %.0396 = phi ptr [ %i.av, %bb.y ], [ %i.az, %bb.z ] ; 6 uses
  %i.ax = load i8, ptr %.0396, align 1
  %i.ay = icmp eq i8 %i.ax, 32
  %i.az = getelementptr inbounds nuw i8, ptr %.0396, i64 1
  br i1 %i.ay, label %bb.z, label %bb.aa, !llvm.loop !5

bb.aa:                                            ; preds = %bb.z
  %i.ba = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0396, ptr noundef nonnull dereferenceable(22) @.str.15) #11
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.c, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, ...) @pg_fatal(ptr noundef nonnull @.str.16) #10
  unreachable

bb.ad:                                            ; preds = %bb.ab
  call void (ptr, ...) @pg_fatal(ptr noundef nonnull @.str.17) #10
  unreachable

bb.ae:                                            ; preds = %bb.aa
  %i.bc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0396, ptr noundef nonnull dereferenceable(10) @.str.18) #11
  %.not517 = icmp eq i32 %i.bc, 0
  br i1 %.not517, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %i.c, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ...) @pg_fatal(ptr noundef nonnull @.str.19, ptr noundef nonnull %.0396) #10
  unreachable

bb.ah:                                            ; preds = %bb.af
  call void (ptr, ...) @pg_fatal(ptr noundef nonnull @.str.20, ptr noundef nonnull %.0396) #10
  unreachable

bb.ai:                                            ; preds = %bb.ae, %.lr.ph
  %.1350 = phi i1 [ %.03491293, %.lr.ph ], [ true, %bb.ae ] ; 2 uses
  %i.bd = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 1024, ptr noundef nonnull %i.an)
  %.not = icmp eq ptr %i.bd, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.ai
  %i.be = call i32 @pclose(ptr noundef nonnull %i.an) ; 2 uses
  %.not474 = icmp eq i32 %i.be, 0
  br i1 %.not474, label %bb.ak, label %bb.aj

._crit_edge.thread:                               ; preds = %.preheader530
  %i.bf = call i32 @pclose(ptr noundef nonnull %i.an) ; 2 uses
  %.not4741419 = icmp eq i32 %i.bf, 0
  br i1 %.not4741419, label %.thread1421, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.thread, %._crit_edge
  %i.bg = phi i32 [ %i.bf, %._crit_edge.thread ], [ %i.be, %._crit_edge ]
  %i.bh = call ptr @wait_result_to_str(i32 noundef %i.bg) #9
  call void (ptr, ...) @pg_fatal(ptr noundef nonnull @.str.21, ptr noundef nonnull %i.a, ptr noundef %i.bh) #10
  unreachable

bb.ak:                                            ; preds = %._crit_edge
  br i1 %.1350, label %bb.an, label %.thread1421

.thread1421:                                      ; preds = %._crit_edge.thread, %bb.ak
  br i1 %i.c, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.thread1421
  call void (ptr, ...) @pg_fatal(ptr noundef nonnull @.str.22) #10
  unreachable

bb.am:                                            ; preds = %.thread1421
  call void (ptr, ...) @pg_fatal(ptr noundef nonnull @.str.23) #10
  unreachable

bb.an:                                            ; preds = %bb.ak, %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = icmp ult i32 %i.bj, 90700
  %.str.24..str.25 = select i1 %i.bk, ptr @.str.24, ptr @.str.25
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = select i1 %i.f, ptr @.str.27, ptr %.str.24..str.25
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull @.str.26, ptr noundef %i.bm, ptr noundef nonnull %i.bn, ptr noundef %i.bp) #9 ; 0 uses
  %i.br = call i32 @fflush(ptr noundef null)      ; 0 uses
  %i.bs = call noalias ptr @popen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.11) ; 4 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void (ptr, ...) @pg_fatal(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.a) #10
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = icmp ult i32 %i.bv, 90300
  br i1 %i.bw, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 0, ptr %i.bx, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.0351 = phi i8 [ 1, %bb.aq ], [ 0, %bb.ap ]    ; 2 uses
  %i.by = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 1024, ptr noundef nonnull %i.bs)
  %.not4751294 = icmp eq ptr %i.by, null
  br i1 %.not4751294, label %._crit_edge1323, label %.lr.ph1322

.lr.ph1322:                                       ; preds = %bb.ar
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 109
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 116
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph1322, %bb.fz
  %.03331320 = phi i32 [ 0, %.lr.ph1322 ], [ %.1, %bb.fz ] ; 25 uses
  %.03341319 = phi i32 [ 0, %.lr.ph1322 ], [ %.1335, %bb.fz ] ; 25 uses
  %.03361318 = phi i32 [ 0, %.lr.ph1322 ], [ %.1337, %bb.fz ] ; 25 uses
  %.03471317 = phi i8 [ 0, %.lr.ph1322 ], [ %.1348, %bb.fz ] ; 25 uses
  %.13521316 = phi i8 [ %.0351, %.lr.ph1322 ], [ %.2, %bb.fz ] ; 25 uses
  %.03531315 = phi i8 [ 0, %.lr.ph1322 ], [ %.1354, %bb.fz ] ; 25 uses
  %.03551314 = phi i8 [ 0, %.lr.ph1322 ], [ %.1356, %bb.fz ] ; 25 uses
  %.03571313 = phi i8 [ 0, %.lr.ph1322 ], [ %.1358, %bb.fz ] ; 25 uses
  %.03591312 = phi i8 [ 0, %.lr.ph1322 ], [ %.1360, %bb.fz ] ; 25 uses
  %.03611311 = phi i8 [ 0, %.lr.ph1322 ], [ %.1362, %bb.fz ] ; 25 uses
  %.03631310 = phi i8 [ 0, %.lr.ph1322 ], [ %.1364, %bb.fz ] ; 25 uses
  %.03651309 = phi i8 [ 0, %.lr.ph1322 ], [ %.1366, %bb.fz ] ; 25 uses
  %.03671308 = phi i8 [ 0, %.lr.ph1322 ], [ %.1368, %bb.fz ] ; 25 uses
  %.03691307 = phi i8 [ 0, %.lr.ph1322 ], [ %.1370, %bb.fz ] ; 25 uses
  %.03711306 = phi i8 [ 0, %.lr.ph1322 ], [ %.1372, %bb.fz ] ; 25 uses
  %.03731305 = phi i8 [ 0, %.lr.ph1322 ], [ %.1374, %bb.fz ] ; 25 uses
end_hunk_0
