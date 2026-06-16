inline.NumInlined: 23
inline.NumDeleted: 11
begin_hunk_0_@clusterSlotStatResetAll:bb.a
clusterSlotStatReset.exit:                        ; preds = %bb.c, %bb.d
  %i.g = add nuw nsw i32 %.03, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.g, 16384
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !76
}

; Function Attrs: nounwind uwtable
define dso_local void @clusterSlotStatsAddCpuDuration(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !13
  %.not4.i = icmp eq i32 %i.a, 0
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8324), align 4
  %i.c = and i32 %i.b, 1
  %.not5.i = icmp eq i32 %i.c, 0
  %.not.i = select i1 %.not4.i, i1 true, i1 %.not5.i
  br i1 %.not.i, label %canAddCpuDuration.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.e = load i32, ptr %i.d, align 8, !tbaa !47   ; 3 uses
  %.not2.i = icmp eq i32 %i.e, -1
  br i1 %.not2.i, label %canAddCpuDuration.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1528), align 8, !tbaa !78
  %.not3.i = icmp eq i32 %i.f, 0
  br i1 %.not3.i, label %canAddCpuDuration.exit.thread6, label %canAddCpuDuration.exit

canAddCpuDuration.exit:                           ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !79
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load i64, ptr %i.i, align 8, !tbaa !80
  %i.k = and i64 %i.j, 256
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %canAddCpuDuration.exit.thread, label %canAddCpuDuration.exit.thread6

canAddCpuDuration.exit.thread6:                   ; preds = %bb.c, %canAddCpuDuration.exit
  %spec.select = icmp ult i32 %i.e, 16384
  br i1 %spec.select, label %bb.e, label %bb.d, !prof !62

bb.d:                                             ; preds = %canAddCpuDuration.exit.thread6
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 254) #10
  tail call void @abort() #11
  unreachable

bb.e:                                             ; preds = %canAddCpuDuration.exit.thread6
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !63
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !64
  %i.n = tail call ptr @kvstoreGetDictMeta(ptr noundef %i.m, i32 noundef %i.e, i32 noundef 1) #10
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !86
  %i.q = add i64 %i.p, %1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !86
  br label %canAddCpuDuration.exit.thread

canAddCpuDuration.exit.thread:                    ; preds = %bb.a, %bb.b, %canAddCpuDuration.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @clusterSlotStatsInvalidateSlotIfApplicable(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !87
  %i.c = and i32 %i.b, 256
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !89
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  store i32 -1, ptr %i.f, align 8, !tbaa !47
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @clusterSlotStatsAddNetworkBytesInForUserClient(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !13
  %i.b = icmp eq i32 %i.a, 0
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8324), align 4
  %i.d = and i32 %i.c, 2
  %i.e = icmp eq i32 %i.d, 0
  %.not7.i = select i1 %i.b, i1 true, i1 %i.e
  br i1 %.not7.i, label %canAddNetworkBytesIn.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.g = load i32, ptr %i.f, align 8, !tbaa !47   ; 2 uses
  %.not2.i = icmp eq i32 %i.g, -1
  br i1 %.not2.i, label %canAddNetworkBytesIn.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !90
  %i.j = and i64 %i.i, 16
  %.not3.i = icmp eq i64 %i.j, 0
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 220), align 4
  %.not4.i.not = icmp eq i32 %i.k, 0
  %or.cond = select i1 %.not3.i, i1 %.not4.i.not, i1 false
  br i1 %or.cond, label %bb.d, label %canAddNetworkBytesIn.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !91
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !92
  %i.p = icmp eq ptr %i.o, @execCommand
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !93
  %i.s = add i64 %i.r, 15
  store i64 %i.s, ptr %i.q, align 8, !tbaa !93
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !63
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !64
  %i.v = tail call ptr @kvstoreGetDictMeta(ptr noundef %i.u, i32 noundef %i.g, i32 noundef 1) #10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.x = load i64, ptr %i.w, align 8, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !94
  %i.aa = add i64 %i.z, %i.x
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !94
  br label %canAddNetworkBytesIn.exit.thread

canAddNetworkBytesIn.exit.thread:                 ; preds = %bb.a, %bb.b, %bb.c, %bb.f
  ret void
}

