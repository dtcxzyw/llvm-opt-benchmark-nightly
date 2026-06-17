inline.NumInlined: 395
inline.NumDeleted: 110
begin_hunk_0_@clusterManagerCommandCreate:bb.a
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !111
  %.not345 = icmp eq i32 %i.mg, 0
  br i1 %.not345, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.mh = getelementptr inbounds nuw i8, ptr %i.md, i64 72
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !118
  %.not346 = icmp eq ptr %i.mi, null
  br i1 %.not346, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.mj = load ptr, ptr %i.e, align 8, !tbaa !29  ; 3 uses
  %.not347 = icmp eq ptr %i.mj, null
  br i1 %.not347, label %.thread440, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mk = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !80
  %i.mm = getelementptr inbounds nuw i8, ptr %i.md, i64 24
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !83
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.ml, i32 noundef %i.mn, ptr noundef nonnull %i.mj)
  call void @zfree(ptr noundef nonnull %i.mj) #32
  br label %.thread440

bb.bj:                                            ; preds = %bb.bg, %bb.bf, %.lr.ph582
  %i.mo = load ptr, ptr %i.e, align 8, !tbaa !29  ; 2 uses
  %.not348 = icmp eq ptr %i.mo, null
  br i1 %.not348, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @zfree(ptr noundef nonnull %i.mo) #32
  br label %bb.bl

.thread440:                                       ; preds = %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  br label %bb.ch

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  %i.mp = call ptr @listNext(ptr noundef nonnull %4) #32 ; 2 uses
  %.not327 = icmp eq ptr %i.mp, null
  br i1 %.not327, label %._crit_edge583, label %.lr.ph582

._crit_edge583:                                   ; preds = %bb.bl, %confirmWithYes.exit.thread
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 1, ptr noundef nonnull @.str.190)
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 1, ptr noundef nonnull @.str.191)
  %i.mq = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  call void @listRewind(ptr noundef %i.mq, ptr noundef nonnull %4) #32
  %i.mr = call ptr @listNext(ptr noundef nonnull %4) #32 ; 2 uses
  %.not328584 = icmp eq ptr %i.mr, null
  br i1 %.not328584, label %._crit_edge588, label %.lr.ph587

.lr.ph587:                                        ; preds = %._crit_edge583, %bb.bn
  %i.ms = phi ptr [ %i.my, %bb.bn ], [ %i.mr, %._crit_edge583 ]
  %.0273585 = phi i32 [ %i.mw, %bb.bn ], [ 1, %._crit_edge583 ] ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !102
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !88
  %i.mw = add nuw nsw i32 %.0273585, 1
  %i.mx = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.mv, ptr noundef nonnull @.str.192, i32 noundef %.0273585) #32 ; 2 uses
  %.not343 = icmp eq ptr %i.mx, null
  br i1 %.not343, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph587
  call void @freeReplyObject(ptr noundef nonnull %i.mx) #32
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.lr.ph587
  %i.my = call ptr @listNext(ptr noundef nonnull %4) #32 ; 2 uses
  %.not328 = icmp eq ptr %i.my, null
  br i1 %.not328, label %._crit_edge588, label %.lr.ph587, !llvm.loop !127

._crit_edge588:                                   ; preds = %bb.bn, %._crit_edge583
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 1, ptr noundef nonnull @.str.193)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #32
  %i.mz = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  call void @listRewind(ptr noundef %i.mz, ptr noundef nonnull %4) #32
  %i.na = call ptr @listNext(ptr noundef nonnull %4) #32 ; 2 uses
  %.not329590 = icmp eq ptr %i.na, null
  br i1 %.not329590, label %._crit_edge594, label %.lr.ph593

