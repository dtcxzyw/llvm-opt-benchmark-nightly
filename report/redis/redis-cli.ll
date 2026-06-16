inline.NumInlined: 395
inline.NumDeleted: 110
begin_hunk_0_@clusterManagerCommandCreate:bb.a
  %indvars.iv659.be = phi i64 [ %indvars.iv.next660, %bb.t ], [ 0, %..loopexit_crit_edge.us ]
  br label %.preheader465.us, !llvm.loop !101

..loopexit_crit_edge.us:                          ; preds = %bb.t
  %i.cw = icmp slt i32 %.2267.us, %i.bp
  br i1 %i.cw, label %.preheader465.us.backedge, label %.lr.ph555

.lr.ph537:                                        ; preds = %bb.p, %clusterManagerNodeArrayAdd.exit
  %i.cx = phi ptr [ %i.ea, %clusterManagerNodeArrayAdd.exit ], [ %i.cd, %bb.p ]
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
  br i1 %.not355, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next655 = add nuw nsw i64 %indvars.iv654, 1 ; 2 uses
  %exitcond658.not = icmp eq i64 %indvars.iv.next655, %wide.trip.count657
  br i1 %exitcond658.not, label %.critedge463.loopexit, label %bb.u, !llvm.loop !104

.critedge463.loopexit:                            ; preds = %bb.v, %.lr.ph537
  %.1229.lcssa = phi i32 [ 0, %.lr.ph537 ], [ %.0274535, %bb.v ]
  %i.df = add nsw i32 %.0274535, 1
  %i.dg = sext i32 %.0274535 to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.dg
  store ptr %i.db, ptr %i.dh, align 8, !tbaa !29
  br label %bb.w

.loopexit:                                        ; preds = %bb.u
  %i.di = trunc nuw nsw i64 %indvars.iv654 to i32
  br label %bb.w

bb.w:                                             ; preds = %.loopexit, %.critedge463.loopexit
  %.1229484 = phi i32 [ %.1229.lcssa, %.critedge463.loopexit ], [ %i.di, %.loopexit ]
  %.1275 = phi i32 [ %i.df, %.critedge463.loopexit ], [ %.0274535, %.loopexit ] ; 5 uses
  %i.dj = zext nneg i32 %.1229484 to i64
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %i.dj ; 7 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !98 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.x, label %._crit_edge699

._crit_edge699:                                   ; preds = %bb.w
  %.phi.trans.insert700 = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %.pre701 = load i32, ptr %.phi.trans.insert700, align 8, !tbaa !97
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dn = call noalias ptr @zcalloc(i64 noundef %i.by) #36 ; 3 uses
  store ptr %i.dn, ptr %i.dk, align 8, !tbaa !98
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !105
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store i32 %i.bp, ptr %i.dp, align 8, !tbaa !97
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 20
  store i32 0, ptr %i.dq, align 4, !tbaa !94
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge699, %bb.x
  %i.dr = phi ptr [ %i.dl, %._crit_edge699 ], [ %i.dn, %bb.x ]
  %i.ds = phi i32 [ %.pre701, %._crit_edge699 ], [ %i.bp, %bb.x ] ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %bb.aa, label %bb.z

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
  %i.du = getelementptr inbounds nuw i8, ptr %i.dk, i64 20 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !94 ; 3 uses
  %i.dw = icmp slt i32 %i.dv, %i.ds
  br i1 %i.dw, label %clusterManagerNodeArrayAdd.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @__assert_fail(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.7, i32 noundef 7009, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerNodeArrayAdd) #37
  unreachable

clusterManagerNodeArrayAdd.exit:                  ; preds = %bb.ac
  %i.dx = add nsw i32 %i.dv, 1
  store i32 %i.dx, ptr %i.du, align 4, !tbaa !94
  %i.dy = sext i32 %i.dv to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.dy
  store ptr %i.cz, ptr %i.dz, align 8, !tbaa !99
  %i.ea = call ptr @listNext(ptr noundef nonnull %4) #32 ; 2 uses
  %.not = icmp eq ptr %i.ea, null
  br i1 %.not, label %.preheader466, label %.lr.ph537, !llvm.loop !106

.preheader465:                                    ; preds = %.preheader465.preheader, %.preheader465
  br label %.preheader465

.split.us:                                        ; preds = %bb.q
  call void @__assert_fail(ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.7, i32 noundef 6994, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerNodeArrayShift) #37
  unreachable

.lr.ph555:                                        ; preds = %..loopexit_crit_edge.us, %.preheader466, %.preheader466.thread
  %i.eb = phi i1 [ false, %.preheader466 ], [ false, %.preheader466.thread ], [ true, %..loopexit_crit_edge.us ]
  %.0274.lcssa753 = phi i32 [ %.1275, %.preheader466 ], [ 0, %.preheader466.thread ], [ %.1275, %..loopexit_crit_edge.us ] ; 6 uses
  %.0265.lcssa = phi i32 [ 0, %.preheader466 ], [ 0, %.preheader466.thread ], [ %.2267.us, %..loopexit_crit_edge.us ]
  %i.ec = zext nneg i32 %i.bs to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.ec ; 7 uses
  %i.ee = sub nsw i32 %.0265.lcssa, %i.bs         ; 5 uses
  %i.ef = uitofp nneg i32 %i.bs to float
  %i.eg = fdiv float 1.638400e+04, %i.ef
  %i.eh = add nsw i32 %i.bs, -1
  %i.ei = zext nneg i32 %i.eh to i64
  %wide.trip.count670 = zext nneg i32 %i.bs to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph555, %._crit_edge550
  %indvars.iv667 = phi i64 [ 0, %.lr.ph555 ], [ %indvars.iv.next668, %._crit_edge550 ] ; 4 uses
  %.0284552 = phi i64 [ 0, %.lr.ph555 ], [ %i.fs, %._crit_edge550 ] ; 4 uses
  %.0295551 = phi float [ 0.000000e+00, %.lr.ph555 ], [ %i.el, %._crit_edge550 ]
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv667
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !99 ; 3 uses
  %i.el = fadd float %i.eg, %.0295551             ; 2 uses
  %i.em = fadd float %i.el, -1.000000e+00
  %i.en = fpext float %i.em to double
  %i.eo = call i64 @lround(double noundef %i.en) #32, !tbaa !9 ; 2 uses
  %i.ep = icmp sgt i64 %i.eo, 16384
  %i.eq = icmp eq i64 %indvars.iv667, %i.ei
  %or.cond366 = select i1 %i.ep, i1 true, i1 %i.eq
  %.0302 = select i1 %or.cond366, i64 16383, i64 %i.eo
  %.1303 = call i64 @llvm.smax.i64(i64 %.0302, i64 %.0284552) ; 6 uses
  %i.er = trunc nuw nsw i64 %indvars.iv667 to i32
  %i.es = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.186, i32 noundef %i.er, i64 noundef %.0284552, i64 noundef %.1303) ; 0 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ek, i64 16468 ; 11 uses
  store i32 0, ptr %i.et, align 4, !tbaa !107
  %sext611 = shl i64 %.0284552, 32
  %i.eu = ashr exact i64 %sext611, 32             ; 4 uses
  %.not354546 = icmp slt i64 %.1303, %i.eu
  br i1 %.not354546, label %._crit_edge550, label %.lr.ph549

