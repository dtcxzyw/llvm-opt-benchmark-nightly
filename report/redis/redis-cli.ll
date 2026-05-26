inline.NumInlined: 395
inline.NumDeleted: 110
begin_hunk_0_@clusterManagerCommandCreate:bb.a
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
  br i1 %.not337, label %bb.ch, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ou = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !80
  %i.ow = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  %i.ox = load i32, ptr %i.ow, align 8, !tbaa !83
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.ov, i32 noundef %i.ox, ptr noundef nonnull %i.ot)
  call void @zfree(ptr noundef nonnull %i.ot) #32
  br label %bb.ch

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
  br label %bb.ci

bb.ch:                                            ; preds = %bb.bz, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %.thread456, %.thread440, %confirmWithYes.exit.thread437, %confirmWithYes.exit
  %.11 = phi i32 [ 0, %.thread440 ], [ %.10.ph, %.thread456 ], [ 0, %bb.ch ], [ 1, %confirmWithYes.exit ], [ 1, %confirmWithYes.exit.thread437 ]
  call void @zfree(ptr noundef %i.bx) #32
  call void @zfree(ptr noundef %i.bz) #32
  br i1 %i.eb, label %.lr.ph609.preheader, label %.loopexit766

.lr.ph609.preheader:                              ; preds = %bb.ci
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

.loopexit766:                                     ; preds = %.lr.ph609, %bb.ci
  call void @zfree(ptr noundef %i.cb) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.f, %bb.n, %bb.o, %.loopexit766
  %.6 = phi i32 [ 0, %bb.n ], [ %.11, %.loopexit766 ], [ 0, %bb.o ], [ 0, %bb.f ], [ 0, %bb.d ]
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @clusterManagerCommandCheck(i32 noundef %0, ptr noundef readonly captures(none) %1) #0 {
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
define internal range(i32 0, 2) i32 @clusterManagerCommandInfo(i32 noundef %0, ptr noundef readonly captures(none) %1) #0 {
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
define internal range(i32 0, 2) i32 @clusterManagerCommandFix(i32 noundef %0, ptr noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 592), align 8, !tbaa !126
  %i.b = or i32 %i.a, 1
  store i32 %i.b, ptr getelementptr inbounds nuw (i8, ptr @config, i64 592), align 8, !tbaa !126
  %i.c = tail call i32 @clusterManagerCommandCheck(i32 noundef %0, ptr noundef %1)
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @clusterManagerCommandReshard(i32 noundef %0, ptr noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.listIter, align 8           ; 5 uses
  %3 = alloca %struct.listIter, align 8           ; 5 uses
  %i.a = alloca [6 x i8], align 1                 ; 5 uses
  %i.b = alloca [255 x i8], align 16              ; 11 uses
  %4 = alloca %struct.listIter, align 8           ; 9 uses
  %i.c = alloca [4 x i8], align 1                 ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = icmp eq i32 %0, 1
  %i.f = load ptr, ptr %1, align 8, !tbaa !29     ; 4 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.f, i32 noundef 64) #34 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.g, align 1, !tbaa !73
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.f, i32 noundef 58) #34 ; 3 uses
  %.not17.i.i = icmp eq ptr %i.h, null
  br i1 %.not17.i.i, label %bb.av, label %parseClusterNodeAddress.exit.i

parseClusterNodeAddress.exit.i:                   ; preds = %bb.d
  store i8 0, ptr %i.h, align 1, !tbaa !73
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %parseClusterNodeAddress.exit.i
  %.sink.i = phi ptr [ %i.i, %parseClusterNodeAddress.exit.i ], [ %i.k, %bb.e ]
  %i.l = tail call i64 @__isoc23_strtol(ptr noundef nonnull %.sink.i, ptr noundef null, i32 noundef 10) #32
  %.013.i = trunc i64 %i.l to i32                 ; 3 uses
  %i.m = icmp ne ptr %i.f, null
  %i.n = icmp ne i32 %.013.i, 0
  %or.cond.i = select i1 %i.m, i1 %i.n, i1 false
  br i1 %or.cond.i, label %getClusterHostFromCmdArgs.exit, label %bb.av

getClusterHostFromCmdArgs.exit:                   ; preds = %bb.f
  %i.o = tail call noalias dereferenceable_or_null(16520) ptr @zmalloc(i64 noundef 16520) #36 ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store ptr %i.f, ptr %i.p, align 8, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i32 %.013.i, ptr %i.q, align 8, !tbaa !83
  %i.r = add nsw i32 %.013.i, 10000
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  store i32 %i.r, ptr %i.s, align 4, !tbaa !84
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16480
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 16472
  store i32 0, ptr %i.w, align 8, !tbaa !85
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 16512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.t, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.u, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  store float 1.000000e+00, ptr %i.x, align 8, !tbaa !86
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 16516
  store i32 0, ptr %i.y, align 4, !tbaa !87
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16388) %i.z, i8 0, i64 16388, i1 false)
  %i.aa = tail call fastcc i32 @clusterManagerLoadInfoFromNode(ptr noundef nonnull %i.o)
  %.not131 = icmp eq i32 %i.aa, 0
  br i1 %.not131, label %clusterManagerReleaseReshardTable.exit, label %bb.g

bb.g:                                             ; preds = %getClusterHostFromCmdArgs.exit
  %i.ab = tail call fastcc i32 @clusterManagerCheckCluster(i32 noundef 0) ; 0 uses
  %i.ac = load ptr, ptr @cluster_manager.1, align 8, !tbaa !134 ; 2 uses
  %.not132 = icmp eq ptr %i.ac, null
  br i1 %.not132, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !90
  %.not133 = icmp eq i64 %i.ae, 0
  br i1 %.not133, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.ag = tail call i32 @fflush(ptr noundef %i.af) ; 0 uses
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ai = tail call i64 @fwrite(ptr nonnull @.str.401, i64 55, i64 1, ptr %i.ah) #33 ; 0 uses
  br label %clusterManagerReleaseReshardTable.exit

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 640), align 8, !tbaa !135 ; 2 uses
  %.not134 = icmp eq i32 %i.aj, 0
  br i1 %.not134, label %.preheader291, label %.loopexit292

.preheader291:                                    ; preds = %bb.j, %bb.l
  %.091296 = phi i32 [ %.192, %bb.l ], [ 0, %bb.j ]
  %i.ak = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.402, i32 noundef 16384) ; 0 uses
  %i.al = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.am = call i32 @fflush(ptr noundef %i.al)     ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.an = load ptr, ptr @stdin, align 8, !tbaa !13
  %i.ao = call i32 @fileno(ptr noundef %i.an) #32
  %i.ap = call i64 @read(i32 noundef %i.ao, ptr noundef nonnull %i.a, i64 noundef 6) #32 ; 2 uses
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = icmp slt i32 %i.aq, 1
  br i1 %i.ar, label %bb.l, label %bb.k, !llvm.loop !136

bb.k:                                             ; preds = %.preheader291
  %i.as = add i64 %i.ap, 4294967295
  %i.at = and i64 %i.as, 4294967295
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.at ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !73
  %.not135 = icmp eq i8 %i.av, 10
  br i1 %.not135, label %.loopexit290, label %.preheader289

.preheader289:                                    ; preds = %bb.k, %.preheader289
  %i.aw = load ptr, ptr @stdin, align 8, !tbaa !13
  %i.ax = call i32 @getc(ptr noundef %i.aw), !inline_history !137
  switch i32 %i.ax, label %.preheader289 [
    i32 -1, label %.loopexit290
    i32 10, label %.loopexit290
  ]

.loopexit290:                                     ; preds = %.preheader289, %.preheader289, %bb.k
  store i8 0, ptr %i.au, align 1, !tbaa !73
  %i.ay = call i64 @__isoc23_strtol(ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 10) #32, !inline_history !55
  %i.az = trunc i64 %i.ay to i32
  br label %bb.l

bb.l:                                             ; preds = %.preheader291, %.loopexit290
  %.192 = phi i32 [ %i.az, %.loopexit290 ], [ %.091296, %.preheader291 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.ba = add i32 %.192, -16385
  %i.bb = icmp ult i32 %i.ba, -16384
  br i1 %i.bb, label %.preheader291, label %.loopexit292

.loopexit292:                                     ; preds = %bb.l, %bb.j
  %.293 = phi i32 [ %i.aj, %bb.j ], [ %.192, %bb.l ] ; 2 uses
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 608), align 8, !tbaa !138 ; 2 uses
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 600), align 8, !tbaa !139 ; 4 uses
  %i.be = icmp eq ptr %i.bc, null
  br i1 %i.be, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit292, %.lr.ph.backedge
  %i.bf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.403) ; 0 uses
  %i.bg = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.bh = call i32 @fflush(ptr noundef %i.bg)     ; 0 uses
  %i.bi = load ptr, ptr @stdin, align 8, !tbaa !13
  %i.bj = call i32 @fileno(ptr noundef %i.bi) #32
  %i.bk = call i64 @read(i32 noundef %i.bj, ptr noundef nonnull %i.b, i64 noundef 255) #32 ; 2 uses
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = icmp slt i32 %i.bl, 1
  br i1 %i.bm, label %.lr.ph.backedge, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.bn = add i64 %i.bk, 4294967295
  %i.bo = and i64 %i.bn, 4294967295
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bo ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !73
  %.not171 = icmp eq i8 %i.bq, 10
  br i1 %.not171, label %.loopexit288, label %.preheader287

.preheader287:                                    ; preds = %bb.m, %.preheader287
  %i.br = load ptr, ptr @stdin, align 8, !tbaa !13
  %i.bs = call i32 @getc(ptr noundef %i.br), !inline_history !137
  switch i32 %i.bs, label %.preheader287 [
    i32 -1, label %.loopexit288
    i32 10, label %.loopexit288
  ]

.loopexit288:                                     ; preds = %.preheader287, %.preheader287, %bb.m
  store i8 0, ptr %i.bp, align 1, !tbaa !73
  %char0172 = load i8, ptr %i.b, align 16
  %.not173 = icmp eq i8 %char0172, 0
  br i1 %.not173, label %.lr.ph.backedge, label %._crit_edge

.lr.ph.backedge:                                  ; preds = %.loopexit288, %.lr.ph
  br label %.lr.ph, !llvm.loop !140

._crit_edge:                                      ; preds = %.loopexit288, %.loopexit292
  %.094.lcssa = phi ptr [ %i.bc, %.loopexit292 ], [ %i.b, %.loopexit288 ] ; 2 uses
  %i.bt = call fastcc ptr @clusterManagerNodeByName(ptr noundef nonnull %.094.lcssa) ; 8 uses
  %.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i, label %clusterNodeForResharding.exit.thread, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !141
  %i.bw = and i32 %i.bv, 2
  %.not14.i = icmp eq i32 %i.bw, 0
  br i1 %.not14.i, label %clusterNodeForResharding.exit, label %clusterNodeForResharding.exit.thread

clusterNodeForResharding.exit.thread:             ; preds = %._crit_edge, %bb.n
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.417, ptr noundef nonnull %.094.lcssa)
  br label %clusterManagerReleaseReshardTable.exit

clusterNodeForResharding.exit:                    ; preds = %bb.n
  %i.bx = call ptr @listCreate() #32              ; 11 uses
  %i.by = icmp eq ptr %i.bd, null
  br i1 %i.by, label %bb.o, label %.preheader285

.preheader285:                                    ; preds = %clusterNodeForResharding.exit
  %i.bz = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bd, i32 noundef 44) #34 ; 2 uses
  %.not136297 = icmp eq ptr %i.bz, null
  br i1 %.not136297, label %.critedge, label %.lr.ph299

.lr.ph299:                                        ; preds = %.preheader285
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  br label %bb.v

bb.o:                                             ; preds = %clusterNodeForResharding.exit
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %puts146 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %puts147 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  br label %bb.p

bb.p:                                             ; preds = %.backedge, %bb.o
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !90
  %i.ce = add i64 %i.cd, 1
  %i.cf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.407, i64 noundef %i.ce) ; 0 uses
  %i.cg = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.ch = call i32 @fflush(ptr noundef %i.cg)     ; 0 uses
  %i.ci = load ptr, ptr @stdin, align 8, !tbaa !13
  %i.cj = call i32 @fileno(ptr noundef %i.ci) #32
  %i.ck = call i64 @read(i32 noundef %i.cj, ptr noundef nonnull %i.b, i64 noundef 255) #32 ; 2 uses
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = icmp slt i32 %i.cl, 1
  br i1 %i.cm, label %.backedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cn = add i64 %i.ck, 4294967295
  %i.co = and i64 %i.cn, 4294967295
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.co ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !73
  %.not148 = icmp eq i8 %i.cq, 10
  br i1 %.not148, label %.loopexit283, label %.preheader

.preheader:                                       ; preds = %bb.q, %.preheader
  %i.cr = load ptr, ptr @stdin, align 8, !tbaa !13
  %i.cs = call i32 @getc(ptr noundef %i.cr), !inline_history !137
  switch i32 %i.cs, label %.preheader [
    i32 -1, label %.loopexit283
    i32 10, label %.loopexit283
  ]

.loopexit283:                                     ; preds = %.preheader, %.preheader, %bb.q
  store i8 0, ptr %i.cp, align 1, !tbaa !73
  %i.ct = load i32, ptr %i.b, align 16
  %i.cu = xor i32 %i.ct, 1701736292
  %i.cv = getelementptr i8, ptr %i.b, i64 4
  %i.cw = load i8, ptr %i.cv, align 4
  %i.cx = zext i8 %i.cw to i32
  %i.cy = or i32 %i.cu, %i.cx
  %i.cz = icmp ne i32 %i.cy, 0
  %i.da = zext i1 %i.cz to i32
  %.not149 = icmp eq i32 %i.da, 0
  br i1 %.not149, label %.thread220.thread, label %bb.r

bb.r:                                             ; preds = %.loopexit283
  %lhsv = load i32, ptr %i.b, align 16
  %.not151 = icmp eq i32 %lhsv, 7105633
  br i1 %.not151, label %.thread220.thread278, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.db = call fastcc ptr @clusterManagerNodeByName(ptr noundef nonnull %i.b) ; 4 uses
  %.not.i183 = icmp eq ptr %i.db, null
  br i1 %.not.i183, label %.thread224, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 56
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !141
  %i.de = and i32 %i.dd, 2
  %.not14.i184 = icmp eq i32 %i.de, 0
  br i1 %.not14.i184, label %bb.u, label %.thread224

bb.u:                                             ; preds = %bb.t
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !119
  %i.dh = load ptr, ptr %i.cc, align 8, !tbaa !119
  %i.di = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dg, ptr noundef nonnull dereferenceable(1) %i.dh) #34
  %.not16.i = icmp eq i32 %i.di, 0
  br i1 %.not16.i, label %.thread, label %clusterNodeForResharding.exit186

.thread:                                          ; preds = %bb.u
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.418)
  br label %.backedge

clusterNodeForResharding.exit186:                 ; preds = %bb.u
  %i.dj = call ptr @listAddNodeTail(ptr noundef %i.bx, ptr noundef nonnull %i.db) #32 ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %clusterNodeForResharding.exit186, %.thread, %bb.p
  br label %bb.p

.thread224:                                       ; preds = %bb.t, %bb.s
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.417, ptr noundef nonnull %i.b)
  br label %.thread268

bb.v:                                             ; preds = %.lr.ph299, %bb.aa
  %i.dk = phi ptr [ %i.bz, %.lr.ph299 ], [ %i.dw, %bb.aa ] ; 2 uses
  %.097298 = phi ptr [ %i.bd, %.lr.ph299 ], [ %i.dv, %bb.aa ] ; 3 uses
  store i8 0, ptr %i.dk, align 1, !tbaa !73
  %i.dl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.097298, ptr noundef nonnull dereferenceable(4) @.str.409) #34
  %.not137 = icmp eq i32 %i.dl, 0
  br i1 %.not137, label %.thread220.thread278, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dm = call fastcc ptr @clusterManagerNodeByName(ptr noundef nonnull %.097298) ; 4 uses
  %.not.i187 = icmp eq ptr %i.dm, null
  br i1 %.not.i187, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !141
  %i.dp = and i32 %i.do, 2
  %.not14.i188 = icmp eq i32 %i.dp, 0
  br i1 %.not14.i188, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !119
  %i.ds = load ptr, ptr %i.ca, align 8, !tbaa !119
  %i.dt = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dr, ptr noundef nonnull dereferenceable(1) %i.ds) #34
  %.not16.i191 = icmp eq i32 %i.dt, 0
  br i1 %.not16.i191, label %.thread232, label %clusterNodeForResharding.exit192

.thread232:                                       ; preds = %bb.y
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.418)
  br label %bb.aa

clusterNodeForResharding.exit192:                 ; preds = %bb.y
  %i.du = call ptr @listAddNodeTail(ptr noundef %i.bx, ptr noundef nonnull %i.dm) #32 ; 0 uses
  br label %bb.aa

bb.z:                                             ; preds = %bb.x, %bb.w
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.417, ptr noundef nonnull %.097298)
  br label %.thread268

