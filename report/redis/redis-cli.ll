inline.NumInlined: 395
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@clusterManagerCommandCreate:bb.a
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !80 ; 2 uses
  br i1 %.not456527, label %.lr.ph530, label %.critedge460.loopexit

.lr.ph530:                                        ; preds = %.lr.ph534
  %wide.trip.count654 = zext nneg i32 %.0274532 to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph530, %bb.v
  %indvars.iv651 = phi i64 [ 0, %.lr.ph530 ], [ %indvars.iv.next652, %bb.v ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv651
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !29
  %i.de = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dd, ptr noundef nonnull dereferenceable(1) %i.db) #34
  %.not355 = icmp eq i32 %i.de, 0
  br i1 %.not355, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next652 = add nuw nsw i64 %indvars.iv651, 1 ; 2 uses
  %exitcond655.not = icmp eq i64 %indvars.iv.next652, %wide.trip.count654
  br i1 %exitcond655.not, label %.critedge460.loopexit.loopexit, label %bb.u, !llvm.loop !104

.critedge460.loopexit.loopexit:                   ; preds = %bb.v
  %i.df = zext nneg i32 %.0274532 to i64
  br label %.critedge460.loopexit

.critedge460.loopexit:                            ; preds = %.lr.ph534, %.critedge460.loopexit.loopexit
  %.1238.lcssa = phi i64 [ %i.df, %.critedge460.loopexit.loopexit ], [ 0, %.lr.ph534 ]
  %i.dg = add nsw i32 %.0274532, 1
  %i.dh = sext i32 %.0274532 to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.dh
  store ptr %i.db, ptr %i.di, align 8, !tbaa !29
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %.critedge460.loopexit
  %.1238481 = phi i64 [ %.1238.lcssa, %.critedge460.loopexit ], [ %indvars.iv651, %bb.u ]
  %.1275 = phi i32 [ %i.dg, %.critedge460.loopexit ], [ %.0274532, %bb.u ] ; 5 uses
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %.1238481 ; 7 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !98 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.w, label %._crit_edge694

._crit_edge694:                                   ; preds = %.loopexit
  %.phi.trans.insert695 = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %.pre696 = load i32, ptr %.phi.trans.insert695, align 8, !tbaa !97
  br label %bb.x

bb.w:                                             ; preds = %.loopexit
  %i.dm = call noalias ptr @zcalloc(i64 noundef %i.by) #36 ; 3 uses
  store ptr %i.dm, ptr %i.dj, align 8, !tbaa !98
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !105
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i32 %i.bp, ptr %i.do, align 8, !tbaa !97
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  store i32 0, ptr %i.dp, align 4, !tbaa !94
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge694, %bb.w
  %i.dq = phi ptr [ %i.dk, %._crit_edge694 ], [ %i.dm, %bb.w ]
  %i.dr = phi i32 [ %.pre696, %._crit_edge694 ], [ %i.bp, %bb.w ] ; 2 uses
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @__assert_fail(ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.7, i32 noundef 7007, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerNodeArrayAdd) #37
  unreachable

bb.z:                                             ; preds = %bb.x
  %.not.i379 = icmp eq ptr %i.cz, null
  br i1 %.not.i379, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @__assert_fail(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.7, i32 noundef 7008, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerNodeArrayAdd) #37
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 20 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !94 ; 3 uses
  %i.dv = icmp slt i32 %i.du, %i.dr
  br i1 %i.dv, label %clusterManagerNodeArrayAdd.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @__assert_fail(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.7, i32 noundef 7009, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerNodeArrayAdd) #37
  unreachable

clusterManagerNodeArrayAdd.exit:                  ; preds = %bb.ab
  %i.dw = add nsw i32 %i.du, 1
  store i32 %i.dw, ptr %i.dt, align 4, !tbaa !94
  %i.dx = sext i32 %i.du to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dx
  store ptr %i.cz, ptr %i.dy, align 8, !tbaa !99
  %i.dz = call ptr @listNext(ptr noundef nonnull %4) #32 ; 2 uses
  %.not = icmp eq ptr %i.dz, null
  br i1 %.not, label %.preheader463, label %.lr.ph534, !llvm.loop !106

.preheader462:                                    ; preds = %.preheader462.preheader, %.preheader462
  br label %.preheader462

.split.us:                                        ; preds = %bb.q
  call void @__assert_fail(ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.7, i32 noundef 6994, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerNodeArrayShift) #37
  unreachable

