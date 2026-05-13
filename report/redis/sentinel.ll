inline.NumInlined: 166
inline.NumDeleted: 2
begin_hunk_0_@sentinelResetMaster:bb.a
bb.n:                                             ; preds = %bb.m
  tail call void (i32, ptr, ptr, ptr, ...) @sentinelEvent(i32 noundef 3, ptr noundef nonnull @.str.53, ptr noundef nonnull %0, ptr noundef nonnull @.str.54)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @sentinelResetMastersByPattern(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.dictIterator, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 56), align 8, !tbaa !74
  call void @dictInitIterator(ptr noundef nonnull %2, ptr noundef %i.a) #26
  %i.b = call ptr @dictNext(ptr noundef nonnull %2) #26 ; 2 uses
  %.not11 = icmp eq ptr %i.b, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %i.c = phi ptr [ %i.i, %bb.d ], [ %i.b, %bb.a ]
  %.012 = phi i32 [ %.1, %bb.d ], [ 0, %bb.a ]    ; 3 uses
  %i.d = call ptr @dictGetVal(ptr noundef nonnull %i.c) #26 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %.not9 = icmp eq ptr %i.f, null
  br i1 %.not9, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = call i32 @stringmatch(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef 0) #26
  %.not10 = icmp eq i32 %i.g, 0
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @sentinelResetMaster(ptr noundef nonnull %i.d, i32 noundef %1)
  %i.h = add nsw i32 %.012, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %.lr.ph
  %.1 = phi i32 [ %i.h, %bb.c ], [ %.012, %bb.b ], [ %.012, %.lr.ph ] ; 2 uses
  %i.i = call ptr @dictNext(ptr noundef nonnull %2) #26 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !181

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.d ]
  call void @dictResetIterator(ptr noundef nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i32 %.0.lcssa
}

declare i32 @stringmatch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @sentinelResetMasterAndChangeAddress(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.dictIterator, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = tail call ptr @createSentinelAddr(ptr noundef %1, i32 noundef %2, i32 noundef 0) ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %sentinelFlushConfig.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !182
  %i.i = add i64 %i.h, %i.f
  %i.j = shl i64 %i.i, 3
  %i.k = add i64 %i.j, 8
  %i.l = tail call noalias ptr @zmalloc(i64 noundef %i.k) #29 ; 4 uses
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !23
  call void @dictInitIterator(ptr noundef nonnull %3, ptr noundef %i.m) #26
  %i.n = call ptr @dictNext(ptr noundef nonnull %3) #26 ; 2 uses
  %.not55 = icmp eq ptr %i.n, null
  br i1 %.not55, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %sentinelAddrOrHostnameEqual.exit.thread50
  %i.q = phi ptr [ %i.n, %.lr.ph ], [ %i.ar, %sentinelAddrOrHostnameEqual.exit.thread50 ]
  %.03856 = phi i32 [ 0, %.lr.ph ], [ %.1, %sentinelAddrOrHostnameEqual.exit.thread50 ] ; 4 uses
  %i.r = call ptr @dictGetVal(ptr noundef nonnull %i.q) #26
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !34   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !94
  %i.w = load i32, ptr %i.o, align 8, !tbaa !94
  %i.x = icmp eq i32 %i.v, %i.w
  br i1 %i.x, label %bb.d, label %sentinelAddrOrHostnameEqual.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !37
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.ab = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(1) %i.aa) #30
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %sentinelAddrOrHostnameEqual.exit.thread50, label %sentinelAddrOrHostnameEqual.exit

sentinelAddrOrHostnameEqual.exit:                 ; preds = %bb.d
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !35
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.ae = call i32 @strcasecmp(ptr noundef %i.ac, ptr noundef %i.ad) #30
  %.not6.i.not = icmp eq i32 %i.ae, 0
  br i1 %.not6.i.not, label %sentinelAddrOrHostnameEqual.exit.thread50, label %sentinelAddrOrHostnameEqual.exit.thread, !llvm.loop !183

sentinelAddrOrHostnameEqual.exit.thread:          ; preds = %bb.c, %sentinelAddrOrHostnameEqual.exit
  %i.af = call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #29 ; 4 uses
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !35
  %i.ah = call ptr @sdsnew(ptr noundef %i.ag) #26
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !37
  %i.ak = call ptr @sdsnew(ptr noundef %i.aj) #26
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !37
  %i.am = load i32, ptr %i.u, align 8, !tbaa !94
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i32 %i.am, ptr %i.an, align 8, !tbaa !94
  %i.ao = add nsw i32 %.03856, 1
  %i.ap = sext i32 %.03856 to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ap
  store ptr %i.af, ptr %i.aq, align 8, !tbaa !184
  br label %sentinelAddrOrHostnameEqual.exit.thread50