bb.aa:                                            ; preds = %.thread232, %clusterNodeForResharding.exit192
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dk, i64 1 ; 3 uses
  %i.dw = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.dv, i32 noundef 44) #34 ; 2 uses
  %.not136 = icmp eq ptr %i.dw, null
  br i1 %.not136, label %.critedge, label %bb.v, !llvm.loop !142

.critedge:                                        ; preds = %bb.aa, %.preheader285
  %.097.lcssa = phi ptr [ %i.bd, %.preheader285 ], [ %i.dv, %bb.aa ] ; 4 uses
  %char0 = load i8, ptr %.097.lcssa, align 1
  %.not139 = icmp eq i8 %char0, 0
  br i1 %.not139, label %.thread220.thread, label %bb.ab

bb.ab:                                            ; preds = %.critedge
  %i.dx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.097.lcssa, ptr noundef nonnull dereferenceable(4) @.str.409) #34
  %.not140.not = icmp eq i32 %i.dx, 0
  br i1 %.not140.not, label %.thread220.thread278, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dy = call fastcc ptr @clusterManagerNodeByName(ptr noundef nonnull %.097.lcssa) ; 4 uses
  %.not.i193 = icmp eq ptr %i.dy, null
  br i1 %.not.i193, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 56
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !141
  %i.eb = and i32 %i.ea, 2
  %.not14.i194 = icmp eq i32 %i.eb, 0
  br i1 %.not14.i194, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !119
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !119
  %i.eg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ed, ptr noundef nonnull dereferenceable(1) %i.ef) #34
  %.not16.i197 = icmp eq i32 %i.eg, 0
  br i1 %.not16.i197, label %.thread245, label %clusterNodeForResharding.exit198

.thread245:                                       ; preds = %bb.ae
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.418)
  br label %.thread220.thread

clusterNodeForResharding.exit198:                 ; preds = %bb.ae
  %i.eh = call ptr @listAddNodeTail(ptr noundef %i.bx, ptr noundef nonnull %i.dy) #32 ; 0 uses
  br label %.thread220.thread

bb.af:                                            ; preds = %bb.ad, %bb.ac
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.417, ptr noundef nonnull %.097.lcssa)
  br label %.thread268

.thread220.thread278:                             ; preds = %bb.v, %bb.r, %bb.ab
  call void @listEmpty(ptr noundef %i.bx) #32
  %i.ei = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  call void @listRewind(ptr noundef %i.ei, ptr noundef nonnull %4) #32
  %i.ej = call ptr @listNext(ptr noundef nonnull %4) #32 ; 2 uses
  %.not155301 = icmp eq ptr %i.ej, null
  br i1 %.not155301, label %.thread220.thread, label %.lr.ph302

.lr.ph302:                                        ; preds = %.thread220.thread278
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph302, %bb.ak
  %i.el = phi ptr [ %i.ej, %.lr.ph302 ], [ %i.ey, %bb.ak ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !102 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 56
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !141
  %i.eq = and i32 %i.ep, 2
  %.not168 = icmp eq i32 %i.eq, 0
  br i1 %.not168, label %bb.ah, label %bb.ak, !llvm.loop !143

bb.ah:                                            ; preds = %bb.ag
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 72
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !118
  %.not169 = icmp eq ptr %i.es, null
  br i1 %.not169, label %bb.ai, label %bb.ak, !llvm.loop !143

bb.ai:                                            ; preds = %bb.ah
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !119
  %i.ev = load ptr, ptr %i.ek, align 8, !tbaa !119
  %i.ew = call i32 @hi_sdscmp(ptr noundef %i.eu, ptr noundef %i.ev) #32
  %.not170 = icmp eq i32 %i.ew, 0
  br i1 %.not170, label %bb.ak, label %bb.aj, !llvm.loop !143

bb.aj:                                            ; preds = %bb.ai
  %i.ex = call ptr @listAddNodeTail(ptr noundef %i.bx, ptr noundef nonnull %i.en) #32 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.ag, %bb.ah, %bb.aj
  %i.ey = call ptr @listNext(ptr noundef nonnull %4) #32 ; 2 uses
  %.not155 = icmp eq ptr %i.ey, null
  br i1 %.not155, label %.thread220.thread, label %bb.ag

.thread220.thread:                                ; preds = %.loopexit283, %bb.ak, %.thread220.thread278, %.critedge, %clusterNodeForResharding.exit198, %.thread245
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !90
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.thread220.thread
  %i.fc = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.fd = call i64 @fwrite(ptr nonnull @.str.410, i64 46, i64 1, ptr %i.fc) #33 ; 0 uses
  br label %.thread268

bb.am:                                            ; preds = %.thread220.thread
  %i.fe = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.411, i32 noundef %.293) ; 0 uses
  %puts156 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  call void @listRewind(ptr noundef nonnull %i.bx, ptr noundef nonnull %4) #32
  %i.ff = call ptr @listNext(ptr noundef nonnull %4) #32 ; 2 uses
  %.not157303 = icmp eq ptr %i.ff, null
  br i1 %.not157303, label %._crit_edge306, label %.lr.ph305

.lr.ph305:                                        ; preds = %bb.am, %.lr.ph305
  %i.fg = phi ptr [ %i.fk, %.lr.ph305 ], [ %i.ff, %bb.am ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !102
  %i.fj = call fastcc ptr @clusterManagerNodeInfo(ptr noundef %i.fi, i32 noundef 4) ; 2 uses
  %puts167 = call i32 @puts(ptr nonnull dereferenceable(1) %i.fj) ; 0 uses
  call void @hi_sdsfree(ptr noundef nonnull %i.fj) #32
  %i.fk = call ptr @listNext(ptr noundef nonnull %4) #32 ; 2 uses
  %.not157 = icmp eq ptr %i.fk, null
  br i1 %.not157, label %._crit_edge306, label %.lr.ph305, !llvm.loop !144

._crit_edge306:                                   ; preds = %.lr.ph305, %bb.am
  %puts158 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %i.fl = call fastcc ptr @clusterManagerNodeInfo(ptr noundef nonnull %i.bt, i32 noundef 4) ; 2 uses
  %puts159 = call i32 @puts(ptr nonnull dereferenceable(1) %i.fl) ; 0 uses
  call void @hi_sdsfree(ptr noundef nonnull %i.fl) #32
  %i.fm = call fastcc ptr @clusterManagerComputeReshardTable(ptr noundef nonnull %i.bx, i32 noundef %.293) ; 5 uses
  %puts160 = call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @listRewind(ptr noundef %i.fm, ptr noundef nonnull %3) #32
  %i.fn = call ptr @listNext(ptr noundef nonnull %3) #32 ; 2 uses
  %.not5.i = icmp eq ptr %i.fn, null
  br i1 %.not5.i, label %clusterManagerShowReshardTable.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge306, %.lr.ph.i
  %i.fo = phi ptr [ %i.fx, %.lr.ph.i ], [ %i.fn, %._crit_edge306 ]
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !102 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !145
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !147
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !119
  %i.fw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.419, i32 noundef %i.ft, ptr noundef %i.fv) ; 0 uses
  %i.fx = call ptr @listNext(ptr noundef nonnull %3) #32 ; 2 uses
  %.not.i199 = icmp eq ptr %i.fx, null
  br i1 %.not.i199, label %clusterManagerShowReshardTable.exit, label %.lr.ph.i, !llvm.loop !148

clusterManagerShowReshardTable.exit:              ; preds = %.lr.ph.i, %._crit_edge306
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.fy = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 592), align 8, !tbaa !126
  %i.fz = and i32 %i.fy, 4
  %.not161 = icmp eq i32 %i.fz, 0
  br i1 %.not161, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %clusterManagerShowReshardTable.exit
  %i.ga = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.415) ; 0 uses
  %i.gb = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.gc = call i32 @fflush(ptr noundef %i.gb)     ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  %i.gd = load ptr, ptr @stdin, align 8, !tbaa !13
  %i.ge = call i32 @fileno(ptr noundef %i.gd) #32
  %i.gf = call i64 @read(i32 noundef %i.ge, ptr noundef nonnull %i.c, i64 noundef 4) #32
  %i.gg = trunc i64 %i.gf to i32
  %i.gh = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 0, ptr %i.gh, align 1, !tbaa !73
  %i.gi = icmp slt i32 %i.gg, 1
  br i1 %i.gi, label %.thread261, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gj = load i32, ptr %i.c, align 1
  %i.gk = icmp ne i32 7562617, %i.gj
  %i.gl = zext i1 %i.gk to i32
  %.not163 = icmp eq i32 %i.gl, 0
  br i1 %.not163, label %bb.ap, label %.thread261

.thread261:                                       ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %.loopexit

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %clusterManagerShowReshardTable.exit
  call void @listRewind(ptr noundef %i.fm, ptr noundef nonnull %4) #32
  %i.gm = call ptr @listNext(ptr noundef nonnull %4) #32 ; 2 uses
  %.not164307 = icmp eq ptr %i.gm, null
  br i1 %.not164307, label %.loopexit, label %.lr.ph309

.lr.ph309:                                        ; preds = %bb.aq, %bb.at
  %i.gn = phi ptr [ %i.gv, %bb.at ], [ %i.gm, %bb.aq ]
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !102 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  store ptr null, ptr %i.d, align 8, !tbaa !29
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !145
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !147
  %i.gt = call fastcc i32 @clusterManagerMoveSlot(ptr noundef %i.gq, ptr noundef nonnull %i.bt, i32 noundef %i.gs, i32 noundef 128, ptr noundef nonnull %i.d)
  %.not165 = icmp eq i32 %i.gt, 0
  br i1 %.not165, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %.lr.ph309
  %i.gu = load ptr, ptr %i.d, align 8, !tbaa !29  ; 3 uses
  %.not166 = icmp eq ptr %i.gu, null
  br i1 %.not166, label %.thread265, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.416, ptr noundef nonnull %i.gu)
  call void @zfree(ptr noundef nonnull %i.gu) #32
  br label %.thread265

.thread265:                                       ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  br label %.loopexit

bb.at:                                            ; preds = %.lr.ph309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  %i.gv = call ptr @listNext(ptr noundef nonnull %4) #32 ; 2 uses
  %.not164 = icmp eq ptr %i.gv, null
  br i1 %.not164, label %.loopexit, label %.lr.ph309

.thread268:                                       ; preds = %bb.al, %.thread224, %bb.af, %bb.z
  call void @listRelease(ptr noundef %i.bx) #32
  br label %clusterManagerReleaseReshardTable.exit

.loopexit:                                        ; preds = %bb.at, %bb.aq, %.thread265, %.thread261
  %.13 = phi i32 [ 0, %.thread261 ], [ 0, %.thread265 ], [ 1, %bb.aq ], [ 1, %bb.at ] ; 2 uses
  call void @listRelease(ptr noundef nonnull %i.bx) #32
  %.not.i200 = icmp eq ptr %i.fm, null
  br i1 %.not.i200, label %clusterManagerReleaseReshardTable.exit, label %bb.au

bb.au:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @listRewind(ptr noundef nonnull %i.fm, ptr noundef nonnull %2) #32
  %i.gw = call ptr @listNext(ptr noundef nonnull %2) #32 ; 2 uses
  %.not67.i = icmp eq ptr %i.gw, null
  br i1 %.not67.i, label %._crit_edge.i, label %.lr.ph.i201

.lr.ph.i201:                                      ; preds = %bb.au, %.lr.ph.i201
  %i.gx = phi ptr [ %i.ha, %.lr.ph.i201 ], [ %i.gw, %bb.au ]
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !102
  call void @zfree(ptr noundef %i.gz) #32
  %i.ha = call ptr @listNext(ptr noundef nonnull %2) #32 ; 2 uses
  %.not6.i = icmp eq ptr %i.ha, null
  br i1 %.not6.i, label %._crit_edge.i, label %.lr.ph.i201, !llvm.loop !149

._crit_edge.i:                                    ; preds = %.lr.ph.i201, %bb.au
  call void @listRelease(ptr noundef nonnull %i.fm) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %clusterManagerReleaseReshardTable.exit

bb.av:                                            ; preds = %bb.f, %bb.d
  %i.hb = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.hc = tail call i64 @fwrite(ptr nonnull @.str.386, i64 138, i64 1, ptr %i.hb) #33 ; 0 uses
  br label %clusterManagerReleaseReshardTable.exit

clusterManagerReleaseReshardTable.exit:           ; preds = %._crit_edge.i, %.loopexit, %.thread268, %clusterNodeForResharding.exit.thread, %getClusterHostFromCmdArgs.exit, %bb.av, %bb.i
  %.0 = phi i32 [ 0, %bb.i ], [ 0, %getClusterHostFromCmdArgs.exit ], [ 0, %clusterNodeForResharding.exit.thread ], [ 0, %bb.av ], [ 0, %.thread268 ], [ %.13, %.loopexit ], [ %.13, %._crit_edge.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @clusterManagerCommandRebalance(i32 noundef %0, ptr noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.listIter, align 8           ; 5 uses
  %3 = alloca %struct.listIter, align 8           ; 6 uses
  %4 = alloca %struct.listIter, align 8           ; 12 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = icmp eq i32 %0, 1
  %i.c = load ptr, ptr %1, align 8, !tbaa !29     ; 4 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.c, i32 noundef 64) #34 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.d, align 1, !tbaa !73
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.c, i32 noundef 58) #34 ; 3 uses
  %.not17.i.i = icmp eq ptr %i.e, null
  br i1 %.not17.i.i, label %bb.ar, label %parseClusterNodeAddress.exit.i

parseClusterNodeAddress.exit.i:                   ; preds = %bb.d
  store i8 0, ptr %i.e, align 1, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %parseClusterNodeAddress.exit.i
  %.sink.i = phi ptr [ %i.f, %parseClusterNodeAddress.exit.i ], [ %i.h, %bb.e ]
  %i.i = tail call i64 @__isoc23_strtol(ptr noundef nonnull %.sink.i, ptr noundef null, i32 noundef 10) #32
  %.013.i = trunc i64 %i.i to i32                 ; 3 uses
  %i.j = icmp ne ptr %i.c, null
  %i.k = icmp ne i32 %.013.i, 0
  %or.cond.i = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond.i, label %getClusterHostFromCmdArgs.exit, label %bb.ar

getClusterHostFromCmdArgs.exit:                   ; preds = %bb.f
  %i.l = tail call noalias dereferenceable_or_null(16520) ptr @zmalloc(i64 noundef 16520) #36 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store ptr %i.c, ptr %i.m, align 8, !tbaa !80
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i32 %.013.i, ptr %i.n, align 8, !tbaa !83
  %i.o = add nsw i32 %.013.i, 10000
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  store i32 %i.o, ptr %i.p, align 4, !tbaa !84
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16480
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16472
  store i32 0, ptr %i.t, align 8, !tbaa !85
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.q, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.r, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  store float 1.000000e+00, ptr %i.u, align 8, !tbaa !86
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16516
  store i32 0, ptr %i.v, align 4, !tbaa !87
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16388) %i.w, i8 0, i64 16388, i1 false)
  %i.x = tail call fastcc i32 @clusterManagerLoadInfoFromNode(ptr noundef nonnull %i.l)
  %.not176 = icmp eq i32 %i.x, 0
  br i1 %.not176, label %.thread247, label %bb.g

bb.g:                                             ; preds = %getClusterHostFromCmdArgs.exit
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 616), align 8, !tbaa !150
  %.not177 = icmp ne ptr %i.y, null
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 624), align 8
  %i.aa = icmp sgt i32 %i.z, 0
  %or.cond305 = select i1 %.not177, i1 %i.aa, i1 false
  br i1 %or.cond305, label %.lr.ph, label %.loopexit256

.lr.ph:                                           ; preds = %bb.g, %bb.m
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ 0, %bb.g ] ; 2 uses
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 616), align 8, !tbaa !150
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !29 ; 4 uses
  %i.ae = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ad, i32 noundef 61) #34 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.420, ptr noundef nonnull %i.ad)
  br label %.thread247

bb.i:                                             ; preds = %.lr.ph
  store i8 0, ptr %i.ae, align 1, !tbaa !73
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ah = call double @strtod(ptr noundef nonnull captures(none) %i.ag, ptr noundef null) #32, !inline_history !151
  %i.ai = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %clusterManagerNodeByAbbreviatedName.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = call ptr @hi_sdsempty() #32
  %i.al = call ptr @hi_sdscpy(ptr noundef %i.ak, ptr noundef nonnull %i.ad) #32 ; 5 uses
  call void @hi_sdstolower(ptr noundef %i.al) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.am = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  call void @listRewind(ptr noundef %i.am, ptr noundef nonnull %3) #32
  %i.an = call ptr @listNext(ptr noundef nonnull %3) #32 ; 2 uses
  %.not19.i = icmp eq ptr %i.an, null
