inline.NumInlined: 395
inline.NumDeleted: 110
begin_hunk_0_@clusterManagerCommandCreate:bb.a
clusterManagerNodeIsCluster.exit:                 ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !42
  %i.au = tail call fastcc i64 @getLongInfoField(ptr noundef %i.at, ptr noundef nonnull @.str.203)
  tail call void @freeReplyObject(ptr noundef nonnull %i.af) #32
  %i.av = and i64 %i.au, 4294967295
  %.not359 = icmp eq i64 %i.av, 0
  br i1 %.not359, label %clusterManagerNodeIsCluster.exit.thread, label %bb.i

clusterManagerNodeIsCluster.exit.thread:          ; preds = %bb.g, %clusterManagerNodeIsCluster.exit, %clusterManagerNodeIsCluster.exit.thread400
  %i.aw = phi ptr [ %i.am, %clusterManagerNodeIsCluster.exit.thread400 ], [ null, %clusterManagerNodeIsCluster.exit ], [ null, %bb.g ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.val375 = load ptr, ptr %i.ay, align 8, !tbaa !80
  %.val376 = load i32, ptr %i.ax, align 8, !tbaa !83
  %.not.i380 = icmp eq ptr %i.aw, null            ; 2 uses
  %i.az = select i1 %.not.i380, ptr @.str.205, ptr %i.aw
  tail call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.206, ptr noundef %.val375, i32 noundef %.val376, ptr noundef nonnull %i.az)
  br i1 %.not.i380, label %bb.n, label %.sink.split

bb.i:                                             ; preds = %clusterManagerNodeIsCluster.exit
  %i.ba = call fastcc i32 @clusterManagerNodeLoadInfo(ptr noundef nonnull %i.s, i32 noundef 0, ptr noundef %i.d)
  %.not361 = icmp eq i32 %i.ba, 0
  br i1 %.not361, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !29  ; 3 uses
  %.not362 = icmp eq ptr %i.bb, null
  br i1 %.not362, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !80
  %i.bf = load i32, ptr %i.bc, align 8, !tbaa !83
  tail call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.be, i32 noundef %i.bf, ptr noundef nonnull %i.bb)
  br label %.sink.split

bb.l:                                             ; preds = %bb.i
  %i.bg = call fastcc i32 @clusterManagerNodeIsEmpty(ptr noundef nonnull %i.s, ptr noundef %i.d)
  %.not363 = icmp eq i32 %i.bg, 0
  br i1 %.not363, label %bb.m, label %.critedge374

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !29  ; 3 uses
  %.val377 = load ptr, ptr %i.bh, align 8, !tbaa !80
  %.val378 = load i32, ptr %i.bi, align 8, !tbaa !83
  %.not.i381 = icmp eq ptr %i.bj, null            ; 2 uses
  %.str.225..i = select i1 %.not.i381, ptr @.str.225, ptr %i.bj
  tail call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.206, ptr noundef %.val377, i32 noundef %.val378, ptr noundef nonnull %.str.225..i)
  br i1 %.not.i381, label %bb.n, label %.sink.split

.critedge374:                                     ; preds = %bb.l
  %i.bk = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  %i.bl = tail call ptr @listAddNodeTail(ptr noundef %i.bk, ptr noundef nonnull %i.s) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !89

.sink.split:                                      ; preds = %bb.m, %clusterManagerNodeIsCluster.exit.thread, %bb.k
  %.sink = phi ptr [ %i.aw, %clusterManagerNodeIsCluster.exit.thread ], [ %i.bb, %bb.k ], [ %i.bj, %bb.m ]
  tail call void @zfree(ptr noundef nonnull %.sink) #32
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.m, %bb.j, %clusterManagerNodeIsCluster.exit.thread
  tail call fastcc void @freeClusterManagerNode(ptr noundef nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  br label %.critedge

._crit_edge.loopexit:                             ; preds = %.critedge374
  %.pre = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.bm = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.h, %bb.a ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !90 ; 3 uses
  %i.bp = trunc i64 %i.bo to i32                  ; 8 uses
  %i.bq = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 596), align 4, !tbaa !93 ; 3 uses
  %i.br = add nsw i32 %i.bq, 1                    ; 2 uses
  %i.bs = sdiv i32 %i.bp, %i.br                   ; 7 uses
  %i.bt = icmp slt i32 %i.bs, 3
  br i1 %i.bt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge
  tail call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.183, i32 noundef %i.bp, i32 noundef %i.bq)
  %i.bu = mul nsw i32 %i.br, 3
  tail call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.184, i32 noundef %i.bu)
  br label %.critedge