.lr.ph552:                                        ; preds = %..loopexit_crit_edge.us, %.preheader463, %.preheader463.thread
  %i.ea = phi i1 [ false, %.preheader463 ], [ false, %.preheader463.thread ], [ true, %..loopexit_crit_edge.us ]
  %.0274.lcssa748 = phi i32 [ %.1275, %.preheader463 ], [ 0, %.preheader463.thread ], [ %.1275, %..loopexit_crit_edge.us ] ; 6 uses
  %.0276.lcssa = phi i32 [ 0, %.preheader463 ], [ 0, %.preheader463.thread ], [ %.2278.us, %..loopexit_crit_edge.us ]
  %i.eb = zext nneg i32 %i.bs to i64              ; 2 uses
  %i.ec = getelementptr [8 x i8], ptr %i.bx, i64 %i.eb ; 4 uses
  %i.ed = sub nsw i32 %.0276.lcssa, %i.bs         ; 4 uses
  %i.ee = uitofp nneg i32 %i.bs to float
  %i.ef = fdiv float 1.638400e+04, %i.ee
  %i.eg = add nsw i32 %i.bs, -1
  %i.eh = zext nneg i32 %i.eg to i64
  %wide.trip.count667 = zext nneg i32 %i.bs to i64
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph552, %._crit_edge547
  %indvars.iv664 = phi i64 [ 0, %.lr.ph552 ], [ %indvars.iv.next665, %._crit_edge547 ] ; 4 uses
  %.0264549 = phi float [ 0.000000e+00, %.lr.ph552 ], [ %i.ek, %._crit_edge547 ]
  %.0265548 = phi i64 [ 0, %.lr.ph552 ], [ %i.fr, %._crit_edge547 ] ; 4 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv664
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !99 ; 3 uses
  %i.ek = fadd float %i.ef, %.0264549             ; 2 uses
  %i.el = fadd float %i.ek, -1.000000e+00
  %i.em = fpext float %i.el to double
  %i.en = call i64 @lround(double noundef %i.em) #32, !tbaa !9 ; 2 uses
  %i.eo = icmp sgt i64 %i.en, 16384
  %i.ep = icmp eq i64 %indvars.iv664, %i.eh
  %or.cond366 = select i1 %i.eo, i1 true, i1 %i.ep
  %.0262 = select i1 %or.cond366, i64 16383, i64 %i.en
  %.1263 = call i64 @llvm.smax.i64(i64 %.0262, i64 %.0265548) ; 6 uses
  %i.eq = trunc nuw nsw i64 %indvars.iv664 to i32
  %i.er = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.186, i32 noundef %i.eq, i64 noundef %.0265548, i64 noundef %.1263) ; 0 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ej, i64 16468 ; 11 uses
  store i32 0, ptr %i.es, align 4, !tbaa !107
  %sext608 = shl i64 %.0265548, 32
  %i.et = ashr exact i64 %sext608, 32             ; 4 uses
  %.not354543 = icmp slt i64 %.1263, %i.et
  br i1 %.not354543, label %._crit_edge547, label %.lr.ph546

.lr.ph546:                                        ; preds = %bb.ad
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ej, i64 84 ; 5 uses
  %i.ev = add i64 %.1263, 1
  %i.ew = sub i64 %i.ev, %.0265548
  %i.ex = sub i64 %.1263, %i.et
  %xtraiter = and i64 %i.ew, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph546, %.prol.preheader
  %indvars.iv661.prol = phi i64 [ %indvars.iv.next662.prol, %.prol.preheader ], [ %i.et, %.lr.ph546 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph546 ]
  %i.ey = getelementptr inbounds i8, ptr %i.eu, i64 %indvars.iv661.prol
  store i8 1, ptr %i.ey, align 1, !tbaa !73
  %i.ez = load i32, ptr %i.es, align 4, !tbaa !107
  %i.fa = add nsw i32 %i.ez, 1
  store i32 %i.fa, ptr %i.es, align 4, !tbaa !107
  %indvars.iv.next662.prol = add nsw i64 %indvars.iv661.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !108

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph546
  %indvars.iv661.unr = phi i64 [ %i.et, %.lr.ph546 ], [ %indvars.iv.next662.prol, %.prol.preheader ]
  %i.fb = icmp ult i64 %i.ex, 3
  br i1 %i.fb, label %._crit_edge547, label %.lr.ph546.new