sentinelAddrOrHostnameEqual.exit.thread50:        ; preds = %bb.d, %sentinelAddrOrHostnameEqual.exit, %sentinelAddrOrHostnameEqual.exit.thread
  %.1 = phi i32 [ %i.ao, %sentinelAddrOrHostnameEqual.exit.thread ], [ %.03856, %sentinelAddrOrHostnameEqual.exit ], [ %.03856, %bb.d ] ; 2 uses
  %i.ar = call ptr @dictNext(ptr noundef nonnull %3) #26 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %sentinelAddrOrHostnameEqual.exit.thread50, %bb.b
  %.038.lcssa = phi i32 [ 0, %bb.b ], [ %.1, %sentinelAddrOrHostnameEqual.exit.thread50 ] ; 4 uses
  call void @dictResetIterator(ptr noundef nonnull %3) #26
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !34 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.av = load i32, ptr %i.au, align 8, !tbaa !94
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !94
  %i.ay = icmp eq i32 %i.av, %i.ax
  br i1 %i.ay, label %bb.e, label %sentinelAddrOrHostnameEqual.exit48.thread

bb.e:                                             ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !37
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !37
  %i.bd = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ba, ptr noundef nonnull dereferenceable(1) %i.bc) #30
  %.not.i46 = icmp eq i32 %i.bd, 0
  br i1 %.not.i46, label %sentinelAddrOrHostnameEqual.exit48.thread53, label %sentinelAddrOrHostnameEqual.exit48

sentinelAddrOrHostnameEqual.exit48:               ; preds = %bb.e
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.bf = load ptr, ptr %i.at, align 8, !tbaa !35
  %i.bg = call i32 @strcasecmp(ptr noundef %i.be, ptr noundef %i.bf) #30
  %.not6.i47.not = icmp eq i32 %i.bg, 0
  br i1 %.not6.i47.not, label %sentinelAddrOrHostnameEqual.exit48.thread53, label %sentinelAddrOrHostnameEqual.exit48.thread

sentinelAddrOrHostnameEqual.exit48.thread:        ; preds = %._crit_edge, %sentinelAddrOrHostnameEqual.exit48
  %i.bh = call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #29 ; 4 uses
  %i.bi = load ptr, ptr %i.at, align 8, !tbaa !35
  %i.bj = call ptr @sdsnew(ptr noundef %i.bi) #26
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !35
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !37
  %i.bm = call ptr @sdsnew(ptr noundef %i.bl) #26
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !37
  %i.bo = load i32, ptr %i.aw, align 8, !tbaa !94
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i32 %i.bo, ptr %i.bp, align 8, !tbaa !94
  %i.bq = add nsw i32 %.038.lcssa, 1
  %i.br = sext i32 %.038.lcssa to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.br
  store ptr %i.bh, ptr %i.bs, align 8, !tbaa !184
  br label %sentinelAddrOrHostnameEqual.exit48.thread53

sentinelAddrOrHostnameEqual.exit48.thread53:      ; preds = %bb.e, %sentinelAddrOrHostnameEqual.exit48.thread, %sentinelAddrOrHostnameEqual.exit48
  %.2 = phi i32 [ %.038.lcssa, %sentinelAddrOrHostnameEqual.exit48 ], [ %i.bq, %sentinelAddrOrHostnameEqual.exit48.thread ], [ %.038.lcssa, %bb.e ] ; 2 uses
  call void @sentinelResetMaster(ptr noundef nonnull %0, i32 noundef 1)
  %i.bt = load ptr, ptr %i.as, align 8, !tbaa !34 ; 3 uses
  store ptr %i.a, ptr %i.as, align 8, !tbaa !34
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bv = icmp sgt i32 %.2, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false)
  br i1 %i.bv, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %sentinelAddrOrHostnameEqual.exit48.thread53
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 168
  %wide.trip.count = zext nneg i32 %.2 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph58, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !184 ; 5 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !35
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !94
  %i.cc = load i32, ptr %i.bw, align 8, !tbaa !89
  %i.cd = call ptr @createSentinelRedisInstance(ptr noundef null, i32 noundef 2, ptr noundef %i.bz, i32 noundef %i.cb, i32 noundef %i.cc, ptr noundef nonnull %0) ; 2 uses
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !35
  call void @sdsfree(ptr noundef %i.ce) #26
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !37
  call void @sdsfree(ptr noundef %i.cg) #26
  call void @zfree(ptr noundef nonnull %i.by) #26
  %.not44 = icmp eq ptr %i.cd, null
  br i1 %.not44, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (i32, ptr, ptr, ptr, ...) @sentinelEvent(i32 noundef 2, ptr noundef nonnull @.str.55, ptr noundef nonnull %i.cd, ptr noundef nonnull @.str.54)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge59, label %bb.f, !llvm.loop !185

._crit_edge59:                                    ; preds = %bb.h, %sentinelAddrOrHostnameEqual.exit48.thread53
  call void @zfree(ptr noundef %i.l) #26
  %i.ch = load ptr, ptr %i.bt, align 8, !tbaa !35
  call void @sdsfree(ptr noundef %i.ch) #26
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !37
  call void @sdsfree(ptr noundef %i.cj) #26
  call void @zfree(ptr noundef nonnull %i.bt) #26
  %i.ck = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 52), align 4, !tbaa !88
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @server, i64 52), align 4, !tbaa !88
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 16), align 8, !tbaa !86
  %i.cm = call i32 @rewriteConfig(ptr noundef %i.cl, i32 noundef 0) #26
  store i32 %i.ck, ptr getelementptr inbounds nuw (i8, ptr @server, i64 52), align 4, !tbaa !88
  %i.cn = icmp eq i32 %i.cm, -1
  %i.co = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !87 ; 2 uses
  br i1 %i.cn, label %bb.i, label %bb.k