.lr.ph549:                                        ; preds = %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ek, i64 84 ; 5 uses
  %i.ew = add i64 %.1303, 1
  %i.ex = sub i64 %i.ew, %.0284552
  %i.ey = sub i64 %.1303, %i.eu
  %xtraiter = and i64 %i.ex, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph549, %.prol.preheader
  %indvars.iv664.prol = phi i64 [ %indvars.iv.next665.prol, %.prol.preheader ], [ %i.eu, %.lr.ph549 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph549 ]
  %i.ez = getelementptr inbounds i8, ptr %i.ev, i64 %indvars.iv664.prol
  store i8 1, ptr %i.ez, align 1, !tbaa !73
  %i.fa = load i32, ptr %i.et, align 4, !tbaa !107
  %i.fb = add nsw i32 %i.fa, 1
  store i32 %i.fb, ptr %i.et, align 4, !tbaa !107
  %indvars.iv.next665.prol = add nsw i64 %indvars.iv664.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !108

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph549
  %indvars.iv664.unr = phi i64 [ %i.eu, %.lr.ph549 ], [ %indvars.iv.next665.prol, %.prol.preheader ]
  %i.fc = icmp ult i64 %i.ey, 3
  br i1 %i.fc, label %._crit_edge550, label %.lr.ph549.new

.lr.ph549.new:                                    ; preds = %.prol.loopexit, %.lr.ph549.new
  %indvars.iv664 = phi i64 [ %indvars.iv.next665.3, %.lr.ph549.new ], [ %indvars.iv664.unr, %.prol.loopexit ] ; 5 uses
  %i.fd = getelementptr inbounds i8, ptr %i.ev, i64 %indvars.iv664
  store i8 1, ptr %i.fd, align 1, !tbaa !73
  %i.fe = load i32, ptr %i.et, align 4, !tbaa !107
  %i.ff = add nsw i32 %i.fe, 1
  store i32 %i.ff, ptr %i.et, align 4, !tbaa !107
  %i.fg = getelementptr i8, ptr %i.ev, i64 %indvars.iv664
  %i.fh = getelementptr i8, ptr %i.fg, i64 1
  store i8 1, ptr %i.fh, align 1, !tbaa !73
  %i.fi = load i32, ptr %i.et, align 4, !tbaa !107
  %i.fj = add nsw i32 %i.fi, 1
  store i32 %i.fj, ptr %i.et, align 4, !tbaa !107
  %i.fk = getelementptr i8, ptr %i.ev, i64 %indvars.iv664
  %i.fl = getelementptr i8, ptr %i.fk, i64 2
  store i8 1, ptr %i.fl, align 1, !tbaa !73
  %i.fm = load i32, ptr %i.et, align 4, !tbaa !107
  %i.fn = add nsw i32 %i.fm, 1
  store i32 %i.fn, ptr %i.et, align 4, !tbaa !107
  %indvars.iv.next665.2 = add nsw i64 %indvars.iv664, 3 ; 2 uses
  %i.fo = getelementptr inbounds i8, ptr %i.ev, i64 %indvars.iv.next665.2
  store i8 1, ptr %i.fo, align 1, !tbaa !73
  %i.fp = load i32, ptr %i.et, align 4, !tbaa !107
  %i.fq = add nsw i32 %i.fp, 1
  store i32 %i.fq, ptr %i.et, align 4, !tbaa !107
  %indvars.iv.next665.3 = add nsw i64 %indvars.iv664, 4
  %.not354.not.3 = icmp sgt i64 %.1303, %indvars.iv.next665.2
  br i1 %.not354.not.3, label %.lr.ph549.new, label %._crit_edge550, !llvm.loop !110

._crit_edge550:                                   ; preds = %.prol.loopexit, %.lr.ph549.new, %bb.ae
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ek, i64 80
  store i32 1, ptr %i.fr, align 8, !tbaa !111
  %i.fs = add nuw nsw i64 %.1303, 1
  %indvars.iv.next668 = add nuw nsw i64 %indvars.iv667, 1 ; 2 uses
  %exitcond671.not = icmp eq i64 %indvars.iv.next668, %wide.trip.count670
  br i1 %exitcond671.not, label %._crit_edge556, label %bb.ae, !llvm.loop !112

._crit_edge556:                                   ; preds = %._crit_edge550
  %i.ft = load ptr, ptr %i.ed, align 8, !tbaa !99
  %i.fu = add nsw i32 %i.ee, -1                   ; 2 uses
  %i.fv = icmp sgt i32 %i.ee, 1
  br i1 %i.fv, label %.lr.ph559.preheader, label %._crit_edge560

.lr.ph559.preheader:                              ; preds = %._crit_edge556
  %wide.trip.count675 = zext nneg i32 %i.fu to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.ee, 5
  br i1 %min.iters.check, label %.lr.ph559.preheader886, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph559.preheader
  %n.vec = and i64 %wide.trip.count675, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %index ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %wide.load = load <2 x ptr>, ptr %i.fx, align 8, !tbaa !99
  %wide.load870 = load <2 x ptr>, ptr %i.fy, align 8, !tbaa !99
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %index ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store <2 x ptr> %wide.load, ptr %i.fz, align 8, !tbaa !99
  store <2 x ptr> %wide.load870, ptr %i.ga, align 8, !tbaa !99
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gb = icmp eq i64 %index.next, %n.vec
  br i1 %i.gb, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count675
  br i1 %cmp.n, label %._crit_edge560, label %.lr.ph559.preheader886