.lr.ph546.new:                                    ; preds = %.prol.loopexit, %.lr.ph546.new
  %indvars.iv661 = phi i64 [ %indvars.iv.next662.3, %.lr.ph546.new ], [ %indvars.iv661.unr, %.prol.loopexit ] ; 5 uses
  %i.fc = getelementptr inbounds i8, ptr %i.eu, i64 %indvars.iv661
  store i8 1, ptr %i.fc, align 1, !tbaa !73
  %i.fd = load i32, ptr %i.es, align 4, !tbaa !107
  %i.fe = add nsw i32 %i.fd, 1
  store i32 %i.fe, ptr %i.es, align 4, !tbaa !107
  %i.ff = getelementptr i8, ptr %i.eu, i64 %indvars.iv661
  %i.fg = getelementptr i8, ptr %i.ff, i64 1
  store i8 1, ptr %i.fg, align 1, !tbaa !73
  %i.fh = load i32, ptr %i.es, align 4, !tbaa !107
  %i.fi = add nsw i32 %i.fh, 1
  store i32 %i.fi, ptr %i.es, align 4, !tbaa !107
  %i.fj = getelementptr i8, ptr %i.eu, i64 %indvars.iv661
  %i.fk = getelementptr i8, ptr %i.fj, i64 2
  store i8 1, ptr %i.fk, align 1, !tbaa !73
  %i.fl = load i32, ptr %i.es, align 4, !tbaa !107
  %i.fm = add nsw i32 %i.fl, 1
  store i32 %i.fm, ptr %i.es, align 4, !tbaa !107
  %indvars.iv.next662.2 = add nsw i64 %indvars.iv661, 3 ; 2 uses
  %i.fn = getelementptr inbounds i8, ptr %i.eu, i64 %indvars.iv.next662.2
  store i8 1, ptr %i.fn, align 1, !tbaa !73
  %i.fo = load i32, ptr %i.es, align 4, !tbaa !107
  %i.fp = add nsw i32 %i.fo, 1
  store i32 %i.fp, ptr %i.es, align 4, !tbaa !107
  %indvars.iv.next662.3 = add nsw i64 %indvars.iv661, 4
  %.not354.not.3 = icmp sgt i64 %.1263, %indvars.iv.next662.2
  br i1 %.not354.not.3, label %.lr.ph546.new, label %._crit_edge547, !llvm.loop !110

._crit_edge547:                                   ; preds = %.prol.loopexit, %.lr.ph546.new, %bb.ad
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ej, i64 80
  store i32 1, ptr %i.fq, align 8, !tbaa !111
  %i.fr = add nuw nsw i64 %.1263, 1
  %indvars.iv.next665 = add nuw nsw i64 %indvars.iv664, 1 ; 2 uses
  %5 = icmp samesign ult i64 %indvars.iv.next665, %wide.trip.count667
  br i1 %5, label %bb.ad, label %._crit_edge553, !llvm.loop !112

._crit_edge553:                                   ; preds = %._crit_edge547
  %i.fs = load ptr, ptr %i.ec, align 8, !tbaa !99
  %i.ft = add nsw i32 %i.ed, -1                   ; 2 uses
  %i.fu = icmp sgt i32 %i.ed, 1
  br i1 %i.fu, label %.lr.ph556.preheader, label %._crit_edge557

.lr.ph556.preheader:                              ; preds = %._crit_edge553
  %i.fv = shl nuw nsw i64 %i.eb, 3
  %i.fw = getelementptr i8, ptr %i.bx, i64 %i.fv
  %scevgep = getelementptr i8, ptr %i.fw, i64 8
  %i.fx = zext nneg i32 %i.ft to i64
  %i.fy = shl nuw nsw i64 %i.fx, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ec, ptr align 8 %scevgep, i64 %i.fy, i1 false), !tbaa !99
  br label %._crit_edge557

._crit_edge557:                                   ; preds = %._crit_edge553, %.lr.ph556.preheader
  %i.fz = sext i32 %i.ft to i64
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.fz
  store ptr %i.fs, ptr %i.ga, align 8, !tbaa !99
  %wide.trip.count681.a = zext nneg i32 %i.bs to i64
  br label %.lr.ph570.preheader