bb.i:                                             ; preds = %._crit_edge59
  %i.cp = icmp sgt i32 %i.co, 3
  br i1 %i.cp, label %sentinelFlushConfig.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cq = tail call ptr @__errno_location() #28
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !9
  %i.cs = call ptr @strerror(i32 noundef %i.cr) #26
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.144, ptr noundef %i.cs) #26
  br label %sentinelFlushConfig.exit

bb.k:                                             ; preds = %._crit_edge59
  %i.ct = icmp sgt i32 %i.co, 2
  br i1 %i.ct, label %sentinelFlushConfig.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.145) #26
  br label %sentinelFlushConfig.exit

sentinelFlushConfig.exit:                         ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @sentinelRedisInstanceNoDownFor(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !186
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i64, ptr %i.c, align 8, !tbaa !187
  %spec.select = tail call i64 @llvm.smax.i64(i64 %i.d, i64 %i.b) ; 2 uses
  %i.e = icmp eq i64 %spec.select, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @mstime() #26
  %i.g = sub nsw i64 %i.f, %spec.select
  %i.h = icmp sgt i64 %i.g, %1
  %i.i = zext i1 %i.h to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i32 [ 1, %bb.a ], [ %i.i, %bb.b ]
  ret i32 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @sentinelGetCurrentMasterAddress(ptr noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !39
  %i.b = and i32 %i.a, 64
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 2 uses
  %.not7 = icmp eq ptr %i.d, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.f = load i32, ptr %i.e, align 8, !tbaa !180
  %i.g = icmp sgt i32 %i.f, 4
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.pn = phi ptr [ %0, %bb.d ], [ %i.d, %bb.c ]
  %.0.in = getelementptr inbounds nuw i8, ptr %.pn, i64 32
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !34
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @sentinelPropagateDownAfterPeriod(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.dictIterator, align 8       ; 6 uses
  %i.a = alloca [3 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13
  store ptr %i.f, ptr %i.d, align 8, !tbaa !188
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.g, align 16, !tbaa !188
  %.not11 = icmp eq ptr %i.c, null
  br i1 %.not11, label %._crit_edge15, label %.lr.ph14

.lr.ph14:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph14, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph14 ], [ %indvars.iv.next, %._crit_edge ]
  %i.i = phi ptr [ %i.c, %.lr.ph14 ], [ %i.q, %._crit_edge ]
  call void @dictInitIterator(ptr noundef nonnull %1, ptr noundef nonnull %i.i) #26
  %i.j = call ptr @dictNext(ptr noundef nonnull %1) #26 ; 2 uses
  %.not910 = icmp eq ptr %i.j, null
  br i1 %.not910, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.k = phi ptr [ %i.o, %.lr.ph ], [ %i.j, %bb.b ]
  %i.l = call ptr @dictGetVal(ptr noundef nonnull %i.k) #26
  %i.m = load i64, ptr %i.h, align 8, !tbaa !165
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  store i64 %i.m, ptr %i.n, align 8, !tbaa !165
  %i.o = call ptr @dictNext(ptr noundef nonnull %1) #26 ; 2 uses
  %.not9 = icmp eq ptr %i.o, null
  br i1 %.not9, label %._crit_edge, label %.lr.ph, !llvm.loop !189

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @dictResetIterator(ptr noundef nonnull %1) #26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !188  ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %._crit_edge15, label %bb.b, !llvm.loop !190

._crit_edge15:                                    ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sentinelInstanceMapCommand(ptr noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @sdsnew(ptr noundef %1) #26 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  %spec.select = select i1 %.not, ptr %0, ptr %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %spec.select, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.f = tail call ptr @dictFetchValue(ptr noundef %i.e, ptr noundef %i.a) #26 ; 2 uses
  tail call void @sdsfree(ptr noundef %i.a) #26
  %.not10 = icmp eq ptr %i.f, null
  %i.g = select i1 %.not10, ptr %1, ptr %i.f
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define dso_local noundef nonnull ptr @sentinelCheckCreateInstanceErrors(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @__errno_location() #28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9
  switch i32 %i.b, label %bb.g [
    i32 16, label %bb.b
    i32 2, label %bb.h
    i32 22, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  switch i32 %0, label %bb.e [
    i32 1, label %bb.h
    i32 2, label %bb.c
    i32 4, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.21, i32 noundef 1712) #26
  tail call void @abort() #31
  unreachable

bb.f:                                             ; preds = %bb.a
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.b, %bb.g, %bb.f, %bb.d, %bb.c
  %.0 = phi ptr [ @.str.62, %bb.g ], [ @.str.61, %bb.f ], [ @.str.57, %bb.c ], [ @.str.58, %bb.d ], [ @.str.56, %bb.b ], [ @.str.60, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @initializeSentinelConfig() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #29
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8656), align 8, !tbaa !85
  %i.b = tail call ptr @listCreate() #26
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8656), align 8, !tbaa !85
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !191
  %i.e = tail call ptr @listCreate() #26
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8656), align 8, !tbaa !85
  store ptr %i.e, ptr %i.f, align 8, !tbaa !193
  %i.g = tail call ptr @listCreate() #26          ; 2 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8656), align 8, !tbaa !85 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.g, ptr %i.i, align 8, !tbaa !194
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !191
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @freeSentinelLoadQueueEntry, ptr %i.l, align 8, !tbaa !195
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !193
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @freeSentinelLoadQueueEntry, ptr %i.n, align 8, !tbaa !195
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @freeSentinelLoadQueueEntry, ptr %i.o, align 8, !tbaa !195
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @freeSentinelLoadQueueEntry(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !196
  %i.c = load i32, ptr %0, align 8, !tbaa !198
  tail call void @sdsfreesplitres(ptr noundef %i.b, i32 noundef %i.c) #26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !199
  tail call void @sdsfree(ptr noundef %i.e) #26
  tail call void @zfree(ptr noundef nonnull %0) #26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @freeSentinelConfig() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8656), align 8, !tbaa !85
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !193
  tail call void @listRelease(ptr noundef %i.b) #26
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8656), align 8, !tbaa !85
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !191
  tail call void @listRelease(ptr noundef %i.e) #26
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8656), align 8, !tbaa !85
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !194
  tail call void @listRelease(ptr noundef %i.h) #26
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8656), align 8, !tbaa !85
  tail call void @zfree(ptr noundef %i.i) #26
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8656), align 8, !tbaa !85
  ret void
}

