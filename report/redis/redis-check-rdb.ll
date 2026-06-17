inline.NumInlined: 9
inline.NumDeleted: 1
begin_hunk_0
@.str.59 = private unnamed_addr constant [24 x i8] c"Invalid object type: %d\00", align 1
@server = external local_unnamed_addr global %struct.redisServer, align 8
@.str.60 = private unnamed_addr constant [63 x i8] c"RDB file was saved with checksum disabled: no check performed.\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"RDB CRC error\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"Checksum OK\00", align 1
@.str.63 = private unnamed_addr constant [32 x i8] c"Unexpected EOF reading RDB file\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.64 = private unnamed_addr constant [27 x i8] c"Usage: %s <rdb-file-name>\0A\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"redis-check-rdb %s\0A\00", align 1
@shared = external local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str.68 = private unnamed_addr constant [21 x i8] c"Checking RDB file %s\00", align 1
@.str.69 = private unnamed_addr constant [22 x i8] c"\\o/ RDB looks OK! \\o/\00", align 1
@str = private unnamed_addr constant [27 x i8] c"--- RDB ERROR DETECTED ---\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @rdbShowGenericInfo() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 24), align 8, !tbaa !13
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i64 noundef %i.a) ; 0 uses
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 32), align 8, !tbaa !19
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i64 noundef %i.c) ; 0 uses
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 40), align 8, !tbaa !20
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i64 noundef %i.e) ; 0 uses
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 48), align 8, !tbaa !21
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, i64 noundef %i.g) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @rdbCheckError(ptr nofree noundef readonly captures(none) %0, ...) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef %0, ptr noundef nonnull %1) #13 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.c = load ptr, ptr @rdbstate, align 8, !tbaa !22 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.g = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i64 noundef %i.f, ptr noundef nonnull %i.a) ; 0 uses
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [8 x i8], ptr @rdb_check_doing_string, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.l = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, ptr noundef %i.k) ; 0 uses
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 8), align 8, !tbaa !28 ; 2 uses
  %.not3 = icmp eq ptr %i.m, null
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.p = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, ptr noundef %i.o) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 16), align 8, !tbaa !31 ; 4 uses
  %.not4 = icmp eq i32 %i.q, -1
  br i1 %.not4, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = icmp ult i32 %i.q, 27
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = zext nneg i32 %i.q to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @rdb_type_string, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.v = phi ptr [ %i.u, %bb.g ], [ @.str.46, %bb.f ]
  %i.w = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, i32 noundef %i.q, ptr noundef %i.v) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 24), align 8, !tbaa !13
  %i.y = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i64 noundef %i.x) ; 0 uses
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 32), align 8, !tbaa !19
  %i.aa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i64 noundef %i.z) ; 0 uses
  %i.ab = load i64, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 40), align 8, !tbaa !20
  %i.ac = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i64 noundef %i.ab) ; 0 uses
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 48), align 8, !tbaa !21
  %i.ae = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, i64 noundef %i.ad) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #3

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @rdbCheckInfo(ptr nofree noundef readonly captures(none) %0, ...) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef %0, ptr noundef nonnull %1) #13 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  %i.c = load ptr, ptr @rdbstate, align 8, !tbaa !22 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.g = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i64 noundef %i.f, ptr noundef nonnull %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @rdbCheckSetError(ptr nofree noundef readonly captures(none) %0, ...) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call i32 @vsnprintf(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @rdbstate, i64 64), i64 noundef 1024, ptr noundef %0, ptr noundef nonnull %1) #13 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 60), align 4, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret void
}

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local void @rdbCheckHandleCrash(i32 %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #4 {
bb.a:
  tail call void (ptr, ...) @rdbCheckError(ptr noundef nonnull @.str.47)
  tail call void @exit(i32 noundef 1) #14
  unreachable
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @rdbCheckSetupSignals() local_unnamed_addr #6 {
bb.a:
  %0 = alloca %struct.sigaction, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = call i32 @sigemptyset(ptr noundef nonnull %i.a) #13 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 -1073741820, ptr %i.c, align 8, !tbaa !33
  store ptr @rdbCheckHandleCrash, ptr %0, align 8, !tbaa !36
  %i.d = call i32 @sigaction(i32 noundef 11, ptr noundef nonnull %0, ptr noundef null) #13 ; 0 uses
  %i.e = call i32 @sigaction(i32 noundef 7, ptr noundef nonnull %0, ptr noundef null) #13 ; 0 uses
  %i.f = call i32 @sigaction(i32 noundef 8, ptr noundef nonnull %0, ptr noundef null) #13 ; 0 uses
  %i.g = call i32 @sigaction(i32 noundef 4, ptr noundef nonnull %0, ptr noundef null) #13 ; 0 uses
  %i.h = call i32 @sigaction(i32 noundef 6, ptr noundef nonnull %0, ptr noundef null) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #13
  ret void
}

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @redis_check_rdb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 7 uses
  %2 = alloca %struct.stat, align 8               ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca [10 x i8], align 1                ; 5 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.g = tail call i64 @mstime() #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.h = icmp eq ptr %1, null                     ; 3 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noalias ptr @fopen64(ptr noundef %0, ptr noundef nonnull @.str.48) ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.bi, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.077 = phi ptr [ %i.i, %bb.b ], [ %1, %bb.a ]  ; 3 uses
  %i.k = tail call i32 @fileno(ptr noundef nonnull %.077) #13
  %i.l = call i32 @fstat64(i32 noundef %i.k, ptr noundef nonnull %2) #13
  %i.m = icmp eq i32 %i.l, -1
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  br i1 %i.m, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i64, ptr %i.n, align 8, !tbaa !37
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.n, align 8, !tbaa !37
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.o = phi i64 [ %.pre, %._crit_edge ], [ 0, %bb.d ]
  tail call void @startLoadingFile(i64 noundef %i.o, ptr noundef %0, i32 noundef 0) #13
  tail call void @rioInitWithFile(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef nonnull %.077) #13
  store ptr @redis_check_rdb.rdb, ptr @rdbstate, align 8, !tbaa !22
  store ptr @rdbLoadProgressCallback, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 32), align 8, !tbaa !40
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 48), align 8, !tbaa !41
  %i.q = and i64 %i.p, 1
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %.preheader.i, label %rioRead.exit.thread