.lr.ph570.preheader:                              ; preds = %._crit_edge557, %bb.am
  %.3279 = phi i32 [ %i.ed, %._crit_edge557 ], [ %.7283, %bb.am ]
  %.0269 = phi ptr [ %i.ec, %._crit_edge557 ], [ %.4273, %bb.am ]
  %i.gb = phi i1 [ true, %._crit_edge557 ], [ false, %bb.am ] ; 2 uses
  %.0256 = phi i32 [ %i.ed, %._crit_edge557 ], [ %.4260, %bb.am ]
  br label %.lr.ph570

.lr.ph570:                                        ; preds = %.lr.ph570.preheader, %.thread426
  %indvars.iv677 = phi i64 [ 0, %.lr.ph570.preheader ], [ %indvars.iv.next678, %.thread426 ] ; 2 uses
  %.1257567 = phi i32 [ %.0256, %.lr.ph570.preheader ], [ %.4260, %.thread426 ]
  %.1270566 = phi ptr [ %.0269, %.lr.ph570.preheader ], [ %.4273, %.thread426 ]
  %.4280565 = phi i32 [ %.3279, %.lr.ph570.preheader ], [ %.7283, %.thread426 ]
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv677
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !99 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.lr.ph570
  %.5281 = phi i32 [ %.4280565, %.lr.ph570 ], [ %.6282422, %bb.al ] ; 6 uses
  %.2271 = phi ptr [ %.1270566, %.lr.ph570 ], [ %.3272423, %bb.al ] ; 7 uses
  %.2258 = phi i32 [ %.1257567, %.lr.ph570 ], [ %i.hd, %bb.al ] ; 5 uses
  %.0254 = phi i32 [ 0, %.lr.ph570 ], [ %i.hc, %bb.al ] ; 2 uses
  %i.gh = icmp slt i32 %.0254, %i.bq
  %i.gi = icmp ne i32 %.2258, 0
  %or.cond3.not819 = select i1 %i.gh, i1 %i.gi, i1 false
  %i.gj = icmp sgt i32 %.5281, 0
  %or.cond754 = select i1 %or.cond3.not819, i1 %i.gj, i1 false
  br i1 %or.cond754, label %.lr.ph562.preheader, label %.thread426

.lr.ph562.preheader:                              ; preds = %bb.ae
  %wide.trip.count675 = zext nneg i32 %.5281 to i64
  br label %.lr.ph562

.lr.ph562:                                        ; preds = %.lr.ph562.preheader, %bb.ah
  %indvars.iv672 = phi i64 [ 0, %.lr.ph562.preheader ], [ %indvars.iv.next673, %bb.ah ] ; 4 uses
  %.0246560 = phi i32 [ -1, %.lr.ph562.preheader ], [ %.2248.ph, %bb.ah ] ; 3 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %.2271, i64 %indvars.iv672
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !99 ; 3 uses
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %.lr.ph562
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !80
  %i.gp = load ptr, ptr %i.ge, align 8, !tbaa !80
  %i.gq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.go, ptr noundef nonnull dereferenceable(1) %i.gp) #34
  %.not349 = icmp eq i32 %i.gq, 0
  br i1 %.not349, label %bb.ag, label %.thread417

bb.ag:                                            ; preds = %bb.af
  %i.gr = icmp slt i32 %.0246560, 0
  %i.gs = trunc nuw nsw i64 %indvars.iv672 to i32
  %spec.select = select i1 %i.gr, i32 %i.gs, i32 %.0246560
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph562
  %.2248.ph = phi i32 [ %.0246560, %.lr.ph562 ], [ %spec.select, %bb.ag ] ; 4 uses
  %indvars.iv.next673 = add nuw nsw i64 %indvars.iv672, 1 ; 2 uses
  %exitcond676.not = icmp eq i64 %indvars.iv.next673, %wide.trip.count675
  br i1 %exitcond676.not, label %._crit_edge563, label %.lr.ph562, !llvm.loop !113

.thread417:                                       ; preds = %bb.af
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.2271, i64 %indvars.iv672
  store ptr null, ptr %i.gt, align 8, !tbaa !99
  br label %bb.aj

._crit_edge563:                                   ; preds = %bb.ah
  %i.gu = icmp sgt i32 %.2248.ph, -1
  br i1 %i.gu, label %bb.ai, label %.thread426