declare void @listRelease(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read) uwtable
define dso_local range(i32 0, 2) i32 @searchPreMonitorCfgName(ptr noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @preMonitorCfgName, align 16, !tbaa !95
  %i.b = tail call i32 @strcasecmp(ptr noundef %i.a, ptr noundef %0) #30
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @preMonitorCfgName, i64 8), align 8, !tbaa !95
  %i.d = tail call i32 @strcasecmp(ptr noundef %i.c, ptr noundef %0) #30
  %.not.1 = icmp eq i32 %i.d, 0
  br i1 %.not.1, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @preMonitorCfgName, i64 16), align 16, !tbaa !95
  %i.f = tail call i32 @strcasecmp(ptr noundef %i.e, ptr noundef %0) #30
  %.not.2 = icmp eq i32 %i.f, 0
  br i1 %.not.2, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @preMonitorCfgName, i64 24), align 8, !tbaa !95
  %i.h = tail call i32 @strcasecmp(ptr noundef %i.g, ptr noundef %0) #30
  %.not.3 = icmp eq i32 %i.h, 0
  br i1 %.not.3, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @preMonitorCfgName, i64 32), align 16, !tbaa !95
  %i.j = tail call i32 @strcasecmp(ptr noundef %i.i, ptr noundef %0) #30
  %.not.4 = icmp eq i32 %i.j, 0
  br i1 %.not.4, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @preMonitorCfgName, i64 40), align 8, !tbaa !95
  %i.l = tail call i32 @strcasecmp(ptr noundef %i.k, ptr noundef %0) #30
  %.not.5 = icmp eq i32 %i.l, 0
  br i1 %.not.5, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @preMonitorCfgName, i64 48), align 16, !tbaa !95
  %i.n = tail call i32 @strcasecmp(ptr noundef %i.m, ptr noundef %0) #30
  %.not.6 = icmp eq i32 %i.n, 0
  br i1 %.not.6, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @preMonitorCfgName, i64 56), align 8, !tbaa !95
  %i.p = tail call i32 @strcasecmp(ptr noundef %i.o, ptr noundef %0) #30
  %.not.7 = icmp eq i32 %i.p, 0
  br i1 %.not.7, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @preMonitorCfgName, i64 64), align 16, !tbaa !95
  %i.r = tail call i32 @strcasecmp(ptr noundef %i.q, ptr noundef %0) #30
  %.not.8 = icmp eq i32 %i.r, 0
  %spec.select = zext i1 %.not.8 to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.s = phi i32 [ 1, %bb.a ], [ 1, %bb.g ], [ 1, %bb.b ], [ %spec.select, %bb.i ], [ 1, %bb.c ], [ 1, %bb.f ], [ 1, %bb.d ], [ 1, %bb.h ], [ 1, %bb.e ]
  ret i32 %i.s
}

