begin_hunk_0
@.str.47 = private unnamed_addr constant [46 x i8] c"Server crash checking the specified RDB file!\00", align 1
@redis_check_rdb.rdb = internal global %struct._rio zeroinitializer, align 8
@.str.48 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"REDIS\00", align 1
@.str.50 = private unnamed_addr constant [44 x i8] c"Wrong signature trying to load DB from file\00", align 1
@.str.51 = private unnamed_addr constant [35 x i8] c"Can't handle RDB format version %d\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"metadata\00", align 1
end_hunk_0
begin_hunk_1
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef %0, ptr noundef nonnull %1) #14 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.c = load ptr, ptr @rdbstate, align 8, !tbaa !22 ; 2 uses
end_hunk_1
begin_hunk_2
  %i.ac = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i64 noundef %i.ab) ; 0 uses
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 48), align 8, !tbaa !21
  %i.ae = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, i64 noundef %i.ad) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

end_hunk_2
begin_hunk_3
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef %0, ptr noundef nonnull %1) #14 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  %i.c = load ptr, ptr @rdbstate, align 8, !tbaa !22 ; 2 uses
  %.not = icmp eq ptr %i.c, null
end_hunk_3
begin_hunk_4
bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.g = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i64 noundef %i.f, ptr noundef nonnull %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

end_hunk_4
begin_hunk_5
define dso_local void @rdbCheckSetError(ptr noundef readonly captures(none) %0, ...) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call i32 @vsnprintf(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @rdbstate, i64 64), i64 noundef 1024, ptr noundef %0, ptr noundef nonnull %1) #14 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 60), align 4, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

end_hunk_5
begin_hunk_6
define dso_local void @rdbCheckHandleCrash(i32 %0, ptr readnone captures(none) %1, ptr readnone captures(none) %2) #4 {
bb.a:
  tail call void (ptr, ...) @rdbCheckError(ptr noundef nonnull @.str.47)
  tail call void @exit(i32 noundef 1) #15
  unreachable
}

end_hunk_6
begin_hunk_7
define dso_local void @rdbCheckSetupSignals() local_unnamed_addr #6 {
bb.a:
  %0 = alloca %struct.sigaction, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = call i32 @sigemptyset(ptr noundef nonnull %i.a) #14 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 -1073741820, ptr %i.c, align 8, !tbaa !33
  store ptr @rdbCheckHandleCrash, ptr %0, align 8, !tbaa !36
  %i.d = call i32 @sigaction(i32 noundef 11, ptr noundef nonnull %0, ptr noundef null) #14 ; 0 uses
  %i.e = call i32 @sigaction(i32 noundef 7, ptr noundef nonnull %0, ptr noundef null) #14 ; 0 uses
  %i.f = call i32 @sigaction(i32 noundef 8, ptr noundef nonnull %0, ptr noundef null) #14 ; 0 uses
  %i.g = call i32 @sigaction(i32 noundef 4, ptr noundef nonnull %0, ptr noundef null) #14 ; 0 uses
  %i.h = call i32 @sigaction(i32 noundef 6, ptr noundef nonnull %0, ptr noundef null) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  ret void
}

end_hunk_7
begin_hunk_8
; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @redis_check_rdb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 6 uses
  %2 = alloca %struct.stat, align 8               ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca [10 x i8], align 1                ; 5 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.g = tail call i64 @mstime() #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.h = icmp eq ptr %1, null                     ; 3 uses
  br i1 %i.h, label %bb.b, label %bb.c

end_hunk_8
begin_hunk_9

bb.c:                                             ; preds = %bb.b, %bb.a
  %.077 = phi ptr [ %i.i, %bb.b ], [ %1, %bb.a ]  ; 3 uses
  %i.k = tail call i32 @fileno(ptr noundef nonnull %.077) #14
  %i.l = call i32 @fstat64(i32 noundef %i.k, ptr noundef nonnull %2) #14
  %i.m = icmp eq i32 %i.l, -1
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  br i1 %i.m, label %bb.d, label %._crit_edge
end_hunk_9
begin_hunk_10

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.o = phi i64 [ %.pre, %._crit_edge ], [ 0, %bb.d ]
  tail call void @startLoadingFile(i64 noundef %i.o, ptr noundef %0, i32 noundef 0) #14
  tail call void @rioInitWithFile(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef nonnull %.077) #14
  store ptr @redis_check_rdb.rdb, ptr @rdbstate, align 8, !tbaa !22
  store ptr @rdbLoadProgressCallback, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 32), align 8, !tbaa !40
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 48), align 8, !tbaa !41
end_hunk_10
begin_hunk_11
  %i.s = call i64 @llvm.umin.i64(i64 %i.r, i64 %.0254.i)
  %i.t = select i1 %.not32.not.i, i64 %.0254.i, i64 %i.s ; 5 uses
  %i.u = load ptr, ptr @redis_check_rdb.rdb, align 8, !tbaa !43
  %i.v = call i64 %i.u(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef %.0273.i, i64 noundef %i.t) #14
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.thread.i, label %bb.f