end_hunk_0
begin_hunk_1_@clusterManagerNodeLoadInfo:bb.a
bb.l:                                             ; preds = %bb.g, %bb.i, %bb.f, %bb.h, %bb.j, %bb.k
  %.2202.ph = phi ptr [ null, %bb.g ], [ null, %bb.i ], [ null, %bb.f ], [ null, %bb.h ], [ %i.ak, %bb.j ], [ %i.ak, %bb.k ] ; 2 uses
  %.ph = phi i1 [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.j ], [ true, %bb.k ]
  %.2197.ph = phi ptr [ null, %bb.g ], [ %i.ai, %bb.i ], [ null, %bb.f ], [ null, %bb.h ], [ %i.ai, %bb.j ], [ %i.ai, %bb.k ] ; 2 uses
  %.2189.ph = phi ptr [ null, %bb.g ], [ %i.ag, %bb.i ], [ null, %bb.f ], [ %i.ag, %bb.h ], [ %i.ag, %bb.j ], [ %i.ag, %bb.k ] ; 2 uses
  %.2183.ph = phi ptr [ %i.ae, %bb.g ], [ %i.ae, %bb.i ], [ null, %bb.f ], [ %i.ae, %bb.h ], [ %i.ae, %bb.j ], [ %i.ae, %bb.k ] ; 2 uses
  %.1168.ph = phi ptr [ %i.ag, %bb.g ], [ %i.ak, %bb.i ], [ %i.ae, %bb.f ], [ %i.ai, %bb.h ], [ %i.am, %bb.j ], [ %i.ao, %bb.k ] ; 2 uses
  %i.ap = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.aa, i32 noundef 64) #34 ; 3 uses
  %.not.i244 = icmp eq ptr %i.ap, null
  br i1 %.not.i244, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.ap, align 1, !tbaa !73
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.ar = call i64 @__isoc23_strtol(ptr noundef nonnull %i.aq, ptr noundef null, i32 noundef 10) #32, !inline_history !55
  %i.as = trunc i64 %i.ar to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0 = phi i32 [ 0, %bb.l ], [ %i.as, %bb.m ]    ; 3 uses
  %i.at = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.aa, i32 noundef 58) #34 ; 3 uses
  %.not17.i = icmp eq ptr %i.at, null
  br i1 %.not17.i, label %parseClusterNodeAddress.exit.thread, label %bb.o

parseClusterNodeAddress.exit.thread:              ; preds = %bb.n
  %i.au = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.av = call i64 @fwrite(ptr nonnull @.str.208, i64 35, i64 1, ptr %i.au) #33 ; 0 uses
  br label %clusterManagerCheckRedisReply.exit.thread

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.at, align 1, !tbaa !73
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.ax = call i64 @__isoc23_strtol(ptr noundef nonnull %i.aw, ptr noundef null, i32 noundef 10) #32, !inline_history !55
  %i.ay = trunc i64 %i.ax to i32                  ; 2 uses
  %i.az = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.ac, ptr noundef nonnull dereferenceable(1) @.str.209) #34
  %i.ba = icmp ne ptr %i.az, null                 ; 2 uses
  br i1 %i.ba, label %bb.p, label %bb.ad

bb.p:                                             ; preds = %bb.o
  store i32 %.0, ptr %i.q, align 4, !tbaa !84
  %i.bb = load i32, ptr %i.p, align 8, !tbaa !141
  %i.bc = or i32 %i.bb, 1
  store i32 %i.bc, ptr %i.p, align 8, !tbaa !141
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16388) %i.r, i8 0, i64 16388, i1 false)
  br i1 %.ph, label %bb.q, label %.thread337

bb.q:                                             ; preds = %bb.p
  %i.bd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1168.ph) #34
  %i.be = trunc i64 %i.bd to i32                  ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph273, label %.thread337

.lr.ph273:                                        ; preds = %bb.q, %.loopexit
  %.2169272 = phi ptr [ %.3170, %.loopexit ], [ %.1168.ph, %bb.q ] ; 9 uses
  %.0184271 = phi i32 [ %.1185, %.loopexit ], [ %i.be, %bb.q ] ; 2 uses
  %i.bg = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.2169272, i32 noundef 32) #34 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  %i.bi = zext nneg i32 %.0184271 to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %.2169272, i64 %i.bi
  %.0166 = select i1 %i.bh, ptr %i.bj, ptr %i.bg  ; 4 uses
  %i.bk = ptrtoint ptr %.0166 to i64
  %i.bl = ptrtoint ptr %.2169272 to i64
  %.neg = sub i64 %i.bl, %i.bk
  %i.bm = trunc i64 %.neg to i32
  %i.bn = add i32 %.0184271, %i.bm                ; 2 uses
  store i8 0, ptr %.0166, align 1, !tbaa !73
  %.not234 = icmp ne i32 %i.bn, 0
  %.1185 = call i32 @llvm.usub.sat.i32(i32 %i.bn, i32 1) ; 2 uses
  %.3170.idx = zext i1 %.not234 to i64
  %.3170 = getelementptr inbounds nuw i8, ptr %.0166, i64 %.3170.idx
  %i.bo = load i8, ptr %.2169272, align 1, !tbaa !73
  %i.bp = icmp eq i8 %i.bo, 91
  br i1 %i.bp, label %bb.r, label %bb.z

bb.r:                                             ; preds = %.lr.ph273
  %i.bq = getelementptr inbounds nuw i8, ptr %.2169272, i64 1 ; 4 uses
  %i.br = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.bq, ptr noundef nonnull dereferenceable(1) @.str.210) #34 ; 3 uses
  %.not237 = icmp eq ptr %i.br, null
  br i1 %.not237, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 0, ptr %i.br, align 1, !tbaa !73
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 3 ; 2 uses
  %i.bt = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bs, i32 noundef 93) #34 ; 2 uses
  %.not240 = icmp eq ptr %i.bt, null
  br i1 %.not240, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr %i.bt, align 1, !tbaa !73
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bu = call ptr @hi_sdsnew(ptr noundef nonnull %i.bq) #32
  %i.bv = call ptr @hi_sdsnew(ptr noundef nonnull %i.bs) #32
  %i.bw = load i32, ptr %i.t, align 8, !tbaa !195
  %i.bx = add nsw i32 %i.bw, 2                    ; 2 uses
  store i32 %i.bx, ptr %i.t, align 8, !tbaa !195
  %i.by = load ptr, ptr %i.u, align 8, !tbaa !196
  %i.bz = sext i32 %i.bx to i64
  %i.ca = shl nsw i64 %i.bz, 3
  %i.cb = call ptr @zrealloc(ptr noundef %i.by, i64 noundef %i.ca) #35 ; 2 uses
  store ptr %i.cb, ptr %i.u, align 8, !tbaa !196
  %i.cc = load i32, ptr %i.t, align 8, !tbaa !195
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr [8 x i8], ptr %i.cb, i64 %i.cd ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 -16
  store ptr %i.bu, ptr %i.cf, align 8, !tbaa !29
  %i.cg = getelementptr i8, ptr %i.ce, i64 -8
  store ptr %i.bv, ptr %i.cg, align 8, !tbaa !29
  br label %.loopexit

bb.v:                                             ; preds = %bb.r
  %i.ch = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.bq, ptr noundef nonnull dereferenceable(1) @.str.211) #34 ; 3 uses
  %.not238 = icmp eq ptr %i.ch, null
  br i1 %.not238, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.ch, align 1, !tbaa !73
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 3 ; 2 uses
  %i.cj = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ci, i32 noundef 93) #34 ; 2 uses
  %.not239 = icmp eq ptr %i.cj, null
  br i1 %.not239, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 0, ptr %i.cj, align 1, !tbaa !73
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ck = call ptr @hi_sdsnew(ptr noundef nonnull %i.bq) #32
  %i.cl = call ptr @hi_sdsnew(ptr noundef nonnull %i.ci) #32
  %i.cm = load i32, ptr %i.v, align 4, !tbaa !198
  %i.cn = add nsw i32 %i.cm, 2                    ; 2 uses
  store i32 %i.cn, ptr %i.v, align 4, !tbaa !198
  %i.co = load ptr, ptr %i.w, align 8, !tbaa !199
  %i.cp = sext i32 %i.cn to i64
  %i.cq = shl nsw i64 %i.cp, 3
  %i.cr = call ptr @zrealloc(ptr noundef %i.co, i64 noundef %i.cq) #35 ; 2 uses
  store ptr %i.cr, ptr %i.w, align 8, !tbaa !199
  %i.cs = load i32, ptr %i.v, align 4, !tbaa !198
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr [8 x i8], ptr %i.cr, i64 %i.ct ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 -16
  store ptr %i.ck, ptr %i.cv, align 8, !tbaa !29
  %i.cw = getelementptr i8, ptr %i.cu, i64 -8
  store ptr %i.cl, ptr %i.cw, align 8, !tbaa !29
  br label %.loopexit

bb.z:                                             ; preds = %.lr.ph273
  %i.cx = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.2169272, i32 noundef 45) #34 ; 3 uses
  %.not235 = icmp eq ptr %i.cx, null
  br i1 %.not235, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i8 0, ptr %i.cx, align 1, !tbaa !73
  %i.cy = call i64 @__isoc23_strtol(ptr noundef nonnull %.2169272, ptr noundef null, i32 noundef 10) #32, !inline_history !55 ; 2 uses
  %i.cz = trunc i64 %i.cy to i32                  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  %i.db = call i64 @__isoc23_strtol(ptr noundef nonnull %i.da, ptr noundef null, i32 noundef 10) #32, !inline_history !55
  %i.dc = trunc i64 %i.db to i32                  ; 2 uses
  %reass.sub = sub i32 %i.dc, %i.cz               ; 2 uses
  %i.dd = add i32 %reass.sub, 1
  %i.de = load i32, ptr %i.s, align 4, !tbaa !107
  %i.df = add nsw i32 %i.dd, %i.de
  store i32 %i.df, ptr %i.s, align 4, !tbaa !107
  %.not236269 = icmp sgt i32 %i.cz, %i.dc
  br i1 %.not236269, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.aa
  %sext313 = shl i64 %i.cy, 32
  %i.dg = ashr exact i64 %sext313, 32
  %scevgep287 = getelementptr i8, ptr %i.r, i64 %i.dg
  %i.dh = zext i32 %reass.sub to i64
  %i.di = add nuw nsw i64 %i.dh, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep287, i8 1, i64 %i.di, i1 false), !tbaa !73
  br label %.loopexit

bb.ab:                                            ; preds = %bb.z
  %i.dj = icmp ugt ptr %.0166, %.2169272
  br i1 %i.dj, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.dk = call i64 @__isoc23_strtol(ptr noundef nonnull %.2169272, ptr noundef null, i32 noundef 10) #32, !inline_history !55
  %sext = shl i64 %i.dk, 32
  %i.dl = ashr exact i64 %sext, 32
  %i.dm = getelementptr inbounds i8, ptr %i.r, i64 %i.dl
  store i8 1, ptr %i.dm, align 1, !tbaa !73
  %i.dn = load i32, ptr %i.s, align 4, !tbaa !107
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %i.s, align 4, !tbaa !107
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.preheader, %bb.aa, %bb.ac, %bb.ab, %bb.u, %bb.y, %bb.v
  %i.dp = icmp sgt i32 %.1185, 0
  br i1 %i.dp, label %.lr.ph273, label %bb.ah, !llvm.loop !452

bb.ad:                                            ; preds = %bb.o
  br i1 %.not223, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dq = load i32, ptr %i.p, align 8, !tbaa !141
  %i.dr = and i32 %i.dq, 1
  %.not224 = icmp eq i32 %i.dr, 0
  br i1 %.not224, label %select.unfold257, label %.clusterManagerCheckRedisReply.exit.thread.loopexit_crit_edge281, !llvm.loop !453

bb.af:                                            ; preds = %bb.ad
  %i.ds = call ptr @hi_sdsnew(ptr noundef nonnull %i.aa) #32
  %i.dt = call noalias dereferenceable_or_null(16520) ptr @zmalloc(i64 noundef 16520) #36 ; 14 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i8 0, i64 16, i1 false)
  store ptr %i.ds, ptr %i.du, align 8, !tbaa !80
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  store i32 %i.ay, ptr %i.dv, align 8, !tbaa !83
  %.not.i245 = icmp eq i32 %.0, 0
  %i.dw = add nsw i32 %i.ay, 10000
  %i.dx = select i1 %.not.i245, i32 %i.dw, i32 %.0
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 28
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !84
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 16480
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dt, i64 16472
  store i32 0, ptr %i.ec, align 8, !tbaa !85
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dt, i64 16512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dz, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ea, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eb, i8 0, i64 32, i1 false)
  store float 1.000000e+00, ptr %i.ed, align 8, !tbaa !86
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dt, i64 16516
  store i32 0, ptr %i.ee, align 4, !tbaa !87
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dt, i64 84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16388) %i.ef, i8 0, i64 16388, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dt, i64 56
  store i32 4, ptr %i.eg, align 8, !tbaa !141
  %i.eh = load ptr, ptr %i.o, align 8, !tbaa !446 ; 2 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %bb.ag, label %.thread331

bb.ag:                                            ; preds = %bb.af
  %i.ej = call ptr @listCreate() #32              ; 2 uses
  store ptr %i.ej, ptr %i.o, align 8, !tbaa !446
  br label %.thread331

.thread331:                                       ; preds = %bb.af, %bb.ag
  %i.ek = phi ptr [ %i.ej, %bb.ag ], [ %i.eh, %bb.af ]
  %i.el = call ptr @listAddNodeTail(ptr noundef %i.ek, ptr noundef nonnull %i.dt) #32 ; 0 uses
  br label %bb.ai

.thread337:                                       ; preds = %bb.p, %bb.q
  store i32 0, ptr %i.x, align 8, !tbaa !111
  br label %bb.ai

bb.ah:                                            ; preds = %.loopexit
  store i32 0, ptr %i.x, align 8, !tbaa !111
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.thread337, %.thread331
  %.0186334 = phi ptr [ %i.dt, %.thread331 ], [ %0, %bb.ah ], [ %0, %.thread337 ] ; 7 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0186334, i64 8 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !119 ; 2 uses
  %.not226 = icmp eq ptr %i.en, null
  br i1 %.not226, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @hi_sdsfree(ptr noundef nonnull %i.en) #32
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.eo = call ptr @hi_sdsnew(ptr noundef nonnull %.0164278) #32
  store ptr %i.eo, ptr %i.em, align 8, !tbaa !119
  %i.ep = getelementptr inbounds nuw i8, ptr %.0186334, i64 64 ; 3 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !450 ; 3 uses
  %.not227 = icmp eq ptr %i.eq, null
  br i1 %.not227, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @listRewind(ptr noundef nonnull %i.eq, ptr noundef nonnull %3) #32
  %i.er = call ptr @listNext(ptr noundef nonnull %3) #32 ; 2 uses
  %.not4.i = icmp eq ptr %i.er, null
  br i1 %.not4.i, label %freeClusterManagerNodeFlags.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.al, %.lr.ph.i
  %i.es = phi ptr [ %i.ev, %.lr.ph.i ], [ %i.er, %bb.al ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !102
  call void @hi_sdsfree(ptr noundef %i.eu) #32
  %i.ev = call ptr @listNext(ptr noundef nonnull %3) #32 ; 2 uses
  %.not.i246 = icmp eq ptr %i.ev, null
  br i1 %.not.i246, label %freeClusterManagerNodeFlags.exit, label %.lr.ph.i, !llvm.loop !451

freeClusterManagerNodeFlags.exit:                 ; preds = %.lr.ph.i, %bb.al
  call void @listRelease(ptr noundef nonnull %i.eq) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.am

bb.am:                                            ; preds = %freeClusterManagerNodeFlags.exit, %bb.ak
  %i.ew = call ptr @listCreate() #32
  store ptr %i.ew, ptr %i.ep, align 8, !tbaa !450
  %i.ex = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ac) #34 ; 2 uses
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = icmp sgt i32 %i.ey, 0
  br i1 %i.ez, label %.lr.ph275, label %._crit_edge

.lr.ph275:                                        ; preds = %bb.am
  %i.fa = getelementptr inbounds nuw i8, ptr %.0186334, i64 56 ; 8 uses
  %.not232 = icmp eq ptr %.2183.ph, null
  %i.fb = getelementptr inbounds nuw i8, ptr %.0186334, i64 72 ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph275, %bb.bb
  %i.fc = phi i64 [ %i.ex, %.lr.ph275 ], [ %i.gd, %bb.bb ]
  %.3180274 = phi ptr [ %i.ac, %.lr.ph275 ], [ %.4, %bb.bb ] ; 4 uses
  %i.fd = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.3180274, i32 noundef 44) #34 ; 3 uses
  %.not231 = icmp eq ptr %i.fd, null
  br i1 %.not231, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i8 0, ptr %i.fd, align 1, !tbaa !73
  %i.fe = call ptr @hi_sdsnew(ptr noundef nonnull %.3180274) #32
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.fg = call ptr @hi_sdsnew(ptr noundef nonnull %.3180274) #32
  %i.fh = and i64 %i.fc, 2147483647
  %i.fi = getelementptr inbounds nuw i8, ptr %.3180274, i64 %i.fh
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.4 = phi ptr [ %i.ff, %bb.ao ], [ %i.fi, %bb.ap ] ; 2 uses
  %.0162 = phi ptr [ %i.fe, %bb.ao ], [ %i.fg, %bb.ap ] ; 5 uses
  %i.fj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0162, ptr noundef nonnull dereferenceable(7) @.str.212) #34
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fl = load i32, ptr %i.fa, align 8, !tbaa !141
  %i.fm = or i32 %i.fl, 8
  store i32 %i.fm, ptr %i.fa, align 8, !tbaa !141
  br label %bb.bb

