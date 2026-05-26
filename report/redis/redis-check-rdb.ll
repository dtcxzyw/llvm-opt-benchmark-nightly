inline.NumInlined: 9
inline.NumDeleted: 1
begin_hunk_0_@rdbCheckInfo:bb.a

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.g = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i64 noundef %i.f, ptr noundef nonnull %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @rdbCheckSetError(ptr noundef readonly captures(none) %0, ...) local_unnamed_addr #0 {
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
define dso_local void @rdbCheckHandleCrash(i32 %0, ptr readnone captures(none) %1, ptr readnone captures(none) %2) #4 {
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
  br i1 %i.j, label %bb.bj, label %bb.c

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
  br label %.thread156

bb.j:                                             ; preds = %rioRead.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.ap = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ao, ptr noundef null, i32 noundef 10) #13, !inline_history !45
  %i.aq = trunc i64 %i.ap to i32                  ; 6 uses
  %i.ar = add i32 %i.aq, -14
  %or.cond = icmp ult i32 %i.ar, -13
  br i1 %or.cond, label %bb.k, label %.preheader175

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @rdbCheckError(ptr noundef nonnull @.str.51, i32 noundef %i.aq)
  br label %.thread156

.preheader175:                                    ; preds = %bb.j, %.preheader175.backedge
  %.079 = phi i64 [ %.079.be, %.preheader175.backedge ], [ -1, %bb.j ] ; 11 uses
  %.078 = phi i32 [ %.078.be, %.preheader175.backedge ], [ -1, %bb.j ] ; 12 uses
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.as = call i32 @rdbLoadType(ptr noundef nonnull @redis_check_rdb.rdb) #13 ; 6 uses
  switch i32 %i.as, label %bb.ar [
    i32 -1, label %rioRead.exit.thread
    i32 253, label %bb.l
    i32 252, label %bb.m
    i32 249, label %bb.n
    i32 248, label %bb.q
    i32 243, label %bb.r
    i32 255, label %.thread160
    i32 254, label %bb.w
    i32 251, label %bb.y
    i32 244, label %bb.aa
    i32 250, label %bb.ad
    i32 247, label %bb.ah
    i32 246, label %bb.an
    i32 245, label %bb.ao
  ]

bb.l:                                             ; preds = %.preheader175
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.at = call i64 @rdbLoadTime(ptr noundef nonnull @redis_check_rdb.rdb) #13
  %i.au = mul nsw i64 %i.at, 1000
  %i.av = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 48), align 8, !tbaa !41
  %.fr174 = freeze i64 %i.av
  %i.aw = and i64 %.fr174, 1
  %.not103 = icmp eq i64 %i.aw, 0
  br i1 %.not103, label %.preheader175.backedge, label %rioRead.exit.thread

bb.m:                                             ; preds = %.preheader175
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.ax = call i64 @rdbLoadMillisecondTime(ptr noundef nonnull @redis_check_rdb.rdb, i32 noundef %i.aq) #13
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 48), align 8, !tbaa !41
  %.fr172 = freeze i64 %i.ay
  %i.az = and i64 %.fr172, 1
  %.not102 = icmp eq i64 %i.az, 0
  br i1 %.not102, label %.preheader175.backedge, label %rioRead.exit.thread