.lr.ph559.preheader886:                           ; preds = %.lr.ph559.preheader, %middle.block
  %indvars.iv672.ph = phi i64 [ 0, %.lr.ph559.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph559

.lr.ph559:                                        ; preds = %.lr.ph559.preheader886, %.lr.ph559
  %indvars.iv672 = phi i64 [ %indvars.iv.next673, %.lr.ph559 ], [ %indvars.iv672.ph, %.lr.ph559.preheader886 ] ; 2 uses
  %indvars.iv.next673 = add nuw nsw i64 %indvars.iv672, 1 ; 3 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv.next673
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !99
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv672
  store ptr %i.gd, ptr %i.ge, align 8, !tbaa !99
  %exitcond676.not = icmp eq i64 %indvars.iv.next673, %wide.trip.count675
  br i1 %exitcond676.not, label %._crit_edge560, label %.lr.ph559, !llvm.loop !116

._crit_edge560:                                   ; preds = %.lr.ph559, %middle.block, %._crit_edge556
  %i.gf = sext i32 %i.fu to i64
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.gf
  store ptr %i.ft, ptr %i.gg, align 8, !tbaa !99
  %wide.trip.count686 = zext nneg i32 %i.bs to i64
  br label %.lr.ph573.preheader

.lr.ph573.preheader:                              ; preds = %._crit_edge560, %bb.an
  %i.gh = phi i1 [ true, %._crit_edge560 ], [ false, %bb.an ] ; 2 uses
  %.0296 = phi i32 [ %i.ee, %._crit_edge560 ], [ %.4300, %bb.an ]
  %.0276 = phi ptr [ %i.ed, %._crit_edge560 ], [ %.4280, %bb.an ]
  %.3268 = phi i32 [ %i.ee, %._crit_edge560 ], [ %.7272, %bb.an ]
  br label %.lr.ph573

.lr.ph573:                                        ; preds = %.lr.ph573.preheader, %.thread429
  %indvars.iv682 = phi i64 [ 0, %.lr.ph573.preheader ], [ %indvars.iv.next683, %.thread429 ] ; 2 uses
  %.4269570 = phi i32 [ %.3268, %.lr.ph573.preheader ], [ %.7272, %.thread429 ]
  %.1277569 = phi ptr [ %.0276, %.lr.ph573.preheader ], [ %.4280, %.thread429 ]
  %.1297568 = phi i32 [ %.0296, %.lr.ph573.preheader ], [ %.4300, %.thread429 ]
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv682
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !99 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  br label %bb.af

bb.af:                                            ; preds = %bb.am, %.lr.ph573
  %.2298 = phi i32 [ %.1297568, %.lr.ph573 ], [ %i.hj, %bb.am ] ; 5 uses
  %.0293 = phi i32 [ 0, %.lr.ph573 ], [ %i.hi, %bb.am ] ; 2 uses
  %.2278 = phi ptr [ %.1277569, %.lr.ph573 ], [ %.3279426, %bb.am ] ; 7 uses
  %.5270 = phi i32 [ %.4269570, %.lr.ph573 ], [ %.6271427, %bb.am ] ; 6 uses
  %i.gn = icmp slt i32 %.0293, %i.bq
  %i.go = icmp ne i32 %.2298, 0
  %or.cond3.not832 = select i1 %i.gn, i1 %i.go, i1 false
  %i.gp = icmp sgt i32 %.5270, 0
  %or.cond767 = select i1 %or.cond3.not832, i1 %i.gp, i1 false
  br i1 %or.cond767, label %.lr.ph565.preheader, label %.thread429

.lr.ph565.preheader:                              ; preds = %bb.af
  %wide.trip.count680 = zext nneg i32 %.5270 to i64
  br label %.lr.ph565

.lr.ph565:                                        ; preds = %.lr.ph565.preheader, %bb.ai
  %indvars.iv677 = phi i64 [ 0, %.lr.ph565.preheader ], [ %indvars.iv.next678, %bb.ai ] ; 4 uses
  %.0285563 = phi i32 [ -1, %.lr.ph565.preheader ], [ %.2287.ph, %bb.ai ] ; 3 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %.2278, i64 %indvars.iv677
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !99 ; 3 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph565
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !80
  %i.gv = load ptr, ptr %i.gk, align 8, !tbaa !80
  %i.gw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gu, ptr noundef nonnull dereferenceable(1) %i.gv) #34
  %.not349 = icmp eq i32 %i.gw, 0
  br i1 %.not349, label %bb.ah, label %.thread420

bb.ah:                                            ; preds = %bb.ag
  %i.gx = icmp slt i32 %.0285563, 0
  %i.gy = trunc nuw nsw i64 %indvars.iv677 to i32
  %spec.select = select i1 %i.gx, i32 %i.gy, i32 %.0285563
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph565
  %.2287.ph = phi i32 [ %.0285563, %.lr.ph565 ], [ %spec.select, %bb.ah ] ; 4 uses
  %indvars.iv.next678 = add nuw nsw i64 %indvars.iv677, 1 ; 2 uses
  %exitcond681.not = icmp eq i64 %indvars.iv.next678, %wide.trip.count680
  br i1 %exitcond681.not, label %._crit_edge566, label %.lr.ph565, !llvm.loop !117

.thread420:                                       ; preds = %bb.ag
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %.2278, i64 %indvars.iv677
  store ptr null, ptr %i.gz, align 8, !tbaa !99
  br label %bb.ak

._crit_edge566:                                   ; preds = %bb.ai
  %i.ha = icmp sgt i32 %.2287.ph, -1
  br i1 %i.ha, label %bb.aj, label %.thread429

bb.aj:                                            ; preds = %._crit_edge566
  %i.hb = zext nneg i32 %.2287.ph to i64
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.2278, i64 %i.hb
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !99 ; 2 uses
  %i.he = add nuw nsw i32 %.2287.ph, 1            ; 2 uses
  %i.hf = sub nsw i32 %.5270, %i.he               ; 2 uses
  %i.hg = zext nneg i32 %i.he to i64
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %.2278, i64 %i.hg ; 2 uses
  %.not351 = icmp eq ptr %i.hd, null
  br i1 %.not351, label %.thread429, label %bb.ak