bb.as:                                            ; preds = %bb.aq
  %i.fn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0162, ptr noundef nonnull dereferenceable(13) @.str.213) #34
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.fp = load i32, ptr %i.fa, align 8, !tbaa !141
  %i.fq = or i32 %i.fp, 16
  store i32 %i.fq, ptr %i.fa, align 8, !tbaa !141
  br label %bb.bb

bb.au:                                            ; preds = %bb.as
  %i.fr = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0162, ptr noundef nonnull dereferenceable(5) @.str.214) #34
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ft = load i32, ptr %i.fa, align 8, !tbaa !141
  %i.fu = or i32 %i.ft, 32
  store i32 %i.fu, ptr %i.fa, align 8, !tbaa !141
  br label %bb.bb

bb.aw:                                            ; preds = %bb.au
  %i.fv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0162, ptr noundef nonnull dereferenceable(6) @.str.215) #34
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.fx = load i32, ptr %i.fa, align 8, !tbaa !141
  %i.fy = or i32 %i.fx, 2
  store i32 %i.fy, ptr %i.fa, align 8, !tbaa !141
  br i1 %.not232, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fz = load ptr, ptr %i.fb, align 8, !tbaa !118 ; 2 uses
  %.not233 = icmp eq ptr %i.fz, null
  br i1 %.not233, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @hi_sdsfree(ptr noundef nonnull %i.fz) #32
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ga = call ptr @hi_sdsnew(ptr noundef nonnull %.2183.ph) #32
  store ptr %i.ga, ptr %i.fb, align 8, !tbaa !118
  br label %bb.bb

bb.bb:                                            ; preds = %bb.at, %bb.aw, %bb.ba, %bb.ax, %bb.av, %bb.ar
  %i.gb = load ptr, ptr %i.ep, align 8, !tbaa !450
  %i.gc = call ptr @listAddNodeTail(ptr noundef %i.gb, ptr noundef nonnull %.0162) #32 ; 0 uses
  %i.gd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.4) #34 ; 2 uses
  %i.ge = trunc i64 %i.gd to i32
  %i.gf = icmp sgt i32 %i.ge, 0
  br i1 %i.gf, label %bb.an, label %._crit_edge, !llvm.loop !454

._crit_edge:                                      ; preds = %bb.bb, %bb.am
  %.not228 = icmp eq ptr %.2202.ph, null
  br i1 %.not228, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge
end_hunk_1
begin_hunk_2_@clusterManagerLoadInfoFromNode:bb.a
  tail call fastcc void @freeClusterManagerNode(ptr noundef nonnull %0)
  br label %bb.af

bb.h:                                             ; preds = %clusterManagerNodeIsCluster.exit
  %i.z = call fastcc i32 @clusterManagerNodeLoadInfo(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %i.a)
  %.not47 = icmp eq i32 %i.z, 0
  br i1 %.not47, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !29  ; 3 uses
  %.not48 = icmp eq ptr %i.aa, null
  br i1 %.not48, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !80
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !83
  tail call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.ac, i32 noundef %i.ae, ptr noundef nonnull %i.aa)
  tail call void @zfree(ptr noundef nonnull %i.aa) #32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call fastcc void @freeClusterManagerNode(ptr noundef nonnull %0)
  br label %bb.af

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.af = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77 ; 2 uses
  %.not49 = icmp eq ptr %i.af, null
  br i1 %.not49, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @listRewind(ptr noundef nonnull %i.af, ptr noundef nonnull %1) #32
  %i.ag = call ptr @listNext(ptr noundef nonnull %1) #32 ; 2 uses
  %.not5069 = icmp eq ptr %i.ag, null
  br i1 %.not5069, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %.lr.ph
  %i.ah = phi ptr [ %i.ak, %.lr.ph ], [ %i.ag, %bb.m ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !102
  call fastcc void @freeClusterManagerNode(ptr noundef %i.aj)
  %i.ak = call ptr @listNext(ptr noundef nonnull %1) #32 ; 2 uses
  %.not50 = icmp eq ptr %i.ak, null
  br i1 %.not50, label %._crit_edge, label %.lr.ph, !llvm.loop !478

._crit_edge:                                      ; preds = %.lr.ph, %bb.m
  %i.al = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  call void @listRelease(ptr noundef %i.al) #32
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.l
  %i.am = call ptr @listCreate() #32              ; 2 uses
  store ptr %i.am, ptr @cluster_manager.0, align 8, !tbaa !77
  %i.an = call ptr @listAddNodeTail(ptr noundef %i.am, ptr noundef nonnull %0) #32 ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16480 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !446 ; 2 uses
  %.not51 = icmp eq ptr %i.ap, null
  br i1 %.not51, label %bb.aa, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @listRewind(ptr noundef nonnull %i.ap, ptr noundef nonnull %1) #32
  %i.aq = call ptr @listNext(ptr noundef nonnull %1) #32 ; 2 uses
  %.not5270 = icmp eq ptr %i.aq, null
  br i1 %.not5270, label %._crit_edge73, label %.lr.ph72

.lr.ph72:                                         ; preds = %bb.o, %bb.z
  %i.ar = phi ptr [ %i.bn, %bb.z ], [ %i.aq, %bb.o ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !102 ; 9 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !80
  %.not55 = icmp eq ptr %i.av, null
  br i1 %.not55, label %bb.w, label %bb.p

bb.p:                                             ; preds = %.lr.ph72
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !83
  %.not56 = icmp eq i32 %i.ax, 0
  br i1 %.not56, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !88
  %.not57 = icmp eq ptr %i.ay, null
  br i1 %.not57, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.az = call fastcc i32 @clusterManagerNodeConnect(ptr noundef nonnull %i.at)
  %.not58 = icmp eq i32 %i.az, 0
  br i1 %.not58, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ba = call fastcc i32 @clusterManagerNodeLoadInfo(ptr noundef nonnull %i.at, i32 noundef 0, ptr noundef %i.a)
  %.not59 = icmp eq i32 %i.ba, 0
  br i1 %.not59, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !141
  %i.bd = and i32 %i.bc, 56
  %.not60 = icmp eq i32 %i.bd, 0
  br i1 %.not60, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.be = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  %i.bf = call ptr @listAddNodeTail(ptr noundef %i.be, ptr noundef nonnull %i.at) #32 ; 0 uses
  br label %bb.z, !llvm.loop !479

bb.v:                                             ; preds = %bb.s
  %i.bg = load ptr, ptr %i.au, align 8, !tbaa !80
  %i.bh = load i32, ptr %i.aw, align 8, !tbaa !83
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.264, ptr noundef %i.bg, i32 noundef %i.bh)
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.r, %.lr.ph72, %bb.p, %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !141
  %i.bk = and i32 %i.bj, 2
  %.not61 = icmp eq i32 %i.bk, 0
  br i1 %.not61, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bl = load i32, ptr @cluster_manager.2, align 8, !tbaa !480
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr @cluster_manager.2, align 8, !tbaa !480
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call fastcc void @freeClusterManagerNode(ptr noundef nonnull %i.at)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.u
  %i.bn = call ptr @listNext(ptr noundef nonnull %1) #32 ; 2 uses
  %.not52 = icmp eq ptr %i.bn, null
  br i1 %.not52, label %._crit_edge73, label %.lr.ph72

._crit_edge73:                                    ; preds = %bb.z, %bb.o
  %i.bo = load ptr, ptr %i.ao, align 8, !tbaa !446
  call void @listRelease(ptr noundef %i.bo) #32
  store ptr null, ptr %i.ao, align 8, !tbaa !446
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge73, %bb.n
  %i.bp = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  call void @listRewind(ptr noundef %i.bp, ptr noundef nonnull %1) #32
  %i.bq = call ptr @listNext(ptr noundef nonnull %1) #32 ; 2 uses
  %.not5374 = icmp eq ptr %i.bq, null
  br i1 %.not5374, label %._crit_edge77, label %.lr.ph76

.lr.ph76:                                         ; preds = %bb.aa, %bb.ae
  %i.br = phi ptr [ %i.cg, %bb.ae ], [ %i.bq, %bb.aa ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !102 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 72 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !118 ; 2 uses
  %.not54 = icmp eq ptr %i.bv, null
  br i1 %.not54, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph76
  %i.bw = call fastcc ptr @clusterManagerNodeByName(ptr noundef nonnull %i.bv) ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !80
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !83
  %i.cc = load ptr, ptr %i.bu, align 8, !tbaa !118
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 2, ptr noundef nonnull @.str.265, ptr noundef %i.bz, i32 noundef %i.cb, ptr noundef %i.cc)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 16472 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !85
  %i.cf = add nsw i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cd, align 8, !tbaa !85
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %.lr.ph76
  %i.cg = call ptr @listNext(ptr noundef nonnull %1) #32 ; 2 uses
  %.not53 = icmp eq ptr %i.cg, null
  br i1 %.not53, label %._crit_edge77, label %.lr.ph76, !llvm.loop !481

._crit_edge77:                                    ; preds = %bb.ae, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge77, %bb.k, %bb.g
  %.0 = phi i32 [ 1, %._crit_edge77 ], [ 0, %bb.k ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.c
  %.1 = phi i32 [ %.0, %bb.af ], [ 0, %bb.c ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @clusterManagerCheckCluster(i32 noundef range(i32 0, 2) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.listIter, align 8           ; 6 uses
  %i.a = alloca [4 x i8], align 1                 ; 6 uses
  %i.b = alloca [4 x i8], align 1                 ; 6 uses
  %2 = alloca %struct.listIter, align 8           ; 7 uses
  %i.c = alloca [4 x i8], align 1                 ; 6 uses
  %3 = alloca %struct.listIter, align 8           ; 6 uses
  %4 = alloca %struct.dictIterator, align 8       ; 7 uses
  %5 = alloca %struct.listIter, align 8           ; 6 uses
  %6 = alloca %struct.listIter, align 8           ; 6 uses
  %7 = alloca %struct.listIter, align 8           ; 5 uses
  %8 = alloca %struct.listIter, align 8           ; 7 uses
  %9 = alloca %struct.listIter, align 8           ; 6 uses
  %10 = alloca %struct.listIter, align 8          ; 4 uses
  %11 = alloca %struct.listIter, align 8          ; 4 uses
  %12 = alloca %struct.listIter, align 8          ; 4 uses
  %13 = alloca %struct.listIter, align 8          ; 4 uses
  %14 = alloca %struct.listIter, align 8          ; 17 uses
  %15 = alloca %struct.listIter, align 8          ; 12 uses
  %16 = alloca %struct.listIter, align 8          ; 5 uses
  %17 = alloca %struct.listIter, align 8          ; 5 uses
  %18 = alloca %struct.dictIterator, align 8      ; 11 uses
  %i.d = alloca [16384 x i8], align 16            ; 12 uses
  %19 = alloca %struct.dictType, align 8          ; 6 uses
  %20 = alloca %struct.listIter, align 8          ; 9 uses
  %i.e = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !165  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.hb, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !102  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !83
  tail call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 1, ptr noundef nonnull @.str.266, ptr noundef %i.j, i32 noundef %i.l)
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 592), align 8, !tbaa !126
  %i.n = and i32 %i.m, 1                          ; 3 uses
  %.not130 = icmp eq i32 %0, 0
  br i1 %.not130, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.o = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  call void @listRewind(ptr noundef %i.o, ptr noundef nonnull %16) #32
  %i.p = call ptr @listNext(ptr noundef nonnull %16) #32 ; 2 uses
  %.not4.i = icmp eq ptr %i.p, null
  br i1 %.not4.i, label %clusterManagerShowNodes.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.q = phi ptr [ %i.u, %.lr.ph.i ], [ %i.p, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !102
  %i.t = call fastcc ptr @clusterManagerNodeInfo(ptr noundef %i.s, i32 noundef 0) ; 2 uses
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) %i.t) ; 0 uses
  call void @hi_sdsfree(ptr noundef nonnull %i.t) #32
  %i.u = call ptr @listNext(ptr noundef nonnull %16) #32 ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %clusterManagerShowNodes.exit, label %.lr.ph.i, !llvm.loop !125

clusterManagerShowNodes.exit:                     ; preds = %.lr.ph.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br label %bb.d

bb.d:                                             ; preds = %clusterManagerShowNodes.exit, %bb.b
  %i.v = call fastcc i32 @clusterManagerIsConfigConsistent()
  %.not131 = icmp eq i32 %i.v, 0
  br i1 %.not131, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.w = call ptr @hi_sdsnew(ptr noundef nonnull @.str.267) #32 ; 2 uses
  %i.x = load ptr, ptr @cluster_manager.1, align 8, !tbaa !134 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.f, label %clusterManagerOnError.exit

bb.f:                                             ; preds = %bb.e
  %i.z = call ptr @listCreate() #32               ; 2 uses
  store ptr %i.z, ptr @cluster_manager.1, align 8, !tbaa !134
  br label %clusterManagerOnError.exit

clusterManagerOnError.exit:                       ; preds = %bb.e, %bb.f
  %i.aa = phi ptr [ %i.z, %bb.f ], [ %i.x, %bb.e ]
  %i.ab = call ptr @listAddNodeTail(ptr noundef %i.aa, ptr noundef %i.w) #32 ; 0 uses
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.4, ptr noundef %i.w)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 4, ptr noundef nonnull @.str.268)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %clusterManagerOnError.exit
  %.0103 = phi i32 [ 1, %bb.g ], [ 0, %clusterManagerOnError.exit ] ; 2 uses
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 1, ptr noundef nonnull @.str.269)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  %i.ac = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  call void @listRewind(ptr noundef %i.ac, ptr noundef nonnull %17) #32
  %i.ad = call ptr @listNext(ptr noundef nonnull %17) #32 ; 2 uses
  %.not132345 = icmp eq ptr %i.ad, null
  br i1 %.not132345, label %._crit_edge349.thread, label %.lr.ph348

.lr.ph348:                                        ; preds = %bb.h, %bb.r
  %i.ae = phi ptr [ %i.dh, %bb.r ], [ %i.ad, %bb.h ]
  %.0113346 = phi ptr [ %.4117, %bb.r ], [ null, %bb.h ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !102 ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16488 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !196
  %.not147 = icmp eq ptr %i.ai, null
  br i1 %.not147, label %bb.m, label %bb.i

bb.i:                                             ; preds = %.lr.ph348
  %i.aj = icmp eq ptr %.0113346, null
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = call ptr @dictCreate(ptr noundef nonnull @clusterManagerDictType) #32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1114 = phi ptr [ %i.ak, %bb.j ], [ %.0113346, %bb.i ] ; 3 uses
  %i.al = call ptr @hi_sdsempty() #32
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !80
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !83
  %i.aq = call ptr (ptr, ptr, ...) @hi_sdscatprintf(ptr noundef %i.al, ptr noundef nonnull @.str.270, ptr noundef %i.an, i32 noundef %i.ap) #32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 16504 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !195
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !196 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !29 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !29
  %i.ay = call ptr @hi_sdsdup(ptr noundef %i.ax) #32
  %i.az = call i32 @dictReplace(ptr noundef %.1114, ptr noundef %i.av, ptr noundef %i.ay) #32 ; 0 uses
  %i.ba = call ptr (ptr, ptr, ...) @hi_sdscatfmt(ptr noundef %i.aq, ptr noundef nonnull @.str.246, ptr noundef %i.av) #32 ; 2 uses
  %i.bb = load i32, ptr %i.ar, align 8, !tbaa !195
  %i.bc = icmp sgt i32 %i.bb, 2
  br i1 %i.bc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 2, %.lr.ph.preheader ] ; 2 uses
  %.0118337 = phi ptr [ %i.bk, %.lr.ph ], [ %i.ba, %.lr.ph.preheader ]
  %i.bd = load ptr, ptr %i.ah, align 8, !tbaa !196
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !29 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !29
  %i.bi = call ptr @hi_sdsdup(ptr noundef %i.bh) #32
  %i.bj = call i32 @dictReplace(ptr noundef %.1114, ptr noundef %i.bf, ptr noundef %i.bi) #32 ; 0 uses
  %i.bk = call ptr (ptr, ptr, ...) @hi_sdscatfmt(ptr noundef %.0118337, ptr noundef nonnull @.str.271, ptr noundef %i.bf) #32 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bl = load i32, ptr %i.ar, align 8, !tbaa !195
  %i.bm = trunc nuw i64 %indvars.iv.next to i32
  %i.bn = icmp sgt i32 %i.bl, %i.bm
  br i1 %i.bn, label %.lr.ph, label %._crit_edge, !llvm.loop !482

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.preheader, %bb.k
  %.0118.lcssa = phi ptr [ %i.aq, %bb.k ], [ %i.ba, %.lr.ph.preheader ], [ %i.bk, %.lr.ph ]
  %i.bo = call ptr @hi_sdscat(ptr noundef %.0118.lcssa, ptr noundef nonnull @.str.253) #32 ; 2 uses
  %i.bp = load ptr, ptr @cluster_manager.1, align 8, !tbaa !134 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.l, label %clusterManagerOnError.exit151