bb.ai:                                            ; preds = %._crit_edge563
  %i.gv = zext nneg i32 %.2248.ph to i64
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %.2271, i64 %i.gv
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !99 ; 2 uses
  %i.gy = add nuw nsw i32 %.2248.ph, 1            ; 2 uses
  %i.gz = sub nsw i32 %.5281, %i.gy               ; 2 uses
  %i.ha = zext nneg i32 %i.gy to i64
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %.2271, i64 %i.ha ; 2 uses
  %.not351 = icmp eq ptr %i.gx, null
  br i1 %.not351, label %.thread426, label %bb.aj

bb.aj:                                            ; preds = %.thread417, %bb.ai
  %.0250424 = phi ptr [ %i.gl, %.thread417 ], [ %i.gx, %bb.ai ] ; 4 uses
  %.3272423 = phi ptr [ %.2271, %.thread417 ], [ %i.hb, %bb.ai ] ; 2 uses
  %.6282422 = phi i32 [ %.5281, %.thread417 ], [ %i.gz, %bb.ai ] ; 2 uses
  %i.hc = add nuw nsw i32 %.0254, 1
  %i.hd = add nsw i32 %.2258, -1                  ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.0250424, i64 72 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !114 ; 2 uses
  %.not352 = icmp eq ptr %i.hf, null
  br i1 %.not352, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @hi_sdsfree(ptr noundef nonnull %i.hf) #32
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.hg = load ptr, ptr %i.gf, align 8, !tbaa !115
  %i.hh = call ptr @hi_sdsnew(ptr noundef %i.hg) #32
  store ptr %i.hh, ptr %i.he, align 8, !tbaa !114
  %i.hi = getelementptr inbounds nuw i8, ptr %.0250424, i64 80
  store i32 1, ptr %i.hi, align 8, !tbaa !111
  %i.hj = getelementptr inbounds nuw i8, ptr %.0250424, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !80
  %i.hl = getelementptr inbounds nuw i8, ptr %.0250424, i64 24
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !83
  %i.hn = load ptr, ptr %i.ge, align 8, !tbaa !80
  %i.ho = load i32, ptr %i.gg, align 8, !tbaa !83
  %i.hp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.187, ptr noundef %i.hk, i32 noundef %i.hm, ptr noundef %i.hn, i32 noundef %i.ho) ; 0 uses
  br i1 %i.gb, label %bb.ae, label %.thread426

.thread426:                                       ; preds = %._crit_edge563, %bb.al, %bb.ai, %bb.ae
  %.7283 = phi i32 [ %.5281, %bb.ae ], [ %i.gz, %bb.ai ], [ %.6282422, %bb.al ], [ %.5281, %._crit_edge563 ] ; 2 uses
  %.4273 = phi ptr [ %.2271, %bb.ae ], [ %i.hb, %bb.ai ], [ %.3272423, %bb.al ], [ %.2271, %._crit_edge563 ] ; 2 uses
  %.4260 = phi i32 [ %.2258, %bb.ae ], [ %.2258, %bb.ai ], [ %i.hd, %bb.al ], [ %.2258, %._crit_edge563 ] ; 3 uses
  %indvars.iv.next678 = add nuw nsw i64 %indvars.iv677, 1 ; 2 uses
  %6 = icmp samesign ult i64 %indvars.iv.next678, %wide.trip.count681.a
  br i1 %6, label %.lr.ph570, label %._crit_edge571, !llvm.loop !116

._crit_edge571:                                   ; preds = %.thread426
  %i.hq = icmp sgt i32 %.4260, 0
  %or.cond = select i1 %i.gb, i1 %i.hq, i1 false
  br i1 %or.cond, label %bb.am, label %.preheader

.preheader:                                       ; preds = %._crit_edge571
  %i.hr = icmp sgt i32 %.0274.lcssa748, 0
  br i1 %i.hr, label %.lr.ph576.preheader, label %._crit_edge577

.lr.ph576.preheader:                              ; preds = %.preheader
  %wide.trip.count686.a = zext nneg i32 %.0274.lcssa748 to i64
  br label %.lr.ph576

bb.am:                                            ; preds = %._crit_edge571
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %.lr.ph570.preheader

.lr.ph576:                                        ; preds = %.lr.ph576.preheader, %clusterManagerNodeArrayReset.exit
  %indvars.iv683.a = phi i64 [ 0, %.lr.ph576.preheader ], [ %indvars.iv.next684.a, %clusterManagerNodeArrayReset.exit ] ; 2 uses
  %i.hs = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %indvars.iv683.a ; 5 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !98 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !105 ; 6 uses
  %i.hw = icmp ugt ptr %i.ht, %i.hv
  br i1 %i.hw, label %bb.an, label %clusterManagerNodeArrayReset.exit