bb.p:                                             ; preds = %._crit_edge
  tail call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 1, ptr noundef nonnull @.str.185, i32 noundef %i.bp)
  %sext = shl i64 %i.bo, 32                       ; 2 uses
  %i.bv = ashr exact i64 %sext, 32                ; 2 uses
  %i.bw = mul nsw i64 %i.bv, 16520
  %i.bx = tail call noalias ptr @zcalloc(i64 noundef %i.bw) #36 ; 5 uses
  %i.by = ashr exact i64 %sext, 29                ; 2 uses
  %i.bz = tail call noalias ptr @zcalloc(i64 noundef %i.by) #36 ; 3 uses
  %i.ca = mul nsw i64 %i.bv, 24
  %i.cb = tail call noalias ptr @zcalloc(i64 noundef %i.ca) #36 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.cc = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  call void @listRewind(ptr noundef %i.cc, ptr noundef nonnull %4) #32
  %i.cd = call ptr @listNext(ptr noundef nonnull %4) #32 ; 2 uses
  %.not534 = icmp eq ptr %i.cd, null
  br i1 %.not534, label %.preheader466.thread, label %.lr.ph537

.preheader466:                                    ; preds = %clusterManagerNodeArrayAdd.exit
  %i.ce = icmp sgt i32 %i.bp, 0
  br i1 %i.ce, label %.preheader465.lr.ph, label %.lr.ph555

.preheader466.thread:                             ; preds = %bb.p
  %i.cf = icmp sgt i32 %i.bp, 0
  br i1 %i.cf, label %.preheader465.preheader, label %.lr.ph555

.preheader465.lr.ph:                              ; preds = %.preheader466
  %i.cg = icmp sgt i32 %.1275, 0
  br i1 %i.cg, label %.preheader465.us.preheader, label %.preheader465.preheader

.preheader465.preheader:                          ; preds = %.preheader466.thread, %.preheader465.lr.ph
  br label %.preheader465

.preheader465.us.preheader:                       ; preds = %.preheader465.lr.ph
  %wide.trip.count662 = zext nneg i32 %.1275 to i64
  br label %.preheader465.us