bb.l:                                             ; preds = %._crit_edge
  %i.br = call ptr @listCreate() #32              ; 2 uses
  store ptr %i.br, ptr @cluster_manager.1, align 8, !tbaa !134
  br label %clusterManagerOnError.exit151

clusterManagerOnError.exit151:                    ; preds = %._crit_edge, %bb.l
  %i.bs = phi ptr [ %i.br, %bb.l ], [ %i.bp, %._crit_edge ]
  %i.bt = call ptr @listAddNodeTail(ptr noundef %i.bs, ptr noundef %i.bo) #32 ; 0 uses
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.4, ptr noundef %i.bo)
  br label %bb.m

bb.m:                                             ; preds = %clusterManagerOnError.exit151, %.lr.ph348
  %.2115 = phi ptr [ %.1114, %clusterManagerOnError.exit151 ], [ %.0113346, %.lr.ph348 ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ag, i64 16496 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !199
  %.not148 = icmp eq ptr %i.bv, null
  br i1 %.not148, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = icmp eq ptr %.2115, null
  br i1 %i.bw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bx = call ptr @dictCreate(ptr noundef nonnull @clusterManagerDictType) #32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.3116 = phi ptr [ %i.bx, %bb.o ], [ %.2115, %bb.n ] ; 3 uses
  %i.by = call ptr @hi_sdsempty() #32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !80
end_hunk_2
begin_hunk_3_@clusterManagerCheckCluster:bb.a
  %.not140367 = icmp eq ptr %i.adt, null
  br i1 %.not140367, label %._crit_edge370, label %.lr.ph369

.lr.ph369:                                        ; preds = %bb.gc
  %i.adu = trunc nuw nsw i64 %indvars.iv503 to i32
  br label %bb.gd

bb.gd:                                            ; preds = %.lr.ph369, %clusterManagerCountKeysInSlot.exit.thread
  %i.adv = phi ptr [ %i.adt, %.lr.ph369 ], [ %i.aet, %clusterManagerCountKeysInSlot.exit.thread ]
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 16
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !102 ; 7 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 56
  %i.adz = load i32, ptr %i.ady, align 8, !tbaa !141
  %i.aea = and i32 %i.adz, 2
  %.not144 = icmp eq i32 %i.aea, 0
  br i1 %.not144, label %bb.ge, label %clusterManagerCountKeysInSlot.exit.thread, !llvm.loop !513

bb.ge:                                            ; preds = %bb.gd
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adx, i64 84
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 %indvars.iv503
  %i.aed = load i8, ptr %i.aec, align 1, !tbaa !73
  %.not145 = icmp eq i8 %i.aed, 0
  br i1 %.not145, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.aee = call ptr @listAddNodeTail(ptr noundef %i.ads, ptr noundef nonnull %i.adx) #32 ; 0 uses
  br label %clusterManagerCountKeysInSlot.exit.thread

bb.gg:                                            ; preds = %bb.ge
  %i.aef = load ptr, ptr %i.adx, align 8, !tbaa !88
  %i.aeg = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.aef, ptr noundef nonnull @.str.285, i32 noundef %i.adu) #32 ; 6 uses
  %.not.i.i176 = icmp eq ptr %i.aeg, null
  br i1 %.not.i.i176, label %clusterManagerCountKeysInSlot.exit.thread, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.aeh = load i32, ptr %i.aeg, align 8, !tbaa !41
  switch i32 %i.aeh, label %clusterManagerCountKeysInSlot.exit.thread204 [
    i32 6, label %bb.gi
    i32 3, label %clusterManagerCountKeysInSlot.exit
  ]

bb.gi:                                            ; preds = %bb.gh
  %i.aei = getelementptr inbounds nuw i8, ptr %i.adx, i64 16
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !80
  %i.aek = getelementptr inbounds nuw i8, ptr %i.adx, i64 24
  %i.ael = load i32, ptr %i.aek, align 8, !tbaa !83
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aeg, i64 32
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !42
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.aej, i32 noundef %i.ael, ptr noundef %i.aen)
  br label %clusterManagerCountKeysInSlot.exit.thread204

clusterManagerCountKeysInSlot.exit.thread204:     ; preds = %bb.gi, %bb.gh
  call void @freeReplyObject(ptr noundef nonnull %i.aeg) #32
  br label %clusterManagerCountKeysInSlot.exit.thread

clusterManagerCountKeysInSlot.exit:               ; preds = %bb.gh
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aeg, i64 8
  %i.aep = load i64, ptr %i.aeo, align 8, !tbaa !180
  %i.aeq = trunc i64 %i.aep to i32
  call void @freeReplyObject(ptr noundef nonnull %i.aeg) #32
  %i.aer = icmp sgt i32 %i.aeq, 0
  br i1 %i.aer, label %bb.gj, label %clusterManagerCountKeysInSlot.exit.thread

bb.gj:                                            ; preds = %clusterManagerCountKeysInSlot.exit
  %i.aes = call ptr @listAddNodeTail(ptr noundef %i.ads, ptr noundef nonnull %i.adx) #32 ; 0 uses
  br label %clusterManagerCountKeysInSlot.exit.thread

clusterManagerCountKeysInSlot.exit.thread:        ; preds = %bb.gg, %clusterManagerCountKeysInSlot.exit.thread204, %bb.gf, %bb.gj, %clusterManagerCountKeysInSlot.exit, %bb.gd
  %i.aet = call ptr @listNext(ptr noundef nonnull %20) #32 ; 2 uses
  %.not140 = icmp eq ptr %i.aet, null
  br i1 %.not140, label %._crit_edge370, label %bb.gd

._crit_edge370:                                   ; preds = %clusterManagerCountKeysInSlot.exit.thread, %bb.gc
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.ads, i64 40 ; 2 uses
  %i.aev = load i64, ptr %i.aeu, align 8, !tbaa !90 ; 2 uses
  %i.aew = icmp ugt i64 %i.aev, 1
  br i1 %i.aew, label %bb.gk, label %bb.gy

bb.gk:                                            ; preds = %._crit_edge370
  %i.aex = trunc nuw nsw i64 %indvars.iv503 to i32 ; 10 uses
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.279, i32 noundef %i.aex, i64 noundef %i.aev)
  call void @listRewind(ptr noundef nonnull %i.ads, ptr noundef nonnull %20) #32
  %i.aey = call ptr @listNext(ptr noundef nonnull %20) #32 ; 2 uses
  %.not141371 = icmp eq ptr %i.aey, null
  br i1 %.not141371, label %._crit_edge374, label %.lr.ph373

.lr.ph373:                                        ; preds = %bb.gk, %.lr.ph373
  %i.aez = phi ptr [ %i.afg, %.lr.ph373 ], [ %i.aey, %bb.gk ]
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 16
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !102 ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 16
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !80
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afb, i64 24
  %i.aff = load i32, ptr %i.afe, align 8, !tbaa !83
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.280, ptr noundef %i.afd, i32 noundef %i.aff)
  %i.afg = call ptr @listNext(ptr noundef nonnull %20) #32 ; 2 uses
  %.not141 = icmp eq ptr %i.afg, null
  br i1 %.not141, label %._crit_edge374, label %.lr.ph373, !llvm.loop !514

._crit_edge374:                                   ; preds = %.lr.ph373, %bb.gk
  %i.afh = add nsw i32 %.0105381, 1               ; 2 uses
  br i1 %.not142, label %bb.gy, label %bb.gl

bb.gl:                                            ; preds = %._crit_edge374
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 1, ptr noundef nonnull @.str.361, i32 noundef range(i32 -2147483648, 16384) %i.aex)
  %i.afi = load i64, ptr %i.aeu, align 8, !tbaa !90
  %i.afj = icmp ugt i64 %i.afi, 1
  br i1 %i.afj, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  call void @__assert_fail(ptr noundef nonnull @.str.362, ptr noundef nonnull @.str.7, i32 noundef 6664, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerFixMultipleSlotOwners) #37
  unreachable

bb.gn:                                            ; preds = %bb.gl
  %i.afk = call fastcc ptr @clusterManagerGetNodeWithMostKeysInSlot(ptr noundef nonnull %i.ads, i32 noundef range(i32 -2147483648, 16384) %i.aex) ; 2 uses
  %.not.i178 = icmp eq ptr %i.afk, null
  br i1 %.not.i178, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.afl = load ptr, ptr %i.ads, align 8, !tbaa !165
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 16
  %i.afn = load ptr, ptr %i.afm, align 8, !tbaa !102
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %.038.i = phi ptr [ %i.afk, %bb.gn ], [ %i.afn, %bb.go ] ; 6 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %.038.i, i64 16
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !80
  %i.afq = getelementptr inbounds nuw i8, ptr %.038.i, i64 24
  %i.afr = load i32, ptr %i.afq, align 8, !tbaa !83
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 1, ptr noundef nonnull @.str.363, i32 noundef range(i32 -2147483648, 16384) %i.aex, ptr noundef %i.afp, i32 noundef %i.afr)
  %i.afs = call fastcc i32 @clusterManagerSetSlotOwner(ptr noundef %.038.i, i32 noundef range(i32 -2147483648, 16384) %i.aex, i32 noundef 0)
  %.not46.i = icmp eq i32 %i.afs, 0
  br i1 %.not46.i, label %clusterManagerFixMultipleSlotOwners.exit.thread, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.aft = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  call void @listRewind(ptr noundef %i.aft, ptr noundef nonnull %1) #32
  %i.afu = getelementptr i8, ptr %.038.i, i64 8
  %i.afv = call ptr @listNext(ptr noundef nonnull %1) #32 ; 2 uses
  %.not47.i375 = icmp eq ptr %i.afv, null
  br i1 %.not47.i375, label %clusterManagerFixMultipleSlotOwners.exit.thread.sink.split, label %.lr.ph378

.lr.ph378:                                        ; preds = %bb.gq, %.backedge.i
  %i.afw = phi ptr [ %i.agq, %.backedge.i ], [ %i.afv, %bb.gq ]
  %.033.i376 = phi i32 [ %.033.be.i, %.backedge.i ], [ 0, %bb.gq ] ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 16
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !102 ; 8 uses
  %i.afz = icmp eq ptr %i.afy, %.038.i
  br i1 %i.afz, label %.backedge.i, label %bb.gr, !llvm.loop !515

bb.gr:                                            ; preds = %.lr.ph378
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afy, i64 56
  %i.agb = load i32, ptr %i.aga, align 8, !tbaa !141
  %i.agc = and i32 %i.agb, 2
  %.not48.i = icmp eq i32 %i.agc, 0
  br i1 %.not48.i, label %bb.gs, label %.backedge.i, !llvm.loop !515

bb.gs:                                            ; preds = %bb.gr
  %i.agd = load ptr, ptr %i.afy, align 8, !tbaa !88
  %i.age = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.agd, ptr noundef nonnull @.str.285, i32 noundef range(i32 -2147483648, 16384) %i.aex) #32 ; 6 uses
  %.not.i.i.i179 = icmp eq ptr %i.age, null
  br i1 %.not.i.i.i179, label %clusterManagerFixMultipleSlotOwners.exit.thread.sink.split, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.agf = load i32, ptr %i.age, align 8, !tbaa !41
  switch i32 %i.agf, label %.thread.sink.split.i [
    i32 6, label %.thread.sink.split.sink.split.i
    i32 3, label %clusterManagerCountKeysInSlot.exit.i180
  ]

clusterManagerCountKeysInSlot.exit.i180:          ; preds = %bb.gt
  %i.agg = getelementptr inbounds nuw i8, ptr %i.age, i64 8
  %i.agh = load i64, ptr %i.agg, align 8, !tbaa !180
  %i.agi = trunc i64 %i.agh to i32                ; 2 uses
  call void @freeReplyObject(ptr noundef nonnull %i.age) #32
  %i.agj = icmp sgt i32 %i.agi, -1
  br i1 %i.agj, label %bb.gu, label %clusterManagerFixMultipleSlotOwners.exit.thread.sink.split

bb.gu:                                            ; preds = %clusterManagerCountKeysInSlot.exit.i180
  %i.agk = call fastcc i32 @clusterManagerDelSlot(ptr noundef nonnull %i.afy, i32 noundef range(i32 -2147483648, 16384) %i.aex) ; 0 uses
  %.038.val.i = load ptr, ptr %i.afu, align 8, !tbaa !119
  %i.agl = load ptr, ptr %i.afy, align 8, !tbaa !88
  %i.agm = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.agl, ptr noundef nonnull @.str.320, i32 noundef range(i32 -2147483648, 16384) %i.aex, ptr noundef nonnull @.str.295, ptr noundef %.038.val.i) #32 ; 4 uses
  %.not24.i.i182 = icmp eq ptr %i.agm, null
  br i1 %.not24.i.i182, label %clusterManagerFixMultipleSlotOwners.exit.thread.sink.split, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.agn = load i32, ptr %i.agm, align 8, !tbaa !41
  %i.ago = icmp eq i32 %i.agn, 6
  br i1 %i.ago, label %.thread.sink.split.sink.split.i, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  call void @freeReplyObject(ptr noundef nonnull %i.agm) #32
  %.not50.i = icmp eq i32 %i.agi, 0
  br i1 %.not50.i, label %.backedge.i, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.agp = call fastcc i32 @clusterManagerMoveSlot(ptr noundef nonnull %i.afy, ptr noundef nonnull %.038.i, i32 noundef range(i32 -2147483648, 16384) %i.aex, i32 noundef 130, ptr noundef null)
  %.not51.not.i = icmp eq i32 %i.agp, 0
  br i1 %.not51.not.i, label %clusterManagerFixMultipleSlotOwners.exit.thread.sink.split, label %.backedge.i

.backedge.i:                                      ; preds = %bb.gx, %bb.gw, %bb.gr, %.lr.ph378
  %.033.be.i = phi i32 [ 1, %bb.gx ], [ %.033.i376, %bb.gr ], [ %.033.i376, %.lr.ph378 ], [ 1, %bb.gw ] ; 2 uses
  %i.agq = call ptr @listNext(ptr noundef nonnull %1) #32 ; 2 uses
  %.not47.i = icmp eq ptr %i.agq, null
  br i1 %.not47.i, label %clusterManagerFixMultipleSlotOwners.exit, label %.lr.ph378

.thread.sink.split.sink.split.i:                  ; preds = %bb.gv, %bb.gt
  %.lcssa87.sink.i = phi ptr [ %i.age, %bb.gt ], [ %i.agm, %bb.gv ] ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %i.afy, i64 16
  %i.ags = load ptr, ptr %i.agr, align 8, !tbaa !80
  %i.agt = getelementptr inbounds nuw i8, ptr %i.afy, i64 24
  %i.agu = load i32, ptr %i.agt, align 8, !tbaa !83
  %i.agv = getelementptr inbounds nuw i8, ptr %.lcssa87.sink.i, i64 32
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !42
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.ags, i32 noundef %i.agu, ptr noundef %i.agw)
  br label %.thread.sink.split.i

.thread.sink.split.i:                             ; preds = %bb.gt, %.thread.sink.split.sink.split.i
  %.lcssa89.sink.i = phi ptr [ %.lcssa87.sink.i, %.thread.sink.split.sink.split.i ], [ %i.age, %bb.gt ]
  call void @freeReplyObject(ptr noundef nonnull %.lcssa89.sink.i) #32
  br label %clusterManagerFixMultipleSlotOwners.exit.thread.sink.split

clusterManagerFixMultipleSlotOwners.exit:         ; preds = %.backedge.i
  %21 = icmp eq i32 %.033.be.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %21, label %clusterManagerFixMultipleSlotOwners.exit.thread, label %bb.gy

clusterManagerFixMultipleSlotOwners.exit.thread.sink.split: ; preds = %bb.gq, %bb.gs, %clusterManagerCountKeysInSlot.exit.i180, %bb.gx, %bb.gu, %.thread.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %clusterManagerFixMultipleSlotOwners.exit.thread

clusterManagerFixMultipleSlotOwners.exit.thread:  ; preds = %bb.gp, %clusterManagerFixMultipleSlotOwners.exit, %clusterManagerFixMultipleSlotOwners.exit.thread.sink.split
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.281, i32 noundef %i.aex)
  call void @listRelease(ptr noundef nonnull %i.ads) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br label %.loopexit

bb.gy:                                            ; preds = %._crit_edge370, %._crit_edge374, %clusterManagerFixMultipleSlotOwners.exit
  %.1106 = phi i32 [ %.0105381, %._crit_edge370 ], [ %i.afh, %._crit_edge374 ], [ %.0105381, %clusterManagerFixMultipleSlotOwners.exit ] ; 2 uses
  %.9 = phi i32 [ %.8382, %._crit_edge370 ], [ 0, %._crit_edge374 ], [ 1, %clusterManagerFixMultipleSlotOwners.exit ] ; 2 uses
  call void @listRelease(ptr noundef %i.ads) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  %indvars.iv.next504 = add nuw nsw i64 %indvars.iv503, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next504, 16384
  br i1 %exitcond.not, label %.loopexit, label %bb.gc, !llvm.loop !516