.preheader.i:                                     ; preds = %bb.e, %bb.h
  %.0254.i = phi i64 [ %i.ab, %bb.h ], [ 9, %bb.e ] ; 3 uses
  %.0273.i = phi ptr [ %i.aa, %bb.h ], [ %i.a, %bb.e ] ; 3 uses
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 64), align 8, !tbaa !42 ; 2 uses
  %.not32.not.i = icmp eq i64 %i.r, 0
  %i.s = call i64 @llvm.umin.i64(i64 %i.r, i64 %.0254.i)
  %i.t = select i1 %.not32.not.i, i64 %.0254.i, i64 %i.s ; 5 uses
  %i.u = load ptr, ptr @redis_check_rdb.rdb, align 8, !tbaa !43
  %i.v = call i64 %i.u(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef %.0273.i, i64 noundef %i.t) #13, !inline_history !44
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %.preheader.i
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 48), align 8, !tbaa !41
  %i.y = or i64 %i.x, 1
  store i64 %i.y, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 48), align 8, !tbaa !41
  br label %rioRead.exit.thread

bb.f:                                             ; preds = %.preheader.i
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 32), align 8, !tbaa !40 ; 2 uses
  %.not33.i = icmp eq ptr %i.z, null
  br i1 %.not33.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void %i.z(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef %.0273.i, i64 noundef %i.t) #13, !inline_history !44
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.0273.i, i64 %i.t
  %i.ab = sub i64 %.0254.i, %i.t                  ; 2 uses
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 56), align 8, !tbaa !23
  %i.ad = add i64 %i.ac, %i.t
  store i64 %i.ad, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 56), align 8, !tbaa !23
  %.not31.i = icmp eq i64 %i.ab, 0
  br i1 %.not31.i, label %rioRead.exit, label %.preheader.i

rioRead.exit:                                     ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 0, ptr %i.ae, align 1, !tbaa !36
  %i.af = load i32, ptr %i.a, align 16
  %i.ag = xor i32 %i.af, 1229210962
  %i.ah = getelementptr i8, ptr %i.a, i64 4
  %i.ai = load i8, ptr %i.ah, align 4
  %i.aj = zext i8 %i.ai to i32
  %i.ak = xor i32 %i.aj, 83
  %i.al = or i32 %i.ag, %i.ak
  %i.am = icmp ne i32 %i.al, 0
  %i.an = zext i1 %i.am to i32
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %rioRead.exit
  call void (ptr, ...) @rdbCheckError(ptr noundef nonnull @.str.50)
  br label %.thread152