end_hunk_11
begin_hunk_12
  br i1 %.not33.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void %i.z(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef %.0273.i, i64 noundef %i.t) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
end_hunk_12
begin_hunk_13
rioRead.exit:                                     ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 0, ptr %i.ae, align 1, !tbaa !36
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %i.a, ptr noundef nonnull dereferenceable(5) @.str.49, i64 5)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %rioRead.exit
end_hunk_13
begin_hunk_14

bb.j:                                             ; preds = %rioRead.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.ag = call i64 @__isoc23_strtol(ptr noundef nonnull %i.af, ptr noundef null, i32 noundef 10) #14
  %i.ah = trunc i64 %i.ag to i32                  ; 6 uses
  %i.ai = add i32 %i.ah, -14
  %or.cond = icmp ult i32 %i.ai, -13
end_hunk_14
begin_hunk_15
  %.079 = phi i64 [ %.079.be, %.preheader165.backedge ], [ -1, %bb.j ] ; 11 uses
  %.078 = phi i32 [ %.078.be, %.preheader165.backedge ], [ -1, %bb.j ] ; 12 uses
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.aj = call i32 @rdbLoadType(ptr noundef nonnull @redis_check_rdb.rdb) #14 ; 6 uses
  switch i32 %i.aj, label %bb.ar [
    i32 -1, label %rioRead.exit.thread
    i32 253, label %bb.l
end_hunk_15
begin_hunk_16

bb.l:                                             ; preds = %.preheader165
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.ak = call i64 @rdbLoadTime(ptr noundef nonnull @redis_check_rdb.rdb) #14
  %i.al = mul nsw i64 %i.ak, 1000
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 48), align 8, !tbaa !41
  %i.an = and i64 %i.am, 1
end_hunk_16
begin_hunk_17

bb.m:                                             ; preds = %.preheader165
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.ao = call i64 @rdbLoadMillisecondTime(ptr noundef nonnull @redis_check_rdb.rdb, i32 noundef %i.ah) #14
  %i.ap = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 48), align 8, !tbaa !41
  %i.aq = and i64 %i.ap, 1
  %.not102 = icmp eq i64 %i.aq, 0
  br i1 %.not102, label %.preheader165.backedge, label %rioRead.exit.thread

bb.n:                                             ; preds = %.preheader165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.ar = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 48), align 8, !tbaa !41
  %i.as = and i64 %i.ar, 1
  %.not.i113 = icmp eq i64 %i.as, 0
end_hunk_17
begin_hunk_18

.preheader.i115:                                  ; preds = %bb.n
  %i.at = load ptr, ptr @redis_check_rdb.rdb, align 8, !tbaa !43
  %i.au = call i64 %i.at(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef nonnull %i.b, i64 noundef 1) #14
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.thread.i121, label %bb.o

end_hunk_18
begin_hunk_19
  br i1 %.not33.i119, label %rioRead.exit122.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void %i.ay(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef nonnull %i.b, i64 noundef 1) #14
  br label %rioRead.exit122.loopexit

rioRead.exit122.loopexit:                         ; preds = %bb.o, %bb.p
end_hunk_19
begin_hunk_20