bb.n:                                             ; preds = %.preheader175
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
  %i.bk = phi i32 [ 2, %.thread.i121 ], [ 2, %bb.n ], [ 4, %rioRead.exit122.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %select.unfold

bb.q:                                             ; preds = %.preheader175
  %i.bl = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #13
  %.fr170 = freeze i64 %i.bl
  %i.bm = icmp eq i64 %.fr170, -1
  br i1 %i.bm, label %rioRead.exit.thread, label %.preheader175.backedge

bb.r:                                             ; preds = %.preheader175
  %i.bn = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #13 ; 2 uses
  switch i64 %i.bn, label %.lr.ph [
    i64 -1, label %rioRead.exit.thread
    i64 0, label %.preheader175.backedge
  ]

.preheader175.backedge:                           ; preds = %bb.v, %bb.r, %bb.l, %bb.ag, %bb.x, %bb.m, %bb.q, %bb.bb, %bb.am, %bb.ac, %bb.z, %select.unfold
  %.079.be = phi i64 [ %.079, %bb.am ], [ %.079, %bb.z ], [ %.079, %select.unfold ], [ %.079, %bb.ac ], [ %.079, %bb.r ], [ %i.au, %bb.l ], [ %.079, %bb.ag ], [ %.079, %bb.x ], [ %i.ax, %bb.m ], [ %.079, %bb.q ], [ -1, %bb.bb ], [ %.079, %bb.v ]
  %.078.be = phi i32 [ %.078, %bb.am ], [ %.078, %bb.z ], [ %.078, %select.unfold ], [ %.078, %bb.ac ], [ %.078, %bb.r ], [ %.078, %bb.l ], [ %.078, %bb.ag ], [ %i.ci, %bb.x ], [ %.078, %bb.m ], [ %.078, %bb.q ], [ %.078, %bb.bb ], [ %.078, %bb.v ]
  br label %.preheader175

.lr.ph:                                           ; preds = %bb.r, %bb.v
  %.083186 = phi i64 [ %i.cf, %bb.v ], [ 0, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.bo = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 48), align 8, !tbaa !41
  %i.bp = and i64 %i.bo, 1
  %.not.i123 = icmp eq i64 %i.bp, 0
  br i1 %.not.i123, label %.preheader.i125, label %rioRead.exit132.thread

.preheader.i125:                                  ; preds = %.lr.ph, %bb.u
  %.0254.i126 = phi i64 [ %i.ca, %bb.u ], [ 4, %.lr.ph ] ; 3 uses
  %.0273.i127 = phi ptr [ %i.bz, %bb.u ], [ %i.c, %.lr.ph ] ; 3 uses
  %i.bq = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 64), align 8, !tbaa !42 ; 2 uses
  %.not32.not.i128 = icmp eq i64 %i.bq, 0
  %i.br = call i64 @llvm.umin.i64(i64 %i.bq, i64 %.0254.i126)
  %i.bs = select i1 %.not32.not.i128, i64 %.0254.i126, i64 %i.br ; 5 uses
  %i.bt = load ptr, ptr @redis_check_rdb.rdb, align 8, !tbaa !43
  %i.bu = call i64 %i.bt(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef %.0273.i127, i64 noundef %i.bs) #13, !inline_history !44
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %.thread.i131, label %bb.s

.thread.i131:                                     ; preds = %.preheader.i125
  %i.bw = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 48), align 8, !tbaa !41
  %i.bx = or i64 %i.bw, 1
  store i64 %i.bx, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 48), align 8, !tbaa !41
  br label %rioRead.exit132.thread

bb.s:                                             ; preds = %.preheader.i125
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 32), align 8, !tbaa !40 ; 2 uses
  %.not33.i129 = icmp eq ptr %i.by, null
  br i1 %.not33.i129, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void %i.by(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef %.0273.i127, i64 noundef %i.bs) #13, !inline_history !44
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %.0273.i127, i64 %i.bs
  %i.ca = sub i64 %.0254.i126, %i.bs              ; 2 uses
  %i.cb = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 56), align 8, !tbaa !23
  %i.cc = add i64 %i.cb, %i.bs
  store i64 %i.cc, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 56), align 8, !tbaa !23
  %.not31.i130 = icmp eq i64 %i.ca, 0
  br i1 %.not31.i130, label %rioRead.exit132, label %.preheader.i125

rioRead.exit132:                                  ; preds = %bb.u
  %i.cd = call ptr @rdbLoadCheckModuleValue(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef nonnull @.str.52) #13 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %rioRead.exit132.thread, label %bb.v

bb.v:                                             ; preds = %rioRead.exit132
  call void @decrRefCount(ptr noundef nonnull %i.cd) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.cf = add nuw i64 %.083186, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.cf, %i.bn
  br i1 %exitcond.not, label %.preheader175.backedge, label %.lr.ph, !llvm.loop !46

rioRead.exit132.thread:                           ; preds = %.lr.ph, %rioRead.exit132, %.thread.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %rioRead.exit.thread

bb.w:                                             ; preds = %.preheader175
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.cg = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #13 ; 3 uses
  %i.ch = icmp eq i64 %i.cg, -1
  br i1 %i.ch, label %rioRead.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @rdbCheckInfo(ptr noundef nonnull @.str.53, i64 noundef %i.cg)
  %i.ci = trunc i64 %i.cg to i32
  br label %.preheader175.backedge