declare void @sdsfreesplitres(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @queueSentinelConfig(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8656), align 8, !tbaa !85
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #29
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8656), align 8, !tbaa !85
  %i.d = tail call ptr @listCreate() #26
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8656), align 8, !tbaa !85
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !191
  %i.g = tail call ptr @listCreate() #26
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8656), align 8, !tbaa !85
  store ptr %i.g, ptr %i.h, align 8, !tbaa !193
  %i.i = tail call ptr @listCreate() #26          ; 2 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8656), align 8, !tbaa !85 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.i, ptr %i.k, align 8, !tbaa !194
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !191
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @freeSentinelLoadQueueEntry, ptr %i.n, align 8, !tbaa !195
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !193
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @freeSentinelLoadQueueEntry, ptr %i.p, align 8, !tbaa !195
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @freeSentinelLoadQueueEntry, ptr %i.q, align 8, !tbaa !195
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
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
  br i1 %or.cond, label %bb.b, label %bb.f

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
  br i1 %i.t, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.u = tail call ptr @__errno_location() #28
  %i.v = load i32, ptr %i.u, align 4, !tbaa !9
  switch i32 %i.v, label %bb.be [
    i32 16, label %bb.e
    i32 2, label %sentinelCheckCreateInstanceErrors.exit.thread
    i32 22, label %bb.bd
  ]

bb.e:                                             ; preds = %bb.d
  br label %sentinelCheckCreateInstanceErrors.exit.thread

bb.f:                                             ; preds = %bb.a
  %i.w = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.70) #30
  %i.x = icmp eq i32 %i.w, 0
  %i.y = icmp eq i32 %1, 3                        ; 10 uses
  %or.cond6 = and i1 %i.y, %i.x
  br i1 %or.cond6, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !95
  %i.ab = tail call ptr @sdsnew(ptr noundef %i.aa) #26 ; 2 uses
end_hunk_0
begin_hunk_1_@sentinelProcessHelloMessage:bb.a
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !95
  %i.ai = call i32 @removeMatchingSentinelFromMaster(ptr noundef nonnull %i.m, ptr noundef %i.ah)
  %.not80 = icmp eq i32 %i.ai, 0                  ; 2 uses
  br i1 %.not80, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !95
  %i.ak = load ptr, ptr %i.y, align 8, !tbaa !95
  call void (i32, ptr, ptr, ptr, ...) @sentinelEvent(i32 noundef 2, ptr noundef nonnull @.str.192, ptr noundef nonnull %i.m, ptr noundef nonnull @.str.193, ptr noundef %i.aj, i32 noundef %i.q, ptr noundef %i.ak)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %i.v, align 8, !tbaa !13
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !95
  %i.an = call ptr @getSentinelRedisInstanceByAddrAndRunID(ptr noundef %i.al, ptr noundef %i.am, i32 noundef %i.q, ptr noundef null) ; 3 uses
  %.not81 = icmp eq ptr %i.an, null
  br i1 %.not81, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (i32, ptr, ptr, ptr, ...) @sentinelEvent(i32 noundef 2, ptr noundef nonnull @.str.194, ptr noundef nonnull %i.an, ptr noundef nonnull @.str.54)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !26
  %i.aq = call ptr @sdsnew(ptr noundef %i.ap) #26 ; 2 uses
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 56), align 8, !tbaa !74
  call void @dictInitIterator(ptr noundef nonnull %2, ptr noundef %i.ar) #26
  %i.as = call ptr @dictNext(ptr noundef nonnull %2) #26 ; 2 uses
  %.not8293 = icmp eq ptr %i.as, null
  br i1 %.not8293, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %i.at = phi ptr [ %i.aw, %.lr.ph ], [ %i.as, %bb.g ]
  %i.au = call ptr @dictGetVal(ptr noundef nonnull %i.at) #26
  %i.av = call i32 @removeMatchingSentinelFromMaster(ptr noundef %i.au, ptr noundef %i.aq) ; 0 uses
  %i.aw = call ptr @dictNext(ptr noundef nonnull %2) #26 ; 2 uses
  %.not82 = icmp eq ptr %i.aw, null
  br i1 %.not82, label %._crit_edge, label %.lr.ph, !llvm.loop !257

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  call void @dictResetIterator(ptr noundef nonnull %2) #26
  call void @sdsfree(ptr noundef %i.aq) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %._crit_edge, %bb.e
  %i.ax = load ptr, ptr %i.y, align 8, !tbaa !95
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !95
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !89
  %i.bb = call ptr @createSentinelRedisInstance(ptr noundef %i.ax, i32 noundef 4, ptr noundef %i.ay, i32 noundef %i.q, i32 noundef %i.ba, ptr noundef nonnull %i.m) ; 11 uses
  %.not83 = icmp eq ptr %i.bb, null
  br i1 %.not83, label %sentinelFlushConfig.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not80, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  call void (i32, ptr, ptr, ptr, ...) @sentinelEvent(i32 noundef 2, ptr noundef nonnull @.str.195, ptr noundef nonnull %i.bb, ptr noundef nonnull @.str.54)
  %i.bc = load ptr, ptr %i.y, align 8, !tbaa !95
  %i.bd = call ptr @sdsnew(ptr noundef %i.bc) #26
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !26
  %i.bf = call i32 @sentinelTryConnectionSharing(ptr noundef nonnull %i.bb) ; 0 uses
  br label %bb.k