.preheader465.us:                                 ; preds = %.preheader465.us.backedge, %.preheader465.us.preheader
  %indvars.iv659 = phi i64 [ 0, %.preheader465.us.preheader ], [ %indvars.iv659.be, %.preheader465.us.backedge ] ; 2 uses
  %.1266539.us = phi i32 [ 0, %.preheader465.us.preheader ], [ %.2267.us, %.preheader465.us.backedge ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %indvars.iv659 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 20 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !94 ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %bb.q, label %bb.t

bb.q:                                             ; preds = %.preheader465.us
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !97 ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %bb.r, label %.split.us

bb.r:                                             ; preds = %bb.q
  %i.co = load ptr, ptr %i.ch, align 8, !tbaa !98 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !99 ; 2 uses
  %.not.i383.us = icmp eq ptr %i.cp, null
  br i1 %.not.i383.us, label %clusterManagerNodeArrayShift.exit.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cq = add nsw i32 %i.cj, -1
  store i32 %i.cq, ptr %i.ci, align 4, !tbaa !94
  br label %clusterManagerNodeArrayShift.exit.us

clusterManagerNodeArrayShift.exit.us:             ; preds = %bb.s, %bb.r
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.cr, ptr %i.ch, align 8, !tbaa !98
  %i.cs = add nsw i32 %i.cm, -1
  store i32 %i.cs, ptr %i.cl, align 8, !tbaa !97
  %i.ct = add nsw i32 %.1266539.us, 1
  %i.cu = sext i32 %.1266539.us to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.cu
  store ptr %i.cp, ptr %i.cv, align 8, !tbaa !99
  br label %bb.t

bb.t:                                             ; preds = %clusterManagerNodeArrayShift.exit.us, %.preheader465.us
  %.2267.us = phi i32 [ %i.ct, %clusterManagerNodeArrayShift.exit.us ], [ %.1266539.us, %.preheader465.us ] ; 3 uses
  %indvars.iv.next660 = add nuw nsw i64 %indvars.iv659, 1 ; 2 uses
  %exitcond663.not = icmp eq i64 %indvars.iv.next660, %wide.trip.count662
  br i1 %exitcond663.not, label %..loopexit_crit_edge.us, label %.preheader465.us.backedge

.preheader465.us.backedge:                        ; preds = %bb.t, %..loopexit_crit_edge.us
  %indvars.iv659.be = phi i64 [ %indvars.iv.next660, %bb.t ], [ 0, %..loopexit_crit_edge.us ]
  br label %.preheader465.us, !llvm.loop !101

..loopexit_crit_edge.us:                          ; preds = %bb.t
  %i.cw = icmp slt i32 %.2267.us, %i.bp
  br i1 %i.cw, label %.preheader465.us.backedge, label %.lr.ph555

.lr.ph537:                                        ; preds = %bb.p, %clusterManagerNodeArrayAdd.exit
  %i.cx = phi ptr [ %i.dy, %clusterManagerNodeArrayAdd.exit ], [ %i.cd, %bb.p ]
  %.0274535 = phi i32 [ %.1275, %clusterManagerNodeArrayAdd.exit ], [ 0, %bb.p ] ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !102 ; 3 uses
  %.not459530 = icmp sgt i32 %.0274535, 0
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !80 ; 2 uses
  br i1 %.not459530, label %.lr.ph533, label %.critedge463.loopexit

.lr.ph533:                                        ; preds = %.lr.ph537
  %wide.trip.count657 = zext nneg i32 %.0274535 to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph533, %bb.v
  %indvars.iv654 = phi i64 [ 0, %.lr.ph533 ], [ %indvars.iv.next655, %bb.v ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv654
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !29
  %i.de = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dd, ptr noundef nonnull dereferenceable(1) %i.db) #34
  %.not355 = icmp eq i32 %i.de, 0
  br i1 %.not355, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next655 = add nuw nsw i64 %indvars.iv654, 1 ; 2 uses
  %exitcond658.not = icmp eq i64 %indvars.iv.next655, %wide.trip.count657
  br i1 %exitcond658.not, label %.critedge463.loopexit.loopexit, label %bb.u, !llvm.loop !104

.critedge463.loopexit.loopexit:                   ; preds = %bb.v
  %5 = zext nneg i32 %.0274535 to i64
  br label %.critedge463.loopexit

.critedge463.loopexit:                            ; preds = %.lr.ph537, %.critedge463.loopexit.loopexit
  %.1229.lcssa = phi i64 [ %5, %.critedge463.loopexit.loopexit ], [ 0, %.lr.ph537 ]
  %i.df = add nsw i32 %.0274535, 1
  %i.dg = sext i32 %.0274535 to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.dg
  store ptr %i.db, ptr %i.dh, align 8, !tbaa !29
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %.critedge463.loopexit
  %.1229484 = phi i64 [ %.1229.lcssa, %.critedge463.loopexit ], [ %indvars.iv654, %bb.u ]
  %.1275 = phi i32 [ %i.df, %.critedge463.loopexit ], [ %.0274535, %bb.u ] ; 5 uses
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %.1229484 ; 7 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !98 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.x, label %._crit_edge699

._crit_edge699:                                   ; preds = %bb.w
  %.phi.trans.insert700 = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %.pre701 = load i32, ptr %.phi.trans.insert700, align 8, !tbaa !97
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dl = call noalias ptr @zcalloc(i64 noundef %i.by) #36 ; 3 uses
  store ptr %i.dl, ptr %i.di, align 8, !tbaa !98
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !105
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store i32 %i.bp, ptr %i.dn, align 8, !tbaa !97
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  store i32 0, ptr %i.do, align 4, !tbaa !94
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge699, %bb.x
  %i.dp = phi ptr [ %i.dj, %._crit_edge699 ], [ %i.dl, %bb.x ]
  %i.dq = phi i32 [ %.pre701, %._crit_edge699 ], [ %i.bp, %bb.x ] ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @__assert_fail(ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.7, i32 noundef 7007, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerNodeArrayAdd) #37
  unreachable

bb.aa:                                            ; preds = %bb.y
  %.not.i382 = icmp eq ptr %i.cz, null
  br i1 %.not.i382, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @__assert_fail(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.7, i32 noundef 7008, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerNodeArrayAdd) #37
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 20 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !94 ; 3 uses
  %i.du = icmp slt i32 %i.dt, %i.dq
  br i1 %i.du, label %clusterManagerNodeArrayAdd.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @__assert_fail(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.7, i32 noundef 7009, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerNodeArrayAdd) #37
  unreachable

clusterManagerNodeArrayAdd.exit:                  ; preds = %bb.ac
  %i.dv = add nsw i32 %i.dt, 1
  store i32 %i.dv, ptr %i.ds, align 4, !tbaa !94
  %i.dw = sext i32 %i.dt to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.dw
  store ptr %i.cz, ptr %i.dx, align 8, !tbaa !99
  %i.dy = call ptr @listNext(ptr noundef nonnull %4) #32 ; 2 uses
  %.not = icmp eq ptr %i.dy, null
  br i1 %.not, label %.preheader466, label %.lr.ph537, !llvm.loop !106

.preheader465:                                    ; preds = %.preheader465.preheader, %.preheader465
  br label %.preheader465

.split.us:                                        ; preds = %bb.q
  call void @__assert_fail(ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.7, i32 noundef 6994, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerNodeArrayShift) #37
  unreachable

.lr.ph555:                                        ; preds = %..loopexit_crit_edge.us, %.preheader466, %.preheader466.thread
  %i.dz = phi i1 [ false, %.preheader466 ], [ false, %.preheader466.thread ], [ true, %..loopexit_crit_edge.us ]
  %.0274.lcssa753 = phi i32 [ %.1275, %.preheader466 ], [ 0, %.preheader466.thread ], [ %.1275, %..loopexit_crit_edge.us ] ; 6 uses
  %.0265.lcssa = phi i32 [ 0, %.preheader466 ], [ 0, %.preheader466.thread ], [ %.2267.us, %..loopexit_crit_edge.us ]
  %i.ea = zext nneg i32 %i.bs to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.ea ; 7 uses
  %i.ec = sub nsw i32 %.0265.lcssa, %i.bs         ; 5 uses
  %i.ed = uitofp nneg i32 %i.bs to float
  %i.ee = fdiv float 1.638400e+04, %i.ed
  %i.ef = add nsw i32 %i.bs, -1
  %i.eg = zext nneg i32 %i.ef to i64
  %wide.trip.count670 = zext nneg i32 %i.bs to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph555, %._crit_edge550
  %indvars.iv667 = phi i64 [ 0, %.lr.ph555 ], [ %indvars.iv.next668, %._crit_edge550 ] ; 4 uses
  %.0284552 = phi i64 [ 0, %.lr.ph555 ], [ %i.fq, %._crit_edge550 ] ; 4 uses
  %.0295551 = phi float [ 0.000000e+00, %.lr.ph555 ], [ %i.ej, %._crit_edge550 ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv667
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !99 ; 3 uses
  %i.ej = fadd float %i.ee, %.0295551             ; 2 uses
  %i.ek = fadd float %i.ej, -1.000000e+00
  %i.el = fpext float %i.ek to double
  %i.em = call i64 @lround(double noundef %i.el) #32, !tbaa !9 ; 2 uses
  %i.en = icmp sgt i64 %i.em, 16384
  %i.eo = icmp eq i64 %indvars.iv667, %i.eg
  %or.cond366 = select i1 %i.en, i1 true, i1 %i.eo
  %.0302 = select i1 %or.cond366, i64 16383, i64 %i.em
  %.1303 = call i64 @llvm.smax.i64(i64 %.0302, i64 %.0284552) ; 6 uses
  %i.ep = trunc nuw nsw i64 %indvars.iv667 to i32
  %i.eq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.186, i32 noundef %i.ep, i64 noundef %.0284552, i64 noundef %.1303) ; 0 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ei, i64 16468 ; 11 uses
  store i32 0, ptr %i.er, align 4, !tbaa !107
  %sext611 = shl i64 %.0284552, 32
  %i.es = ashr exact i64 %sext611, 32             ; 4 uses
  %.not354546 = icmp slt i64 %.1303, %i.es
  br i1 %.not354546, label %._crit_edge550, label %.lr.ph549

.lr.ph549:                                        ; preds = %bb.ae
  %i.et = getelementptr inbounds nuw i8, ptr %i.ei, i64 84 ; 5 uses
  %i.eu = add i64 %.1303, 1
  %i.ev = sub i64 %i.eu, %.0284552
  %i.ew = sub i64 %.1303, %i.es
  %xtraiter = and i64 %i.ev, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph549, %.prol.preheader
  %indvars.iv664.prol = phi i64 [ %indvars.iv.next665.prol, %.prol.preheader ], [ %i.es, %.lr.ph549 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph549 ]
  %i.ex = getelementptr inbounds i8, ptr %i.et, i64 %indvars.iv664.prol
  store i8 1, ptr %i.ex, align 1, !tbaa !73
  %i.ey = load i32, ptr %i.er, align 4, !tbaa !107
  %i.ez = add nsw i32 %i.ey, 1
  store i32 %i.ez, ptr %i.er, align 4, !tbaa !107
  %indvars.iv.next665.prol = add nsw i64 %indvars.iv664.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !108

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph549
  %indvars.iv664.unr = phi i64 [ %i.es, %.lr.ph549 ], [ %indvars.iv.next665.prol, %.prol.preheader ]
  %i.fa = icmp ult i64 %i.ew, 3
  br i1 %i.fa, label %._crit_edge550, label %.lr.ph549.new

.lr.ph549.new:                                    ; preds = %.prol.loopexit, %.lr.ph549.new
  %indvars.iv664 = phi i64 [ %indvars.iv.next665.3, %.lr.ph549.new ], [ %indvars.iv664.unr, %.prol.loopexit ] ; 5 uses
  %i.fb = getelementptr inbounds i8, ptr %i.et, i64 %indvars.iv664
  store i8 1, ptr %i.fb, align 1, !tbaa !73
  %i.fc = load i32, ptr %i.er, align 4, !tbaa !107
  %i.fd = add nsw i32 %i.fc, 1
  store i32 %i.fd, ptr %i.er, align 4, !tbaa !107
  %i.fe = getelementptr i8, ptr %i.et, i64 %indvars.iv664
  %i.ff = getelementptr i8, ptr %i.fe, i64 1
  store i8 1, ptr %i.ff, align 1, !tbaa !73
  %i.fg = load i32, ptr %i.er, align 4, !tbaa !107
  %i.fh = add nsw i32 %i.fg, 1
  store i32 %i.fh, ptr %i.er, align 4, !tbaa !107
  %i.fi = getelementptr i8, ptr %i.et, i64 %indvars.iv664
  %i.fj = getelementptr i8, ptr %i.fi, i64 2
  store i8 1, ptr %i.fj, align 1, !tbaa !73
  %i.fk = load i32, ptr %i.er, align 4, !tbaa !107
  %i.fl = add nsw i32 %i.fk, 1
  store i32 %i.fl, ptr %i.er, align 4, !tbaa !107
  %indvars.iv.next665.2 = add nsw i64 %indvars.iv664, 3 ; 2 uses
  %i.fm = getelementptr inbounds i8, ptr %i.et, i64 %indvars.iv.next665.2
  store i8 1, ptr %i.fm, align 1, !tbaa !73
  %i.fn = load i32, ptr %i.er, align 4, !tbaa !107
  %i.fo = add nsw i32 %i.fn, 1
  store i32 %i.fo, ptr %i.er, align 4, !tbaa !107
  %indvars.iv.next665.3 = add nsw i64 %indvars.iv664, 4
  %.not354.not.3 = icmp sgt i64 %.1303, %indvars.iv.next665.2
  br i1 %.not354.not.3, label %.lr.ph549.new, label %._crit_edge550, !llvm.loop !110

._crit_edge550:                                   ; preds = %.prol.loopexit, %.lr.ph549.new, %bb.ae
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ei, i64 80
  store i32 1, ptr %i.fp, align 8, !tbaa !111
  %i.fq = add nuw nsw i64 %.1303, 1
  %indvars.iv.next668 = add nuw nsw i64 %indvars.iv667, 1 ; 2 uses
  %exitcond671.not = icmp eq i64 %indvars.iv.next668, %wide.trip.count670
  br i1 %exitcond671.not, label %._crit_edge556, label %bb.ae, !llvm.loop !112

._crit_edge556:                                   ; preds = %._crit_edge550
  %i.fr = load ptr, ptr %i.eb, align 8, !tbaa !99
  %i.fs = add nsw i32 %i.ec, -1                   ; 2 uses
  %i.ft = icmp sgt i32 %i.ec, 1
  br i1 %i.ft, label %.lr.ph559.preheader, label %._crit_edge560

.lr.ph559.preheader:                              ; preds = %._crit_edge556
  %wide.trip.count675 = zext nneg i32 %i.fs to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.ec, 5
  br i1 %min.iters.check, label %.lr.ph559.preheader878, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph559.preheader
  %n.vec = and i64 %wide.trip.count675, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %index ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %wide.load = load <2 x ptr>, ptr %i.fv, align 8, !tbaa !99
  %wide.load862 = load <2 x ptr>, ptr %i.fw, align 8, !tbaa !99
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %index ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store <2 x ptr> %wide.load, ptr %i.fx, align 8, !tbaa !99
  store <2 x ptr> %wide.load862, ptr %i.fy, align 8, !tbaa !99
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count675
  br i1 %cmp.n, label %._crit_edge560, label %.lr.ph559.preheader878
end_hunk_0