bb.y:                                             ; preds = %.preheader175
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.cj = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #13
  %i.ck = icmp eq i64 %i.cj, -1
  br i1 %i.ck, label %rioRead.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cl = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #13
  %.fr169 = freeze i64 %i.cl
  %i.cm = icmp eq i64 %.fr169, -1
  br i1 %i.cm, label %rioRead.exit.thread, label %.preheader175.backedge

bb.aa:                                            ; preds = %.preheader175
  %i.cn = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #13
  %i.co = icmp eq i64 %i.cn, -1
  br i1 %i.co, label %rioRead.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cp = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #13
  %i.cq = icmp eq i64 %i.cp, -1
  br i1 %i.cq, label %rioRead.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cr = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #13
  %.fr = freeze i64 %i.cr
  %i.cs = icmp eq i64 %.fr, -1
  br i1 %i.cs, label %rioRead.exit.thread, label %.preheader175.backedge

bb.ad:                                            ; preds = %.preheader175
  store i32 7, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.ct = call ptr @rdbLoadStringObject(ptr noundef nonnull @redis_check_rdb.rdb) #13 ; 4 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %rioRead.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cv = call ptr @rdbLoadStringObject(ptr noundef nonnull @redis_check_rdb.rdb) #13 ; 3 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @decrRefCount(ptr noundef nonnull %i.ct) #13
  br label %rioRead.exit.thread

bb.ag:                                            ; preds = %bb.ae
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !29
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !29
  call void (ptr, ...) @rdbCheckInfo(ptr noundef nonnull @.str.54, ptr noundef %i.cy, ptr noundef %i.da)
  call void @decrRefCount(ptr noundef nonnull %i.ct) #13
  call void @decrRefCount(ptr noundef nonnull %i.cv) #13
  br label %.preheader175.backedge

bb.ah:                                            ; preds = %.preheader175
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.db = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #13 ; 2 uses
  %i.dc = icmp eq i64 %i.db, -1
  br i1 %i.dc, label %rioRead.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dd = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #13 ; 2 uses
  %i.de = icmp eq i64 %i.dd, -1
  br i1 %i.de, label %rioRead.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.df = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #13
  %i.dg = icmp eq i64 %i.df, -1
  br i1 %i.dg, label %rioRead.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not101 = icmp eq i64 %i.dd, 2
  br i1 %.not101, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void (ptr, ...) @rdbCheckError(ptr noundef nonnull @.str.55)
  br label %.thread156

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @moduleTypeNameByID(ptr noundef nonnull %i.d, i64 noundef %i.db) #13
  call void (ptr, ...) @rdbCheckInfo(ptr noundef nonnull @.str.56, ptr noundef nonnull %i.d)
  %i.dh = call ptr @rdbLoadCheckModuleValue(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef nonnull %i.d) #13
  call void @decrRefCount(ptr noundef %i.dh) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %.preheader175.backedge

bb.an:                                            ; preds = %.preheader175
  call void (ptr, ...) @rdbCheckError(ptr noundef nonnull @.str.57, i32 noundef %i.aq)
  br label %.thread156