.critedge:                                        ; preds = %bb.i
  %i.bg = load ptr, ptr %i.y, align 8, !tbaa !95
  %i.bh = call ptr @sdsnew(ptr noundef %i.bg) #26
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !26
  %i.bj = call i32 @sentinelTryConnectionSharing(ptr noundef nonnull %i.bb) ; 0 uses
  %i.bk = call i32 @sentinelUpdateSentinelAddressInAllMasters(ptr noundef nonnull %i.bb) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 52), align 4, !tbaa !88
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @server, i64 52), align 4, !tbaa !88
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 16), align 8, !tbaa !86
  %i.bn = call i32 @rewriteConfig(ptr noundef %i.bm, i32 noundef 0) #26
  store i32 %i.bl, ptr getelementptr inbounds nuw (i8, ptr @server, i64 52), align 4, !tbaa !88
  %i.bo = icmp eq i32 %i.bn, -1
  %i.bp = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !87 ; 2 uses
  br i1 %i.bo, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bq = icmp sgt i32 %i.bp, 3
  br i1 %i.bq, label %sentinelFlushConfig.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = tail call ptr @__errno_location() #28
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !9
  %i.bt = call ptr @strerror(i32 noundef %i.bs) #26
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.144, ptr noundef %i.bt) #26
  br label %sentinelFlushConfig.exit

bb.n:                                             ; preds = %bb.k
  %i.bu = icmp sgt i32 %i.bp, 2
  br i1 %i.bu, label %sentinelFlushConfig.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.145) #26
  br label %sentinelFlushConfig.exit

sentinelFlushConfig.exit:                         ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.h, %bb.c
  %.0 = phi ptr [ %i.aa, %bb.c ], [ null, %bb.h ], [ %i.bb, %bb.l ], [ %i.bb, %bb.m ], [ %i.bb, %bb.n ], [ %i.bb, %bb.o ] ; 3 uses
  %i.bv = load i64, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 48), align 16, !tbaa !72
  %i.bw = icmp ugt i64 %i.ad, %i.bv
  br i1 %i.bw, label %bb.p, label %bb.u

bb.p:                                             ; preds = %sentinelFlushConfig.exit
  store i64 %i.ad, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 48), align 16, !tbaa !72
  %i.bx = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 52), align 4, !tbaa !88
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @server, i64 52), align 4, !tbaa !88
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 16), align 8, !tbaa !86
  %i.bz = call i32 @rewriteConfig(ptr noundef %i.by, i32 noundef 0) #26
  store i32 %i.bx, ptr getelementptr inbounds nuw (i8, ptr @server, i64 52), align 4, !tbaa !88
  %i.ca = icmp eq i32 %i.bz, -1
  %i.cb = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !87 ; 2 uses
  br i1 %i.ca, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cc = icmp sgt i32 %i.cb, 3
  br i1 %i.cc, label %sentinelFlushConfig.exit90, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = tail call ptr @__errno_location() #28
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !9
  %i.cf = call ptr @strerror(i32 noundef %i.ce) #26
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.144, ptr noundef %i.cf) #26
  br label %sentinelFlushConfig.exit90

bb.s:                                             ; preds = %bb.p
  %i.cg = icmp sgt i32 %i.cb, 2
  br i1 %i.cg, label %sentinelFlushConfig.exit90, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.145) #26
  br label %sentinelFlushConfig.exit90

sentinelFlushConfig.exit90:                       ; preds = %bb.q, %bb.r, %bb.s, %bb.t
  %i.ch = load i64, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 48), align 16, !tbaa !72
  call void (i32, ptr, ptr, ptr, ...) @sentinelEvent(i32 noundef 3, ptr noundef nonnull @.str.196, ptr noundef nonnull %i.m, ptr noundef nonnull @.str.197, i64 noundef %i.ch)
  br label %bb.u