rioRead.exit122:                                  ; preds = %rioRead.exit122.loopexit, %.thread.i121, %bb.n
  %i.bb = phi i32 [ 2, %.thread.i121 ], [ 2, %bb.n ], [ 4, %rioRead.exit122.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %select.unfold

bb.q:                                             ; preds = %.preheader165
  %i.bc = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #14
  %i.bd = icmp eq i64 %i.bc, -1
  br i1 %i.bd, label %rioRead.exit.thread, label %.preheader165.backedge

bb.r:                                             ; preds = %.preheader165
  %i.be = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #14 ; 2 uses
  switch i64 %i.be, label %.lr.ph [
    i64 -1, label %rioRead.exit.thread
    i64 0, label %.preheader165.backedge
end_hunk_20
begin_hunk_21

.lr.ph:                                           ; preds = %bb.r, %bb.v
  %.083176 = phi i64 [ %i.bw, %bb.v ], [ 0, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.bf = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 48), align 8, !tbaa !41
  %i.bg = and i64 %i.bf, 1
  %.not.i123 = icmp eq i64 %i.bg, 0
end_hunk_21
begin_hunk_22
  %i.bi = call i64 @llvm.umin.i64(i64 %i.bh, i64 %.0254.i126)
  %i.bj = select i1 %.not32.not.i128, i64 %.0254.i126, i64 %i.bi ; 5 uses
  %i.bk = load ptr, ptr @redis_check_rdb.rdb, align 8, !tbaa !43
  %i.bl = call i64 %i.bk(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef %.0273.i127, i64 noundef %i.bj) #14
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %.thread.i131, label %bb.s

end_hunk_22
begin_hunk_23
  br i1 %.not33.i129, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void %i.bp(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef %.0273.i127, i64 noundef %i.bj) #14
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
end_hunk_23
begin_hunk_24
  br i1 %.not31.i130, label %rioRead.exit132, label %.preheader.i125

rioRead.exit132:                                  ; preds = %bb.u
  %i.bu = call ptr @rdbLoadCheckModuleValue(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef nonnull @.str.52) #14 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %rioRead.exit132.thread, label %bb.v

bb.v:                                             ; preds = %rioRead.exit132
  call void @decrRefCount(ptr noundef nonnull %i.bu) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.bw = add nuw i64 %.083176, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bw, %i.be
  br i1 %exitcond.not, label %.preheader165.backedge, label %.lr.ph, !llvm.loop !44

rioRead.exit132.thread:                           ; preds = %.lr.ph, %rioRead.exit132, %.thread.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %rioRead.exit.thread

bb.w:                                             ; preds = %.preheader165
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.bx = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #14 ; 3 uses
  %i.by = icmp eq i64 %i.bx, -1
  br i1 %i.by, label %rioRead.exit.thread, label %bb.x

end_hunk_24
begin_hunk_25

bb.y:                                             ; preds = %.preheader165
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.ca = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #14
  %i.cb = icmp eq i64 %i.ca, -1
  br i1 %i.cb, label %rioRead.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cc = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #14
  %i.cd = icmp eq i64 %i.cc, -1
  br i1 %i.cd, label %rioRead.exit.thread, label %.preheader165.backedge

bb.aa:                                            ; preds = %.preheader165
  %i.ce = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #14
  %i.cf = icmp eq i64 %i.ce, -1
  br i1 %i.cf, label %rioRead.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cg = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #14
  %i.ch = icmp eq i64 %i.cg, -1
  br i1 %i.ch, label %rioRead.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ci = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #14
  %i.cj = icmp eq i64 %i.ci, -1
  br i1 %i.cj, label %rioRead.exit.thread, label %.preheader165.backedge

bb.ad:                                            ; preds = %.preheader165
  store i32 7, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.ck = call ptr @rdbLoadStringObject(ptr noundef nonnull @redis_check_rdb.rdb) #14 ; 4 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %rioRead.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cm = call ptr @rdbLoadStringObject(ptr noundef nonnull @redis_check_rdb.rdb) #14 ; 3 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @decrRefCount(ptr noundef nonnull %i.ck) #14
  br label %rioRead.exit.thread

bb.ag:                                            ; preds = %bb.ae
end_hunk_25
begin_hunk_26
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !29
  call void (ptr, ...) @rdbCheckInfo(ptr noundef nonnull @.str.54, ptr noundef %i.cp, ptr noundef %i.cr)
  call void @decrRefCount(ptr noundef nonnull %i.ck) #14
  call void @decrRefCount(ptr noundef nonnull %i.cm) #14
  br label %.preheader165.backedge

bb.ah:                                            ; preds = %.preheader165
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.cs = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #14 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, -1
  br i1 %i.ct, label %rioRead.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cu = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #14 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, -1
  br i1 %i.cv, label %rioRead.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cw = call i64 @rdbLoadLen(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef null) #14
  %i.cx = icmp eq i64 %i.cw, -1
  br i1 %i.cx, label %rioRead.exit.thread, label %bb.ak

end_hunk_26
begin_hunk_27
  br label %.thread152

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @moduleTypeNameByID(ptr noundef nonnull %i.d, i64 noundef %i.cs) #14
  call void (ptr, ...) @rdbCheckInfo(ptr noundef nonnull @.str.56, ptr noundef nonnull %i.d)
  %i.cy = call ptr @rdbLoadCheckModuleValue(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef nonnull %i.d) #14
  call void @decrRefCount(ptr noundef %i.cy) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %.preheader165.backedge

bb.an:                                            ; preds = %.preheader165
end_hunk_27
begin_hunk_28
  br label %.thread152

bb.ao:                                            ; preds = %.preheader165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  store ptr null, ptr %i.e, align 8, !tbaa !26
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.cz = call i32 @rdbFunctionLoad(ptr noundef nonnull @redis_check_rdb.rdb, i32 noundef %i.ah, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.e) #14
  %.not100 = icmp eq i32 %i.cz, 0
  br i1 %.not100, label %bb.aq, label %bb.ap

end_hunk_28
begin_hunk_29
  %i.da = load ptr, ptr %i.e, align 8, !tbaa !26
  call void (ptr, ...) @rdbCheckError(ptr noundef nonnull @.str.58, ptr noundef %i.da)
  %i.db = load ptr, ptr %i.e, align 8, !tbaa !26
  call void @sdsfree(ptr noundef %i.db) #14
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %.9 = phi i32 [ 3, %bb.ap ], [ 4, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %select.unfold

bb.ar:                                            ; preds = %.preheader165
end_hunk_29
begin_hunk_30
bb.at:                                            ; preds = %bb.ar
  store i32 %i.aj, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 16), align 8, !tbaa !31
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.dd = call ptr @rdbLoadStringObject(ptr noundef nonnull @redis_check_rdb.rdb) #14 ; 4 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %rioRead.exit.thread, label %bb.au

end_hunk_30
begin_hunk_31
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !29
  %i.dj = call ptr @rdbLoadObject(i32 noundef %i.aj, ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef %i.di, i32 noundef %.078, ptr noundef null) #14 ; 4 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %rioRead.exit.thread, label %bb.av

end_hunk_31
begin_hunk_32
  br i1 %i.ds, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.dt = call i64 @hashTypeGetMinExpire(ptr noundef nonnull %i.dj, i32 noundef 1) #14
  %.not99 = icmp eq i64 %i.dt, 281474976710656
  br i1 %.not99, label %bb.bb, label %bb.ba

end_hunk_32
begin_hunk_33

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 8), align 8, !tbaa !28
  call void @decrRefCount(ptr noundef nonnull %i.dd) #14
  call void @decrRefCount(ptr noundef nonnull %i.dj) #14
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 16), align 8, !tbaa !31
  br label %.preheader165.backedge