.loopexit:                                        ; preds = %bb.gy, %clusterManagerFixMultipleSlotOwners.exit.thread
  %.3108 = phi i32 [ %i.afh, %clusterManagerFixMultipleSlotOwners.exit.thread ], [ %.1106, %bb.gy ]
  %.11 = phi i32 [ 0, %clusterManagerFixMultipleSlotOwners.exit.thread ], [ %.9, %bb.gy ] ; 2 uses
  %i.agx = icmp eq i32 %.3108, 0
  br i1 %i.agx, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %.loopexit
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 4, ptr noundef nonnull @.str.282)
  br label %bb.ha

bb.ha:                                            ; preds = %.loopexit, %bb.gz, %bb.ga
  %.12 = phi i32 [ %.7, %bb.ga ], [ %.11, %bb.gz ], [ %.11, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %bb.hb

bb.hb:                                            ; preds = %bb.a, %bb.ha
  %.0 = phi i32 [ %.12, %bb.ha ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @redisFree(ptr noundef) local_unnamed_addr #9

declare ptr @redisConnectWrapper(ptr noundef, i32 noundef, i64, i64) local_unnamed_addr #9

declare i32 @cliSecureConnection(ptr noundef, ptr noundef byval(%struct.cliSSLconfig) align 8, ptr noundef) local_unnamed_addr #9

declare i32 @anetKeepAlive(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @clusterManagerCheckRedisReply(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 8, !tbaa !41
  %.not19 = icmp eq i32 %i.a, 6
  br i1 %.not19, label %.critedge18, label %.critedge

.critedge18:                                      ; preds = %bb.b
  %.not16 = icmp eq ptr %2, null
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.critedge18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !70
  %i.d = add i64 %i.c, 1
  %i.e = tail call noalias ptr @zmalloc(i64 noundef %i.d) #36 ; 2 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.h = load i64, ptr %i.b, align 8, !tbaa !70
  %i.i = add i64 %i.h, 1
  %i.j = tail call i64 @redis_strlcpy(ptr noundef %i.e, ptr noundef %i.g, i64 noundef %i.i) #32 ; 0 uses
  br label %.critedge

bb.d:                                             ; preds = %.critedge18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !80
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !83
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42
  tail call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.l, i32 noundef %i.n, ptr noundef %i.p)
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.012 = phi i32 [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.b ]
  ret i32 %.012
}

declare i64 @redis_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @listRelease(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc i64 @getLongInfoField(ptr noundef %0, ptr noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull readonly dereferenceable(1) %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %getInfoField.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #34
  %i.c = getelementptr i8, ptr %i.a, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 1        ; 4 uses
  %i.e = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.d, i32 noundef 13) #34 ; 2 uses
  %i.f = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.d, i32 noundef 44) #34 ; 3 uses
  %.not26.i = icmp ne ptr %i.f, null
  %i.g = icmp ult ptr %i.f, %i.e
  %or.cond.i = select i1 %.not26.i, i1 %i.g, i1 false
  %.022.i = select i1 %or.cond.i, ptr %i.f, ptr %i.e
  %i.h = ptrtoint ptr %.022.i to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = add i64 %i.j, 1
  %i.l = tail call noalias ptr @zmalloc(i64 noundef %i.k) #36 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 1 %i.d, i64 %i.j, i1 false)
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !73
  %i.n = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.l, ptr noundef null, i32 noundef 10) #32
  tail call void @zfree(ptr noundef nonnull %i.l) #32
  br label %getInfoField.exit.thread

getInfoField.exit.thread:                         ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.n, %bb.b ], [ -9223372036854775808, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, -2147483648) i32 @clusterManagerGetAntiAffinityScore(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.dictIterator, align 8       ; 6 uses
  %5 = alloca %struct.listIter, align 8           ; 5 uses
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !90
  %sext = shl i64 %i.c, 32
  %i.d = ashr exact i64 %sext, 29
  %i.e = tail call noalias ptr @zcalloc(i64 noundef %i.d) #36 ; 2 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !123
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.058 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.f = icmp sgt i32 %1, 0
  br i1 %i.f, label %.lr.ph112, label %._crit_edge113

.lr.ph112:                                        ; preds = %bb.c
  %.not82 = icmp eq ptr %3, null
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph112, %._crit_edge105
  %indvars.iv117 = phi i64 [ 0, %.lr.ph112 ], [ %indvars.iv.next118, %._crit_edge105 ] ; 2 uses
  %.0110 = phi i32 [ 0, %.lr.ph112 ], [ %.1.lcssa, %._crit_edge105 ] ; 2 uses
  %.159108 = phi ptr [ %.058, %.lr.ph112 ], [ %.260.lcssa, %._crit_edge105 ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %indvars.iv117 ; 2 uses
  %i.h = call ptr @dictCreate(ptr noundef nonnull @clusterManagerDictType) #32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !97   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %bb.p
  %i.l = phi i32 [ %i.ag, %bb.p ], [ %i.j, %bb.d ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ 0, %bb.d ] ; 2 uses
  %.06295 = phi ptr [ %.264, %bb.p ], [ null, %bb.d ] ; 3 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !98
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !99   ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.p, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %.not83 = icmp eq ptr %.06295, null
  br i1 %.not83, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !80
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.163 = phi ptr [ %.06295, %bb.e ], [ %i.r, %bb.f ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 72 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !118  ; 2 uses
  %.not84 = icmp eq ptr %i.t, null
  br i1 %.not84, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !119  ; 2 uses
  %.not85 = icmp eq ptr %i.v, null
  br i1 %.not85, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  call void @__assert_fail(ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.7, i32 noundef 4448, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerGetAntiAffinityScore) #37
  unreachable

end_hunk_3
begin_hunk_4_@clusterManagerIsConfigConsistent:bb.a

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.aj, align 1, !tbaa !73
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 2 uses
  %i.al = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ak) #34
  %i.am = trunc i64 %i.al to i32                  ; 3 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.thread.i, label %.preheader20.i, !llvm.loop !524

.preheader20.i:                                   ; preds = %bb.m
  %i.ao = icmp sgt i32 %i.am, 0
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %.preheader20.i, %bb.o
  %.011625.i = phi i32 [ %.1117.i, %bb.o ], [ 0, %.preheader20.i ] ; 3 uses
  %.011824.i = phi ptr [ %.1119.i, %bb.o ], [ null, %.preheader20.i ] ; 2 uses
  %.012023.i = phi i32 [ %i.az, %bb.o ], [ %i.am, %.preheader20.i ] ; 3 uses
  %.313122.i = phi i32 [ %i.ax, %bb.o ], [ %i.w, %.preheader20.i ]
  %.213721.i = phi ptr [ %.3138.i, %bb.o ], [ %i.ak, %.preheader20.i ] ; 5 uses
  %i.ap = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.213721.i, i32 noundef 32) #34 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  %i.ar = zext nneg i32 %.012023.i to i64
  %i.as = getelementptr inbounds nuw i8, ptr %.213721.i, i64 %i.ar
  %.0139.i = select i1 %i.aq, ptr %i.as, ptr %i.ap ; 3 uses
  %i.at = ptrtoint ptr %.0139.i to i64
  %i.au = ptrtoint ptr %.213721.i to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = trunc i64 %i.av to i32                  ; 3 uses
  %i.ax = add nsw i32 %.313122.i, %i.aw           ; 2 uses
  store i8 0, ptr %.0139.i, align 1, !tbaa !73
  %.not155.i = icmp ne i32 %.012023.i, %i.aw
  %i.ay = xor i32 %i.aw, -1
  %i.az = add i32 %.012023.i, %i.ay               ; 2 uses
  %.3138.idx.i = zext i1 %.not155.i to i64
  %.3138.i = getelementptr inbounds nuw i8, ptr %.0139.i, i64 %.3138.idx.i
  %i.ba = load i8, ptr %.213721.i, align 1, !tbaa !73
  %.not156.i = icmp eq i8 %i.ba, 91
  br i1 %.not156.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %i.bb = add nsw i32 %.011625.i, 1               ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = shl nsw i64 %i.bc, 3
  %i.be = call ptr @zrealloc(ptr noundef %.011824.i, i64 noundef %i.bd) #35 ; 2 uses
  %i.bf = sext i32 %.011625.i to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf
  store ptr %.213721.i, ptr %i.bg, align 8, !tbaa !29
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i
  %.1119.i = phi ptr [ %i.be, %bb.n ], [ %.011824.i, %.lr.ph.i ] ; 6 uses
  %.1117.i = phi i32 [ %i.bb, %bb.n ], [ %.011625.i, %.lr.ph.i ] ; 5 uses
  %i.bh = icmp sgt i32 %i.az, 0
  br i1 %i.bh, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !525

._crit_edge.i:                                    ; preds = %bb.o
  %i.bi = icmp sgt i32 %.1117.i, 0
  br i1 %i.bi, label %bb.p, label %._crit_edge.thread.i

bb.p:                                             ; preds = %._crit_edge.i
  %.not153.i = icmp eq i32 %.1117.i, 1            ; 2 uses
  br i1 %.not153.i, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = zext nneg i32 %.1117.i to i64           ; 2 uses
  call void @qsort(ptr noundef %.1119.i, i64 noundef %i.bj, i64 noundef 8, ptr noundef nonnull @clusterManagerSlotCompare) #32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %bb.q
  %wide.trip.count.i.pre-phi = phi i64 [ %i.bj, %bb.q ], [ 1, %bb.p ]
  %i.bk = add nsw i32 %.010439.i, 1               ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = shl nsw i64 %i.bl, 3
  %i.bn = call ptr @zrealloc(ptr noundef %.012337.i, i64 noundef %i.bm) #35 ; 2 uses
  %i.bo = add i32 %i.ax, -1
  %i.bp = add i32 %i.bo, %.1117.i
  %i.bq = sext i32 %i.bp to i64
  %i.br = add nsw i64 %i.bq, 1
  %i.bs = call noalias ptr @zmalloc(i64 noundef %i.br) #36 ; 3 uses
  %sext99.i = shl i64 %i.u, 32
  %i.bt = ashr exact i64 %sext99.i, 32            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr nonnull align 1 %.014036.i, i64 %i.bt, i1 false)
  %i.bu = getelementptr inbounds i8, ptr %i.bs, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1 ; 2 uses
  store i8 58, ptr %i.bu, align 1, !tbaa !73
  %.pre.i = load ptr, ptr %.1119.i, align 8, !tbaa !29 ; 2 uses
  %i.bw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.pre.i) #34
  %sext.peel.i = shl i64 %i.bw, 32
  %i.bx = ashr exact i64 %sext.peel.i, 32         ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr nonnull align 1 %.pre.i, i64 %i.bx, i1 false)
  %i.by = getelementptr inbounds i8, ptr %i.bv, i64 %i.bx ; 2 uses
  br i1 %.not153.i, label %._crit_edge32.i, label %.lr.ph31.peel.next.i

.lr.ph31.peel.next.i:                             ; preds = %._crit_edge, %.lr.ph31.peel.next.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph31.peel.next.i ], [ 1, %._crit_edge ] ; 2 uses
  %.010229.i = phi ptr [ %i.ce, %.lr.ph31.peel.next.i ], [ %i.by, %._crit_edge ] ; 2 uses
  store i8 44, ptr %.010229.i, align 1, !tbaa !73
  %i.bz = getelementptr inbounds nuw i8, ptr %.010229.i, i64 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.1119.i, i64 %indvars.iv.i
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !29 ; 2 uses
  %i.cc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cb) #34
  %sext.i = shl i64 %i.cc, 32
  %i.cd = ashr exact i64 %sext.i, 32              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr nonnull align 1 %i.cb, i64 %i.cd, i1 false)
  %i.ce = getelementptr inbounds i8, ptr %i.bz, i64 %i.cd ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i.pre-phi
  br i1 %exitcond.not.i, label %._crit_edge32.i, label %.lr.ph31.peel.next.i, !llvm.loop !526

._crit_edge32.i:                                  ; preds = %.lr.ph31.peel.next.i, %._crit_edge
  %.lcssa55.i = phi ptr [ %i.by, %._crit_edge ], [ %i.ce, %.lr.ph31.peel.next.i ]
  store i8 0, ptr %.lcssa55.i, align 1, !tbaa !73
  %i.cf = sext i32 %.010439.i to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.cf
  store ptr %i.bs, ptr %i.cg, align 8, !tbaa !29
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %._crit_edge32.i, %._crit_edge.i, %.preheader20.i
  %.0118.lcssa90.i = phi ptr [ %.1119.i, %._crit_edge32.i ], [ %.1119.i, %._crit_edge.i ], [ null, %.preheader20.i ]
  %.1124.i = phi ptr [ %i.bn, %._crit_edge32.i ], [ %.012337.i, %._crit_edge.i ], [ %.012337.i, %.preheader20.i ]
  %.1105.i = phi i32 [ %i.bk, %._crit_edge32.i ], [ %.010439.i, %._crit_edge.i ], [ %.010439.i, %.preheader20.i ]
  call void @zfree(ptr noundef %.0118.lcssa90.i) #32
  br label %.thread.i

.thread.i:                                        ; preds = %._crit_edge.thread.i, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %.lr.ph42.i
  %.3126.i = phi ptr [ %.012337.i, %bb.m ], [ %.012337.i, %bb.i ], [ %.1124.i, %._crit_edge.thread.i ], [ %.012337.i, %.lr.ph42.i ], [ %.012337.i, %bb.f ], [ %.012337.i, %bb.l ], [ %.012337.i, %bb.g ], [ %.012337.i, %bb.j ], [ %.012337.i, %bb.h ], [ %.012337.i, %bb.k ] ; 8 uses
  %.3.i = phi i32 [ %.010439.i, %bb.m ], [ %.010439.i, %bb.i ], [ %.1105.i, %._crit_edge.thread.i ], [ %.010439.i, %.lr.ph42.i ], [ %.010439.i, %bb.f ], [ %.010439.i, %bb.l ], [ %.010439.i, %bb.g ], [ %.010439.i, %bb.j ], [ %.010439.i, %bb.h ], [ %.010439.i, %bb.k ] ; 4 uses
  %strchr.i = call ptr @strchr(ptr nonnull dereferenceable(1) %i.p, i32 10) ; 2 uses
  %.not.i = icmp eq ptr %strchr.i, null
  br i1 %.not.i, label %._crit_edge43.i, label %.lr.ph42.i

._crit_edge43.i:                                  ; preds = %.thread.i
  %i.ch = icmp sgt i32 %.3.i, 0
  br i1 %i.ch, label %bb.r, label %.thread7.i

bb.r:                                             ; preds = %._crit_edge43.i
  %.not149.i = icmp eq i32 %.3.i, 1               ; 2 uses
  br i1 %.not149.i, label %._crit_edge78, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ci = zext nneg i32 %.3.i to i64              ; 2 uses
  call void @qsort(ptr noundef %.3126.i, i64 noundef %i.ci, i64 noundef 8, ptr noundef nonnull @clusterManagerSlotCompare) #32
  br label %._crit_edge78

._crit_edge78:                                    ; preds = %bb.r, %bb.s
  %wide.trip.count62.i.pre-phi = phi i64 [ %i.ci, %bb.s ], [ 1, %bb.r ] ; 2 uses
  %i.cj = call ptr @hi_sdsempty() #32
  %.pre70.i = load ptr, ptr %.3126.i, align 8, !tbaa !29
  %i.ck = call ptr (ptr, ptr, ...) @hi_sdscatfmt(ptr noundef %i.cj, ptr noundef nonnull @.str.260, ptr noundef %.pre70.i) #32 ; 2 uses
  br i1 %.not149.i, label %.lr.ph52.preheader.i, label %.lr.ph49.peel.next.i

.lr.ph49.peel.next.i:                             ; preds = %._crit_edge78, %.lr.ph49.peel.next.i
  %indvars.iv58.i = phi i64 [ %indvars.iv.next59.i, %.lr.ph49.peel.next.i ], [ 1, %._crit_edge78 ] ; 2 uses
  %.047.i = phi ptr [ %i.co, %.lr.ph49.peel.next.i ], [ %i.ck, %._crit_edge78 ]
  %i.cl = call ptr (ptr, ptr, ...) @hi_sdscatprintf(ptr noundef %.047.i, ptr noundef nonnull @.str.259, i32 noundef 124) #32
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.3126.i, i64 %indvars.iv58.i
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !29
  %i.co = call ptr (ptr, ptr, ...) @hi_sdscatfmt(ptr noundef %i.cl, ptr noundef nonnull @.str.260, ptr noundef %i.cn) #32 ; 2 uses
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next59.i, %wide.trip.count62.i.pre-phi
  br i1 %exitcond63.not.i, label %.lr.ph52.preheader.i, label %.lr.ph49.peel.next.i, !llvm.loop !527

.thread7.thread.i:                                ; preds = %bb.e, %bb.d
  call void @freeReplyObject(ptr noundef nonnull %i.j) #32
  br label %.thread

.thread7.i:                                       ; preds = %._crit_edge43.i
  call void @freeReplyObject(ptr noundef nonnull %i.j) #32
  %.not158.i = icmp eq ptr %.3126.i, null
  br i1 %.not158.i, label %.thread, label %clusterManagerGetConfigSignature.exit.thread37

clusterManagerGetConfigSignature.exit.thread37:   ; preds = %.thread7.i
  call void @zfree(ptr noundef nonnull %.3126.i) #32
  br label %.thread