bb.an:                                            ; preds = %.lr.ph576
  %i.hx = ptrtoint ptr %i.ht to i64
  %i.hy = ptrtoint ptr %i.hv to i64
  %i.hz = sub i64 %i.hx, %i.hy                    ; 3 uses
  %i.ia = lshr exact i64 %i.hz, 3                 ; 3 uses
  %i.ib = trunc i64 %i.ia to i32                  ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store i32 %i.ib, ptr %i.ic, align 8, !tbaa !97
  store ptr %i.hv, ptr %i.hs, align 8, !tbaa !98
  %i.id = getelementptr inbounds nuw i8, ptr %i.hs, i64 20 ; 4 uses
  store i32 0, ptr %i.id, align 4, !tbaa !94
  %i.ie = icmp sgt i32 %i.ib, 0
  br i1 %i.ie, label %.lr.ph.preheader.i, label %clusterManagerNodeArrayReset.exit

.lr.ph.preheader.i:                               ; preds = %bb.an
  %i.if = and i64 %i.hz, 17179869176
  %i.ig = icmp eq i64 %i.if, 8
  br i1 %i.ig, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.ia, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aq, %.lr.ph.preheader.i.new
  %i.ih = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.iq, %bb.aq ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.aq ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.aq ]
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %indvars.iv.i
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !99
  %.not.i381 = icmp eq ptr %i.ij, null
  br i1 %.not.i381, label %.lr.ph.i.1, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i
  %i.ik = add nsw i32 %i.ih, 1                    ; 2 uses
  store i32 %i.ik, ptr %i.id, align 4, !tbaa !94
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.ao, %.lr.ph.i
  %i.il = phi i32 [ %i.ih, %.lr.ph.i ], [ %i.ik, %bb.ao ] ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %indvars.iv.i
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !99
  %.not.i381.1 = icmp eq ptr %i.io, null
  br i1 %.not.i381.1, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.1
  %i.ip = add nsw i32 %i.il, 1                    ; 2 uses
  store i32 %i.ip, ptr %i.id, align 4, !tbaa !94
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph.i.1
  %i.iq = phi i32 [ %i.il, %.lr.ph.i.1 ], [ %i.ip, %bb.ap ] ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %clusterManagerNodeArrayReset.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !117

clusterManagerNodeArrayReset.exit.loopexit.unr-lcssa: ; preds = %bb.aq
  %i.ir = and i64 %i.hz, 8
  %lcmp.mod895.not = icmp eq i64 %i.ir, 0
  br i1 %lcmp.mod895.not, label %clusterManagerNodeArrayReset.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %clusterManagerNodeArrayReset.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.iq, %clusterManagerNodeArrayReset.exit.loopexit.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %clusterManagerNodeArrayReset.exit.loopexit.unr-lcssa ]
  %lcmp.mod896 = trunc i64 %i.ia to i1
  call void @llvm.assume(i1 %lcmp.mod896)
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %indvars.iv.i.epil.init
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !99
  %.not.i381.epil = icmp eq ptr %i.it, null
  br i1 %.not.i381.epil, label %clusterManagerNodeArrayReset.exit, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.epil.preheader
  %i.iu = add nsw i32 %.epil.init, 1
  store i32 %i.iu, ptr %i.id, align 4, !tbaa !94
  br label %clusterManagerNodeArrayReset.exit

clusterManagerNodeArrayReset.exit:                ; preds = %clusterManagerNodeArrayReset.exit.loopexit.unr-lcssa, %bb.ar, %.lr.ph.i.epil.preheader, %.lr.ph576, %bb.an
  %indvars.iv.next684.a = add nuw nsw i64 %indvars.iv683.a, 1 ; 2 uses
  %exitcond687.not.a = icmp eq i64 %indvars.iv.next684.a, %wide.trip.count686.a
  br i1 %exitcond687.not.a, label %._crit_edge577, label %.lr.ph576, !llvm.loop !118