bb.ak:                                            ; preds = %.thread420, %bb.aj
  %.6271427 = phi i32 [ %.5270, %.thread420 ], [ %i.hf, %bb.aj ] ; 2 uses
  %.3279426 = phi ptr [ %.2278, %.thread420 ], [ %i.hh, %bb.aj ] ; 2 uses
  %.0289425 = phi ptr [ %i.gr, %.thread420 ], [ %i.hd, %bb.aj ] ; 4 uses
  %i.hi = add nuw nsw i32 %.0293, 1
  %i.hj = add nsw i32 %.2298, -1                  ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.0289425, i64 72 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !118 ; 2 uses
  %.not352 = icmp eq ptr %i.hl, null
  br i1 %.not352, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @hi_sdsfree(ptr noundef nonnull %i.hl) #32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.hm = load ptr, ptr %i.gl, align 8, !tbaa !119
  %i.hn = call ptr @hi_sdsnew(ptr noundef %i.hm) #32
  store ptr %i.hn, ptr %i.hk, align 8, !tbaa !118
  %i.ho = getelementptr inbounds nuw i8, ptr %.0289425, i64 80
  store i32 1, ptr %i.ho, align 8, !tbaa !111
  %i.hp = getelementptr inbounds nuw i8, ptr %.0289425, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !80
  %i.hr = getelementptr inbounds nuw i8, ptr %.0289425, i64 24
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !83
  %i.ht = load ptr, ptr %i.gk, align 8, !tbaa !80
  %i.hu = load i32, ptr %i.gm, align 8, !tbaa !83
  %i.hv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.187, ptr noundef %i.hq, i32 noundef %i.hs, ptr noundef %i.ht, i32 noundef %i.hu) ; 0 uses
  br i1 %i.gh, label %bb.af, label %.thread429

.thread429:                                       ; preds = %._crit_edge566, %bb.am, %bb.aj, %bb.af
  %.4300 = phi i32 [ %.2298, %bb.af ], [ %.2298, %bb.aj ], [ %i.hj, %bb.am ], [ %.2298, %._crit_edge566 ] ; 3 uses
  %.4280 = phi ptr [ %.2278, %bb.af ], [ %i.hh, %bb.aj ], [ %.3279426, %bb.am ], [ %.2278, %._crit_edge566 ] ; 2 uses
  %.7272 = phi i32 [ %.5270, %bb.af ], [ %i.hf, %bb.aj ], [ %.6271427, %bb.am ], [ %.5270, %._crit_edge566 ] ; 2 uses
  %indvars.iv.next683 = add nuw nsw i64 %indvars.iv682, 1 ; 2 uses
  %exitcond687.not = icmp eq i64 %indvars.iv.next683, %wide.trip.count686
  br i1 %exitcond687.not, label %._crit_edge574, label %.lr.ph573, !llvm.loop !120

._crit_edge574:                                   ; preds = %.thread429
  %i.hw = icmp sgt i32 %.4300, 0
  %or.cond = select i1 %i.gh, i1 %i.hw, i1 false
  br i1 %or.cond, label %bb.an, label %.preheader

.preheader:                                       ; preds = %._crit_edge574
  %i.hx = icmp sgt i32 %.0274.lcssa753, 0
  br i1 %i.hx, label %.lr.ph579.preheader, label %._crit_edge580

.lr.ph579.preheader:                              ; preds = %.preheader
  %wide.trip.count691 = zext nneg i32 %.0274.lcssa753 to i64
  br label %.lr.ph579

bb.an:                                            ; preds = %._crit_edge574
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
end_hunk_0
begin_hunk_1_@clusterManagerNodeLoadInfo:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 4 uses
  %i.ad = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ac, i32 noundef 32) #34 ; 3 uses
  %.not220.2 = icmp eq ptr %i.ad, null
  br i1 %.not220.2, label %clusterManagerCheckRedisReply.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.ad, align 1, !tbaa !73
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 7 uses
  %i.af = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ae, i32 noundef 32) #34 ; 3 uses
  %.not220.3 = icmp eq ptr %i.af, null
  br i1 %.not220.3, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.af, align 1, !tbaa !73
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 6 uses
  %i.ah = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ag, i32 noundef 32) #34 ; 3 uses
  %.not220.4 = icmp eq ptr %i.ah, null
  br i1 %.not220.4, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.ah, align 1, !tbaa !73
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 5 uses
  %i.aj = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ai, i32 noundef 32) #34 ; 3 uses
  %.not220.5 = icmp eq ptr %i.aj, null
  br i1 %.not220.5, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.aj, align 1, !tbaa !73
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 4 uses
  %i.al = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ak, i32 noundef 32) #34 ; 3 uses
  %.not220.6 = icmp eq ptr %i.al, null
  br i1 %.not220.6, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.al, align 1, !tbaa !73
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 2 uses
  %i.an = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.am, i32 noundef 32) #34 ; 3 uses
  %.not220.7 = icmp eq ptr %i.an, null
  br i1 %.not220.7, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.an, align 1, !tbaa !73
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  br label %bb.l

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
  br i1 %.ph, label %bb.q, label %.thread336

bb.q:                                             ; preds = %bb.p
  %i.bd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1168.ph) #34
  %i.be = trunc i64 %i.bd to i32                  ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph272, label %.thread336

.lr.ph272:                                        ; preds = %bb.q, %.loopexit
  %.2169271 = phi ptr [ %.3170, %.loopexit ], [ %.1168.ph, %bb.q ] ; 9 uses
  %.0184270 = phi i32 [ %.1185, %.loopexit ], [ %i.be, %bb.q ] ; 2 uses
  %i.bg = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.2169271, i32 noundef 32) #34 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  %i.bi = zext nneg i32 %.0184270 to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %.2169271, i64 %i.bi
  %.0166 = select i1 %i.bh, ptr %i.bj, ptr %i.bg  ; 4 uses
  %i.bk = ptrtoint ptr %.0166 to i64
  %i.bl = ptrtoint ptr %.2169271 to i64
  %.neg = sub i64 %i.bl, %i.bk
  %i.bm = trunc i64 %.neg to i32
  %i.bn = add i32 %.0184270, %i.bm                ; 2 uses
  store i8 0, ptr %.0166, align 1, !tbaa !73
  %.not234 = icmp ne i32 %i.bn, 0
  %.1185 = call i32 @llvm.usub.sat.i32(i32 %i.bn, i32 1) ; 2 uses
  %.3170.idx = zext i1 %.not234 to i64
  %.3170 = getelementptr inbounds nuw i8, ptr %.0166, i64 %.3170.idx
  %i.bo = load i8, ptr %.2169271, align 1, !tbaa !73
  %i.bp = icmp eq i8 %i.bo, 91
  br i1 %i.bp, label %bb.r, label %bb.z

bb.r:                                             ; preds = %.lr.ph272
  %i.bq = getelementptr inbounds nuw i8, ptr %.2169271, i64 1 ; 4 uses
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