.lr.ph593:                                        ; preds = %._crit_edge588, %bb.bw
  %i.nb = phi ptr [ %i.oh, %bb.bw ], [ %i.na, %._crit_edge588 ]
  %.0263591 = phi ptr [ %.1264, %bb.bw ], [ null, %._crit_edge588 ] ; 4 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !102 ; 6 uses
  %i.ne = icmp eq ptr %.0263591, null
  br i1 %i.ne, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %.lr.ph593
  %i.nf = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 744), align 8, !tbaa !128
  %.not341 = icmp eq i32 %i.nf, 0
  %spec.select371 = select i1 %.not341, i32 0, i32 2 ; 2 uses
  %i.ng = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 748), align 4, !tbaa !129
  %.not342 = icmp eq i32 %i.ng, 0
  %i.nh = or disjoint i32 %spec.select371, 4
  %.1250 = select i1 %.not342, i32 %spec.select371, i32 %i.nh
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !80
  %i.nk = call i32 @anetResolve(ptr noundef null, ptr noundef %i.nj, ptr noundef nonnull %i.f, i64 noundef 46, i32 noundef %.1250) #32
  %i.nl = icmp eq i32 %i.nk, -1
  br i1 %i.nl, label %bb.bp, label %bb.bw, !llvm.loop !130

bb.bp:                                            ; preds = %bb.bo
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %i.nn = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.no = load ptr, ptr %i.nm, align 8, !tbaa !80
  %i.np = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nn, ptr noundef nonnull @.str.194, ptr noundef %i.no) #39 ; 0 uses
  br label %.thread456

bb.bq:                                            ; preds = %.lr.ph593
  %i.nq = getelementptr inbounds nuw i8, ptr %.0263591, i64 28
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !84 ; 3 uses
  %i.ns = icmp eq i32 %i.nr, 0
  %.phi.trans.insert703 = getelementptr inbounds nuw i8, ptr %.0263591, i64 24
  %.pre704 = load i32, ptr %.phi.trans.insert703, align 8, !tbaa !83 ; 3 uses
  %i.nt = add nsw i32 %.pre704, 10000
  %i.nu = icmp eq i32 %i.nr, %i.nt
  %or.cond829 = select i1 %i.ns, i1 true, i1 %i.nu
  %i.nv = load ptr, ptr %i.nd, align 8, !tbaa !88 ; 2 uses
  br i1 %or.cond829, label %._crit_edge702, label %bb.br

._crit_edge702:                                   ; preds = %bb.bq
  %i.nw = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.nv, ptr noundef nonnull @.str.195, ptr noundef nonnull %i.f, i32 noundef %.pre704) #32
  br label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.nx = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.nv, ptr noundef nonnull @.str.196, ptr noundef nonnull %i.f, i32 noundef %.pre704, i32 noundef %i.nr) #32
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %._crit_edge702
  %.0248 = phi ptr [ %i.nw, %._crit_edge702 ], [ %i.nx, %bb.br ] ; 5 uses
  %.not339 = icmp eq ptr %.0248, null
  br i1 %.not339, label %.thread443, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ny = load i32, ptr %.0248, align 8, !tbaa !41
  %.not461 = icmp eq i32 %i.ny, 6
  br i1 %.not461, label %bb.bu, label %bb.bv

.thread443:                                       ; preds = %bb.bs
  %i.nz = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.oa = call i64 @fwrite(ptr nonnull @.str.197, i64 37, i64 1, ptr %i.nz) #33 ; 0 uses
  br label %.thread456

bb.bu:                                            ; preds = %bb.bt
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !80
  %i.od = getelementptr inbounds nuw i8, ptr %i.nd, i64 24
  %i.oe = load i32, ptr %i.od, align 8, !tbaa !83
  %i.of = getelementptr inbounds nuw i8, ptr %.0248, i64 32
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !42
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.oc, i32 noundef %i.oe, ptr noundef %i.og)
  call void @freeReplyObject(ptr noundef nonnull %.0248) #32
  br label %.thread456

bb.bv:                                            ; preds = %bb.bt
  call void @freeReplyObject(ptr noundef nonnull %.0248) #32
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bo
  %.1264 = phi ptr [ %.0263591, %bb.bv ], [ %i.nd, %bb.bo ]
  %i.oh = call ptr @listNext(ptr noundef nonnull %4) #32 ; 2 uses
  %.not329 = icmp eq ptr %i.oh, null
  br i1 %.not329, label %._crit_edge594, label %.lr.ph593

._crit_edge594:                                   ; preds = %bb.bw, %._crit_edge588
  %i.oi = call i32 @sleep(i32 noundef 1) #32      ; 0 uses
  call fastcc void @clusterManagerWaitForClusterJoin()
  %i.oj = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  call void @listRewind(ptr noundef %i.oj, ptr noundef nonnull %4) #32
  %i.ok = call ptr @listNext(ptr noundef nonnull %4) #32 ; 2 uses
  %.not330595 = icmp eq ptr %i.ok, null
  br i1 %.not330595, label %._crit_edge599, label %.lr.ph598