bb.j:                                             ; preds = %rioRead.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.ap = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ao, ptr noundef null, i32 noundef 10) #13, !inline_history !45
  %i.aq = trunc i64 %i.ap to i32                  ; 6 uses
  %i.ar = add i32 %i.aq, -14
  %or.cond = icmp ult i32 %i.ar, -13
  br i1 %or.cond, label %bb.k, label %.preheader165

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @rdbCheckError(ptr noundef nonnull @.str.51, i32 noundef %i.aq)
  br label %.thread152

.preheader165:                                    ; preds = %bb.j, %.preheader165.backedge
  %.079 = phi i64 [ %.079.be, %.preheader165.backedge ], [ -1, %bb.j ] ; 11 uses
  %.078 = phi i32 [ %.078.be, %.preheader165.backedge ], [ -1, %bb.j ] ; 12 uses
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.as = call i32 @rdbLoadType(ptr noundef nonnull @redis_check_rdb.rdb) #13 ; 6 uses
  switch i32 %i.as, label %bb.aq [
    i32 -1, label %rioRead.exit.thread
    i32 253, label %bb.l
    i32 252, label %bb.m
    i32 249, label %bb.n
    i32 248, label %bb.q
    i32 243, label %bb.r
    i32 255, label %.thread156
    i32 254, label %bb.w
    i32 251, label %bb.y
    i32 244, label %bb.aa
    i32 250, label %bb.ad
    i32 247, label %bb.ah
    i32 246, label %bb.an
    i32 245, label %bb.ao
  ]

bb.l:                                             ; preds = %.preheader165
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.at = call i64 @rdbLoadTime(ptr noundef nonnull @redis_check_rdb.rdb) #13
  %i.au = mul nsw i64 %i.at, 1000
  %i.av = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 48), align 8, !tbaa !41
  %i.aw = and i64 %i.av, 1
  %.not103 = icmp eq i64 %i.aw, 0
  br i1 %.not103, label %.preheader165.backedge, label %rioRead.exit.thread

bb.m:                                             ; preds = %.preheader165
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.ax = call i64 @rdbLoadMillisecondTime(ptr noundef nonnull @redis_check_rdb.rdb, i32 noundef %i.aq) #13
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 48), align 8, !tbaa !41
  %i.az = and i64 %i.ay, 1
  %.not102 = icmp eq i64 %i.az, 0
  br i1 %.not102, label %.preheader165.backedge, label %rioRead.exit.thread

bb.n:                                             ; preds = %.preheader165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.ba = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 48), align 8, !tbaa !41
  %i.bb = and i64 %i.ba, 1
  %.not.i113 = icmp eq i64 %i.bb, 0
  br i1 %.not.i113, label %.preheader.i115, label %rioRead.exit122

.preheader.i115:                                  ; preds = %bb.n
  %i.bc = load ptr, ptr @redis_check_rdb.rdb, align 8, !tbaa !43
  %i.bd = call i64 %i.bc(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef nonnull %i.b, i64 noundef 1) #13, !inline_history !44
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %.thread.i121, label %bb.o

.thread.i121:                                     ; preds = %.preheader.i115
  %i.bf = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 48), align 8, !tbaa !41
  %i.bg = or i64 %i.bf, 1
  store i64 %i.bg, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 48), align 8, !tbaa !41
  br label %rioRead.exit122

bb.o:                                             ; preds = %.preheader.i115
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 32), align 8, !tbaa !40 ; 2 uses
  %.not33.i119 = icmp eq ptr %i.bh, null
  br i1 %.not33.i119, label %rioRead.exit122.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void %i.bh(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef nonnull %i.b, i64 noundef 1) #13, !inline_history !44
  br label %rioRead.exit122.loopexit

rioRead.exit122.loopexit:                         ; preds = %bb.o, %bb.p
  %i.bi = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 56), align 8, !tbaa !23
  %i.bj = add i64 %i.bi, 1
  store i64 %i.bj, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 56), align 8, !tbaa !23
  br label %rioRead.exit122