bb.ao:                                            ; preds = %.preheader175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store ptr null, ptr %i.e, align 8, !tbaa !26
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.di = call i32 @rdbFunctionLoad(ptr noundef nonnull @redis_check_rdb.rdb, i32 noundef %i.aq, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.e) #13
  %.not100 = icmp eq i32 %i.di, 0
  br i1 %.not100, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dj = load ptr, ptr %i.e, align 8, !tbaa !26
  call void (ptr, ...) @rdbCheckError(ptr noundef nonnull @.str.58, ptr noundef %i.dj)
  %i.dk = load ptr, ptr %i.e, align 8, !tbaa !26
  call void @sdsfree(ptr noundef %i.dk) #13
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %.9 = phi i32 [ 3, %bb.ap ], [ 4, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %select.unfold

bb.ar:                                            ; preds = %.preheader175
  %or.cond4 = icmp ult i32 %i.as, 8
  %i.dl = add i32 %i.as, -9
  %or.cond6 = icmp ult i32 %i.dl, 18
  %or.cond111 = or i1 %or.cond4, %or.cond6
  br i1 %or.cond111, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void (ptr, ...) @rdbCheckError(ptr noundef nonnull @.str.59, i32 noundef %i.as)
  br label %.thread156

bb.at:                                            ; preds = %bb.ar
  store i32 %i.as, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 16), align 8, !tbaa !31
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.dm = call ptr @rdbLoadStringObject(ptr noundef nonnull @redis_check_rdb.rdb) #13 ; 4 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %rioRead.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  store ptr %i.dm, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 8), align 8, !tbaa !28
  %i.do = load i64, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 24), align 8, !tbaa !13
  %i.dp = add i64 %i.do, 1
  store i64 %i.dp, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 24), align 8, !tbaa !13
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !29
  %i.ds = call ptr @rdbLoadObject(i32 noundef %i.as, ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef %i.dr, i32 noundef %.078, ptr noundef null) #13 ; 4 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %rioRead.exit.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.not98 = icmp ne i64 %.079, -1                 ; 2 uses
  %i.du = icmp slt i64 %.079, %i.g
  %or.cond112 = select i1 %.not98, i1 %i.du, i1 false
  br i1 %or.cond112, label %.thread141, label %bb.aw

.thread141:                                       ; preds = %bb.av
  %i.dv = load i64, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 40), align 8, !tbaa !20
  %i.dw = add i64 %i.dv, 1
  store i64 %i.dw, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 40), align 8, !tbaa !20
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av
  br i1 %.not98, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.thread141, %bb.aw
  %i.dx = load i64, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 32), align 8, !tbaa !19
  %i.dy = add i64 %i.dx, 1
  store i64 %i.dy, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 32), align 8, !tbaa !19
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.dz = load i64, ptr %i.ds, align 8
  %i.ea = and i64 %i.dz, 15
  %i.eb = icmp eq i64 %i.ea, 4
  br i1 %i.eb, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.ec = call i64 @hashTypeGetMinExpire(ptr noundef nonnull %i.ds, i32 noundef 1) #13
  %.not99 = icmp eq i64 %i.ec, 281474976710656
  br i1 %.not99, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ed = load i64, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 48), align 8, !tbaa !21
  %i.ee = add i64 %i.ed, 1
  store i64 %i.ee, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 48), align 8, !tbaa !21
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 8), align 8, !tbaa !28
  call void @decrRefCount(ptr noundef nonnull %i.dm) #13
  call void @decrRefCount(ptr noundef nonnull %i.ds) #13
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 16), align 8, !tbaa !31
  br label %.preheader175.backedge

select.unfold:                                    ; preds = %bb.aq, %rioRead.exit122
  %.10 = phi i32 [ %.9, %bb.aq ], [ %i.bk, %rioRead.exit122 ]
  switch i32 %.10, label %select.unfold.unreachabledefault [
    i32 2, label %rioRead.exit.thread
    i32 4, label %.preheader175.backedge
    i32 3, label %.thread156
  ]

.thread160:                                       ; preds = %.preheader175
  %i.ef = icmp sgt i32 %i.aq, 4
  %i.eg = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6956), align 4
  %i.eh = icmp ne i32 %i.eg, 0
  %or.cond8 = select i1 %i.ef, i1 %i.eh, i1 false
  br i1 %or.cond8, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %.thread160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.ei = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 40), align 8, !tbaa !48
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.ej = call fastcc i64 @rioRead(ptr noundef %i.f, i64 noundef 8)
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %.thread167, label %bb.bd

.thread167:                                       ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  br label %rioRead.exit.thread

bb.bd:                                            ; preds = %bb.bc
  %i.el = load i64, ptr %i.f, align 8, !tbaa !49  ; 2 uses
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %.thread165, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.not104 = icmp eq i64 %i.el, %i.ei
  br i1 %.not104, label %.thread165, label %bb.bf

.thread165:                                       ; preds = %bb.be, %bb.bd
  %.str.62.sink = phi ptr [ @.str.60, %bb.bd ], [ @.str.62, %bb.be ]
  call void (ptr, ...) @rdbCheckInfo(ptr noundef nonnull %.str.62.sink)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  br label %bb.bg
end_hunk_0