.lr.ph52.preheader.i:                             ; preds = %.lr.ph49.peel.next.i, %._crit_edge78
  %.213.i.ph = phi ptr [ %i.ck, %._crit_edge78 ], [ %i.co, %.lr.ph49.peel.next.i ] ; 4 uses
  call void @freeReplyObject(ptr noundef nonnull %i.j) #32
  br label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %.lr.ph52.i, %.lr.ph52.preheader.i
  %indvars.iv65.i = phi i64 [ 0, %.lr.ph52.preheader.i ], [ %indvars.iv.next66.i, %.lr.ph52.i ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.3126.i, i64 %indvars.iv65.i
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !29
  call void @zfree(ptr noundef %i.cq) #32
  %indvars.iv.next66.i = add nuw nsw i64 %indvars.iv65.i, 1 ; 2 uses
  %exitcond69.not.i = icmp eq i64 %indvars.iv.next66.i, %wide.trip.count62.i.pre-phi
  br i1 %exitcond69.not.i, label %clusterManagerGetConfigSignature.exit, label %.lr.ph52.i, !llvm.loop !528

clusterManagerGetConfigSignature.exit:            ; preds = %.lr.ph52.i
  call void @zfree(ptr noundef nonnull %.3126.i) #32
  %i.cr = icmp eq ptr %.213.i.ph, null
  br i1 %i.cr, label %.thread, label %bb.t

bb.t:                                             ; preds = %clusterManagerGetConfigSignature.exit
  %i.cs = icmp eq ptr %.01759, null
  br i1 %i.cs, label %select.unfold, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ct = call i32 @hi_sdscmp(ptr noundef nonnull %.01759, ptr noundef nonnull %.213.i.ph) #32
  %.not24 = icmp eq i32 %i.ct, 0
  call void @hi_sdsfree(ptr noundef nonnull %.213.i.ph) #32
  br i1 %.not24, label %select.unfold, label %.thread.thread

select.unfold:                                    ; preds = %bb.u, %bb.t
  %.219 = phi ptr [ %.213.i.ph, %bb.t ], [ %.01759, %bb.u ] ; 2 uses
  %.2 = phi i32 [ %.01460, %bb.t ], [ 1, %bb.u ]  ; 2 uses
  %i.cu = call ptr @listNext(ptr noundef nonnull %0) #32 ; 2 uses
  %.not = icmp eq ptr %i.cu, null
  br i1 %.not, label %.thread.thread, label %.lr.ph

.thread:                                          ; preds = %clusterManagerGetConfigSignature.exit, %.lr.ph, %.thread7.thread.i, %.thread7.i, %clusterManagerGetConfigSignature.exit.thread37
  %.not25 = icmp eq ptr %.01759, null
  br i1 %.not25, label %.thread.thread93, label %.thread.thread

.thread.thread:                                   ; preds = %select.unfold, %bb.u, %.thread
  %.01753 = phi ptr [ %.01759, %.thread ], [ %.219, %select.unfold ], [ %.01759, %bb.u ]
  %.344 = phi i32 [ 0, %.thread ], [ %.2, %select.unfold ], [ 0, %bb.u ]
  call void @hi_sdsfree(ptr noundef nonnull %.01753) #32
  br label %.thread.thread93

.thread.thread93:                                 ; preds = %bb.c, %.thread.thread, %.thread
  %.345 = phi i32 [ %.344, %.thread.thread ], [ 0, %.thread ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  br label %bb.v

bb.v:                                             ; preds = %.thread.thread93, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %.345, %.thread.thread93 ], [ 1, %bb.b ]
  ret i32 %.1
}

declare i32 @hi_sdscmp(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: nounwind uwtable
define internal void @dictListDestructor(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  tail call void @listRelease(ptr noundef %1) #32
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @clusterManagerNodeByName(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.listIter, align 8           ; 5 uses
  %i.a = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @hi_sdsempty() #32
  %i.d = tail call ptr @hi_sdscpy(ptr noundef %i.c, ptr noundef %0) #32 ; 3 uses
  tail call void @hi_sdstolower(ptr noundef %i.d) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.e = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  call void @listRewind(ptr noundef %i.e, ptr noundef nonnull %1) #32
  %i.f = call ptr @listNext(ptr noundef nonnull %1) #32 ; 2 uses
  %.not19 = icmp eq ptr %i.f, null
  br i1 %.not19, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %i.g = phi ptr [ %i.m, %bb.d ], [ %i.f, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !102  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !119  ; 2 uses
  %.not15 = icmp eq ptr %i.k, null
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.l = call i32 @hi_sdscmp(ptr noundef nonnull %i.k, ptr noundef %i.d) #32
  %.not16 = icmp eq i32 %i.l, 0
  br i1 %.not16, label %.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.m = call ptr @listNext(ptr noundef nonnull %1) #32 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b
  %.2 = phi ptr [ null, %bb.b ], [ %i.i, %bb.c ], [ null, %bb.d ]
  call void @hi_sdsfree(ptr noundef %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %.thread
  %.011 = phi ptr [ %.2, %.thread ], [ null, %bb.a ]
  ret ptr %.011
}

declare ptr @hi_sdscpy(ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @hi_sdstolower(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc ptr @clusterManagerGetNodeWithMostKeysInSlot(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.listIter, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @listRewind(ptr noundef %0, ptr noundef nonnull %2) #32
  %i.a = call ptr @listNext(ptr noundef nonnull %2) #32 ; 2 uses
  %.not40 = icmp eq ptr %i.a, null
  br i1 %.not40, label %.thread35, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %i.b = phi ptr [ %i.y, %bb.f ], [ %i.a, %bb.a ]
  %.042 = phi ptr [ %.3, %bb.f ], [ null, %bb.a ] ; 4 uses
  %.02741 = phi i32 [ %.229, %bb.f ], [ 0, %bb.a ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load i32, ptr %i.e, align 8, !tbaa !141
  %i.g = and i32 %i.f, 2
  %.not36 = icmp eq i32 %i.g, 0
  br i1 %.not36, label %bb.b, label %bb.f, !llvm.loop !529

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !118
  %.not37 = icmp eq ptr %i.i, null
  br i1 %.not37, label %bb.c, label %bb.f, !llvm.loop !529

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !88
  %i.k = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.j, ptr noundef nonnull @.str.285, i32 noundef %1) #32 ; 6 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %.thread35, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.k, align 8, !tbaa !41
  %.not19.i = icmp eq i32 %i.l, 6
  br i1 %.not19.i, label %.thread24, label %bb.e

.thread24:                                        ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !80
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !83
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.n, i32 noundef %i.p, ptr noundef %i.r)
  call void @freeReplyObject(ptr noundef nonnull %i.k) #32
  br label %.thread35

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !180  ; 2 uses
  %i.u = sext i32 %.02741 to i64
  %i.v = icmp sgt i64 %i.t, %i.u
  %i.w = icmp eq ptr %.042, null
  %or.cond = select i1 %i.v, i1 true, i1 %i.w     ; 2 uses
  %i.x = trunc i64 %i.t to i32
  %spec.select = select i1 %or.cond, i32 %i.x, i32 %.02741
  %spec.select40 = select i1 %or.cond, ptr %i.d, ptr %.042
  call void @freeReplyObject(ptr noundef nonnull %i.k) #32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph, %bb.b
  %.229 = phi i32 [ %.02741, %.lr.ph ], [ %.02741, %bb.b ], [ %spec.select, %bb.e ]
  %.3 = phi ptr [ %.042, %.lr.ph ], [ %.042, %bb.b ], [ %spec.select40, %bb.e ] ; 2 uses
  %i.y = call ptr @listNext(ptr noundef nonnull %2) #32 ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %.thread35, label %.lr.ph

.thread35:                                        ; preds = %bb.f, %bb.c, %bb.a, %.thread24
  %.4 = phi ptr [ null, %.thread24 ], [ null, %bb.a ], [ %.3, %bb.f ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @clusterManagerSetSlotOwner(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !88
  %i.b = tail call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.a, ptr noundef nonnull @.str.309) #32 ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %clusterManagerExecTransaction.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !41
  %.not19.i.i = icmp eq i32 %i.c, 6
  br i1 %.not19.i.i, label %clusterManagerStartTransaction.exit.thread30, label %bb.c

clusterManagerStartTransaction.exit.thread30:     ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !83
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  tail call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.e, i32 noundef %i.g, ptr noundef %i.i)
  br label %clusterManagerExecTransaction.exit.sink.split

bb.c:                                             ; preds = %bb.b
  tail call void @freeReplyObject(ptr noundef nonnull %i.b) #32
  %i.j = tail call fastcc i32 @clusterManagerDelSlot(ptr noundef nonnull %0, i32 noundef %1) ; 0 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !88
  %i.l = tail call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.k, ptr noundef nonnull @.str.310, i32 noundef %1) #32 ; 4 uses
  %.not.i.i13 = icmp eq ptr %i.l, null
end_hunk_4
begin_hunk_5_@clusterManagerMoveSlot:bb.a
.critedge.i:                                      ; preds = %.critedge.sink.split.i, %bb.ao, %._crit_edge.i.i
  call void @zfree(ptr noundef nonnull %i.cc) #32
  call void @zfree(ptr noundef nonnull %i.cd) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.329)
  call void @listRelease(ptr noundef %i.by) #32
  br label %.thread180.i

bb.ap:                                            ; preds = %.loopexit.i.i
  %i.fz = load ptr, ptr %i.z, align 8, !tbaa !80
  %i.ga = load i32, ptr %i.aa, align 8, !tbaa !83
  %i.gb = load ptr, ptr %i.ac, align 8, !tbaa !80
  %i.gc = load i32, ptr %i.ad, align 8, !tbaa !83
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.330, i64 noundef %i.fy, ptr noundef %i.fz, i32 noundef %i.ga, ptr noundef %i.gb, i32 noundef %i.gc)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @listRewind(ptr noundef nonnull %i.by, ptr noundef nonnull %5) #32
  %i.gd = call ptr @listNext(ptr noundef nonnull %5) #32 ; 2 uses
  %.not129208.i = icmp eq ptr %i.gd, null
  br i1 %.not129208.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ap, %.lr.ph.i
  %i.ge = phi ptr [ %i.gh, %.lr.ph.i ], [ %i.gd, %bb.ap ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !102
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.331, ptr noundef %i.gg)
  %i.gh = call ptr @listNext(ptr noundef nonnull %5) #32 ; 2 uses
  %.not129.i = icmp eq ptr %i.gh, null
  br i1 %.not129.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !533

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.ap
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.332)
  call void @listRelease(ptr noundef nonnull %i.by) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %.thread180.i

bb.aq:                                            ; preds = %.loopexit.i.i
  call void @listRelease(ptr noundef nonnull %i.by) #32
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.aa
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 2, ptr noundef nonnull @.str.333)
  br label %clusterManagerSetSlot.exit.i

clusterManagerSetSlot.exit.i:                     ; preds = %bb.ar, %bb.z, %bb.w, %bb.v
  call void @freeReplyObject(ptr noundef nonnull %i.ba) #32
  %i.gi = call fastcc ptr @clusterManagerMigrateKeysInReply(ptr noundef nonnull readonly %0, ptr noundef readonly %1, ptr noundef %i.ah, i32 noundef %i.bi, i32 noundef %i.r, ptr noundef null) ; 4 uses
  %.not130.i = icmp eq ptr %i.gi, null
  br i1 %.not130.i, label %.thread188.i, label %bb.as

bb.as:                                            ; preds = %clusterManagerSetSlot.exit.i
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !41
  %.not132.i = icmp eq i32 %i.gj, 6
  br i1 %.not132.i, label %.thread159.i, label %bb.au

.thread159.i:                                     ; preds = %bb.as, %bb.u
  %.0105158162.i = phi ptr [ %i.ba, %bb.u ], [ %i.gi, %bb.as ] ; 4 uses
  br i1 %.not134.i, label %.thread191.i, label %bb.at

bb.at:                                            ; preds = %.thread159.i
  %i.gk = getelementptr inbounds nuw i8, ptr %.0105158162.i, i64 24 ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !70
  %i.gm = add i64 %i.gl, 1
  %i.gn = call noalias ptr @zmalloc(i64 noundef %i.gm) #36 ; 2 uses
  store ptr %i.gn, ptr %4, align 8, !tbaa !29
  %i.go = getelementptr inbounds nuw i8, ptr %.0105158162.i, i64 32
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !42
  %i.gq = load i64, ptr %i.gk, align 8, !tbaa !70
  %i.gr = add i64 %i.gq, 1
  %i.gs = call i64 @redis_strlcpy(ptr noundef %i.gn, ptr noundef %i.gp, i64 noundef %i.gr) #32 ; 0 uses
  br label %.thread191.i

.thread191.i:                                     ; preds = %bb.at, %.thread159.i
  %putchar.i = call i32 @putchar(i32 10)          ; 0 uses
  %i.gt = load ptr, ptr %i.z, align 8, !tbaa !80
  %i.gu = load i32, ptr %i.aa, align 8, !tbaa !83
  %i.gv = getelementptr inbounds nuw i8, ptr %.0105158162.i, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !42
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.gt, i32 noundef %i.gu, ptr noundef %i.gw)
  br label %.thread180.i

bb.au:                                            ; preds = %bb.as, %bb.p
  %.2107.i = phi ptr [ %i.ba, %bb.p ], [ %i.gi, %bb.as ] ; 2 uses
  br i1 %.not.i, label %.thread180.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.260, ptr noundef %.0101.i) ; 0 uses
  %i.gy = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.gz = call i32 @fflush(ptr noundef %i.gy)     ; 0 uses
  br label %.thread180.i

.thread180.i:                                     ; preds = %bb.av, %bb.au, %.thread191.i, %._crit_edge.i, %.critedge.i
  %i.ha = phi i1 [ true, %.thread191.i ], [ false, %bb.au ], [ false, %bb.av ], [ true, %._crit_edge.i ], [ true, %.critedge.i ]
  %.3108185.i = phi ptr [ %.0105158162.i, %.thread191.i ], [ %.2107.i, %bb.au ], [ %.2107.i, %bb.av ], [ %i.ba, %._crit_edge.i ], [ %i.ba, %.critedge.i ]
  call void @freeReplyObject(ptr noundef nonnull %i.ah) #32
  br label %.thread188.i

.thread188.i:                                     ; preds = %.thread180.i, %clusterManagerSetSlot.exit.i
  %.sink.i = phi ptr [ %.3108185.i, %.thread180.i ], [ %i.ah, %clusterManagerSetSlot.exit.i ]
  %.4178.i = phi i1 [ %i.ha, %.thread180.i ], [ true, %clusterManagerSetSlot.exit.i ] ; 2 uses
  call void @freeReplyObject(ptr noundef nonnull %.sink.i) #32
  %.not137.i = icmp eq ptr %.0101.i, null
  br i1 %.not137.i, label %bb.ax, label %bb.aw

.thread188.i.thread:                              ; preds = %bb.o
  call void @freeReplyObject(ptr noundef nonnull %i.ah) #32
  %.not137.i137 = icmp eq ptr %.0101.i, null
  br i1 %.not137.i137, label %.backedge, label %.thread142

.thread142:                                       ; preds = %.thread188.i.thread
  call void @zfree(ptr noundef nonnull %.0101.i) #32
  br label %.backedge

bb.aw:                                            ; preds = %.thread188.i
  call void @zfree(ptr noundef nonnull %.0101.i) #32
  br i1 %.4178.i, label %clusterManagerMigrateKeysInSlot.exit, label %.backedge

bb.ax:                                            ; preds = %.thread188.i
  br i1 %.4178.i, label %clusterManagerMigrateKeysInSlot.exit, label %.backedge

.backedge:                                        ; preds = %.thread142, %.thread188.i.thread, %bb.ax, %bb.aw
  %i.hb = load ptr, ptr %0, align 8, !tbaa !88
  %i.hc = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.hb, ptr noundef nonnull @.str.304, i32 noundef %2, i32 noundef %i.q) #32 ; 2 uses
  %.not202.i = icmp eq ptr %i.hc, null
  br i1 %.not202.i, label %clusterManagerMigrateKeysInSlot.exit, label %.lr.ph

clusterManagerMigrateKeysInSlot.exit.sink.split:  ; preds = %bb.l, %bb.j, %bb.i
  %.not81.ph = phi i1 [ true, %bb.j ], [ true, %bb.i ], [ false, %bb.l ]
  call void @freeReplyObject(ptr noundef nonnull %i.ah) #32
  br label %clusterManagerMigrateKeysInSlot.exit

clusterManagerMigrateKeysInSlot.exit:             ; preds = %bb.ax, %.backedge, %bb.aw, %clusterManagerMigrateKeysInSlot.exit.sink.split, %bb.h
  %.not81 = phi i1 [ true, %bb.h ], [ %.not81.ph, %clusterManagerMigrateKeysInSlot.exit.sink.split ], [ true, %bb.aw ], [ true, %.backedge ], [ true, %bb.ax ]
  br i1 %.not, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %clusterManagerMigrateKeysInSlot.exit
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %clusterManagerMigrateKeysInSlot.exit
  br i1 %.not81, label %.critedge90, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  br i1 %.not78, label %bb.bb, label %bb.bj