._crit_edge577:                                   ; preds = %clusterManagerNodeArrayReset.exit, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store ptr null, ptr %i.b, align 8, !tbaa !119
  %i.iv = call fastcc i32 @clusterManagerGetAntiAffinityScore(ptr noundef readonly %i.cb, i32 noundef %.0274.lcssa748, ptr noundef null, ptr noundef null)
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %clusterManagerOptimizeAntiAffinity.exit, label %bb.as

bb.as:                                            ; preds = %._crit_edge577
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 1, ptr noundef nonnull @.str.229)
  %i.ix = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 40
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !90 ; 2 uses
  %i.ja = trunc i64 %i.iz to i32                  ; 2 uses
  %i.jb = call i64 @time(ptr noundef null) #32
  %i.jc = trunc i64 %i.jb to i32
  call void @srand(i32 noundef %i.jc) #32
  %i.jd = icmp sgt i32 %i.ja, 0
  br i1 %i.jd, label %.lr.ph71.i, label %.loopexit.i

.lr.ph71.i:                                       ; preds = %bb.as
  %i.je = mul nuw nsw i32 %i.ja, 500
  %i.jf = shl i64 %i.iz, 32
  %sext.i = add nsw i64 %i.jf, -4294967296
  %i.jg = ashr exact i64 %sext.i, 29
  br label %bb.at

bb.at:                                            ; preds = %bb.bc, %.lr.ph71.i
  %i.jh = phi ptr [ null, %.lr.ph71.i ], [ %i.jo, %bb.bc ] ; 2 uses
  %.069.i = phi i32 [ %i.je, %.lr.ph71.i ], [ %i.ks, %bb.bc ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store i32 0, ptr %i.c, align 4, !tbaa !9
  %.not.i382 = icmp eq ptr %i.jh, null
  br i1 %.not.i382, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @zfree(ptr noundef nonnull %i.jh) #32
  store ptr null, ptr %i.b, align 8, !tbaa !119
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ji = call fastcc i32 @clusterManagerGetAntiAffinityScore(ptr noundef readonly %i.cb, i32 noundef %.0274.lcssa748, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  %i.jj = icmp eq i32 %i.ji, 0
  %i.jk = load i32, ptr %i.c, align 4             ; 2 uses
  %i.jl = icmp eq i32 %i.jk, 0
  %or.cond.i = select i1 %i.jj, i1 true, i1 %i.jl
  br i1 %or.cond.i, label %.thread.i, label %bb.aw

.thread.i:                                        ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  %.pre.pre.i = load ptr, ptr %i.b, align 8, !tbaa !119
  br label %.loopexit.i

bb.aw:                                            ; preds = %bb.av
  %i.jm = call i32 @rand() #32
  %i.jn = srem i32 %i.jm, %i.jk
  %i.jo = load ptr, ptr %i.b, align 8, !tbaa !119 ; 4 uses
  %i.jp = sext i32 %i.jn to i64
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.jo, i64 %i.jp
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !99 ; 3 uses
  %i.js = call noalias ptr @zcalloc(i64 noundef %i.jg) #36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.jt = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  call void @listRewind(ptr noundef %i.jt, ptr noundef nonnull %3) #32
  %i.ju = call ptr @listNext(ptr noundef nonnull %3) #32 ; 2 uses
  %.not5967.i = icmp eq ptr %i.ju, null
  br i1 %.not5967.i, label %.thread64.i, label %.lr.ph.i383

.lr.ph.i383:                                      ; preds = %bb.aw, %bb.az
  %i.jv = phi ptr [ %i.kd, %bb.az ], [ %i.ju, %bb.aw ]
  %.05068.i = phi i32 [ %.151.i, %bb.az ], [ 0, %bb.aw ] ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !102 ; 3 uses
  %.not60.i = icmp eq ptr %i.jx, %i.jr
  br i1 %.not60.i, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i383
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 72
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !114
  %.not61.i = icmp eq ptr %i.jz, null
  br i1 %.not61.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ka = add nsw i32 %.05068.i, 1
  %i.kb = sext i32 %.05068.i to i64
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.js, i64 %i.kb
  store ptr %i.jx, ptr %i.kc, align 8, !tbaa !99
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %.lr.ph.i383
  %.151.i = phi i32 [ %i.ka, %bb.ay ], [ %.05068.i, %bb.ax ], [ %.05068.i, %.lr.ph.i383 ] ; 3 uses
  %i.kd = call ptr @listNext(ptr noundef nonnull %3) #32 ; 2 uses
end_hunk_0