declare void @execCommand(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @clusterSlotStatsCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [16384 x %struct.slotStatForSort], align 16 ; 5 uses
  %i.a = alloca [16384 x i8], align 16            ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !13
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.2) #10
  br label %bb.ar

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !95   ; 4 uses
  %i.f = icmp eq i32 %i.e, 5
  br i1 %i.f, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !96   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !97
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !98   ; 2 uses
  %i.m = tail call i32 @strcasecmp(ptr noundef %i.l, ptr noundef nonnull @.str.3) #12
  %.not83 = icmp eq i32 %i.m, 0
  br i1 %.not83, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !97
  %i.p = tail call i32 @getSlotOrReply(ptr noundef nonnull %0, ptr noundef %i.o) #10 ; 4 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.ar, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !97
  %i.u = tail call i32 @getSlotOrReply(ptr noundef nonnull %0, ptr noundef %i.t) #10 ; 4 uses
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.ar, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = icmp sgt i32 %i.p, %i.u
  br i1 %i.w, label %bb.h, label %.lr.ph.preheader.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, i32 noundef %i.p, i32 noundef %i.u) #10
  br label %bb.ar

.lr.ph.preheader.i:                               ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16384) %i.a, i8 0, i64 16384, i1 false)
  %i.x = tail call ptr @getMyClusterNode() #10
  %i.y = tail call ptr @clusterNodeGetMaster(ptr noundef %i.x) #10
  %i.z = sext i32 %i.p to i64                     ; 2 uses
  %2 = sext i32 %i.u to i64                       ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.z, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.j ] ; 4 uses
  %.0912.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.1.i, %bb.j ] ; 2 uses
  %i.aa = trunc nsw i64 %indvars.iv.i to i32
  %i.ab = tail call i32 @clusterNodeCoversSlot(ptr noundef %i.y, i32 noundef %i.aa) #10
  %.not10.i = icmp eq i32 %i.ab, 0
  br i1 %.not10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !100
  %i.ae = add i8 %i.ad, 1
  store i8 %i.ae, ptr %i.ac, align 1, !tbaa !100
  %i.af = add nsw i32 %.0912.i, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %.1.i = phi i32 [ %i.af, %bb.i ], [ %.0912.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %2
  br i1 %exitcond.not.i, label %.lr.ph.preheader.i90, label %.lr.ph.i, !llvm.loop !101

.lr.ph.preheader.i90:                             ; preds = %bb.j
  %i.ag = sext i32 %.1.i to i64
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %i.ag) #10
  br label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %bb.l, %.lr.ph.preheader.i90
  %indvars.iv.i92 = phi i64 [ %i.z, %.lr.ph.preheader.i90 ], [ %indvars.iv.next.i93, %bb.l ] ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.i92
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !100
  %.not9.i = icmp eq i8 %i.ai, 0
  br i1 %.not9.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i91
  %i.aj = trunc nsw i64 %indvars.iv.i92 to i32
  tail call fastcc void @addReplySlotStat(ptr noundef nonnull %0, i32 noundef %i.aj)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i91
  %indvars.iv.next.i93 = add nsw i64 %indvars.iv.i92, 1
  %exitcond.not.i95 = icmp eq i64 %indvars.iv.i92, %2
  br i1 %exitcond.not.i95, label %addReplySlotsRange.exit, label %.lr.ph.i91, !llvm.loop !102

addReplySlotsRange.exit:                          ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.ar

bb.m:                                             ; preds = %bb.c
  %i.ak = icmp sgt i32 %i.e, 3
  br i1 %i.ak, label %..thread_crit_edge, label %bb.aq

..thread_crit_edge:                               ; preds = %bb.m
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !96 ; 2 uses
  %.phi.trans.insert104 = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre105 = load ptr, ptr %.phi.trans.insert104, align 8, !tbaa !97
  %.phi.trans.insert106 = getelementptr inbounds nuw i8, ptr %.pre105, i64 8
  %.pre107 = load ptr, ptr %.phi.trans.insert106, align 8, !tbaa !98
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.d
  %i.al = phi ptr [ %.pre107, %..thread_crit_edge ], [ %i.l, %bb.d ]
  %i.am = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.h, %bb.d ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ao = tail call i32 @strcasecmp(ptr noundef %i.al, ptr noundef nonnull @.str.5) #12
  %.not84 = icmp eq i32 %i.ao, 0
  br i1 %.not84, label %bb.n, label %bb.aq