.lr.ph598:                                        ; preds = %._crit_edge594, %.backedge
  %i.ol = phi ptr [ %i.oz, %.backedge ], [ %i.ok, %._crit_edge594 ]
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !102 ; 5 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 80
  %i.op = load i32, ptr %i.oo, align 8, !tbaa !111
  %.not334 = icmp eq i32 %i.op, 0
  br i1 %.not334, label %.backedge, label %bb.bx, !llvm.loop !131

bb.bx:                                            ; preds = %.lr.ph598
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #32
  store ptr null, ptr %i.g, align 8, !tbaa !29
  %i.oq = call fastcc i32 @clusterManagerFlushNodeConfig(ptr noundef nonnull %i.on, ptr noundef %i.g)
  %.not335 = icmp eq i32 %i.oq, 0
  br i1 %.not335, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.or = getelementptr inbounds nuw i8, ptr %i.on, i64 72
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !118
  %.not336 = icmp eq ptr %i.os, null
  br i1 %.not336, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.ot = load ptr, ptr %i.g, align 8, !tbaa !29  ; 3 uses
  %.not337 = icmp eq ptr %i.ot, null
  br i1 %.not337, label %5, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ou = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !80
  %i.ow = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  %i.ox = load i32, ptr %i.ow, align 8, !tbaa !83
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.ov, i32 noundef %i.ox, ptr noundef nonnull %i.ot)
  call void @zfree(ptr noundef nonnull %i.ot) #32
  br label %5

bb.cb:                                            ; preds = %bb.by, %bb.bx
  %i.oy = load ptr, ptr %i.g, align 8, !tbaa !29  ; 2 uses
  %.not338 = icmp eq ptr %i.oy, null
  br i1 %.not338, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @zfree(ptr noundef nonnull %i.oy) #32
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #32
  br label %.backedge

.backedge:                                        ; preds = %.lr.ph598, %bb.cd
  %i.oz = call ptr @listNext(ptr noundef nonnull %4) #32 ; 2 uses
  %.not330 = icmp eq ptr %i.oz, null
  br i1 %.not330, label %._crit_edge599, label %.lr.ph598, !llvm.loop !131

._crit_edge599:                                   ; preds = %.backedge, %._crit_edge594
  %i.pa = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  call void @listRewind(ptr noundef %i.pa, ptr noundef nonnull %4) #32
  %i.pb = call ptr @listNext(ptr noundef nonnull %4) #32 ; 2 uses
  %.not331601 = icmp eq ptr %i.pb, null
  br i1 %.not331601, label %._crit_edge605, label %.lr.ph604

.lr.ph604:                                        ; preds = %._crit_edge599, %bb.cf
  %i.pc = phi ptr [ %i.pf, %bb.cf ], [ %i.pb, %._crit_edge599 ]
  %.0235602 = phi ptr [ %.1236, %bb.cf ], [ null, %._crit_edge599 ] ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !102 ; 2 uses
  %.not333 = icmp eq ptr %.0235602, null
  br i1 %.not333, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph604
  call fastcc void @freeClusterManagerNode(ptr noundef %i.pe)
  br label %bb.cf

bb.cf:                                            ; preds = %.lr.ph604, %bb.ce
  %.1236 = phi ptr [ %.0235602, %bb.ce ], [ %i.pe, %.lr.ph604 ] ; 2 uses
  %i.pf = call ptr @listNext(ptr noundef nonnull %4) #32 ; 2 uses
  %.not331 = icmp eq ptr %i.pf, null
  br i1 %.not331, label %._crit_edge605, label %.lr.ph604, !llvm.loop !132

._crit_edge605:                                   ; preds = %bb.cf, %._crit_edge599
  %.0235.lcssa = phi ptr [ null, %._crit_edge599 ], [ %.1236, %bb.cf ]
  %i.pg = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  call void @listEmpty(ptr noundef %i.pg) #32
  %i.ph = call fastcc i32 @clusterManagerLoadInfoFromNode(ptr noundef %.0235.lcssa)
  %.not332 = icmp eq i32 %i.ph, 0
  br i1 %.not332, label %.thread456, label %bb.cg