bb.z:                                             ; preds = %.lr.ph272
  %i.cx = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.2169271, i32 noundef 45) #34 ; 3 uses
  %.not235 = icmp eq ptr %i.cx, null
  br i1 %.not235, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i8 0, ptr %i.cx, align 1, !tbaa !73
  %i.cy = call i64 @__isoc23_strtol(ptr noundef nonnull %.2169271, ptr noundef null, i32 noundef 10) #32, !inline_history !55 ; 2 uses
  %i.cz = trunc i64 %i.cy to i32                  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  %i.db = call i64 @__isoc23_strtol(ptr noundef nonnull %i.da, ptr noundef null, i32 noundef 10) #32, !inline_history !55
  %i.dc = trunc i64 %i.db to i32                  ; 2 uses
  %reass.sub = sub i32 %i.dc, %i.cz               ; 2 uses
  %i.dd = add i32 %reass.sub, 1
  %i.de = load i32, ptr %i.s, align 4, !tbaa !107
  %i.df = add nsw i32 %i.dd, %i.de
  store i32 %i.df, ptr %i.s, align 4, !tbaa !107
  %.not236268 = icmp sgt i32 %i.cz, %i.dc
  br i1 %.not236268, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.aa
  %sext312 = shl i64 %i.cy, 32
  %i.dg = ashr exact i64 %sext312, 32
  %scevgep286 = getelementptr i8, ptr %i.r, i64 %i.dg
  %i.dh = zext i32 %reass.sub to i64
  %i.di = add nuw nsw i64 %i.dh, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep286, i8 1, i64 %i.di, i1 false), !tbaa !73
  br label %.loopexit

bb.ab:                                            ; preds = %bb.z
  %i.dj = icmp ugt ptr %.0166, %.2169271
  br i1 %i.dj, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.dk = call i64 @__isoc23_strtol(ptr noundef nonnull %.2169271, ptr noundef null, i32 noundef 10) #32, !inline_history !55
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
  br i1 %i.dp, label %.lr.ph272, label %bb.ah, !llvm.loop !452

bb.ad:                                            ; preds = %bb.o
  br i1 %.not223, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dq = load i32, ptr %i.p, align 8, !tbaa !141
  %i.dr = and i32 %i.dq, 1
  %.not224 = icmp eq i32 %i.dr, 0
  br i1 %.not224, label %select.unfold257, label %.clusterManagerCheckRedisReply.exit.thread.loopexit_crit_edge280, !llvm.loop !453

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
  br i1 %i.ei, label %bb.ag, label %.thread330

bb.ag:                                            ; preds = %bb.af
  %i.ej = call ptr @listCreate() #32              ; 2 uses
  store ptr %i.ej, ptr %i.o, align 8, !tbaa !446
  br label %.thread330

.thread330:                                       ; preds = %bb.af, %bb.ag
  %i.ek = phi ptr [ %i.ej, %bb.ag ], [ %i.eh, %bb.af ]
  %i.el = call ptr @listAddNodeTail(ptr noundef %i.ek, ptr noundef nonnull %i.dt) #32 ; 0 uses
  br label %bb.ai

.thread336:                                       ; preds = %bb.p, %bb.q
  store i32 0, ptr %i.x, align 8, !tbaa !111
  br label %bb.ai

bb.ah:                                            ; preds = %.loopexit
  store i32 0, ptr %i.x, align 8, !tbaa !111
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.thread336, %.thread330
  %.0186333 = phi ptr [ %i.dt, %.thread330 ], [ %0, %bb.ah ], [ %0, %.thread336 ] ; 7 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0186333, i64 8 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !119 ; 2 uses
  %.not226 = icmp eq ptr %i.en, null
  br i1 %.not226, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @hi_sdsfree(ptr noundef nonnull %i.en) #32
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.eo = call ptr @hi_sdsnew(ptr noundef nonnull %.0164277) #32
  store ptr %i.eo, ptr %i.em, align 8, !tbaa !119
  %i.ep = getelementptr inbounds nuw i8, ptr %.0186333, i64 64 ; 3 uses
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
  br i1 %i.ez, label %.lr.ph274, label %._crit_edge

.lr.ph274:                                        ; preds = %bb.am
  %i.fa = getelementptr inbounds nuw i8, ptr %.0186333, i64 56 ; 8 uses
  %.not232 = icmp eq ptr %.2183.ph, null
  %i.fb = getelementptr inbounds nuw i8, ptr %.0186333, i64 72 ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph274, %bb.bb
  %i.fc = phi i64 [ %i.ex, %.lr.ph274 ], [ %i.gd, %bb.bb ]
  %.3180273 = phi ptr [ %i.ac, %.lr.ph274 ], [ %.4, %bb.bb ] ; 4 uses
  %i.fd = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.3180273, i32 noundef 44) #34 ; 3 uses
  %.not231 = icmp eq ptr %i.fd, null
  br i1 %.not231, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i8 0, ptr %i.fd, align 1, !tbaa !73
  %i.fe = call ptr @hi_sdsnew(ptr noundef nonnull %.3180273) #32
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.fg = call ptr @hi_sdsnew(ptr noundef nonnull %.3180273) #32
  %i.fh = and i64 %i.fc, 2147483647
  %i.fi = getelementptr inbounds nuw i8, ptr %.3180273, i64 %i.fh
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
end_hunk_1
begin_hunk_2_@clusterManagerFlushNodeConfig:bb.a
  %i.u = load i32, ptr %i.t, align 4, !tbaa !107  ; 2 uses
  %i.v = add nsw i32 %i.u, 2                      ; 4 uses
  %i.w = sext i32 %i.v to i64
  %i.x = shl nsw i64 %i.w, 3                      ; 2 uses
  %i.y = tail call noalias ptr @zmalloc(i64 noundef %i.x) #36 ; 7 uses
  %i.z = tail call noalias ptr @zmalloc(i64 noundef %i.x) #36 ; 6 uses
  store ptr @.str.250, ptr %i.y, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @.str.251, ptr %i.aa, align 8, !tbaa !29
  store i64 7, ptr %i.z, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 8, ptr %i.ab, align 8, !tbaa !26
  store ptr null, ptr %1, align 8, !tbaa !29
  %.not48.i = icmp sgt i32 %i.u, 0
  br i1 %.not48.i, label %.lr.ph.i, label %clusterManagerAddSlots.exit.thread

clusterManagerAddSlots.exit.thread:               ; preds = %bb.e
  tail call void @zfree(ptr noundef nonnull %i.z) #32
  tail call void @zfree(ptr noundef nonnull %i.y) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.s

.lr.ph.i:                                         ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 84
  br label %bb.f