rioRead.exit122:                                  ; preds = %rioRead.exit122.loopexit, %.thread.i121, %bb.n
  %3 = phi i32 [ 2, %.thread.i121 ], [ 2, %bb.n ], [ 4, %rioRead.exit122.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %select.unfold

bb.q:                                             ; preds = %.preheader165
  %i.bk = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #13
  %i.bl = icmp eq i64 %i.bk, -1
  br i1 %i.bl, label %rioRead.exit.thread, label %.preheader165.backedge

bb.r:                                             ; preds = %.preheader165
  %i.bm = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #13 ; 2 uses
  switch i64 %i.bm, label %.lr.ph [
    i64 -1, label %rioRead.exit.thread
    i64 0, label %.preheader165.backedge
  ]

.preheader165.backedge:                           ; preds = %bb.v, %bb.r, %bb.l, %bb.ag, %bb.x, %bb.m, %bb.q, %bb.ba, %bb.am, %bb.ac, %bb.z, %select.unfold
  %.079.be = phi i64 [ %.079, %bb.am ], [ %.079, %bb.z ], [ %.079, %select.unfold ], [ %.079, %bb.ac ], [ %.079, %bb.r ], [ %i.au, %bb.l ], [ %.079, %bb.ag ], [ %.079, %bb.x ], [ %i.ax, %bb.m ], [ %.079, %bb.q ], [ -1, %bb.ba ], [ %.079, %bb.v ]
  %.078.be = phi i32 [ %.078, %bb.am ], [ %.078, %bb.z ], [ %.078, %select.unfold ], [ %.078, %bb.ac ], [ %.078, %bb.r ], [ %.078, %bb.l ], [ %.078, %bb.ag ], [ %i.ch, %bb.x ], [ %.078, %bb.m ], [ %.078, %bb.q ], [ %.078, %bb.ba ], [ %.078, %bb.v ]
  br label %.preheader165

.lr.ph:                                           ; preds = %bb.r, %bb.v
  %.083176 = phi i64 [ %i.ce, %bb.v ], [ 0, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.bn = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 48), align 8, !tbaa !41
  %i.bo = and i64 %i.bn, 1
  %.not.i123 = icmp eq i64 %i.bo, 0
  br i1 %.not.i123, label %.preheader.i125, label %rioRead.exit132.thread

.preheader.i125:                                  ; preds = %.lr.ph, %bb.u
  %.0254.i126 = phi i64 [ %i.bz, %bb.u ], [ 4, %.lr.ph ] ; 3 uses
  %.0273.i127 = phi ptr [ %i.by, %bb.u ], [ %i.c, %.lr.ph ] ; 3 uses
  %i.bp = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 64), align 8, !tbaa !42 ; 2 uses
  %.not32.not.i128 = icmp eq i64 %i.bp, 0
  %i.bq = call i64 @llvm.umin.i64(i64 %i.bp, i64 %.0254.i126)
  %i.br = select i1 %.not32.not.i128, i64 %.0254.i126, i64 %i.bq ; 5 uses
  %i.bs = load ptr, ptr @redis_check_rdb.rdb, align 8, !tbaa !43
  %i.bt = call i64 %i.bs(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef %.0273.i127, i64 noundef %i.br) #13, !inline_history !44
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.thread.i131, label %bb.s

.thread.i131:                                     ; preds = %.preheader.i125
  %i.bv = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 48), align 8, !tbaa !41
  %i.bw = or i64 %i.bv, 1
  store i64 %i.bw, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 48), align 8, !tbaa !41
  br label %rioRead.exit132.thread

bb.s:                                             ; preds = %.preheader.i125
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 32), align 8, !tbaa !40 ; 2 uses
  %.not33.i129 = icmp eq ptr %i.bx, null
  br i1 %.not33.i129, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void %i.bx(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef %.0273.i127, i64 noundef %i.br) #13, !inline_history !44
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.by = getelementptr inbounds nuw i8, ptr %.0273.i127, i64 %i.br
  %i.bz = sub i64 %.0254.i126, %i.br              ; 2 uses
  %i.ca = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 56), align 8, !tbaa !23
  %i.cb = add i64 %i.ca, %i.br
  store i64 %i.cb, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 56), align 8, !tbaa !23
  %.not31.i130 = icmp eq i64 %i.bz, 0
  br i1 %.not31.i130, label %rioRead.exit132, label %.preheader.i125

rioRead.exit132:                                  ; preds = %bb.u
  %i.cc = call ptr @rdbLoadCheckModuleValue(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef nonnull @.str.52) #13 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %rioRead.exit132.thread, label %bb.v