bb.cg:                                            ; preds = %._crit_edge605
  %i.pi = call fastcc i32 @clusterManagerCheckCluster(i32 noundef 0) ; 0 uses
  br label %.thread456

.thread456:                                       ; preds = %bb.cg, %._crit_edge605, %bb.bp, %bb.bu, %.thread443
  %.10.ph = phi i32 [ 0, %._crit_edge605 ], [ 1, %bb.cg ], [ 0, %bb.bp ], [ 0, %bb.bu ], [ 0, %.thread443 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  br label %bb.ch

5:                                                ; preds = %bb.bz, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  br label %bb.ch

bb.ch:                                            ; preds = %5, %.thread456, %.thread440, %confirmWithYes.exit.thread437, %confirmWithYes.exit
  %.11 = phi i32 [ 0, %.thread440 ], [ %.10.ph, %.thread456 ], [ 0, %5 ], [ 1, %confirmWithYes.exit ], [ 1, %confirmWithYes.exit.thread437 ]
  call void @zfree(ptr noundef %i.bx) #32
  call void @zfree(ptr noundef %i.bz) #32
  br i1 %i.eb, label %.lr.ph609.preheader, label %.loopexit766

.lr.ph609.preheader:                              ; preds = %bb.ch
  %wide.trip.count696 = and i64 %i.bo, 2147483647
  br label %.lr.ph609

.lr.ph609:                                        ; preds = %.lr.ph609.preheader, %.lr.ph609
  %indvars.iv693 = phi i64 [ 0, %.lr.ph609.preheader ], [ %indvars.iv.next694, %.lr.ph609 ] ; 2 uses
  %i.pj = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %indvars.iv693
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !105
  call void @zfree(ptr noundef %i.pl) #32
  %indvars.iv.next694 = add nuw nsw i64 %indvars.iv693, 1 ; 2 uses
  %exitcond697.not = icmp eq i64 %indvars.iv.next694, %wide.trip.count696
  br i1 %exitcond697.not, label %.loopexit766, label %.lr.ph609, !llvm.loop !133

.loopexit766:                                     ; preds = %.lr.ph609, %bb.ch
  call void @zfree(ptr noundef %i.cb) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.f, %bb.n, %bb.o, %.loopexit766
  %.6 = phi i32 [ 0, %bb.n ], [ %.11, %.loopexit766 ], [ 0, %bb.o ], [ 0, %bb.f ], [ 0, %bb.d ]
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @clusterManagerCommandCheck(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = icmp eq i32 %0, 1
  %i.b = load ptr, ptr %1, align 8, !tbaa !29     ; 4 uses
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef 64) #34 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.c, align 1, !tbaa !73
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef 58) #34 ; 3 uses
  %.not17.i.i = icmp eq ptr %i.d, null
  br i1 %.not17.i.i, label %bb.h, label %parseClusterNodeAddress.exit.i

parseClusterNodeAddress.exit.i:                   ; preds = %bb.d
  store i8 0, ptr %i.d, align 1, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %parseClusterNodeAddress.exit.i
  %.sink.i = phi ptr [ %i.e, %parseClusterNodeAddress.exit.i ], [ %i.g, %bb.e ]
  %i.h = tail call i64 @__isoc23_strtol(ptr noundef nonnull %.sink.i, ptr noundef null, i32 noundef 10) #32
  %.013.i = trunc i64 %i.h to i32                 ; 3 uses
  %i.i = icmp ne ptr %i.b, null
  %i.j = icmp ne i32 %.013.i, 0
  %or.cond.i = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond.i, label %getClusterHostFromCmdArgs.exit, label %bb.h

getClusterHostFromCmdArgs.exit:                   ; preds = %bb.f
  %i.k = tail call noalias dereferenceable_or_null(16520) ptr @zmalloc(i64 noundef 16520) #36 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store ptr %i.b, ptr %i.l, align 8, !tbaa !80
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i32 %.013.i, ptr %i.m, align 8, !tbaa !83
  %i.n = add nsw i32 %.013.i, 10000
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  store i32 %i.n, ptr %i.o, align 4, !tbaa !84
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16480
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 16472
  store i32 0, ptr %i.s, align 8, !tbaa !85
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 16512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.p, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.q, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 32, i1 false)
  store float 1.000000e+00, ptr %i.t, align 8, !tbaa !86
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 16516
  store i32 0, ptr %i.u, align 4, !tbaa !87
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16388) %i.v, i8 0, i64 16388, i1 false)
  %i.w = tail call fastcc i32 @clusterManagerLoadInfoFromNode(ptr noundef nonnull %i.k)
  %.not3 = icmp eq i32 %i.w, 0
  br i1 %.not3, label %bb.i, label %bb.g