bb.bb:                                            ; preds = %bb.ba
  %.val92 = load ptr, ptr %i.ae, align 8, !tbaa !119
  %i.hd = call fastcc i32 @clusterManagerSetSlot(ptr noundef %1, ptr %.val92, i32 noundef %2, ptr noundef nonnull @.str.295, ptr noundef %4)
  %.not82 = icmp eq i32 %i.hd, 0
  br i1 %.not82, label %.critedge90, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.val91 = load ptr, ptr %i.ae, align 8, !tbaa !119
  %i.he = call fastcc i32 @clusterManagerSetSlot(ptr noundef nonnull %0, ptr %.val91, i32 noundef %2, ptr noundef nonnull @.str.295, ptr noundef %4)
  %i.hf = icmp eq i32 %i.he, 0
  %or.cond = and i1 %i.p, %i.hf
  br i1 %or.cond, label %bb.bd, label %.critedge

bb.bd:                                            ; preds = %bb.bc
  %i.hg = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.hh = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.hg, ptr noundef nonnull dereferenceable(42) @.str.324, i64 noundef 41) #34
  %.not83 = icmp eq i32 %i.hh, 0
  br i1 %.not83, label %bb.be, label %.critedge90

bb.be:                                            ; preds = %bb.bd
  call void @zfree(ptr noundef nonnull %i.hg) #32
  store ptr null, ptr %4, align 8, !tbaa !29
  br label %.critedge

.critedge:                                        ; preds = %bb.bc, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.hi = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  call void @listRewind(ptr noundef %i.hi, ptr noundef nonnull %6) #32
  %i.hj = call ptr @listNext(ptr noundef nonnull %6) #32 ; 2 uses
  %.not84112 = icmp eq ptr %i.hj, null
  br i1 %.not84112, label %.thread103, label %.lr.ph113

.thread103:                                       ; preds = %bb.bh, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.bj

.lr.ph113:                                        ; preds = %.critedge, %bb.bh
  %i.hk = phi ptr [ %i.ht, %bb.bh ], [ %i.hj, %.critedge ]
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !102 ; 4 uses
  %i.hn = icmp eq ptr %i.hm, %1
  %i.ho = icmp eq ptr %i.hm, %0
  %or.cond88 = or i1 %i.hn, %i.ho
  br i1 %or.cond88, label %bb.bh, label %bb.bf, !llvm.loop !534

bb.bf:                                            ; preds = %.lr.ph113
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 56
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !141
  %i.hr = and i32 %i.hq, 2
  %.not85 = icmp eq i32 %i.hr, 0
  br i1 %.not85, label %bb.bg, label %bb.bh, !llvm.loop !534

bb.bg:                                            ; preds = %bb.bf
  %.val = load ptr, ptr %i.ae, align 8, !tbaa !119
  %i.hs = call fastcc i32 @clusterManagerSetSlot(ptr noundef nonnull %i.hm, ptr %.val, i32 noundef %2, ptr noundef nonnull @.str.295, ptr noundef %4)
  %.not86 = icmp eq i32 %i.hs, 0
  br i1 %.not86, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %.lr.ph113
  %i.ht = call ptr @listNext(ptr noundef nonnull %6) #32 ; 2 uses
  %.not84 = icmp eq ptr %i.ht, null
  br i1 %.not84, label %.thread103, label %.lr.ph113

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %.critedge90

bb.bj:                                            ; preds = %.thread103, %bb.ba
  %i.hu = and i32 %3, 4
  %.not87 = icmp eq i32 %i.hu, 0
  br i1 %.not87, label %.critedge90, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.hw = sext i32 %2 to i64                      ; 2 uses
  %i.hx = getelementptr inbounds i8, ptr %i.hv, i64 %i.hw
  store i8 0, ptr %i.hx, align 1, !tbaa !73
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.hz = getelementptr inbounds i8, ptr %i.hy, i64 %i.hw
  store i8 1, ptr %i.hz, align 1, !tbaa !73
  br label %.critedge90

.critedge90:                                      ; preds = %bb.bi, %bb.bd, %bb.bj, %bb.bk, %bb.bb, %bb.az, %bb.g, %bb.f
  %.4 = phi i32 [ 1, %bb.bj ], [ 0, %bb.bi ], [ 0, %bb.az ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.bb ], [ 1, %bb.bk ], [ 0, %bb.bd ]
  ret i32 %.4
}

declare void @listDelNode(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc ptr @clusterManagerGetSlotOwner(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.listIter, align 8           ; 5 uses
  %or.cond = icmp ult i32 %1, 16384
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.314, ptr noundef nonnull @.str.7, i32 noundef 4874, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerGetSlotOwner) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !88
  %i.b = tail call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.a, ptr noundef nonnull @.str.315) #32 ; 7 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %clusterManagerCheckRedisReply.exit.thread.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i32, ptr %i.b, align 8, !tbaa !41
  switch i32 %i.c, label %bb.e [
    i32 6, label %clusterManagerCheckRedisReply.exit.thread.thread75
    i32 2, label %.preheader
  ]

clusterManagerCheckRedisReply.exit.thread.thread75: ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !70
  %i.f = add i64 %i.e, 1
  %i.g = tail call noalias ptr @zmalloc(i64 noundef %i.f) #36 ; 2 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.j = load i64, ptr %i.d, align 8, !tbaa !70
  %i.k = add i64 %i.j, 1
  %i.l = tail call i64 @redis_strlcpy(ptr noundef %i.g, ptr noundef %i.i, i64 noundef %i.k) #32 ; 0 uses
  br label %.thread70

.preheader:                                       ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !33   ; 2 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %.thread70, label %.lr.ph82

.lr.ph82:                                         ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.316, ptr noundef nonnull @.str.7, i32 noundef 4878, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerGetSlotOwner) #37
  unreachable

bb.f:                                             ; preds = %.lr.ph82, %select.unfold
  %i.p = phi i64 [ %i.n, %.lr.ph82 ], [ %i.bs, %select.unfold ] ; 2 uses
  %.04280 = phi i64 [ 0, %.lr.ph82 ], [ %i.bt, %select.unfold ] ; 2 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.04280
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !39   ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !41
  %i.u = icmp eq i32 %i.t, 2
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !33
  %i.x = icmp ugt i64 %i.w, 2
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @__assert_fail(ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.7, i32 noundef 4882, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerGetSlotOwner) #37
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38   ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !180
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = icmp slt i32 %1, %i.ad
  br i1 %i.ae, label %select.unfold, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !39
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !180
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = icmp sgt i32 %1, %i.aj
  br i1 %i.ak, label %select.unfold, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !39 ; 3 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !41
  %i.ao = icmp eq i32 %i.an, 2
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !33 ; 2 uses
  %i.ar = icmp ugt i64 %i.aq, 1
  br i1 %i.ar, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @__assert_fail(ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.7, i32 noundef 4888, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerGetSlotOwner) #37
  unreachable

bb.n:                                             ; preds = %bb.l
  %.not52 = icmp eq i64 %i.aq, 2
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !38 ; 3 uses
  br i1 %.not52, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !39
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %.not53 = icmp eq ptr %i.av, null
  br i1 %.not53, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = call fastcc ptr @clusterManagerNodeByName(ptr noundef nonnull %i.av)
  br label %bb.u

.thread:                                          ; preds = %bb.n, %bb.o
  %i.ax = load ptr, ptr %.pre, align 8, !tbaa !39
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !42 ; 2 uses
  %.not54 = icmp eq ptr %i.az, null
  br i1 %.not54, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.thread
  call void @__assert_fail(ptr noundef nonnull @.str.319, ptr noundef nonnull @.str.7, i32 noundef 4896, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerGetSlotOwner) #37
  unreachable

bb.r:                                             ; preds = %.thread
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !39
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !180
  %i.be = trunc i64 %i.bd to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.bf = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  call void @listRewind(ptr noundef %i.bf, ptr noundef nonnull %3) #32
  %i.bg = call ptr @listNext(ptr noundef nonnull %3) #32 ; 2 uses
  %.not5577 = icmp eq ptr %i.bg, null
  br i1 %.not5577, label %.thread63, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r, %bb.t
  %i.bh = phi ptr [ %i.br, %bb.t ], [ %i.bg, %bb.r ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !102 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !80
  %i.bm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bl, ptr noundef nonnull dereferenceable(1) %i.az) #34
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !83
  %i.bq = icmp eq i32 %i.bp, %i.be
  br i1 %i.bq, label %.thread63, label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.s
  %i.br = call ptr @listNext(ptr noundef nonnull %3) #32 ; 2 uses
  %.not55 = icmp eq ptr %i.br, null
  br i1 %.not55, label %.thread63, label %.lr.ph

.thread63:                                        ; preds = %bb.t, %bb.s, %bb.r
  %.3 = phi ptr [ null, %bb.r ], [ %i.bj, %bb.s ], [ null, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.u

bb.u:                                             ; preds = %.thread63, %bb.p
  %.4 = phi ptr [ %i.aw, %bb.p ], [ %.3, %.thread63 ] ; 2 uses
  %.not56 = icmp eq ptr %.4, null
  br i1 %.not56, label %.select.unfold_crit_edge, label %.thread70

.select.unfold_crit_edge:                         ; preds = %bb.u
  %.pre86 = load i64, ptr %i.m, align 8, !tbaa !33
  br label %select.unfold

select.unfold:                                    ; preds = %.select.unfold_crit_edge, %bb.j, %bb.i
  %i.bs = phi i64 [ %.pre86, %.select.unfold_crit_edge ], [ %i.p, %bb.j ], [ %i.p, %bb.i ] ; 2 uses
  %i.bt = add nuw i64 %.04280, 1                  ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.bs
  br i1 %i.bu, label %bb.f, label %.thread70, !llvm.loop !535

.thread70:                                        ; preds = %select.unfold, %bb.u, %.preheader, %clusterManagerCheckRedisReply.exit.thread.thread75
  %.772 = phi ptr [ null, %clusterManagerCheckRedisReply.exit.thread.thread75 ], [ null, %.preheader ], [ null, %select.unfold ], [ %.4, %bb.u ]
  call void @freeReplyObject(ptr noundef nonnull %i.b) #32
  br label %clusterManagerCheckRedisReply.exit.thread.thread

clusterManagerCheckRedisReply.exit.thread.thread: ; preds = %bb.c, %.thread70
  %.773 = phi ptr [ %.772, %.thread70 ], [ null, %bb.c ]
  ret ptr %.773
}

declare noalias ptr @zstrdup(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc ptr @clusterManagerMigrateKeysInReply(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull readonly captures(none) %2, i32 noundef range(i32 0, 2) %3, i32 noundef %4, ptr noundef writeonly captures(address_is_null) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [255 x i8], align 16              ; 5 uses
  %i.b = alloca [255 x i8], align 16              ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %.not = icmp eq i32 %3, 0                       ; 2 uses
  %i.d = select i1 %.not, i32 7, i32 8            ; 2 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 16), align 8, !tbaa !183
  %.not102 = icmp eq ptr %i.e, null
  %i.f = add nuw nsw i32 %i.d, 2
  %spec.select = select i1 %.not102, i32 %i.d, i32 %i.f
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 24), align 8, !tbaa !184
  %.not103 = icmp ne ptr %i.g, null
  %i.h = zext i1 %.not103 to i32
  %.198 = add nuw nsw i32 %spec.select, %i.h
  %i.i = zext nneg i32 %.198 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 6 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !33
  %i.l = add i64 %i.k, %i.i                       ; 2 uses
  %i.m = shl i64 %i.l, 3                          ; 2 uses
  %i.n = tail call noalias ptr @zcalloc(i64 noundef %i.m) #36 ; 16 uses
  %i.o = tail call noalias ptr @zcalloc(i64 noundef %i.m) #36 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !83
  %i.r = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 10, ptr noundef nonnull @.str.334, i32 noundef %i.q) #32 ; 0 uses
  %i.s = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 10, ptr noundef nonnull @.str.334, i32 noundef %4) #32 ; 0 uses
  store ptr @.str.335, ptr %i.n, align 8, !tbaa !29
  store i64 7, ptr %i.o, align 8, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !80   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !29
  %i.w = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #34
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.a, ptr %i.y, align 8, !tbaa !29
  %i.z = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #34
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @.str.34, ptr %i.ab, align 8, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 0, ptr %i.ac, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr @.str.336, ptr %i.ad, align 8, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 1, ptr %i.ae, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %i.b, ptr %i.af, align 8, !tbaa !29
  %i.ag = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #34
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !26
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr @.str.337, ptr %i.ai, align 8, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i64 7, ptr %i.aj, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.094 = phi i64 [ 7, %bb.b ], [ 6, %bb.a ]      ; 6 uses
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 16), align 8, !tbaa !183 ; 5 uses
  %.not104 = icmp eq ptr %i.ak, null
  br i1 %.not104, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 24), align 8, !tbaa !184 ; 3 uses
  %.not105 = icmp eq ptr %i.al, null
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.094 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.094 ; 2 uses
  %i.ao = add nuw nsw i64 %.094, 1                ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ao ; 2 uses
  %i.ar = add nuw nsw i64 %.094, 2                ; 3 uses
  br i1 %.not105, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr @.str.338, ptr %i.am, align 8, !tbaa !29
  store i64 5, ptr %i.an, align 8, !tbaa !26
  store ptr %i.al, ptr %i.ap, align 8, !tbaa !29
  %i.as = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.al) #34
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !26
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ar
  store ptr %i.ak, ptr %i.at, align 8, !tbaa !29
  %i.au = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ak) #34
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ar
  store i64 %i.au, ptr %i.av, align 8, !tbaa !26
  %i.aw = add nuw nsw i64 %.094, 3
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store ptr @.str.339, ptr %i.am, align 8, !tbaa !29
  store i64 4, ptr %i.an, align 8, !tbaa !26
  store ptr %i.ak, ptr %i.ap, align 8, !tbaa !29
  %i.ax = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ak) #34
  store i64 %i.ax, ptr %i.aq, align 8, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.1 = phi i64 [ %i.aw, %bb.e ], [ %i.ar, %bb.f ], [ %.094, %bb.c ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.1
  store ptr @.str.340, ptr %i.ay, align 8, !tbaa !29
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1
  store i64 4, ptr %i.az, align 8, !tbaa !26
  %i.ba = add nuw nsw i64 %.1, 1                  ; 3 uses
  %i.bb = load i64, ptr %i.j, align 8, !tbaa !33
  %.not115 = icmp eq i64 %i.bb, 0
  br i1 %.not115, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %.not107 = icmp eq ptr %5, null
  br i1 %.not107, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %.095110.us = phi i64 [ %i.br, %bb.h ], [ 0, %.lr.ph ] ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !38
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.095110.us
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !39 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !41
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %bb.h, label %.split.us

bb.h:                                             ; preds = %.lr.ph.split.us
  %i.bi = add i64 %.095110.us, %i.ba              ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !42
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !70
  %i.bn = call ptr @hi_sdsnewlen(ptr noundef %i.bk, i64 noundef %i.bm) #32
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bi
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !29
  %i.bp = load i64, ptr %i.bl, align 8, !tbaa !70
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bi
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !26
  %i.br = add nuw i64 %.095110.us, 1              ; 2 uses
  %i.bs = load i64, ptr %i.j, align 8, !tbaa !33  ; 2 uses
  %i.bt = icmp ult i64 %i.br, %i.bs
  br i1 %i.bt, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !536

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %.095110 = phi i64 [ %i.cj, %bb.i ], [ 0, %.lr.ph ] ; 4 uses
  %i.bu = load ptr, ptr %i.bc, align 8, !tbaa !38
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.095110
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !39 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !41
  %i.by = icmp eq i32 %i.bx, 1
  br i1 %i.by, label %bb.i, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  call void @__assert_fail(ptr noundef nonnull @.str.341, ptr noundef nonnull @.str.7, i32 noundef 5165, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerMigrateKeysInReply) #37
  unreachable

bb.i:                                             ; preds = %.lr.ph.split
  %i.bz = add i64 %.095110, %i.ba                 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !42
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 24 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !70
  %i.ce = call ptr @hi_sdsnewlen(ptr noundef %i.cb, i64 noundef %i.cd) #32
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bz
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !29
  %i.cg = load i64, ptr %i.cc, align 8, !tbaa !70
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bz
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !26
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 %.095110
  store i8 46, ptr %i.ci, align 1, !tbaa !73
  %i.cj = add nuw i64 %.095110, 1                 ; 2 uses
  %i.ck = load i64, ptr %i.j, align 8, !tbaa !33  ; 2 uses
  %i.cl = icmp ult i64 %i.cj, %i.ck
  br i1 %i.cl, label %.lr.ph.split, label %._crit_edge.thread, !llvm.loop !536

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %.lcssa = phi i64 [ 0, %bb.g ], [ %i.bs, %bb.h ]
  %.not106 = icmp eq ptr %5, null
  br i1 %.not106, label %bb.j, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.i, %._crit_edge
  %.lcssa130 = phi i64 [ %.lcssa, %._crit_edge ], [ %i.ck, %bb.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 %.lcssa130
  store i8 0, ptr %i.cm, align 1, !tbaa !73
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.thread, %._crit_edge
end_hunk_5