bb.v:                                             ; preds = %rioRead.exit132
  call void @decrRefCount(ptr noundef nonnull %i.cc) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.ce = add nuw i64 %.083176, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ce, %i.bm
  br i1 %exitcond.not, label %.preheader165.backedge, label %.lr.ph, !llvm.loop !46

rioRead.exit132.thread:                           ; preds = %.lr.ph, %rioRead.exit132, %.thread.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %rioRead.exit.thread

bb.w:                                             ; preds = %.preheader165
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.cf = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #13 ; 3 uses
  %i.cg = icmp eq i64 %i.cf, -1
  br i1 %i.cg, label %rioRead.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @rdbCheckInfo(ptr noundef nonnull @.str.53, i64 noundef %i.cf)
  %i.ch = trunc i64 %i.cf to i32
  br label %.preheader165.backedge

bb.y:                                             ; preds = %.preheader165
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.ci = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #13
  %i.cj = icmp eq i64 %i.ci, -1
  br i1 %i.cj, label %rioRead.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ck = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #13
  %i.cl = icmp eq i64 %i.ck, -1
  br i1 %i.cl, label %rioRead.exit.thread, label %.preheader165.backedge

bb.aa:                                            ; preds = %.preheader165
  %i.cm = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #13
  %i.cn = icmp eq i64 %i.cm, -1
  br i1 %i.cn, label %rioRead.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.co = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #13
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %rioRead.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cq = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #13
  %i.cr = icmp eq i64 %i.cq, -1
  br i1 %i.cr, label %rioRead.exit.thread, label %.preheader165.backedge

bb.ad:                                            ; preds = %.preheader165
  store i32 7, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.cs = call ptr @rdbLoadStringObject(ptr noundef nonnull @redis_check_rdb.rdb) #13 ; 4 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %rioRead.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cu = call ptr @rdbLoadStringObject(ptr noundef nonnull @redis_check_rdb.rdb) #13 ; 3 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @decrRefCount(ptr noundef nonnull %i.cs) #13
  br label %rioRead.exit.thread

bb.ag:                                            ; preds = %bb.ae
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !29
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !29
  call void (ptr, ...) @rdbCheckInfo(ptr noundef nonnull @.str.54, ptr noundef %i.cx, ptr noundef %i.cz)
  call void @decrRefCount(ptr noundef nonnull %i.cs) #13
  call void @decrRefCount(ptr noundef nonnull %i.cu) #13
  br label %.preheader165.backedge

bb.ah:                                            ; preds = %.preheader165
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.da = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #13 ; 2 uses
  %i.db = icmp eq i64 %i.da, -1
  br i1 %i.db, label %rioRead.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dc = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #13 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, -1
  br i1 %i.dd, label %rioRead.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.de = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #13
  %i.df = icmp eq i64 %i.de, -1
  br i1 %i.df, label %rioRead.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not101 = icmp eq i64 %i.dc, 2
  br i1 %.not101, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void (ptr, ...) @rdbCheckError(ptr noundef nonnull @.str.55)
  br label %.thread152

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @moduleTypeNameByID(ptr noundef nonnull %i.d, i64 noundef %i.da) #13
  call void (ptr, ...) @rdbCheckInfo(ptr noundef nonnull @.str.56, ptr noundef nonnull %i.d)
  %i.dg = call ptr @rdbLoadCheckModuleValue(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef nonnull %i.d) #13
  call void @decrRefCount(ptr noundef %i.dg) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %.preheader165.backedge

bb.an:                                            ; preds = %.preheader165
  call void (ptr, ...) @rdbCheckError(ptr noundef nonnull @.str.57, i32 noundef %i.aq)
  br label %.thread152

bb.ao:                                            ; preds = %.preheader165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store ptr null, ptr %i.e, align 8, !tbaa !26
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.dh = call i32 @rdbFunctionLoad(ptr noundef nonnull @redis_check_rdb.rdb, i32 noundef %i.aq, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.e) #13
  %.not100 = icmp eq i32 %i.dh, 0
  br i1 %.not100, label %bb.ap, label %4