bb.f:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 4 uses
  %.050.i = phi i32 [ 2, %.lr.ph.i ], [ %.1.i, %bb.m ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !73
  %.not45.i = icmp eq i8 %i.ae, 0
  br i1 %.not45.i, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = tail call ptr @hi_sdsfromlonglong(i64 noundef %indvars.iv.i) #32 ; 6 uses
  %i.ag = sext i32 %.050.i to i64                 ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ag
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !29
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 -1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !73
  %i.ak = zext i8 %i.aj to i32                    ; 2 uses
  %i.al = and i32 %i.ak, 7
  switch i32 %i.al, label %hi_sdslen.exit.i [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 3, label %bb.k
    i32 4, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  %i.am = lshr i32 %i.ak, 3
  %i.an = zext nneg i32 %i.am to i64
  br label %hi_sdslen.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds i8, ptr %i.af, i64 -3
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !73
  %i.aq = zext i8 %i.ap to i64
  br label %hi_sdslen.exit.i

bb.j:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds i8, ptr %i.af, i64 -5
  %i.as = load i16, ptr %i.ar, align 1, !tbaa !74
  %i.at = zext i16 %i.as to i64
  br label %hi_sdslen.exit.i

bb.k:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds i8, ptr %i.af, i64 -9
  %i.av = load i32, ptr %i.au, align 1, !tbaa !9
  %i.aw = zext i32 %i.av to i64
  br label %hi_sdslen.exit.i

bb.l:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds i8, ptr %i.af, i64 -17
  %i.ay = load i64, ptr %i.ax, align 1, !tbaa !26
  br label %hi_sdslen.exit.i

hi_sdslen.exit.i:                                 ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.0.i.i = phi i64 [ %i.ay, %bb.l ], [ %i.an, %bb.h ], [ %i.aq, %bb.i ], [ %i.at, %bb.j ], [ %i.aw, %bb.k ], [ 0, %bb.g ]
  %i.az = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ag
  store i64 %.0.i.i, ptr %i.az, align 8, !tbaa !26
  %i.ba = add nsw i32 %.050.i, 1
  br label %bb.m

bb.m:                                             ; preds = %hi_sdslen.exit.i, %bb.f
  %.1.i = phi i32 [ %i.ba, %hi_sdslen.exit.i ], [ %.050.i, %bb.f ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.bb = icmp samesign ult i64 %indvars.iv.i, 16383
  %.not.i = icmp slt i32 %.1.i, %i.v
  %or.cond.i = select i1 %i.bb, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.f, label %._crit_edge.i, !llvm.loop !465

._crit_edge.i:                                    ; preds = %bb.m
  %i.bc = icmp eq i32 %.1.i, 2
  br i1 %i.bc, label %clusterManagerCheckRedisReply.exit.i, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i
  %i.bd = load ptr, ptr %0, align 8, !tbaa !88
  %i.be = tail call i32 @redisAppendCommandArgv(ptr noundef %i.bd, i32 noundef %i.v, ptr noundef nonnull %i.y, ptr noundef nonnull %i.z) #32 ; 0 uses
  %i.bf = load ptr, ptr %0, align 8, !tbaa !88
  %i.bg = call i32 @redisGetReply(ptr noundef %i.bf, ptr noundef nonnull %i.a) #32
  %.not46.i = icmp eq i32 %i.bg, 0
  br i1 %.not46.i, label %bb.o, label %clusterManagerCheckRedisReply.exit.i

bb.o:                                             ; preds = %bb.n
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !28  ; 6 uses
  %.not.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i, label %clusterManagerCheckRedisReply.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !41
  %.not19.i.i = icmp eq i32 %i.bi, 6
  br i1 %.not19.i.i, label %.critedge18.i.i, label %clusterManagerCheckRedisReply.exit.i

.critedge18.i.i:                                  ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !70
  %i.bl = add i64 %i.bk, 1
  %i.bm = call noalias ptr @zmalloc(i64 noundef %i.bl) #36 ; 2 uses
  store ptr %i.bm, ptr %1, align 8, !tbaa !29
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !42
  %i.bp = load i64, ptr %i.bj, align 8, !tbaa !70
  %i.bq = add i64 %i.bp, 1
  %i.br = call i64 @redis_strlcpy(ptr noundef %i.bm, ptr noundef %i.bo, i64 noundef %i.bq) #32 ; 0 uses
  br label %clusterManagerCheckRedisReply.exit.i

clusterManagerCheckRedisReply.exit.i:             ; preds = %.critedge18.i.i, %bb.p, %bb.o, %bb.n, %._crit_edge.i
  %.not33 = phi i1 [ true, %bb.n ], [ true, %._crit_edge.i ], [ false, %bb.p ], [ true, %bb.o ], [ true, %.critedge18.i.i ]
  %.043.i = phi ptr [ null, %bb.n ], [ null, %._crit_edge.i ], [ %i.bh, %bb.p ], [ null, %bb.o ], [ %i.bh, %.critedge18.i.i ] ; 2 uses
  call void @zfree(ptr noundef nonnull %i.z) #32
  %wide.trip.count.i = zext nneg i32 %i.v to i64
  br label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %.lr.ph52.i, %clusterManagerCheckRedisReply.exit.i
  %indvars.iv55.i = phi i64 [ 2, %clusterManagerCheckRedisReply.exit.i ], [ %indvars.iv.next56.i, %.lr.ph52.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv55.i
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !29
  call void @hi_sdsfree(ptr noundef %i.bt) #32
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next56.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge53.i, label %.lr.ph52.i, !llvm.loop !466

._crit_edge53.i:                                  ; preds = %.lr.ph52.i
  call void @zfree(ptr noundef nonnull %i.y) #32
  %.not47.i = icmp eq ptr %.043.i, null
  br i1 %.not47.i, label %clusterManagerAddSlots.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge53.i
  call void @freeReplyObject(ptr noundef nonnull %.043.i) #32
  br label %clusterManagerAddSlots.exit

clusterManagerAddSlots.exit:                      ; preds = %._crit_edge53.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br i1 %.not33, label %bb.s, label %bb.r

bb.r:                                             ; preds = %clusterManagerAddSlots.exit
  %i.bu = load ptr, ptr %1, align 8, !tbaa !29
  %.not34 = icmp eq ptr %i.bu, null
  br i1 %.not34, label %.critedge.thread49, label %bb.s

bb.s:                                             ; preds = %clusterManagerAddSlots.exit.thread, %bb.r, %clusterManagerAddSlots.exit
  br label %.critedge.thread49

.critedge.thread49:                               ; preds = %bb.s, %bb.r
  %.1.ph = phi i32 [ 1, %bb.r ], [ 0, %bb.s ]
  store i32 0, ptr %i.b, align 8, !tbaa !111
  br label %.critedge.thread

.critedge:                                        ; preds = %bb.d
  store i32 0, ptr %i.b, align 8, !tbaa !111
  br label %bb.t

bb.t:                                             ; preds = %.critedge, %.critedge.thread43
  %.248 = phi i32 [ 0, %.critedge.thread43 ], [ 1, %.critedge ]
  tail call void @freeReplyObject(ptr noundef nonnull %i.g) #32
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.c, %.critedge.thread49, %bb.t, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %.248, %bb.t ], [ %.1.ph, %.critedge.thread49 ], [ 0, %bb.c ]
  ret i32 %.0
}

declare i32 @anetResolve(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

declare i32 @sleep(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc void @clusterManagerWaitForClusterJoin() unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.listIter, align 8           ; 5 uses
  %1 = alloca %struct.listIter, align 8           ; 5 uses
  %2 = alloca %struct.dictIterator, align 8       ; 6 uses
  %3 = alloca %struct.listIter, align 8           ; 5 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.45) ; 0 uses
  %i.a = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !90
  %4 = uitofp i64 %i.c to float
  %5 = fmul nnan float %4, 1.500000e-01
  %6 = fptosi float %5 to i32
  %7 = add nsw i32 %6, 20
  %i.d = tail call fastcc i32 @clusterManagerIsConfigConsistent()
  %.not47 = icmp eq i32 %i.d, 0
  br i1 %.not47, label %.lr.ph50, label %._crit_edge51

.lr.ph50:                                         ; preds = %bb.a, %.critedge
  %.048 = phi i32 [ %.1, %.critedge ], [ 0, %bb.a ] ; 2 uses
  %putchar25 = call i32 @putchar(i32 46)          ; 0 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.f = call i32 @fflush(ptr noundef %i.e)       ; 0 uses
  %i.g = call i32 @sleep(i32 noundef 1) #32       ; 0 uses
  %i.h = add nsw i32 %.048, 1
  %.not26 = icmp slt i32 %.048, %7
  br i1 %.not26, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph50
  %i.i = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = call ptr @dictCreate(ptr noundef nonnull @clusterManagerLinkDictType) #32 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #32
  %i.l = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  call void @listRewind(ptr noundef %i.l, ptr noundef nonnull %0) #32
  %i.m = call ptr @listNext(ptr noundef nonnull %0) #32 ; 2 uses
  %.not37.i = icmp eq ptr %i.m, null
  br i1 %.not37.i, label %clusterManagerGetLinkStatus.exit, label %.lr.ph39.i

.lr.ph39.i:                                       ; preds = %bb.c, %clusterManagerGetDisconnectedLinks.exit.thread.i
  %i.n = phi ptr [ %i.co, %clusterManagerGetDisconnectedLinks.exit.thread.i ], [ %i.m, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !102  ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !88
  %i.r = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.q, ptr noundef nonnull @.str.207) #32 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %clusterManagerGetDisconnectedLinks.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph39.i
  %i.s = load i32, ptr %i.r, align 8, !tbaa !41
  %.not19.i.i.i = icmp eq i32 %i.s, 6
  br i1 %.not19.i.i.i, label %clusterManagerGetDisconnectedLinks.exit.thread33.i, label %clusterManagerCheckRedisReply.exit.i.i

clusterManagerGetDisconnectedLinks.exit.thread33.i: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !80
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !83
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !42
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.u, i32 noundef %i.w, ptr noundef %i.y)
  call void @freeReplyObject(ptr noundef nonnull %i.r) #32
  br label %clusterManagerGetDisconnectedLinks.exit.thread.i

clusterManagerCheckRedisReply.exit.i.i:           ; preds = %bb.d
  %i.z = call ptr @listCreate() #32               ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !42 ; 2 uses
  %strchr121.i.i = call ptr @strchr(ptr nonnull dereferenceable(1) %i.ab, i32 10) ; 2 uses
  %.not76122.i.i = icmp eq ptr %strchr121.i.i, null
  br i1 %.not76122.i.i, label %clusterManagerGetDisconnectedLinks.exit.i, label %.lr.ph125.i.i

.lr.ph125.i.i:                                    ; preds = %clusterManagerCheckRedisReply.exit.i.i, %bb.q
  %strchr124.i.i = phi ptr [ %strchr.i.i, %bb.q ], [ %strchr121.i.i, %clusterManagerCheckRedisReply.exit.i.i ] ; 2 uses
  %.053123.i.i = phi ptr [ %i.ac, %bb.q ], [ %i.ab, %clusterManagerCheckRedisReply.exit.i.i ] ; 10 uses
  store i8 0, ptr %strchr124.i.i, align 1, !tbaa !73
  %i.ac = getelementptr inbounds nuw i8, ptr %strchr124.i.i, i64 1 ; 2 uses
  %i.ad = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.053123.i.i, i32 noundef 32) #34 ; 3 uses
  %.not78109.i.i = icmp eq ptr %i.ad, null
  br i1 %.not78109.i.i, label %.thread89.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph125.i.i
  store i8 0, ptr %i.ad, align 1, !tbaa !73
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 9 uses
  %i.af = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ae, i32 noundef 32) #34 ; 3 uses
  %.not78.i.i = icmp eq ptr %i.af, null
  br i1 %.not78.i.i, label %.thread89.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.af, align 1, !tbaa !73
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 8 uses
  %i.ah = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ag, i32 noundef 32) #34 ; 3 uses
  %.not78.1.i.i = icmp eq ptr %i.ah, null
  br i1 %.not78.1.i.i, label %.thread89.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.ah, align 1, !tbaa !73
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.aj = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ai, i32 noundef 32) #34 ; 3 uses
  %.not78.2.i.i = icmp eq ptr %i.aj, null
  br i1 %.not78.2.i.i, label %.thread89.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.aj, align 1, !tbaa !73
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ak, i32 noundef 32) #34 ; 3 uses
  %.not78.3.i.i = icmp eq ptr %i.al, null
  br i1 %.not78.3.i.i, label %.thread89.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.al, align 1, !tbaa !73
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.an = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.am, i32 noundef 32) #34 ; 3 uses
  %.not78.4.i.i = icmp eq ptr %i.an, null
  br i1 %.not78.4.i.i, label %.thread89.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.an, align 1, !tbaa !73
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ap = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ao, i32 noundef 32) #34 ; 3 uses
  %.not78.5.i.i = icmp eq ptr %i.ap, null
  br i1 %.not78.5.i.i, label %.thread89.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.ap, align 1, !tbaa !73
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 4 uses
  %i.ar = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.aq, i32 noundef 32) #34 ; 3 uses
  %.not78.6.i.i = icmp eq ptr %i.ar, null
  br i1 %.not78.6.i.i, label %.thread89.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.ar, align 1, !tbaa !73
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.at = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.as, i32 noundef 32) #34 ; 2 uses
  %.not78.7.i.i = icmp eq ptr %i.at, null
  br i1 %.not78.7.i.i, label %.thread89.i.i, label %.thread89.loopexit.i.i