bb.g:                                             ; preds = %getClusterHostFromCmdArgs.exit
  tail call fastcc void @clusterManagerShowClusterInfo()
  %i.x = tail call fastcc i32 @clusterManagerCheckCluster(i32 noundef 0)
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.d
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.z = tail call i64 @fwrite(ptr nonnull @.str.386, i64 138, i64 1, ptr %i.y) #33 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %getClusterHostFromCmdArgs.exit, %bb.h, %bb.g
  %.0 = phi i32 [ %i.x, %bb.g ], [ 0, %bb.h ], [ 0, %getClusterHostFromCmdArgs.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @clusterManagerCommandInfo(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = icmp eq i32 %0, 1
  %i.b = load ptr, ptr %1, align 8, !tbaa !29     ; 4 uses
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef 64) #34 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.c, align 1, !tbaa !73
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef 58) #34 ; 3 uses
  %.not17.i.i = icmp eq ptr %i.d, null
  br i1 %.not17.i.i, label %bb.h, label %parseClusterNodeAddress.exit.i

parseClusterNodeAddress.exit.i:                   ; preds = %bb.d
  store i8 0, ptr %i.d, align 1, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %parseClusterNodeAddress.exit.i
  %.sink.i = phi ptr [ %i.e, %parseClusterNodeAddress.exit.i ], [ %i.g, %bb.e ]
  %i.h = tail call i64 @__isoc23_strtol(ptr noundef nonnull %.sink.i, ptr noundef null, i32 noundef 10) #32
  %.013.i = trunc i64 %i.h to i32                 ; 3 uses
  %i.i = icmp ne ptr %i.b, null
  %i.j = icmp ne i32 %.013.i, 0
  %or.cond.i = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond.i, label %getClusterHostFromCmdArgs.exit, label %bb.h

getClusterHostFromCmdArgs.exit:                   ; preds = %bb.f
  %i.k = tail call noalias dereferenceable_or_null(16520) ptr @zmalloc(i64 noundef 16520) #36 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store ptr %i.b, ptr %i.l, align 8, !tbaa !80
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i32 %.013.i, ptr %i.m, align 8, !tbaa !83
  %i.n = add nsw i32 %.013.i, 10000
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  store i32 %i.n, ptr %i.o, align 4, !tbaa !84
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16480
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 16472
  store i32 0, ptr %i.s, align 8, !tbaa !85
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 16512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.p, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.q, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 32, i1 false)
  store float 1.000000e+00, ptr %i.t, align 8, !tbaa !86
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 16516
  store i32 0, ptr %i.u, align 4, !tbaa !87
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16388) %i.v, i8 0, i64 16388, i1 false)
  %i.w = tail call fastcc i32 @clusterManagerLoadInfoFromNode(ptr noundef nonnull %i.k)
  %.not3 = icmp eq i32 %i.w, 0
  br i1 %.not3, label %bb.i, label %bb.g

bb.g:                                             ; preds = %getClusterHostFromCmdArgs.exit
  tail call fastcc void @clusterManagerShowClusterInfo()
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.d
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.y = tail call i64 @fwrite(ptr nonnull @.str.386, i64 138, i64 1, ptr %i.x) #33 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %getClusterHostFromCmdArgs.exit, %bb.h, %bb.g
  %.0 = phi i32 [ 1, %bb.g ], [ 0, %bb.h ], [ 0, %getClusterHostFromCmdArgs.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @clusterManagerCommandFix(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 592), align 8, !tbaa !126
  %i.b = or i32 %i.a, 1
  store i32 %i.b, ptr getelementptr inbounds nuw (i8, ptr @config, i64 592), align 8, !tbaa !126
  %i.c = tail call i32 @clusterManagerCommandCheck(i32 noundef %0, ptr noundef %1)
end_hunk_0