4:                                                ; preds = %bb.ao
  %5 = load ptr, ptr %i.e, align 8, !tbaa !26
  call void (ptr, ...) @rdbCheckError(ptr noundef nonnull @.str.58, ptr noundef %5)
  %6 = load ptr, ptr %i.e, align 8, !tbaa !26
  call void @sdsfree(ptr noundef %6) #13
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %4
  %.9 = phi i32 [ 3, %4 ], [ 4, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %select.unfold

bb.aq:                                            ; preds = %.preheader165
  %or.cond4 = icmp ult i32 %i.as, 8
  %i.di = add i32 %i.as, -9
  %or.cond6 = icmp ult i32 %i.di, 18
  %or.cond111 = or i1 %or.cond4, %or.cond6
  br i1 %or.cond111, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void (ptr, ...) @rdbCheckError(ptr noundef nonnull @.str.59, i32 noundef %i.as)
  br label %.thread152

bb.as:                                            ; preds = %bb.aq
  store i32 %i.as, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 16), align 8, !tbaa !31
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.dj = call ptr @rdbLoadStringObject(ptr noundef nonnull @redis_check_rdb.rdb) #13 ; 4 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %rioRead.exit.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr %i.dj, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 8), align 8, !tbaa !28
  %i.dl = load i64, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 24), align 8, !tbaa !13
  %i.dm = add i64 %i.dl, 1
  store i64 %i.dm, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 24), align 8, !tbaa !13
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !29
  %i.dp = call ptr @rdbLoadObject(i32 noundef %i.as, ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef %i.do, i32 noundef %.078, ptr noundef null) #13 ; 4 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %rioRead.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not98 = icmp ne i64 %.079, -1                 ; 2 uses
  %i.dr = icmp slt i64 %.079, %i.g
  %or.cond112 = select i1 %.not98, i1 %i.dr, i1 false
  br i1 %or.cond112, label %.thread141, label %bb.av

.thread141:                                       ; preds = %bb.au
  %i.ds = load i64, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 40), align 8, !tbaa !20
  %i.dt = add i64 %i.ds, 1
  store i64 %i.dt, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 40), align 8, !tbaa !20
  br label %bb.aw

bb.av:                                            ; preds = %bb.au
  br i1 %.not98, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.thread141, %bb.av
  %i.du = load i64, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 32), align 8, !tbaa !19
  %i.dv = add i64 %i.du, 1
  store i64 %i.dv, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 32), align 8, !tbaa !19
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.dw = load i64, ptr %i.dp, align 8
  %i.dx = and i64 %i.dw, 15
  %i.dy = icmp eq i64 %i.dx, 4
  br i1 %i.dy, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.dz = call i64 @hashTypeGetMinExpire(ptr noundef nonnull %i.dp, i32 noundef 1) #13
  %.not99 = icmp eq i64 %i.dz, 281474976710656
  br i1 %.not99, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ea = load i64, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 48), align 8, !tbaa !21
  %i.eb = add i64 %i.ea, 1
  store i64 %i.eb, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 48), align 8, !tbaa !21
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 8), align 8, !tbaa !28
  call void @decrRefCount(ptr noundef nonnull %i.dj) #13
  call void @decrRefCount(ptr noundef nonnull %i.dp) #13
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 16), align 8, !tbaa !31
  br label %.preheader165.backedge

select.unfold:                                    ; preds = %bb.ap, %rioRead.exit122
  %.10 = phi i32 [ %.9, %bb.ap ], [ %3, %rioRead.exit122 ]
  switch i32 %.10, label %select.unfold.unreachabledefault [
    i32 2, label %rioRead.exit.thread
    i32 4, label %.preheader165.backedge
    i32 3, label %.thread152
  ]

.thread156:                                       ; preds = %.preheader165
  %i.ec = icmp sgt i32 %i.aq, 4
  %i.ed = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6956), align 4
  %i.ee = icmp ne i32 %i.ed, 0
  %or.cond8 = select i1 %i.ec, i1 %i.ee, i1 false
  br i1 %or.cond8, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %.thread156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.ef = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 40), align 8, !tbaa !48
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.eg = call fastcc i64 @rioRead(ptr noundef %i.f, i64 noundef 8)
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %.thread163, label %bb.bc

.thread163:                                       ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  br label %rioRead.exit.thread

bb.bc:                                            ; preds = %bb.bb
  %i.ei = load i64, ptr %i.f, align 8, !tbaa !49  ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %.thread161, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.not104 = icmp eq i64 %i.ei, %i.ef
  br i1 %.not104, label %.thread161, label %bb.be