bb.n:                                             ; preds = %.thread
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8324), align 4, !tbaa !103 ; 3 uses
  %i.aq = and i32 %i.ap, 2
  %i.ar = and i32 %i.ap, 4
  %i.as = icmp ne i32 %i.ar, 0
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4
  %i.au = icmp ne i32 %i.at, 0
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !97
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !98 ; 5 uses
  %i.az = tail call i32 @strcasecmp(ptr noundef %i.ay, ptr noundef nonnull @.str.6) #12
  %.not85 = icmp eq i32 %i.az, 0
  br i1 %.not85, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = tail call i32 @strcasecmp(ptr noundef %i.ay, ptr noundef nonnull @.str.7) #12
  %i.bb = icmp eq i32 %i.ba, 0
  %i.bc = trunc i32 %i.ap to i1
  %or.cond = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %or.cond, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = tail call i32 @strcasecmp(ptr noundef %i.ay, ptr noundef nonnull @.str.8) #12
  %i.be = icmp eq i32 %i.bd, 0
  %i.bf = select i1 %i.be, i1 %i.as, i1 false
  %or.cond3 = select i1 %i.bf, i1 %i.au, i1 false
  br i1 %or.cond3, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = tail call i32 @strcasecmp(ptr noundef %i.ay, ptr noundef nonnull @.str.9) #12
  %i.bh = icmp eq i32 %i.bg, 0
  %i.bi = icmp ne i32 %i.aq, 0                    ; 2 uses
  %or.cond5 = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond5, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = tail call i32 @strcasecmp(ptr noundef %i.ay, ptr noundef nonnull @.str.10) #12
  %i.bk = icmp eq i32 %i.bj, 0
  %or.cond7 = select i1 %i.bk, i1 %i.bi, i1 false
  br i1 %or.cond7, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.11) #10
  br label %bb.ar

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %.078 = phi i32 [ 0, %bb.n ], [ 1, %bb.o ], [ 2, %bb.p ], [ 3, %bb.q ], [ 4, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i64 16384, ptr %i.b, align 8, !tbaa !104
  %i.bl = icmp samesign ugt i32 %i.e, 4
  br i1 %i.bl, label %.lr.ph, label %._crit_edge

bb.u:                                             ; preds = %bb.ac
  %i.bm = add nsw i32 %.173, 1                    ; 2 uses
  %i.bn = load i32, ptr %i.d, align 8, !tbaa !95  ; 2 uses
  %i.bo = icmp slt i32 %i.bm, %i.bn
  br i1 %i.bo, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !105

.lr.ph:                                           ; preds = %bb.t, %bb.u
  %i.bp = phi i32 [ %i.bn, %bb.u ], [ %i.e, %bb.t ]
  %.068102 = phi i32 [ %.1, %bb.u ], [ 0, %bb.t ] ; 3 uses
  %.069101 = phi i32 [ %.170, %bb.u ], [ 0, %bb.t ] ; 3 uses
  %.072100 = phi i32 [ %i.bm, %bb.u ], [ 4, %bb.t ] ; 4 uses
  %.07599 = phi i32 [ %.176, %bb.u ], [ 1, %bb.t ]
  %i.bq = add nsw i32 %.072100, 1                 ; 3 uses
  %i.br = icmp sgt i32 %i.bp, %i.bq
  %i.bs = load ptr, ptr %i.an, align 8, !tbaa !96 ; 2 uses
  %i.bt = sext i32 %.072100 to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !97
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !98 ; 3 uses
  %i.by = call i32 @strcasecmp(ptr noundef %i.bx, ptr noundef nonnull @.str.12) #12
  %i.bz = icmp eq i32 %i.by, 0
  %or.cond9 = select i1 %i.bz, i1 %i.br, i1 false
  br i1 %or.cond9, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.lr.ph
  %i.ca = sext i32 %i.bq to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !97
  %i.cd = call i32 @getRangeLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.cc, i64 noundef 1, i64 noundef 16384, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.13) #10
  %.not88 = icmp eq i32 %i.cd, 0
  br i1 %.not88, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.ce = add nuw nsw i32 %.069101, 1
  br label %bb.ac