.thread89.loopexit.i.i:                           ; preds = %bb.l
  store i8 0, ptr %i.at, align 1, !tbaa !73
  br label %.thread89.i.i

.thread89.i.i:                                    ; preds = %.thread89.loopexit.i.i, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %.lr.ph125.i.i
  %.066107.i.i = phi ptr [ %.053123.i.i, %.thread89.loopexit.i.i ], [ null, %.lr.ph125.i.i ], [ %.053123.i.i, %bb.l ], [ %.053123.i.i, %bb.k ], [ %.053123.i.i, %bb.j ], [ %.053123.i.i, %bb.i ], [ %.053123.i.i, %bb.h ], [ %.053123.i.i, %bb.g ], [ %.053123.i.i, %bb.f ], [ %.053123.i.i, %bb.e ] ; 2 uses
  %.062105.i.i = phi ptr [ %i.ae, %.thread89.loopexit.i.i ], [ null, %.lr.ph125.i.i ], [ %i.ae, %bb.l ], [ %i.ae, %bb.k ], [ %i.ae, %bb.j ], [ %i.ae, %bb.i ], [ %i.ae, %bb.h ], [ %i.ae, %bb.g ], [ %i.ae, %bb.f ], [ null, %bb.e ] ; 2 uses
  %.058103.i.i = phi ptr [ %i.ag, %.thread89.loopexit.i.i ], [ null, %.lr.ph125.i.i ], [ %i.ag, %bb.l ], [ %i.ag, %bb.k ], [ %i.ag, %bb.j ], [ %i.ag, %bb.i ], [ %i.ag, %bb.h ], [ %i.ag, %bb.g ], [ null, %bb.f ], [ null, %bb.e ] ; 5 uses
  %i.au = phi ptr [ %i.aq, %.thread89.loopexit.i.i ], [ null, %.lr.ph125.i.i ], [ %i.aq, %bb.l ], [ %i.aq, %bb.k ], [ null, %bb.j ], [ null, %bb.i ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.e ] ; 2 uses
  %i.av = insertelement <4 x ptr> poison, ptr %i.au, i64 0
  %i.aw = insertelement <4 x ptr> %i.av, ptr %.066107.i.i, i64 1
  %i.ax = insertelement <4 x ptr> %i.aw, ptr %.062105.i.i, i64 2
  %i.ay = insertelement <4 x ptr> %i.ax, ptr %.058103.i.i, i64 3
  %i.az = icmp eq <4 x ptr> %i.ay, splat (ptr null)
  %i.ba = bitcast <4 x i1> %i.az to i4
  %.not74 = icmp eq i4 %i.ba, 0
  br i1 %.not74, label %bb.m, label %bb.q, !llvm.loop !467