.thread161:                                       ; preds = %bb.bd, %bb.bc
  %.str.62.sink = phi ptr [ @.str.60, %bb.bc ], [ @.str.62, %bb.bd ]
  call void (ptr, ...) @rdbCheckInfo(ptr noundef nonnull %.str.62.sink)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  br label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void (ptr, ...) @rdbCheckError(ptr noundef nonnull @.str.61)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  br label %.thread152

bb.bf:                                            ; preds = %.thread161, %.thread156
  br i1 %i.h, label %.sink.split.sink.split, label %.sink.split

rioRead.exit.thread:                              ; preds = %select.unfold, %bb.ac, %bb.z, %bb.q, %bb.ai, %bb.ah, %bb.aa, %bb.ab, %bb.y, %bb.at, %bb.ad, %bb.w, %bb.aj, %bb.as, %bb.m, %.preheader165, %bb.l, %bb.r, %rioRead.exit132.thread, %bb.af, %.thread.i, %bb.e, %.thread163
  %i.ek = load i32, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 60), align 4, !tbaa !32
  %.not105 = icmp eq i32 %i.ek, 0
  br i1 %.not105, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %rioRead.exit.thread
  call void (ptr, ...) @rdbCheckError(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @rdbstate, i64 64))
  br label %.thread152

bb.bh:                                            ; preds = %rioRead.exit.thread
  call void (ptr, ...) @rdbCheckError(ptr noundef nonnull @.str.63)
  br label %.thread152

.thread152:                                       ; preds = %select.unfold, %bb.al, %bb.an, %bb.ar, %bb.be, %bb.bg, %bb.bh, %bb.k, %bb.i
  br i1 %i.h, label %.sink.split.sink.split, label %.sink.split

select.unfold.unreachabledefault:                 ; preds = %select.unfold
  unreachable

.sink.split.sink.split:                           ; preds = %.thread152, %bb.bf
  %.sink.ph = phi i32 [ 1, %bb.bf ], [ 0, %.thread152 ]
  %.0.ph.ph = phi i32 [ 0, %bb.bf ], [ 1, %.thread152 ]
  %i.el = call i32 @fclose(ptr noundef nonnull %.077) ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %.thread152, %bb.bf
  %.sink = phi i32 [ 1, %bb.bf ], [ 0, %.thread152 ], [ %.sink.ph, %.sink.split.sink.split ]
  %.0.ph = phi i32 [ 0, %bb.bf ], [ 1, %.thread152 ], [ %.0.ph.ph, %.sink.split.sink.split ]
  call void @stopLoading(i32 noundef %.sink) #13
  br label %bb.bi

bb.bi:                                            ; preds = %.sink.split, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

declare i64 @mstime() local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fstat64(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #1

declare void @startLoadingFile(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare void @rioInitWithFile(ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @rdbLoadProgressCallback(ptr noundef, ptr noundef, i64 noundef) #8

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i64 0, 2) i64 @rioRead(ptr noundef nonnull %0, i64 noundef range(i64 1, 10) %1) unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 48), align 8, !tbaa !41
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a, %bb.d
  %.0254 = phi i64 [ %i.m, %bb.d ], [ %1, %bb.a ] ; 3 uses
  %.0273 = phi ptr [ %i.l, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 64), align 8, !tbaa !42 ; 2 uses
  %.not32.not = icmp eq i64 %i.c, 0
  %i.d = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %.0254)
  %i.e = select i1 %.not32.not, i64 %.0254, i64 %i.d ; 5 uses
  %i.f = load ptr, ptr @redis_check_rdb.rdb, align 8, !tbaa !43
  %i.g = tail call i64 %i.f(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef %.0273, i64 noundef %i.e) #13
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.thread, label %bb.b

.thread:                                          ; preds = %.preheader
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 48), align 8, !tbaa !41
  %i.j = or i64 %i.i, 1
  store i64 %i.j, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 48), align 8, !tbaa !41
  br label %.loopexit

bb.b:                                             ; preds = %.preheader
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 32), align 8, !tbaa !40 ; 2 uses
  %.not33 = icmp eq ptr %i.k, null
  br i1 %.not33, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.k(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef %.0273, i64 noundef %i.e) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.0273, i64 %i.e
  %i.m = sub i64 %.0254, %i.e                     ; 2 uses
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 56), align 8, !tbaa !23
  %i.o = add i64 %i.n, %i.e
  store i64 %i.o, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 56), align 8, !tbaa !23
  %.not31 = icmp eq i64 %i.m, 0
  br i1 %.not31, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.d, %.thread, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ 0, %.thread ], [ 1, %bb.d ]
  ret i64 %.2
}