bb.x:                                             ; preds = %.lr.ph
  %i.cf = call i32 @strcasecmp(ptr noundef %i.bx, ptr noundef nonnull @.str.14) #12
  %.not86 = icmp eq i32 %i.cf, 0
  br i1 %.not86, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cg = add nuw nsw i32 %.068102, 1
  br label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.ch = call i32 @strcasecmp(ptr noundef %i.bx, ptr noundef nonnull @.str.15) #12
  %.not87 = icmp eq i32 %i.ch, 0
  br i1 %.not87, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ci = add nuw nsw i32 %.068102, 1
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !106
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.cj) #10
  br label %.critedge

bb.ac:                                            ; preds = %bb.y, %bb.aa, %bb.w
  %.176 = phi i32 [ %.07599, %bb.w ], [ 1, %bb.aa ], [ 0, %bb.y ] ; 2 uses
  %.173 = phi i32 [ %i.bq, %bb.w ], [ %.072100, %bb.aa ], [ %.072100, %bb.y ]
  %.170 = phi i32 [ %i.ce, %bb.w ], [ %.069101, %bb.aa ], [ %.069101, %bb.y ] ; 2 uses
  %.1 = phi i32 [ %.068102, %bb.w ], [ %i.ci, %bb.aa ], [ %i.cg, %bb.y ] ; 2 uses
  %i.ck = icmp sgt i32 %.170, 1
  %i.cl = icmp sgt i32 %.1, 1
  %or.cond11 = select i1 %i.ck, i1 true, i1 %i.cl
  br i1 %or.cond11, label %bb.ad, label %bb.u

bb.ad:                                            ; preds = %bb.ac
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #10
  br label %.critedge

._crit_edge.loopexit:                             ; preds = %bb.u
  %.pre108 = load i64, ptr %i.b, align 8, !tbaa !104
  %i.cm = icmp eq i32 %.176, 0
  %i.cn = select i1 %i.cm, ptr @slotStatForSortAscCmp, ptr @slotStatForSortDescCmp
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.t
  %i.co = phi i64 [ 16384, %bb.t ], [ %.pre108, %._crit_edge.loopexit ]
  %.075.lcssa = phi ptr [ @slotStatForSortDescCmp, %bb.t ], [ %i.cn, %._crit_edge.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.cp = call ptr @getMyClusterNode() #10
  %i.cq = call ptr @clusterNodeGetMaster(ptr noundef %i.cp) #10
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ap, %._crit_edge
  %.018.i.i = phi i32 [ 0, %._crit_edge ], [ %i.dj, %bb.ap ] ; 5 uses
  %.01417.i.i = phi i32 [ 0, %._crit_edge ], [ %.1.i.i, %bb.ap ] ; 3 uses
  %i.cr = call i32 @clusterNodeCoversSlot(ptr noundef %i.cq, i32 noundef %.018.i.i) #10
  %.not15.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not15.i.i, label %bb.ap, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cs = sext i32 %.01417.i.i to i64
  %i.ct = getelementptr inbounds [16 x i8], ptr %1, i64 %i.cs ; 2 uses
  store i32 %.018.i.i, ptr %i.ct, align 16, !tbaa !108
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !63
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !64
  %i.cw = call ptr @kvstoreGetDictMeta(ptr noundef %i.cv, i32 noundef range(i32 -2147483648, 16384) %.018.i.i, i32 noundef 0) #10 ; 8 uses
  switch i32 %.078, label %default.unreachable [
    i32 0, label %bb.ag
    i32 1, label %bb.ah
    i32 2, label %bb.aj
    i32 3, label %bb.al
    i32 4, label %bb.an
  ]

bb.ag:                                            ; preds = %bb.af
  %i.cx = call i32 @countKeysInSlot(i32 noundef range(i32 -2147483648, 16384) %.018.i.i) #10
  %i.cy = zext i32 %i.cx to i64
  br label %getSlotStat.exit.i.i

bb.ah:                                            ; preds = %bb.af
  %.not15.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not15.i.i.i, label %getSlotStat.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
end_hunk_0