bb.u:                                             ; preds = %sentinelFlushConfig.exit90, %sentinelFlushConfig.exit
  %.not84 = icmp eq ptr %.0, null
  br i1 %.not84, label %.critedge88, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !206
  %i.ck = icmp ult i64 %i.cj, %i.ag
  br i1 %i.ck, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  store i64 %i.ag, ptr %i.ci, align 8, !tbaa !206
  %i.cl = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 4 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !34 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !94
  %.not85 = icmp eq i32 %i.co, %i.u
  br i1 %.not85, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !95 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.cr = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 152), align 8, !tbaa !92
  %.not.i = icmp eq i32 %i.cr, 0
  %i.cs = zext i1 %.not.i to i32
  %i.ct = call i32 @anetResolve(ptr noundef null, ptr noundef %i.cq, ptr noundef nonnull %i.c, i64 noundef 46, i32 noundef %i.cs) #26
  %i.cu = icmp eq i32 %i.ct, -1                   ; 2 uses
  %i.cv = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 152), align 8
  %.not6.i = icmp ne i32 %i.cv, 0
  %i.cw = select i1 %i.cu, i1 %.not6.i, i1 false
  %.sink.i = select i1 %i.cw, i64 0, i64 8
  %.sink8.i = select i1 %i.cu, ptr %i.cq, ptr %i.c
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.sink.i
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !95
  %i.cz = call i32 @strcasecmp(ptr noundef %i.cy, ptr noundef %.sink8.i) #30
  %.0.in.i.not = icmp eq i32 %i.cz, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br i1 %.0.in.i.not, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void (i32, ptr, ptr, ptr, ...) @sentinelEvent(i32 noundef 3, ptr noundef nonnull @.str.198, ptr noundef nonnull %.0, ptr noundef nonnull @.str.54)
  %i.da = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !25
  %i.dc = load ptr, ptr %i.cl, align 8, !tbaa !34 ; 2 uses
  %i.dd = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 156), align 4, !tbaa !96
  %.not.i92 = icmp eq i32 %i.dd, 0
  %.in.idx.i = select i1 %.not.i92, i64 8, i64 0
  %.in.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.in.idx.i
  %i.de = load ptr, ptr %.in.i, align 8, !tbaa !95
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !94
  %i.dh = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !95
  call void (i32, ptr, ptr, ptr, ...) @sentinelEvent(i32 noundef 3, ptr noundef nonnull @.str.199, ptr noundef nonnull %i.m, ptr noundef nonnull @.str.200, ptr noundef %i.db, ptr noundef %i.de, i32 noundef %i.dg, ptr noundef %i.di, i32 noundef %i.u)
  %i.dj = load ptr, ptr %i.cl, align 8, !tbaa !34 ; 3 uses
  %i.dk = call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #29 ; 5 uses
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !35
  %i.dm = call ptr @sdsnew(ptr noundef %i.dl) #26 ; 2 uses
  store ptr %i.dm, ptr %i.dk, align 8, !tbaa !35
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !37
  %i.dp = call ptr @sdsnew(ptr noundef %i.do) #26 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !37
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !94 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store i32 %i.ds, ptr %i.dt, align 8, !tbaa !94
  %i.du = load ptr, ptr %i.dh, align 8, !tbaa !95
  %i.dv = call i32 @sentinelResetMasterAndChangeAddress(ptr noundef nonnull %i.m, ptr noundef %i.du, i32 noundef %i.u) ; 0 uses
  %i.dw = load ptr, ptr %i.cl, align 8, !tbaa !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.dx = getelementptr inbounds nuw i8, ptr %i.m, i64 328 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !28
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %sentinelCallClientReconfScript.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ea = sext i32 %i.ds to i64
  %i.eb = call i32 @ll2string(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %i.ea) #26 ; 0 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !94
  %i.ee = sext i32 %i.ed to i64
  %i.ef = call i32 @ll2string(ptr noundef nonnull %i.b, i64 noundef 32, i64 noundef %i.ee) #26 ; 0 uses
  %i.eg = load ptr, ptr %i.dx, align 8, !tbaa !28
  %i.eh = load ptr, ptr %i.da, align 8, !tbaa !25
  %i.ei = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 156), align 4, !tbaa !96
  %.not.i.i = icmp eq i32 %i.ei, 0
  %.in.idx.i.i = select i1 %.not.i.i, i64 8, i64 0 ; 2 uses
  %.in.i.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.in.idx.i.i
  %i.ej = load ptr, ptr %.in.i.i, align 8, !tbaa !95
  %.in.i10.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.in.idx.i.i
  %i.ek = load ptr, ptr %.in.i10.i, align 8, !tbaa !95
  call void (ptr, ...) @sentinelScheduleScriptExecution(ptr noundef %i.eg, ptr noundef %i.eh, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.180, ptr noundef %i.ej, ptr noundef nonnull %i.a, ptr noundef %i.ek, ptr noundef nonnull %i.b, ptr noundef null)
  br label %sentinelCallClientReconfScript.exit

sentinelCallClientReconfScript.exit:              ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @sdsfree(ptr noundef %i.dm) #26
  call void @sdsfree(ptr noundef %i.dp) #26
  call void @zfree(ptr noundef nonnull %i.dk) #26
  br label %bb.aa

bb.aa:                                            ; preds = %bb.v, %sentinelCallClientReconfScript.exit, %bb.x
  %i.el = call i64 @mstime() #26
  %i.em = getelementptr inbounds nuw i8, ptr %.0, i64 56
  store i64 %i.el, ptr %i.em, align 8, !tbaa !163
  br label %.critedge88