declare i32 @rdbLoadType(ptr noundef) local_unnamed_addr #8

declare i64 @rdbLoadTime(ptr noundef) local_unnamed_addr #8

declare i64 @rdbLoadMillisecondTime(ptr noundef, i32 noundef) local_unnamed_addr #8

declare i64 @rdbLoadLen(ptr noundef, ptr noundef) local_unnamed_addr #8

declare ptr @rdbLoadCheckModuleValue(ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @decrRefCount(ptr noundef) local_unnamed_addr #8

declare ptr @rdbLoadStringObject(ptr noundef) local_unnamed_addr #8

declare void @moduleTypeNameByID(ptr noundef, i64 noundef) local_unnamed_addr #8

declare i32 @rdbFunctionLoad(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

declare void @sdsfree(ptr noundef) local_unnamed_addr #8

declare ptr @rdbLoadObject(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

declare i64 @hashTypeGetMinExpire(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #1

declare void @stopLoading(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @redis_check_rdb_main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #6 {
bb.a:
  %3 = alloca %struct.sigaction, align 8          ; 10 uses
  %4 = alloca %struct.timeval, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.a = icmp ne i32 %0, 2
  %i.b = icmp eq ptr %2, null                     ; 2 uses
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %sub_0

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !50
  %i.d = load ptr, ptr %1, align 8, !tbaa !26
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.64, ptr noundef %i.d) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

sub_0:                                            ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26   ; 4 uses
  %i.h = load i8, ptr %i.g, align 1
  %.not16 = icmp eq i8 %i.h, 45
  br i1 %.not16, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %.not17 = icmp eq i8 %i.j, 118
  br i1 %.not17, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.c, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(10) @.str.66) #16
  %.not14 = icmp eq i32 %i.n, 0
  br i1 %.not14, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.tail.thread, %.tail
  %i.o = tail call ptr @getVersion() #13          ; 2 uses
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.67, ptr noundef %i.o) ; 0 uses
  tail call void @sdsfree(ptr noundef %i.o) #13
  tail call void @exit(i32 noundef 0) #17
  unreachable

bb.d:                                             ; preds = %.tail.thread
  %i.q = call i32 @gettimeofday(ptr noundef nonnull %4, ptr noundef null) #13 ; 0 uses
  %i.r = load i64, ptr %4, align 8, !tbaa !52
  %i.s = mul nsw i64 %i.r, 1000000
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !54
  %i.v = add nsw i64 %i.s, %i.u
  %i.w = tail call i32 @getpid() #13
  %i.x = sext i32 %i.w to i64
  %i.y = xor i64 %i.v, %i.x
  tail call void @init_genrand64(i64 noundef %i.y) #13
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 896), align 8, !tbaa !55
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @createSharedObjects() #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2520), align 8, !tbaa !56
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6452), align 4, !tbaa !87
  store i32 1, ptr @rdbCheckMode, align 4, !tbaa !9
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !26
  tail call void (ptr, ...) @rdbCheckInfo(ptr noundef nonnull @.str.68, ptr noundef %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = call i32 @sigemptyset(ptr noundef nonnull %i.ac) #13 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i32 -1073741820, ptr %i.ae, align 8, !tbaa !33
  store ptr @rdbCheckHandleCrash, ptr %3, align 8, !tbaa !36
  %i.af = call i32 @sigaction(i32 noundef 11, ptr noundef nonnull %3, ptr noundef null) #13 ; 0 uses
  %i.ag = call i32 @sigaction(i32 noundef 7, ptr noundef nonnull %3, ptr noundef null) #13 ; 0 uses
  %i.ah = call i32 @sigaction(i32 noundef 8, ptr noundef nonnull %3, ptr noundef null) #13 ; 0 uses
  %i.ai = call i32 @sigaction(i32 noundef 4, ptr noundef nonnull %3, ptr noundef null) #13 ; 0 uses
  %i.aj = call i32 @sigaction(i32 noundef 6, ptr noundef nonnull %3, ptr noundef null) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
end_hunk_0