end_hunk_33
begin_hunk_34
  br i1 %or.cond8, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %.thread156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.dz = load i64, ptr getelementptr inbounds nuw (i8, ptr @redis_check_rdb.rdb, i64 40), align 8, !tbaa !46
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @rdbstate, i64 56), align 8, !tbaa !25
  %i.ea = call fastcc i64 @rioRead(ptr noundef %i.f, i64 noundef 8)
end_hunk_34
begin_hunk_35
  br i1 %i.eb, label %.thread163, label %bb.bd

.thread163:                                       ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %rioRead.exit.thread

bb.bd:                                            ; preds = %bb.bc
end_hunk_35
begin_hunk_36
.thread161:                                       ; preds = %bb.be, %bb.bd
  %.str.62.sink = phi ptr [ @.str.60, %bb.bd ], [ @.str.62, %bb.be ]
  call void (ptr, ...) @rdbCheckInfo(ptr noundef nonnull %.str.62.sink)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void (ptr, ...) @rdbCheckError(ptr noundef nonnull @.str.61)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %.thread152

bb.bg:                                            ; preds = %.thread161, %.thread156
end_hunk_36
begin_hunk_37
.sink.split:                                      ; preds = %.sink.split.sink.split, %.thread152, %bb.bg
  %.sink = phi i32 [ 1, %bb.bg ], [ 0, %.thread152 ], [ %.sink.ph, %.sink.split.sink.split ]
  %.0.ph = phi i32 [ 0, %bb.bg ], [ 1, %.thread152 ], [ %.0.ph.ph, %.sink.split.sink.split ]
  call void @stopLoading(i32 noundef %.sink) #14
  br label %bb.bj