.critedge88:                                      ; preds = %bb.u, %bb.a, %bb.aa, %bb.b
  %i.en = load i32, ptr %i.d, align 4, !tbaa !9
  call void @sdsfreesplitres(ptr noundef %i.f, i32 noundef %i.en) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @sentinelSendHello(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [46 x i8], align 16               ; 4 uses
  %i.b = alloca [1070 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.c = load i32, ptr %0, align 8, !tbaa !39     ; 2 uses
  %i.d = and i32 %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %.pre = load i32, ptr %i.f, align 8, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %.pre, %bb.b ], [ %i.c, %bb.a ]
  %i.h = phi ptr [ %i.f, %bb.b ], [ %0, %bb.a ]   ; 5 uses
  %i.i = and i32 %i.g, 64
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41   ; 2 uses
  %.not7.i = icmp eq ptr %i.k, null
  br i1 %.not7.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  %i.m = load i32, ptr %i.l, align 8, !tbaa !180
  %i.n = icmp sgt i32 %i.m, 4
  br i1 %i.n, label %sentinelGetCurrentMasterAddress.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  br label %sentinelGetCurrentMasterAddress.exit

sentinelGetCurrentMasterAddress.exit:             ; preds = %bb.e, %bb.f
  %.pn.i = phi ptr [ %i.h, %bb.f ], [ %i.k, %bb.e ]
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !34 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !128
  %.not23 = icmp eq i32 %i.r, 0
  br i1 %.not23, label %bb.g, label %bb.m

bb.g:                                             ; preds = %sentinelGetCurrentMasterAddress.exit
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 104), align 8, !tbaa !81 ; 2 uses
  %.not24 = icmp eq ptr %i.s, null
  br i1 %.not24, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !135
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 140
  %i.w = load i32, ptr %i.v, align 4, !tbaa !219
  %i.x = call i32 @anetFdToString(i32 noundef %i.w, ptr noundef nonnull %i.a, i64 noundef 46, ptr noundef null, i32 noundef 0) #26
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.018 = phi ptr [ %i.s, %bb.g ], [ %i.a, %bb.h ]
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 112), align 16, !tbaa !82 ; 2 uses
  %.not25 = icmp eq i32 %i.z, 0
  br i1 %.not25, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8492), align 4, !tbaa !258
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 328), align 8 ; 2 uses
  %i.ad = icmp ne i32 %i.ac, 0
  %or.cond = select i1 %i.ab, i1 %i.ad, i1 false
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 324), align 4
  %spec.select = select i1 %or.cond, i32 %i.ac, i32 %i.ae
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.019 = phi i32 [ %spec.select, %bb.j ], [ %i.z, %bb.i ]
  %i.af = load i64, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 48), align 16, !tbaa !72
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !25
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 156), align 4, !tbaa !96
  %.not.i27 = icmp eq i32 %i.ai, 0
  %.in.idx.i = select i1 %.not.i27, i64 8, i64 0
  %.in.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.in.idx.i
  %i.aj = load ptr, ptr %.in.i, align 8, !tbaa !95
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !94
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !206
  %i.ao = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 1070, ptr noundef nonnull @.str.202, ptr noundef nonnull %.018, i32 noundef %.019, ptr noundef nonnull @sentinel, i64 noundef %i.af, ptr noundef %i.ah, ptr noundef %i.aj, i32 noundef %i.al, i64 noundef %i.an) #26 ; 0 uses
  %i.ap = load ptr, ptr %i.o, align 8, !tbaa !24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !135
  %i.as = call ptr @sdsnew(ptr noundef nonnull @.str.203) #26 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !40 ; 2 uses
  %.not.i28 = icmp eq ptr %i.au, null
  %spec.select.i = select i1 %.not.i28, ptr %0, ptr %i.au
  %i.av = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 120
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !38
  %i.ax = call ptr @dictFetchValue(ptr noundef %i.aw, ptr noundef %i.as) #26 ; 2 uses
  call void @sdsfree(ptr noundef %i.as) #26
  %.not10.i = icmp eq ptr %i.ax, null
  %i.ay = select i1 %.not10.i, ptr @.str.203, ptr %i.ax
  %i.az = call i32 (ptr, ptr, ptr, ptr, ...) @redisAsyncCommand(ptr noundef %i.ar, ptr noundef nonnull @sentinelPublishReplyCallback, ptr noundef nonnull %0, ptr noundef nonnull @.str.147, ptr noundef nonnull %i.ay, ptr noundef nonnull @.str.159, ptr noundef nonnull %i.b) #26
  %.not26 = icmp eq i32 %i.az, 0
  br i1 %.not26, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %i.o, align 8, !tbaa !24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !129
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !129
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.h, %sentinelGetCurrentMasterAddress.exit, %bb.l
  %.0 = phi i32 [ -1, %sentinelGetCurrentMasterAddress.exit ], [ -1, %bb.h ], [ 0, %bb.l ], [ -1, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %.0
}

declare i32 @anetFdToString(i32 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @sentinelForceHelloUpdateDictOfRedisInstances(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.dictIterator, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @dictInitSafeIterator(ptr noundef nonnull %1, ptr noundef %0) #26
  %i.a = call ptr @dictNext(ptr noundef nonnull %1) #26 ; 2 uses
  %.not7 = icmp eq ptr %i.a, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.b = phi ptr [ %i.h, %bb.c ], [ %i.a, %bb.a ]
  %i.c = call ptr @dictGetVal(ptr noundef nonnull %i.b) #26
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !162  ; 2 uses
  %i.f = load i64, ptr @sentinel_publish_period, align 8, !tbaa !115 ; 2 uses
  %.not6.not = icmp sgt i64 %i.e, %i.f
  br i1 %.not6.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %.neg = xor i64 %i.f, -1
  %i.g = add i64 %i.e, %.neg
  store i64 %i.g, ptr %i.d, align 8, !tbaa !162
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.h = call ptr @dictNext(ptr noundef nonnull %1) #26 ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !256

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @dictResetIterator(ptr noundef nonnull %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sentinelSendPeriodicCommands(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @mstime() #26              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !128
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !129
  %i.h = load i32, ptr %i.c, align 8, !tbaa !125
  %i.i = mul nsw i32 %i.h, 100
  %.not31 = icmp slt i32 %i.g, %i.i
end_hunk_1