bb.m:                                             ; preds = %.thread89.i.i
  %i.bb = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.058103.i.i, ptr noundef nonnull dereferenceable(1) @.str.209) #34
  %.not79.i.i = icmp eq ptr %i.bb, null
  br i1 %.not79.i.i, label %bb.n, label %bb.q, !llvm.loop !467

bb.n:                                             ; preds = %bb.m
  %i.bc = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.058103.i.i, ptr noundef nonnull dereferenceable(1) @.str.213) #34
  %.not80.i.i = icmp eq ptr %i.bc, null
  br i1 %.not80.i.i, label %bb.o, label %.thread93.i.i

.thread93.i.i:                                    ; preds = %bb.n
  %i.bd = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.058103.i.i, ptr noundef nonnull dereferenceable(1) @.str.263) #34
  %i.be = icmp ne ptr %i.bd, null
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bf = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.au, ptr noundef nonnull dereferenceable(1) @.str.213) #34
  %i.bg = icmp ne ptr %i.bf, null
  %i.bh = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.058103.i.i, ptr noundef nonnull dereferenceable(1) @.str.263) #34
  %i.bi = icmp ne ptr %i.bh, null                 ; 2 uses
  %or.cond7.i.i = select i1 %i.bg, i1 true, i1 %i.bi
  br i1 %or.cond7.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %.thread93.i.i
  %i.bj = phi i1 [ %i.be, %.thread93.i.i ], [ %i.bi, %bb.o ]
  %i.bk = zext i1 %i.bj to i32
  %i.bl = call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #36 ; 5 uses
  %i.bm = call ptr @hi_sdsnew(ptr noundef nonnull %.066107.i.i) #32
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !468
  %i.bn = call ptr @hi_sdsnew(ptr noundef nonnull %.062105.i.i) #32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !470
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i32 0, ptr %i.bp, align 8, !tbaa !471
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  store i32 %i.bk, ptr %i.bq, align 4, !tbaa !472
  %i.br = call ptr @listAddNodeTail(ptr noundef %i.z, ptr noundef nonnull %i.bl) #32 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m, %.thread89.i.i
  %strchr.i.i = call ptr @strchr(ptr nonnull dereferenceable(1) %i.ac, i32 10) ; 2 uses
  %.not76.i.i = icmp eq ptr %strchr.i.i, null
  br i1 %.not76.i.i, label %clusterManagerGetDisconnectedLinks.exit.i, label %.lr.ph125.i.i

clusterManagerGetDisconnectedLinks.exit.i:        ; preds = %bb.q, %clusterManagerCheckRedisReply.exit.i.i
  call void @freeReplyObject(ptr noundef nonnull %i.r) #32
  %.not28.i = icmp eq ptr %i.z, null
  br i1 %.not28.i, label %clusterManagerGetDisconnectedLinks.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %clusterManagerGetDisconnectedLinks.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @listRewind(ptr noundef nonnull %i.z, ptr noundef nonnull %1) #32
  %i.bs = call ptr @listNext(ptr noundef nonnull %1) #32 ; 2 uses
  %.not2936.i = icmp eq ptr %i.bs, null
  br i1 %.not2936.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %.lr.ph.i
  %i.bv = phi ptr [ %i.bs, %.lr.ph.i ], [ %i.cn, %bb.v ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !102 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !470
  %i.ca = call ptr @dictFind(ptr noundef %i.k, ptr noundef %i.bz) #32 ; 2 uses
  %.not30.i = icmp eq ptr %i.ca, null
end_hunk_2