bb.bj:                                            ; preds = %.sink.split, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

end_hunk_37
begin_hunk_38
  %i.d = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %.0254)
  %i.e = select i1 %.not32.not, i64 %.0254, i64 %i.d ; 5 uses
  %i.f = load ptr, ptr @redis_check_rdb.rdb, align 8, !tbaa !43
  %i.g = tail call i64 %i.f(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef %.0273, i64 noundef %i.e) #14
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.thread, label %bb.b

end_hunk_38
begin_hunk_39
  br i1 %.not33, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.k(ptr noundef nonnull @redis_check_rdb.rdb, ptr noundef %.0273, i64 noundef %i.e) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
end_hunk_39
begin_hunk_40
bb.a:
  %3 = alloca %struct.sigaction, align 8          ; 10 uses
  %4 = alloca %struct.timeval, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.a = icmp ne i32 %0, 2
  %i.b = icmp eq ptr %2, null                     ; 2 uses
  %or.cond = and i1 %i.a, %i.b
end_hunk_40
begin_hunk_41
bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.d = load ptr, ptr %1, align 8, !tbaa !26
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.64, ptr noundef %i.d) #16 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

sub_0:                                            ; preds = %bb.a
end_hunk_41
begin_hunk_42
  br i1 %i.m, label %bb.c, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(10) @.str.66) #17
  %.not14 = icmp eq i32 %i.n, 0
  br i1 %.not14, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.tail.thread, %.tail
  %i.o = tail call ptr @getVersion() #14          ; 2 uses
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.67, ptr noundef %i.o) ; 0 uses
  tail call void @sdsfree(ptr noundef %i.o) #14
  tail call void @exit(i32 noundef 0) #18
  unreachable

bb.d:                                             ; preds = %.tail.thread
  %i.q = call i32 @gettimeofday(ptr noundef nonnull %4, ptr noundef null) #14 ; 0 uses
  %i.r = load i64, ptr %4, align 8, !tbaa !50
  %i.s = mul nsw i64 %i.r, 1000000
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !52
  %i.v = add nsw i64 %i.s, %i.u
  %i.w = tail call i32 @getpid() #14
  %i.x = sext i32 %i.w to i64
  %i.y = xor i64 %i.v, %i.x
  tail call void @init_genrand64(i64 noundef %i.y) #14
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 896), align 8, !tbaa !53
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @createSharedObjects() #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
end_hunk_42
begin_hunk_43
  store i32 1, ptr @rdbCheckMode, align 4, !tbaa !9
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !26
  tail call void (ptr, ...) @rdbCheckInfo(ptr noundef nonnull @.str.68, ptr noundef %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = call i32 @sigemptyset(ptr noundef nonnull %i.ac) #14 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i32 -1073741820, ptr %i.ae, align 8, !tbaa !33
  store ptr @rdbCheckHandleCrash, ptr %3, align 8, !tbaa !36
  %i.af = call i32 @sigaction(i32 noundef 11, ptr noundef nonnull %3, ptr noundef null) #14 ; 0 uses
  %i.ag = call i32 @sigaction(i32 noundef 7, ptr noundef nonnull %3, ptr noundef null) #14 ; 0 uses
  %i.ah = call i32 @sigaction(i32 noundef 8, ptr noundef nonnull %3, ptr noundef null) #14 ; 0 uses
  %i.ai = call i32 @sigaction(i32 noundef 4, ptr noundef nonnull %3, ptr noundef null) #14 ; 0 uses
  %i.aj = call i32 @sigaction(i32 noundef 6, ptr noundef nonnull %3, ptr noundef null) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.al = call i32 @redis_check_rdb(ptr noundef %i.ak, ptr noundef %2) ; 2 uses
  %i.am = icmp ne i32 %i.al, 0                    ; 2 uses
end_hunk_43
begin_hunk_44

bb.i:                                             ; preds = %bb.h
  %i.av = sext i1 %i.am to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret i32 %i.av

bb.j:                                             ; preds = %bb.h
  call void @exit(i32 noundef %i.al) #18
  unreachable
}

end_hunk_44
begin_hunk_45
; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

attributes #0 = { nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_45
begin_hunk_46
attributes #9 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
end_hunk_46
