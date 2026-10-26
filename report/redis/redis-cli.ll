Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/redis-cli?download=true
inline.NumInlined: 395
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@clusterManagerCommandCreate:bb.a
  br label %.preheader462.us

.preheader462.us:                                 ; preds = %.preheader462.us.backedge, %.preheader462.us.preheader
  %indvars.iv656 = phi i64 [ 0, %.preheader462.us.preheader ], [ %indvars.iv656.be, %.preheader462.us.backedge ] ; 2 uses
  %.1277536.us = phi i32 [ 0, %.preheader462.us.preheader ], [ %.2278.us, %.preheader462.us.backedge ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %indvars.iv656 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 20 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !253 ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %bb.q, label %bb.t

bb.q:                                             ; preds = %.preheader462.us
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !94 ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %bb.r, label %.split.us

bb.r:                                             ; preds = %bb.q
  %i.co = load ptr, ptr %i.ch, align 8, !tbaa !95 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !97 ; 2 uses
  %.not.i380.us = icmp eq ptr %i.cp, null
  br i1 %.not.i380.us, label %clusterManagerNodeArrayShift.exit.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cq = add nsw i32 %i.cj, -1
  store i32 %i.cq, ptr %i.ci, align 4, !tbaa !253
  br label %clusterManagerNodeArrayShift.exit.us

clusterManagerNodeArrayShift.exit.us:             ; preds = %bb.s, %bb.r
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.cr, ptr %i.ch, align 8, !tbaa !95
  %i.cs = add nsw i32 %i.cm, -1
  store i32 %i.cs, ptr %i.cl, align 8, !tbaa !94
  %i.ct = add nsw i32 %.1277536.us, 1
  %i.cu = sext i32 %.1277536.us to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.cu
  store ptr %i.cp, ptr %i.cv, align 8, !tbaa !97
  br label %bb.t

bb.t:                                             ; preds = %clusterManagerNodeArrayShift.exit.us, %.preheader462.us
  %.2278.us = phi i32 [ %i.ct, %clusterManagerNodeArrayShift.exit.us ], [ %.1277536.us, %.preheader462.us ] ; 3 uses
  %indvars.iv.next657 = add nuw nsw i64 %indvars.iv656, 1 ; 2 uses
  %exitcond660.not = icmp eq i64 %indvars.iv.next657, %wide.trip.count659
  br i1 %exitcond660.not, label %..loopexit_crit_edge.us, label %.preheader462.us.backedge

.preheader462.us.backedge:                        ; preds = %bb.t, %..loopexit_crit_edge.us
  %indvars.iv656.be = phi i64 [ %indvars.iv.next657, %bb.t ], [ 0, %..loopexit_crit_edge.us ]
  br label %.preheader462.us, !llvm.loop !237

..loopexit_crit_edge.us:                          ; preds = %bb.t
  %i.cw = icmp slt i32 %.2278.us, %i.bp
  br i1 %i.cw, label %.preheader462.us.backedge, label %.lr.ph552

.lr.ph534:                                        ; preds = %bb.p, %clusterManagerNodeArrayAdd.exit
  %i.cx = phi ptr [ %i.dz, %clusterManagerNodeArrayAdd.exit ], [ %i.cd, %bb.p ]
  %.0274532 = phi i32 [ %.1275, %clusterManagerNodeArrayAdd.exit ], [ 0, %bb.p ] ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !99 ; 3 uses
  %.not456527 = icmp sgt i32 %.0274532, 0
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !81 ; 2 uses
  br i1 %.not456527, label %.lr.ph530, label %.critedge460.loopexit

.lr.ph530:                                        ; preds = %.lr.ph534
  %wide.trip.count654 = zext nneg i32 %.0274532 to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph530, %bb.v
  %indvars.iv651 = phi i64 [ 0, %.lr.ph530 ], [ %indvars.iv.next652, %bb.v ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv651
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !40
  %i.de = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dd, ptr noundef nonnull dereferenceable(1) %i.db) #34
  %.not355 = icmp eq i32 %i.de, 0
  br i1 %.not355, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next652 = add nuw nsw i64 %indvars.iv651, 1 ; 2 uses
  %exitcond655.not = icmp eq i64 %indvars.iv.next652, %wide.trip.count654
  br i1 %exitcond655.not, label %.critedge460.loopexit.loopexit, label %bb.u, !llvm.loop !238

.critedge460.loopexit.loopexit:                   ; preds = %bb.v
  %i.df = zext nneg i32 %.0274532 to i64
  br label %.critedge460.loopexit

.critedge460.loopexit:                            ; preds = %.lr.ph534, %.critedge460.loopexit.loopexit
  %.1238.lcssa = phi i64 [ %i.df, %.critedge460.loopexit.loopexit ], [ 0, %.lr.ph534 ]
  %i.dg = add nsw i32 %.0274532, 1
  %i.dh = sext i32 %.0274532 to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.dh
  store ptr %i.db, ptr %i.di, align 8, !tbaa !40
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %.critedge460.loopexit
  %.1238481 = phi i64 [ %.1238.lcssa, %.critedge460.loopexit ], [ %indvars.iv651, %bb.u ]
  %.1275 = phi i32 [ %i.dg, %.critedge460.loopexit ], [ %.0274532, %bb.u ] ; 5 uses
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %.1238481 ; 7 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !95 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.w, label %._crit_edge693

._crit_edge693:                                   ; preds = %.loopexit
  %.phi.trans.insert694 = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %.pre695 = load i32, ptr %.phi.trans.insert694, align 8, !tbaa !94
  br label %bb.x

bb.w:                                             ; preds = %.loopexit
  %i.dm = call noalias ptr @zcalloc(i64 noundef %i.by) #36 ; 3 uses
  store ptr %i.dm, ptr %i.dj, align 8, !tbaa !95
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !254
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i32 %i.bp, ptr %i.do, align 8, !tbaa !94
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  store i32 0, ptr %i.dp, align 4, !tbaa !253
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge693, %bb.w
  %i.dq = phi ptr [ %i.dk, %._crit_edge693 ], [ %i.dm, %bb.w ]
  %i.dr = phi i32 [ %.pre695, %._crit_edge693 ], [ %i.bp, %bb.w ] ; 2 uses
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
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !253 ; 3 uses
  %i.dv = icmp slt i32 %i.du, %i.dr
  br i1 %i.dv, label %clusterManagerNodeArrayAdd.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @__assert_fail(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.7, i32 noundef 7009, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerNodeArrayAdd) #37
  unreachable

clusterManagerNodeArrayAdd.exit:                  ; preds = %bb.ab
  %i.dw = add nsw i32 %i.du, 1
  store i32 %i.dw, ptr %i.dt, align 4, !tbaa !253
  %i.dx = sext i32 %i.du to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dx
  store ptr %i.cz, ptr %i.dy, align 8, !tbaa !97
  %i.dz = call ptr @listNext(ptr noundef nonnull %4) #32 ; 2 uses
  %.not = icmp eq ptr %i.dz, null
  br i1 %.not, label %.preheader463, label %.lr.ph534, !llvm.loop !239

.preheader462:                                    ; preds = %.preheader462.preheader, %.preheader462
  br label %.preheader462

.split.us:                                        ; preds = %bb.q
  call void @__assert_fail(ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.7, i32 noundef 6994, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerNodeArrayShift) #37
  unreachable

.lr.ph552:                                        ; preds = %..loopexit_crit_edge.us, %.preheader463, %.preheader463.thread
  %i.ea = phi i1 [ false, %.preheader463 ], [ false, %.preheader463.thread ], [ true, %..loopexit_crit_edge.us ]
  %.0274.lcssa747 = phi i32 [ %.1275, %.preheader463 ], [ 0, %.preheader463.thread ], [ %.1275, %..loopexit_crit_edge.us ] ; 6 uses
  %.0276.lcssa = phi i32 [ 0, %.preheader463 ], [ 0, %.preheader463.thread ], [ %.2278.us, %..loopexit_crit_edge.us ]
  %i.eb = zext nneg i32 %i.bs to i64              ; 4 uses
  %i.ec = getelementptr [8 x i8], ptr %i.bx, i64 %i.eb ; 4 uses
  %i.ed = sub nsw i32 %.0276.lcssa, %i.bs         ; 4 uses
  %i.ee = uitofp nneg i32 %i.bs to float
  %i.ef = fdiv float 1.638400e+04, %i.ee
  %i.eg = add nsw i32 %i.bs, -1
  %i.eh = zext nneg i32 %i.eg to i64
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph552, %._crit_edge547
  %indvars.iv664 = phi i64 [ 0, %.lr.ph552 ], [ %indvars.iv.next665, %._crit_edge547 ] ; 4 uses
  %.0264549 = phi float [ 0.000000e+00, %.lr.ph552 ], [ %i.ek, %._crit_edge547 ]
  %.0265548 = phi i64 [ 0, %.lr.ph552 ], [ %i.fr, %._crit_edge547 ] ; 4 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv664
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !97 ; 3 uses
  %i.ek = fadd float %i.ef, %.0264549             ; 2 uses
  %i.el = fadd float %i.ek, -1.000000e+00
  %i.em = fpext float %i.el to double
  %i.en = call i64 @lround(double noundef %i.em) #32, !tbaa !24 ; 2 uses
  %i.eo = icmp sgt i64 %i.en, 16384
  %i.ep = icmp eq i64 %indvars.iv664, %i.eh
  %or.cond366 = select i1 %i.eo, i1 true, i1 %i.ep
  %.0262 = select i1 %or.cond366, i64 16383, i64 %i.en
  %.1263 = call i64 @llvm.smax.i64(i64 %.0262, i64 %.0265548) ; 6 uses
  %i.eq = trunc nuw nsw i64 %indvars.iv664 to i32
  %i.er = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.186, i32 noundef %i.eq, i64 noundef %.0265548, i64 noundef %.1263) ; 0 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ej, i64 16468 ; 11 uses
  store i32 0, ptr %i.es, align 4, !tbaa !100
  %sext608 = shl i64 %.0265548, 32
  %i.et = ashr exact i64 %sext608, 32             ; 4 uses
  %.not354543 = icmp slt i64 %.1263, %i.et
  br i1 %.not354543, label %._crit_edge547, label %.lr.ph546

.lr.ph546:                                        ; preds = %bb.ad
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ej, i64 84 ; 5 uses
  %i.ev = add nuw i64 %.1263, 1
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
  %i.ez = load i32, ptr %i.es, align 4, !tbaa !100
  %i.fa = add nsw i32 %i.ez, 1
  store i32 %i.fa, ptr %i.es, align 4, !tbaa !100
  %indvars.iv.next662.prol = add nsw i64 %indvars.iv661.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !240

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph546
  %indvars.iv661.unr = phi i64 [ %i.et, %.lr.ph546 ], [ %indvars.iv.next662.prol, %.prol.preheader ]
  %i.fb = icmp ult i64 %i.ex, 3
  br i1 %i.fb, label %._crit_edge547, label %.lr.ph546.new

.lr.ph546.new:                                    ; preds = %.prol.loopexit, %.lr.ph546.new
  %indvars.iv661 = phi i64 [ %indvars.iv.next662.3, %.lr.ph546.new ], [ %indvars.iv661.unr, %.prol.loopexit ] ; 5 uses
  %i.fc = getelementptr inbounds i8, ptr %i.eu, i64 %indvars.iv661
  store i8 1, ptr %i.fc, align 1, !tbaa !73
  %i.fd = load i32, ptr %i.es, align 4, !tbaa !100
  %i.fe = add nsw i32 %i.fd, 1
  store i32 %i.fe, ptr %i.es, align 4, !tbaa !100
  %i.ff = getelementptr i8, ptr %i.eu, i64 %indvars.iv661
  %i.fg = getelementptr i8, ptr %i.ff, i64 1
  store i8 1, ptr %i.fg, align 1, !tbaa !73
  %i.fh = load i32, ptr %i.es, align 4, !tbaa !100
  %i.fi = add nsw i32 %i.fh, 1
  store i32 %i.fi, ptr %i.es, align 4, !tbaa !100
  %i.fj = getelementptr i8, ptr %i.eu, i64 %indvars.iv661
  %i.fk = getelementptr i8, ptr %i.fj, i64 2
  store i8 1, ptr %i.fk, align 1, !tbaa !73
  %i.fl = load i32, ptr %i.es, align 4, !tbaa !100
  %i.fm = add nsw i32 %i.fl, 1
  store i32 %i.fm, ptr %i.es, align 4, !tbaa !100
  %indvars.iv.next662.2 = add nsw i64 %indvars.iv661, 3 ; 2 uses
  %i.fn = getelementptr inbounds i8, ptr %i.eu, i64 %indvars.iv.next662.2
  store i8 1, ptr %i.fn, align 1, !tbaa !73
  %i.fo = load i32, ptr %i.es, align 4, !tbaa !100
  %i.fp = add nsw i32 %i.fo, 1
  store i32 %i.fp, ptr %i.es, align 4, !tbaa !100
  %indvars.iv.next662.3 = add nsw i64 %indvars.iv661, 4
  %.not354.not.3 = icmp sgt i64 %.1263, %indvars.iv.next662.2
  br i1 %.not354.not.3, label %.lr.ph546.new, label %._crit_edge547, !llvm.loop !241

._crit_edge547:                                   ; preds = %.prol.loopexit, %.lr.ph546.new, %bb.ad
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ej, i64 80
  store i32 1, ptr %i.fq, align 8, !tbaa !101
  %i.fr = add nuw nsw i64 %.1263, 1
  %indvars.iv.next665 = add nuw nsw i64 %indvars.iv664, 1 ; 2 uses
  %exitcond668.not = icmp eq i64 %indvars.iv.next665, %i.eb
  br i1 %exitcond668.not, label %._crit_edge553, label %bb.ad, !llvm.loop !242

._crit_edge553:                                   ; preds = %._crit_edge547
  %i.fs = load ptr, ptr %i.ec, align 8, !tbaa !97
  %i.ft = add nsw i32 %i.ed, -1                   ; 2 uses
  %i.fu = icmp sgt i32 %i.ed, 1
  br i1 %i.fu, label %.lr.ph556.preheader, label %._crit_edge557

.lr.ph556.preheader:                              ; preds = %._crit_edge553
  %i.fv = shl nuw nsw i64 %i.eb, 3
  %i.fw = getelementptr i8, ptr %i.bx, i64 %i.fv
  %scevgep = getelementptr i8, ptr %i.fw, i64 8
  %i.fx = zext nneg i32 %i.ft to i64
  %i.fy = shl nuw nsw i64 %i.fx, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ec, ptr align 8 %scevgep, i64 %i.fy, i1 false), !tbaa !97
  br label %._crit_edge557

._crit_edge557:                                   ; preds = %.lr.ph556.preheader, %._crit_edge553
  %i.fz = sext i32 %i.ft to i64
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.fz
  store ptr %i.fs, ptr %i.ga, align 8, !tbaa !97
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
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !97 ; 3 uses
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
  %or.cond3.not818 = select i1 %i.gh, i1 %i.gi, i1 false
  %i.gj = icmp sgt i32 %.5281, 0
  %or.cond753 = select i1 %or.cond3.not818, i1 %i.gj, i1 false
  br i1 %or.cond753, label %.lr.ph562.preheader, label %.thread426

.lr.ph562.preheader:                              ; preds = %bb.ae
  %wide.trip.count675 = zext nneg i32 %.5281 to i64
  br label %.lr.ph562

.lr.ph562:                                        ; preds = %.lr.ph562.preheader, %bb.ah
  %indvars.iv672 = phi i64 [ 0, %.lr.ph562.preheader ], [ %indvars.iv.next673, %bb.ah ] ; 4 uses
  %.0246560 = phi i32 [ -1, %.lr.ph562.preheader ], [ %.2248.ph, %bb.ah ] ; 3 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %.2271, i64 %indvars.iv672
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !97 ; 3 uses
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %.lr.ph562
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !81
  %i.gp = load ptr, ptr %i.ge, align 8, !tbaa !81
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
  br i1 %exitcond676.not, label %._crit_edge563, label %.lr.ph562, !llvm.loop !243

.thread417:                                       ; preds = %bb.af
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.2271, i64 %indvars.iv672
  store ptr null, ptr %i.gt, align 8, !tbaa !97
  br label %bb.aj

._crit_edge563:                                   ; preds = %bb.ah
  %i.gu = icmp sgt i32 %.2248.ph, -1
  br i1 %i.gu, label %bb.ai, label %.thread426

bb.ai:                                            ; preds = %._crit_edge563
  %i.gv = zext nneg i32 %.2248.ph to i64
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %.2271, i64 %i.gv
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !97 ; 2 uses
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
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !102 ; 2 uses
  %.not352 = icmp eq ptr %i.hf, null
  br i1 %.not352, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @hi_sdsfree(ptr noundef nonnull %i.hf) #32
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.hg = load ptr, ptr %i.gf, align 8, !tbaa !103
  %i.hh = call ptr @hi_sdsnew(ptr noundef %i.hg) #32
  store ptr %i.hh, ptr %i.he, align 8, !tbaa !102
  %i.hi = getelementptr inbounds nuw i8, ptr %.0250424, i64 80
  store i32 1, ptr %i.hi, align 8, !tbaa !101
  %i.hj = getelementptr inbounds nuw i8, ptr %.0250424, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !81
  %i.hl = getelementptr inbounds nuw i8, ptr %.0250424, i64 24
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !82
  %i.hn = load ptr, ptr %i.ge, align 8, !tbaa !81
  %i.ho = load i32, ptr %i.gg, align 8, !tbaa !82
  %i.hp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.187, ptr noundef %i.hk, i32 noundef %i.hm, ptr noundef %i.hn, i32 noundef %i.ho) ; 0 uses
  br i1 %i.gb, label %bb.ae, label %.thread426

.thread426:                                       ; preds = %._crit_edge563, %bb.al, %bb.ai, %bb.ae
  %.7283 = phi i32 [ %.5281, %bb.ae ], [ %i.gz, %bb.ai ], [ %.6282422, %bb.al ], [ %.5281, %._crit_edge563 ] ; 2 uses
  %.4273 = phi ptr [ %.2271, %bb.ae ], [ %i.hb, %bb.ai ], [ %.3272423, %bb.al ], [ %.2271, %._crit_edge563 ] ; 2 uses
  %.4260 = phi i32 [ %.2258, %bb.ae ], [ %.2258, %bb.ai ], [ %i.hd, %bb.al ], [ %.2258, %._crit_edge563 ] ; 3 uses
  %indvars.iv.next678 = add nuw nsw i64 %indvars.iv677, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@clusterManagerCompareNodeBalance:bb.a
; Function Attrs: nofree nounwind uwtable
define dso_local void @showLatencyDistSamples(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71) ; 0 uses
  %i.b = sitofp i64 %1 to double
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !143
  %i.f = sitofp i64 %i.e to double
  %i.g = fdiv double %i.f, %i.b
  %i.h = load i32, ptr @spectrum_palette_size, align 4, !tbaa !24
  %i.i = add nsw i32 %i.h, -1
  %i.j = sitofp i32 %i.i to double
  %i.k = fmul double %i.g, %i.j
  %i.l = tail call double @llvm.ceil.f64(double %i.k)
  %i.m = fptosi double %i.l to i32
  %i.n = load ptr, ptr @spectrum_palette, align 8, !tbaa !145
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !146
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72, i32 noundef %i.q, i32 noundef %i.s) ; 0 uses
  store i64 0, ptr %i.d, align 8, !tbaa !143
  %i.u = load i64, ptr %i.c, align 8, !tbaa !147
  %i.v = icmp eq i64 %i.u, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.v, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14) ; 0 uses
  %i.w = load ptr, ptr @stdout, align 8, !tbaa !27
  %i.x = tail call i32 @fflush(ptr noundef %i.w)  ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #16

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local void @showLatencyDistLegend() local_unnamed_addr #14 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  %puts3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  %puts4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  %puts5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  %puts6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12) ; 0 uses
  %puts7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80) ; 0 uses
  %i.b = load i32, ptr @spectrum_palette_size, align 4, !tbaa !24
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr @spectrum_palette, align 8, !tbaa !145
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !24
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.81, i32 noundef %i.f) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.h = load i32, ptr @spectrum_palette_size, align 4, !tbaa !24
  %i.i = sext i32 %i.h to i64
  %i.j = icmp slt i64 %indvars.iv.next, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %puts8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14) ; 0 uses
  %puts9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local range(i32 0, 2) i32 @sendReplconf(ptr noundef %0, ptr noundef %1) local_unnamed_addr #17 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.82, ptr noundef %0, ptr noundef %1) #39 ; 0 uses
  %i.c = load ptr, ptr @context, align 8, !tbaa !148
  %i.d = tail call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.c, ptr noundef nonnull @.str.83, ptr noundef %0, ptr noundef %1) #32 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !27
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.84, i64 11, i64 1, ptr %i.f) #33 ; 0 uses
  tail call void @exit(i32 noundef 1) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.d, align 8, !tbaa !50
  %i.h = icmp eq i32 %i.g, 6
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !51
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.85, ptr noundef %0, ptr noundef %i.k) #39 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 1, %bb.c ]
  tail call void @freeReplyObject(ptr noundef nonnull %i.d) #32
  ret i32 %.0
}

declare ptr @redisCommand(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #18

declare void @freeReplyObject(ptr noundef) local_unnamed_addr #9

; Function Attrs: cold nounwind uwtable
define dso_local void @sendCapa() local_unnamed_addr #17 {
bb.a:
  %i.a = tail call i32 @sendReplconf(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87) ; 0 uses
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @sendRdbOnly() local_unnamed_addr #17 {
bb.a:
  %i.a = tail call i32 @sendReplconf(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.89) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @sendSync(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %3, align 4, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not38 = icmp eq i32 %1, 0
  br i1 %.not38, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = tail call i64 @cliWriteConn(ptr noundef %0, ptr noundef nonnull @.str.90, i64 noundef 6) #32
  %.not40 = icmp eq i64 %i.b, 6
  br i1 %.not40, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.f, %bb.d
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !27
  %fwrite53 = tail call i64 @fwrite(ptr nonnull @.str.91, i64 24, i64 1, ptr %i.c) #33 ; 0 uses
  tail call void @exit(i32 noundef 1) #40
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.d = tail call i64 @cliWriteConn(ptr noundef %0, ptr noundef nonnull @.str.34, i64 noundef 0) #32
  %.not39 = icmp eq i64 %i.d, 0
  br i1 %.not39, label %.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !27
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.91, i64 24, i64 1, ptr %i.e) #33 ; 0 uses
  tail call void @exit(i32 noundef 1) #40
  unreachable

bb.h:                                             ; preds = %.preheader, %bb.k
  %.033.idx = phi i64 [ %spec.select, %bb.k ], [ 0, %.preheader ] ; 3 uses
  %.033.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.033.idx ; 3 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !149
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !151
  %i.i = call i64 %i.h(ptr noundef nonnull %0, ptr noundef nonnull %.033.ptr, i64 noundef 1) #32, !inline_history !8
  %i.j = icmp slt i64 %i.i, 1
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !27
  %fwrite52 = call i64 @fwrite(ptr nonnull @.str.92, i64 40, i64 1, ptr %i.k) #33 ; 0 uses
  call void @exit(i32 noundef 1) #40
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.l = load i8, ptr %.033.ptr, align 1, !tbaa !73
  %i.m = icmp eq i8 %i.l, 10                      ; 2 uses
  %i.n = icmp samesign ne i64 %.033.idx, 0
  %or.cond = and i1 %i.n, %i.m
  br i1 %or.cond, label %.split.loop.exit56, label %bb.k

bb.k:                                             ; preds = %bb.j
  %not. = xor i1 %i.m, true
  %.033.add = zext i1 %not. to i64
  %spec.select = add nuw nsw i64 %.033.idx, %.033.add ; 2 uses
  %.not42 = icmp samesign ult i64 %spec.select, 4095
  br i1 %.not42, label %bb.h, label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.k
  %.1.ptr.le = getelementptr inbounds nuw i8, ptr %i.a, i64 4095
  br label %.split.loop.exit56

.split.loop.exit56:                               ; preds = %bb.j, %.split.loop.exit
  %.2 = phi ptr [ %.1.ptr.le, %.split.loop.exit ], [ %.033.ptr, %bb.j ]
  store i8 0, ptr %.2, align 1, !tbaa !73
  %i.o = load i8, ptr %i.a, align 16, !tbaa !73
  %i.p = icmp eq i8 %i.o, 45
  br i1 %i.p, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.split.loop.exit56
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.r = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.93, ptr noundef nonnull %i.a) #39 ; 0 uses
  call void @exit(i32 noundef 1) #40
  unreachable

bb.m:                                             ; preds = %.split.loop.exit56
  %i.s = load i64, ptr %i.a, align 16
  %i.t = xor i64 %i.s, 6000292566192703019
  %i.u = getelementptr i8, ptr %i.a, i64 3
  %i.v = load i64, ptr %i.u, align 1
  %i.w = xor i64 %i.v, 4849912062904781900
  %i.x = or i64 %i.t, %i.w
  %i.y = icmp ne i64 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %.not43 = icmp eq i32 %i.z, 0
  br i1 %.not43, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = load i64, ptr %i.a, align 16
  %i.ab = xor i64 %i.aa, 6146931167847203627
  %i.ac = getelementptr i8, ptr %i.a, i64 8
  %i.ad = load i8, ptr %i.ac, align 8
  %i.ae = zext i8 %i.ad to i64
  %i.af = xor i64 %i.ae, 69
  %i.ag = or i64 %i.ab, %i.af
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %.not45 = icmp eq i32 %i.ai, 0
  br i1 %.not45, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aj = load i64, ptr %i.a, align 16
  %i.ak = xor i64 %i.aj, 6146931167847203627
  %i.al = getelementptr i8, ptr %i.a, i64 8
  %i.am = load i8, ptr %i.al, align 8
  %i.an = zext i8 %i.am to i64
  %i.ao = xor i64 %i.an, 69
  %i.ap = or i64 %i.ak, %i.ao
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %.not47.not = icmp eq i32 %i.ar, 0
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.at = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.as, ptr noundef nonnull @.str.96, ptr noundef nonnull %i.a) #39 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %bb.o
  %.3.idx = phi i64 [ 0, %bb.o ], [ %spec.select54, %bb.s ] ; 3 uses
  %.3.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.3.idx ; 3 uses
  %i.au = load ptr, ptr %0, align 8, !tbaa !149
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !151
  %i.ax = call i64 %i.aw(ptr noundef nonnull %0, ptr noundef nonnull %.3.ptr, i64 noundef 1) #32, !inline_history !8
  %i.ay = icmp slt i64 %i.ax, 1
  br i1 %i.ay, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !27
  %fwrite50 = call i64 @fwrite(ptr nonnull @.str.97, i64 41, i64 1, ptr %i.az) #33 ; 0 uses
  call void @exit(i32 noundef 1) #40
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ba = load i8, ptr %.3.ptr, align 1, !tbaa !73
  %i.bb = icmp eq i8 %i.ba, 10                    ; 2 uses
  %i.bc = icmp samesign ne i64 %.3.idx, 0
  %or.cond5 = and i1 %i.bc, %i.bb
  br i1 %or.cond5, label %.split.loop.exit59, label %bb.s

bb.s:                                             ; preds = %bb.r
  %not.55 = xor i1 %i.bb, true
  %.3.add = zext i1 %not.55 to i64
  %spec.select54 = add nuw nsw i64 %.3.idx, %.3.add ; 2 uses
  %.not49 = icmp samesign ult i64 %spec.select54, 4095
  br i1 %.not49, label %bb.p, label %.split.loop.exit58

.split.loop.exit58:                               ; preds = %bb.s
  %.4.ptr.le = getelementptr inbounds nuw i8, ptr %i.a, i64 4095
  br label %.split.loop.exit59

.split.loop.exit59:                               ; preds = %bb.r, %.split.loop.exit58
  %.5 = phi ptr [ %.4.ptr.le, %.split.loop.exit58 ], [ %.3.ptr, %bb.r ]
  store i8 0, ptr %.5, align 1, !tbaa !73
  br i1 %.not47.not, label %bb.t, label %.critedge

bb.t:                                             ; preds = %.split.loop.exit59
  br i1 %.not, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %3, align 4, !tbaa !24
  br label %bb.y

.critedge:                                        ; preds = %.split.loop.exit59, %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 1
  %i.bf = icmp ne i32 %i.be, 977686341
  %i.bg = zext i1 %i.bf to i32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.critedge
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 5 ; 2 uses
  %i.bj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bi) #34
  %i.bk = icmp ugt i64 %i.bj, 39
  br i1 %i.bk, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %2, ptr noundef nonnull align 1 dereferenceable(40) %i.bi, i64 40, i1 false)
  br label %bb.y

bb.x:                                             ; preds = %bb.v, %.critedge
  %i.bl = call i64 @__isoc23_strtoull(ptr noundef nonnull %i.bd, ptr noundef null, i32 noundef 10) #32
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.t, %bb.x, %bb.w
  %.135 = phi i64 [ 0, %bb.w ], [ %i.bl, %bb.x ], [ 0, %bb.t ], [ 0, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret i64 %.135
}

declare i64 @cliWriteConn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @type_free(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !153  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @hi_sdsfree(ptr noundef nonnull %i.b) #32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !154
  tail call void @hi_sdsfree(ptr noundef %i.c) #32
  tail call void @zfree(ptr noundef nonnull %1) #32
  ret void
}

declare void @zfree(ptr noundef) #9

; Function Attrs: nofree nounwind uwtable
define dso_local noundef ptr @bytesToHuman(ptr nofree noundef returned writeonly captures(ret: address, provenance) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 45, ptr %0, align 1, !tbaa !73
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = sub nsw i64 0, %2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.029 = phi ptr [ %i.b, %bb.b ], [ %0, %bb.a ]  ; 5 uses
  %.0 = phi i64 [ %i.c, %bb.b ], [ %2, %bb.a ]    ; 10 uses
  %i.d = icmp samesign ult i64 %.0, 1024
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.029, i64 noundef %1, ptr noundef nonnull @.str.118, i64 noundef %.0) #32 ; 0 uses
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ult i64 %.0, 1048576
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = uitofp nneg i64 %.0 to double
  %i.h = fmul nnan double %i.g, f0x3F50000000000000
  %i.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.029, i64 noundef %1, ptr noundef nonnull @.str.119, double noundef %i.h) #32 ; 0 uses
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.j = icmp samesign ult i64 %.0, 1073741824
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = uitofp nneg i64 %.0 to double
  %i.l = fmul nnan double %i.k, f0x3EB0000000000000
  %i.m = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.029, i64 noundef %1, ptr noundef nonnull @.str.120, double noundef %i.l) #32 ; 0 uses
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.n = icmp samesign ult i64 %.0, 1099511627776
  br i1 %i.n, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.o = uitofp nneg i64 %.0 to double
  %i.p = fmul nnan double %i.o, f0x3E10000000000000
  %i.q = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.029, i64 noundef %1, ptr noundef nonnull @.str.121, double noundef %i.p) #32 ; 0 uses
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.r = icmp samesign ult i64 %.0, 1125899906842624
  br i1 %i.r, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.s = uitofp nneg i64 %.0 to double
  %i.t = fmul nnan double %i.s, f0x3D70000000000000
  %i.u = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.029, i64 noundef %1, ptr noundef nonnull @.str.122, double noundef %i.t) #32 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.j, %bb.l, %bb.k, %bb.h, %bb.d
  ret ptr %0
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @powerLawRand(i64 noundef %0, i64 noundef %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i64 %1, 1
  %i.b = tail call i32 @rand() #32
  %i.c = sitofp i32 %i.b to double
  %i.d = sitofp i64 %i.a to double
  %i.e = sitofp i64 %0 to double
  %.scalar = fadd double %2, 1.000000e+00         ; 3 uses
  %i.f = insertelement <2 x double> <double f0x41DFFFFFFFC00000, double poison>, double %.scalar, i64 1
  %i.g = tail call double @pow(double noundef %i.d, double noundef %.scalar) #32, !tbaa !24
  %i.h = tail call double @pow(double noundef %i.e, double noundef %.scalar) #32, !tbaa !24 ; 2 uses
  %i.i = fsub double %i.g, %i.h
  %i.j = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.c, i64 0
  %i.k = fdiv <2 x double> %i.j, %i.f             ; 2 uses
  %i.l = extractelement <2 x double> %i.k, i64 0
  %i.m = tail call double @llvm.fmuladd.f64(double %i.i, double %i.l, double %i.h)
  %i.n = extractelement <2 x double> %i.k, i64 1
  %i.o = tail call double @pow(double noundef %i.m, double noundef %i.n) #32, !tbaa !24
  %i.p = fptosi double %i.o to i64
  %i.q = add i64 %1, %0
  %i.r = sub i64 %i.q, %i.p
  ret i64 %i.r
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #16

; Function Attrs: nounwind uwtable
define dso_local void @LRUTestGenKey(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @config, i64 216), align 8, !tbaa !155
  %i.b = add i64 %i.a, 1                          ; 2 uses
  %i.c = tail call i32 @rand() #32
  %i.d = sitofp i32 %i.c to double
  %i.e = fdiv double %i.d, f0x41DFFFFFFFC00000
  %i.f = sitofp i64 %i.b to double
  %i.g = tail call double @pow(double noundef %i.f, double noundef 7.200000e+00) #32, !tbaa !24
  %i.h = fadd double %i.g, -1.000000e+00
  %i.i = tail call double @llvm.fmuladd.f64(double %i.h, double %i.e, double 1.000000e+00)
  %i.j = tail call double @pow(double noundef %i.i, double noundef f0x3FC1C71C71C71C72) #32, !tbaa !24
  %i.k = fptosi double %i.j to i64
  %i.l = sub i64 %i.b, %i.k
  %i.m = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.123, i64 noundef %i.l) #32 ; 0 uses
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @compute_something_fast() local_unnamed_addr #20 {
vector.ph:
  %i.a = alloca [256 x i8], align 16              ; 21 uses
end_hunk_1
begin_hunk_2_@main:bb.a
  store ptr %i.bdf, ptr %i.bde, align 8, !tbaa !154
  %i.bdg = call i32 @dictAdd(ptr noundef %i.bdd, ptr noundef %i.bdf, ptr noundef nonnull %i.bde) #32 ; 0 uses
  %i.bdh = call noalias dereferenceable_or_null(56) ptr @zmalloc(i64 noundef 56) #36 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bdh, ptr noundef nonnull align 8 dereferenceable(56) @type_list, i64 56, i1 false), !tbaa.struct !190
  %i.bdi = call ptr @hi_sdsnew(ptr noundef nonnull @.str.102) #32 ; 2 uses
  store ptr %i.bdi, ptr %i.bdh, align 8, !tbaa !154
  %i.bdj = call i32 @dictAdd(ptr noundef %i.bdd, ptr noundef %i.bdi, ptr noundef nonnull %i.bdh) #32 ; 0 uses
  %i.bdk = call noalias dereferenceable_or_null(56) ptr @zmalloc(i64 noundef 56) #36 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bdk, ptr noundef nonnull align 8 dereferenceable(56) @type_set, i64 56, i1 false), !tbaa.struct !190
  %i.bdl = call ptr @hi_sdsnew(ptr noundef nonnull @.str.105) #32 ; 2 uses
  store ptr %i.bdl, ptr %i.bdk, align 8, !tbaa !154
  %i.bdm = call i32 @dictAdd(ptr noundef %i.bdd, ptr noundef %i.bdl, ptr noundef nonnull %i.bdk) #32 ; 0 uses
  %i.bdn = call noalias dereferenceable_or_null(56) ptr @zmalloc(i64 noundef 56) #36 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bdn, ptr noundef nonnull align 8 dereferenceable(56) @type_hash, i64 56, i1 false), !tbaa.struct !190
  %i.bdo = call ptr @hi_sdsnew(ptr noundef nonnull @.str.108) #32 ; 2 uses
  store ptr %i.bdo, ptr %i.bdn, align 8, !tbaa !154
  %i.bdp = call i32 @dictAdd(ptr noundef %i.bdd, ptr noundef %i.bdo, ptr noundef nonnull %i.bdn) #32 ; 0 uses
  %i.bdq = call noalias dereferenceable_or_null(56) ptr @zmalloc(i64 noundef 56) #36 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bdq, ptr noundef nonnull align 8 dereferenceable(56) @type_zset, i64 56, i1 false), !tbaa.struct !190
  %i.bdr = call ptr @hi_sdsnew(ptr noundef nonnull @.str.111) #32 ; 2 uses
  store ptr %i.bdr, ptr %i.bdq, align 8, !tbaa !154
  %i.bds = call i32 @dictAdd(ptr noundef %i.bdd, ptr noundef %i.bdr, ptr noundef nonnull %i.bdq) #32 ; 0 uses
  %i.bdt = call noalias dereferenceable_or_null(56) ptr @zmalloc(i64 noundef 56) #36 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bdt, ptr noundef nonnull align 8 dereferenceable(56) @type_stream, i64 56, i1 false), !tbaa.struct !190
  %i.bdu = call ptr @hi_sdsnew(ptr noundef nonnull @.str.113) #32 ; 2 uses
  store ptr %i.bdu, ptr %i.bdt, align 8, !tbaa !154
  %i.bdv = call i32 @dictAdd(ptr noundef %i.bdd, ptr noundef %i.bdu, ptr noundef nonnull %i.bdt) #32 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %16, ptr noundef nonnull align 16 dereferenceable(128) @__const.keyStats.distribution, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #32
  %i.bdw = call i32 @hdr_init(i64 noundef 1, i64 noundef 1099511627776, i32 noundef 4, ptr noundef nonnull %i.ab) #32
  %.not151.i = icmp eq i32 %i.bdw, 0
  br i1 %.not151.i, label %bb.qp, label %bb.qo

bb.qo:                                            ; preds = %bb.qn
  %i.bdx = load ptr, ptr @stderr, align 8, !tbaa !27
  %fwrite168.i = call i64 @fwrite(ptr nonnull @.str.807, i64 24, i64 1, ptr %i.bdx) #33 ; 0 uses
  call void @exit(i32 noundef 1) #40
  unreachable

bb.qp:                                            ; preds = %bb.qn
  %i.bdy = call ptr @signal(i32 noundef 2, ptr noundef nonnull @longStatLoopModeStop) #32 ; 0 uses
  %i.bdz = call fastcc i32 @getDbSize()
  %i.bea = sext i32 %i.bdz to i64                 ; 2 uses
  %puts.i98 = call i32 @puts(ptr nonnull dereferenceable(1) @str.28) ; 0 uses
  %puts152.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.29) ; 0 uses
  %puts153.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.30) ; 0 uses
  %puts154.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.31) ; 0 uses
  %puts155.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.32) ; 0 uses
  call fastcc void @sendReadOnly()
  %.not.i.i = icmp eq i64 %i.bby, 0
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bcg, i64 40 ; 2 uses
  %i.bec = getelementptr inbounds nuw i8, ptr %i.bcg, i64 8 ; 3 uses
  %i.bed = add i64 %i.bby, 1
  %i.bee = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bef = getelementptr inbounds nuw i8, ptr %12, i64 8
  br label %bb.qq

bb.qq:                                            ; preds = %bb.sb, %bb.qp
  %.sroa.0.0.i = phi i64 [ 0, %bb.qp ], [ %.sroa.0.1.lcssa.i, %bb.sb ] ; 2 uses
  %.sroa.7.0.i = phi i64 [ 0, %bb.qp ], [ %.sroa.7.1.lcssa.i, %bb.sb ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.qp ], [ %.sroa.11.1.lcssa.i, %bb.sb ] ; 2 uses
  %.0137.i = phi i64 [ 0, %bb.qp ], [ %.1138.lcssa.i, %bb.sb ] ; 2 uses
  %.0136.i = phi i64 [ 0, %bb.qp ], [ %i.beh, %bb.sb ]
  %.0134.i = phi ptr [ null, %bb.qp ], [ %.1135.i, %bb.sb ] ; 2 uses
  %.0132.i = phi ptr [ null, %bb.qp ], [ %.1133.i, %bb.sb ] ; 2 uses
  %.0130.i = phi i32 [ 0, %bb.qp ], [ %.1131.i, %bb.sb ] ; 2 uses
  %.0127.i = phi ptr [ null, %bb.qp ], [ %.1128.i, %bb.sb ] ; 2 uses
  %.0125.i = phi ptr [ null, %bb.qp ], [ %.1126.i, %bb.sb ] ; 2 uses
  %.0123.i = phi i64 [ %i.bcf, %bb.qp ], [ %.1124.i, %bb.sb ] ; 3 uses
  %.0.i99 = phi i64 [ 0, %bb.qp ], [ %.1.lcssa.i, %bb.sb ] ; 2 uses
  %i.beg = call fastcc ptr @sendScan(ptr noundef %i.aa) ; 2 uses
  %i.beh = add i64 %.0136.i, 1                    ; 2 uses
  %i.bei = getelementptr inbounds nuw i8, ptr %i.beg, i64 56
  %i.bej = load ptr, ptr %i.bei, align 8, !tbaa !47
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bej, i64 8
  %i.bel = load ptr, ptr %i.bek, align 8, !tbaa !49 ; 6 uses
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bel, i64 48 ; 7 uses
  %i.ben = load i64, ptr %i.bem, align 8, !tbaa !46 ; 2 uses
  %i.beo = zext i32 %.0130.i to i64
  %i.bep = icmp ugt i64 %i.ben, %i.beo
  br i1 %i.bep, label %bb.qr, label %bb.qu

bb.qr:                                            ; preds = %bb.qq
  %i.beq = shl i64 %i.ben, 3
  %i.ber = call ptr @zrealloc(ptr noundef %.0127.i, i64 noundef %i.beq) #35 ; 2 uses
  %i.bes = load i64, ptr %i.bem, align 8, !tbaa !46
  %i.bet = shl i64 %i.bes, 3
  %i.beu = call ptr @zrealloc(ptr noundef %.0134.i, i64 noundef %i.bet) #35 ; 2 uses
  %i.bev = load i64, ptr %i.bem, align 8, !tbaa !46
  %i.bew = shl i64 %i.bev, 3
  %i.bex = call ptr @zrealloc(ptr noundef %.0125.i, i64 noundef %i.bew) #35 ; 2 uses
  %i.bey = load i64, ptr %i.bem, align 8, !tbaa !46
  %i.bez = shl i64 %i.bey, 3
  %i.bfa = call ptr @zrealloc(ptr noundef %.0132.i, i64 noundef %i.bez) #35 ; 2 uses
  %i.bfb = insertelement <4 x ptr> poison, ptr %i.ber, i64 0
  %i.bfc = insertelement <4 x ptr> %i.bfb, ptr %i.beu, i64 1
  %i.bfd = insertelement <4 x ptr> %i.bfc, ptr %i.bex, i64 2
  %i.bfe = insertelement <4 x ptr> %i.bfd, ptr %i.bfa, i64 3
  %.fr = freeze <4 x ptr> %i.bfe
  %i.bff = icmp eq <4 x ptr> %.fr, splat (ptr null)
  %i.bfg = bitcast <4 x i1> %i.bff to i4
  %i.bfh = icmp eq i4 %i.bfg, 0
  br i1 %i.bfh, label %bb.qt, label %bb.qs

bb.qs:                                            ; preds = %bb.qr
  %i.bfi = load ptr, ptr @stderr, align 8, !tbaa !27
  %fwrite.i120 = call i64 @fwrite(ptr nonnull @.str.766, i64 37, i64 1, ptr %i.bfi) #33 ; 0 uses
  call void @exit(i32 noundef 1) #40
  unreachable

bb.qt:                                            ; preds = %bb.qr
  %i.bfj = load i64, ptr %i.bem, align 8, !tbaa !46
  %i.bfk = trunc i64 %i.bfj to i32
  br label %bb.qu

bb.qu:                                            ; preds = %bb.qt, %bb.qq
  %.1135.i = phi ptr [ %i.beu, %bb.qt ], [ %.0134.i, %bb.qq ] ; 5 uses
  %.1133.i = phi ptr [ %i.bfa, %bb.qt ], [ %.0132.i, %bb.qq ] ; 5 uses
  %.1131.i = phi i32 [ %i.bfk, %bb.qt ], [ %.0130.i, %bb.qq ]
  %.1128.i = phi ptr [ %i.ber, %bb.qt ], [ %.0127.i, %bb.qq ] ; 6 uses
  %.1126.i = phi ptr [ %i.bex, %bb.qt ], [ %.0125.i, %bb.qq ] ; 6 uses
  call fastcc void @getKeyTypes(ptr noundef %i.bck, ptr noundef nonnull %i.bel, ptr noundef %.1128.i)
  call fastcc void @getKeySizes(ptr noundef nonnull %i.bel, ptr noundef %.1128.i, ptr noundef %.1135.i, i32 noundef 1, i64 noundef %i.bbw)
  call fastcc void @getKeyTypes(ptr noundef %i.bdd, ptr noundef nonnull %i.bel, ptr noundef %.1126.i)
  call fastcc void @getKeySizes(ptr noundef nonnull %i.bel, ptr noundef %.1126.i, ptr noundef %.1133.i, i32 noundef 0, i64 noundef %i.bbw)
  %i.bfl = load i64, ptr %i.bem, align 8, !tbaa !46 ; 2 uses
  %.not247.i = icmp eq i64 %i.bfl, 0
  br i1 %.not247.i, label %._crit_edge.i107, label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %bb.qu
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bel, i64 56 ; 4 uses
  br label %bb.qv

bb.qv:                                            ; preds = %bb.rv, %.lr.ph.i100
  %i.bfn = phi i64 [ %i.bfl, %.lr.ph.i100 ], [ %i.bjm, %bb.rv ] ; 2 uses
  %i.bfo = phi i64 [ 0, %.lr.ph.i100 ], [ %i.bjo, %bb.rv ] ; 8 uses
  %.1238.i = phi i64 [ %.0.i99, %.lr.ph.i100 ], [ %.2.i106, %bb.rv ] ; 3 uses
  %.0129237.i = phi i32 [ 0, %.lr.ph.i100 ], [ %i.bjn, %bb.rv ]
  %.1138236.i = phi i64 [ %.0137.i, %.lr.ph.i100 ], [ %.2139.i, %bb.rv ] ; 3 uses
  %.sroa.11.1235.i = phi i64 [ %.sroa.11.0.i, %.lr.ph.i100 ], [ %.sroa.11.2.i, %bb.rv ] ; 3 uses
  %.sroa.7.1234.i = phi i64 [ %.sroa.7.0.i, %.lr.ph.i100 ], [ %.sroa.7.2.i, %bb.rv ] ; 3 uses
  %.sroa.0.1233.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i100 ], [ %.sroa.0.2.i, %bb.rv ] ; 3 uses
  %i.bfp = getelementptr inbounds nuw [8 x i8], ptr %.1128.i, i64 %i.bfo ; 2 uses
  %i.bfq = load ptr, ptr %i.bfp, align 8, !tbaa !39 ; 2 uses
  %.not166.i101 = icmp eq ptr %i.bfq, null
  br i1 %.not166.i101, label %bb.rv, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  %i.bfr = getelementptr inbounds nuw [8 x i8], ptr %.1126.i, i64 %i.bfo ; 2 uses
  %i.bfs = load ptr, ptr %i.bfr, align 8, !tbaa !39
  %.not167.i102 = icmp eq ptr %i.bfs, null
  br i1 %.not167.i102, label %bb.rv, label %bb.qx

bb.qx:                                            ; preds = %bb.qw
  %i.bft = getelementptr inbounds nuw [8 x i8], ptr %.1135.i, i64 %i.bfo ; 4 uses
  %i.bfu = load i64, ptr %i.bft, align 8, !tbaa !189 ; 4 uses
  %i.bfv = add i64 %i.bfu, %.1138236.i
  %i.bfw = add i64 %.1238.i, 1
  %i.bfx = load ptr, ptr %i.bfm, align 8, !tbaa !47
  %i.bfy = getelementptr inbounds nuw [8 x i8], ptr %i.bfx, i64 %i.bfo
  %i.bfz = load ptr, ptr %i.bfy, align 8, !tbaa !49 ; 2 uses
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfz, i64 32
  %i.bgb = load ptr, ptr %i.bga, align 8, !tbaa !51
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bfz, i64 24
  %i.bgd = load i64, ptr %i.bgc, align 8, !tbaa !70
  %i.bge = load ptr, ptr %i.bfq, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  br i1 %.not.i.i, label %bb.ra, label %bb.qy

bb.qy:                                            ; preds = %bb.qx
  %i.bgf = load i64, ptr %i.beb, align 8, !tbaa !90
  %i.bgg = icmp eq i64 %i.bgf, %i.bby
  br i1 %i.bgg, label %bb.qz, label %bb.ra

bb.qz:                                            ; preds = %bb.qy
  %i.bgh = load ptr, ptr %i.bec, align 8, !tbaa !399
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.bgh, i64 16
  %i.bgj = load ptr, ptr %i.bgi, align 8, !tbaa !99
  %i.bgk = load i64, ptr %i.bgj, align 8, !tbaa !192
  %.not26.i.i = icmp ugt i64 %i.bfu, %i.bgk
  br i1 %.not26.i.i, label %bb.ra, label %updateTopSizes.exit.i

bb.ra:                                            ; preds = %bb.qz, %bb.qy, %bb.qx
  call void @listRewind(ptr noundef nonnull %i.bcg, ptr noundef nonnull %14) #32
  br label %bb.rb

bb.rb:                                            ; preds = %bb.rc, %bb.ra
  %i.bgl = call ptr @listNext(ptr noundef nonnull %14) #32 ; 3 uses
  %.not27.i.i = icmp eq ptr %i.bgl, null          ; 2 uses
  br i1 %.not27.i.i, label %.critedge.i.i, label %bb.rc

bb.rc:                                            ; preds = %bb.rb
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgl, i64 16
  %i.bgn = load ptr, ptr %i.bgm, align 8, !tbaa !99
  %i.bgo = load i64, ptr %i.bgn, align 8, !tbaa !192
  %.not28.i.i = icmp ugt i64 %i.bfu, %i.bgo
  br i1 %.not28.i.i, label %.critedge.i.i, label %bb.rb, !llvm.loop !318

.critedge.i.i:                                    ; preds = %bb.rc, %bb.rb
  %.lcssa932 = phi ptr [ %i.bgl, %bb.rc ], [ null, %bb.rb ]
  %i.bgp = call noalias dereferenceable_or_null(32) ptr @zmalloc(i64 noundef 32) #36 ; 5 uses
  store i64 %i.bfu, ptr %i.bgp, align 8, !tbaa !192
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bgp, i64 8
  %i.bgr = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bgq, i64 noundef 10, ptr noundef nonnull @.str.260, ptr noundef %i.bge) #32 ; 0 uses
  %i.bgs = call ptr @hi_sdsempty() #32
  %i.bgt = call ptr @hi_sdscatrepr(ptr noundef %i.bgs, ptr noundef %i.bgb, i64 noundef %i.bgd) #32 ; 2 uses
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bgp, i64 24
  store ptr %i.bgt, ptr %i.bgu, align 8, !tbaa !193
  %.not.i.i.i = icmp eq ptr %i.bgt, null
  br i1 %.not.i.i.i, label %bb.rd, label %createKeySizeInfo.exit.i.i

bb.rd:                                            ; preds = %.critedge.i.i
  %i.bgv = load ptr, ptr @stderr, align 8, !tbaa !27
  %fwrite.i.i.i = call i64 @fwrite(ptr nonnull @.str.816, i64 40, i64 1, ptr %i.bgv) #33 ; 0 uses
  call void @exit(i32 noundef 1) #40
  unreachable

createKeySizeInfo.exit.i.i:                       ; preds = %.critedge.i.i
  br i1 %.not27.i.i, label %bb.rf, label %bb.re

bb.re:                                            ; preds = %createKeySizeInfo.exit.i.i
  %i.bgw = call ptr @listInsertNode(ptr noundef nonnull %i.bcg, ptr noundef nonnull %.lcssa932, ptr noundef nonnull %i.bgp, i32 noundef 0) #32 ; 0 uses
  br label %bb.rg

bb.rf:                                            ; preds = %createKeySizeInfo.exit.i.i
  %i.bgx = call ptr @listAddNodeTail(ptr noundef nonnull %i.bcg, ptr noundef nonnull %i.bgp) #32 ; 0 uses
  br label %bb.rg

bb.rg:                                            ; preds = %bb.rf, %bb.re
  %i.bgy = load i64, ptr %i.beb, align 8, !tbaa !90
  %i.bgz = icmp eq i64 %i.bgy, %i.bed
  br i1 %i.bgz, label %bb.rh, label %updateTopSizes.exit.i

bb.rh:                                            ; preds = %bb.rg
  %i.bha = load ptr, ptr %i.bec, align 8, !tbaa !399
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bha, i64 16
  %i.bhc = load ptr, ptr %i.bhb, align 8, !tbaa !99
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bhc, i64 24
  %i.bhe = load ptr, ptr %i.bhd, align 8, !tbaa !193
  call void @hi_sdsfree(ptr noundef %i.bhe) #32
  %i.bhf = load ptr, ptr %i.bec, align 8, !tbaa !399
  call void @listDelNode(ptr noundef nonnull %i.bcg, ptr noundef %i.bhf) #32
  br label %updateTopSizes.exit.i

updateTopSizes.exit.i:                            ; preds = %bb.rh, %bb.rg, %bb.qz
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.bhg = load ptr, ptr %i.bfm, align 8, !tbaa !47
  %i.bhh = getelementptr inbounds nuw [8 x i8], ptr %i.bhg, i64 %i.bfo
  %i.bhi = load ptr, ptr %i.bhh, align 8, !tbaa !49 ; 3 uses
  %i.bhj = load i64, ptr %i.bft, align 8, !tbaa !189 ; 3 uses
  %i.bhk = load ptr, ptr %i.bfp, align 8, !tbaa !39 ; 3 uses
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bhk, i64 32 ; 2 uses
  %i.bhm = load <2 x i64>, ptr %i.bhl, align 8, !tbaa !189
  %i.bhn = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.bhj, i64 1
  %i.bho = add <2 x i64> %i.bhm, %i.bhn
  store <2 x i64> %i.bho, ptr %i.bhl, align 8, !tbaa !189
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bhk, i64 24 ; 2 uses
  %i.bhq = load i64, ptr %i.bhp, align 8, !tbaa !194
  %i.bhr = icmp ult i64 %i.bhq, %i.bhj
  br i1 %i.bhr, label %bb.ri, label %updateKeyType.exit.i

bb.ri:                                            ; preds = %updateTopSizes.exit.i
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhk, i64 48 ; 2 uses
  %i.bht = load ptr, ptr %i.bhs, align 8, !tbaa !153 ; 2 uses
  %.not.i172.i = icmp eq ptr %i.bht, null
  br i1 %.not.i172.i, label %bb.rk, label %bb.rj

bb.rj:                                            ; preds = %bb.ri
  call void @hi_sdsfree(ptr noundef nonnull %i.bht) #32
  br label %bb.rk

bb.rk:                                            ; preds = %bb.rj, %bb.ri
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bhi, i64 32
  %i.bhv = load ptr, ptr %i.bhu, align 8, !tbaa !51
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bhi, i64 24
  %i.bhx = load i64, ptr %i.bhw, align 8, !tbaa !70
  %i.bhy = call ptr @hi_sdsnewlen(ptr noundef %i.bhv, i64 noundef %i.bhx) #32 ; 2 uses
  store ptr %i.bhy, ptr %i.bhs, align 8, !tbaa !153
  %.not13.i.i = icmp eq ptr %i.bhy, null
  br i1 %.not13.i.i, label %bb.rl, label %bb.rm

bb.rl:                                            ; preds = %bb.rk
  %i.bhz = load ptr, ptr @stderr, align 8, !tbaa !27
  %fwrite.i.i116 = call i64 @fwrite(ptr nonnull @.str.767, i64 35, i64 1, ptr %i.bhz) #33 ; 0 uses
  call void @exit(i32 noundef 1) #40
  unreachable

bb.rm:                                            ; preds = %bb.rk
  store i64 %i.bhj, ptr %i.bhp, align 8, !tbaa !194
  %.pre.i115 = load ptr, ptr %i.bfm, align 8, !tbaa !47
  %.phi.trans.insert.i = getelementptr inbounds nuw [8 x i8], ptr %.pre.i115, i64 %i.bfo
  %.pre262.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !49
  br label %updateKeyType.exit.i

updateKeyType.exit.i:                             ; preds = %bb.rm, %updateTopSizes.exit.i
  %i.bia = phi ptr [ %i.bhi, %updateTopSizes.exit.i ], [ %.pre262.i, %bb.rm ] ; 2 uses
  %i.bib = getelementptr inbounds nuw [8 x i8], ptr %.1133.i, i64 %i.bfo
  %i.bic = load i64, ptr %i.bib, align 8, !tbaa !189 ; 3 uses
  %i.bid = load ptr, ptr %i.bfr, align 8, !tbaa !39 ; 3 uses
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bid, i64 32 ; 2 uses
  %i.bif = load <2 x i64>, ptr %i.bie, align 8, !tbaa !189
  %i.big = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.bic, i64 1
  %i.bih = add <2 x i64> %i.bif, %i.big
  store <2 x i64> %i.bih, ptr %i.bie, align 8, !tbaa !189
  %i.bii = getelementptr inbounds nuw i8, ptr %i.bid, i64 24 ; 2 uses
  %i.bij = load i64, ptr %i.bii, align 8, !tbaa !194
  %i.bik = icmp ult i64 %i.bij, %i.bic
  br i1 %i.bik, label %bb.rn, label %updateKeyType.exit176.i

bb.rn:                                            ; preds = %updateKeyType.exit.i
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bid, i64 48 ; 2 uses
  %i.bim = load ptr, ptr %i.bil, align 8, !tbaa !153 ; 2 uses
  %.not.i173.i = icmp eq ptr %i.bim, null
  br i1 %.not.i173.i, label %bb.rp, label %bb.ro

bb.ro:                                            ; preds = %bb.rn
  call void @hi_sdsfree(ptr noundef nonnull %i.bim) #32
  br label %bb.rp

bb.rp:                                            ; preds = %bb.ro, %bb.rn
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bia, i64 32
  %i.bio = load ptr, ptr %i.bin, align 8, !tbaa !51
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bia, i64 24
  %i.biq = load i64, ptr %i.bip, align 8, !tbaa !70
  %i.bir = call ptr @hi_sdsnewlen(ptr noundef %i.bio, i64 noundef %i.biq) #32 ; 2 uses
  store ptr %i.bir, ptr %i.bil, align 8, !tbaa !153
  %.not13.i174.i = icmp eq ptr %i.bir, null
  br i1 %.not13.i174.i, label %bb.rq, label %bb.rr

bb.rq:                                            ; preds = %bb.rp
  %i.bis = load ptr, ptr @stderr, align 8, !tbaa !27
  %fwrite.i175.i = call i64 @fwrite(ptr nonnull @.str.767, i64 35, i64 1, ptr %i.bis) #33 ; 0 uses
  call void @exit(i32 noundef 1) #40
  unreachable

bb.rr:                                            ; preds = %bb.rp
  store i64 %i.bic, ptr %i.bii, align 8, !tbaa !194
  br label %updateKeyType.exit176.i

updateKeyType.exit176.i:                          ; preds = %bb.rr, %updateKeyType.exit.i
  %i.bit = load ptr, ptr %i.ab, align 8, !tbaa !396
  %i.biu = load i64, ptr %i.bft, align 8, !tbaa !189
  %i.biv = call zeroext i1 @hdr_record_value(ptr noundef %i.bit, i64 noundef %i.biu) #32
  br i1 %i.biv, label %bb.rt, label %bb.rs

bb.rs:                                            ; preds = %updateKeyType.exit176.i
  %i.biw = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.bix = load i64, ptr %i.bft, align 8, !tbaa !189
  %i.biy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.biw, ptr noundef nonnull @.str.813, i64 noundef %i.bix) #39 ; 0 uses
  br label %bb.rt

bb.rt:                                            ; preds = %bb.rs, %updateKeyType.exit176.i
  %i.biz = load ptr, ptr %i.bfm, align 8, !tbaa !47
  %i.bja = getelementptr inbounds nuw [8 x i8], ptr %i.biz, i64 %i.bfo
  %i.bjb = load ptr, ptr %i.bja, align 8, !tbaa !49
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.bjb, i64 24
  %i.bjd = load i64, ptr %i.bjc, align 8, !tbaa !70 ; 3 uses
  br label %bb.ru

bb.ru:                                            ; preds = %bb.ru, %bb.rt
  %indvars.iv.i.i103 = phi i64 [ %indvars.iv.next.i.i104, %bb.ru ], [ 0, %bb.rt ] ; 2 uses
  %i.bje = getelementptr inbounds nuw [16 x i8], ptr %16, i64 %indvars.iv.i.i103 ; 2 uses
  %i.bjf = load i64, ptr %i.bje, align 16, !tbaa !401 ; 2 uses
  %.not.i177.i = icmp ne i64 %i.bjf, 0
  %i.bjg = icmp ugt i64 %i.bjd, %i.bjf
  %or.cond.i.i = and i1 %.not.i177.i, %i.bjg
  %indvars.iv.next.i.i104 = add nuw nsw i64 %indvars.iv.i.i103, 1
  br i1 %or.cond.i.i, label %bb.ru, label %addSizeDist.exit.i, !llvm.loop !319

addSizeDist.exit.i:                               ; preds = %bb.ru
  %i.bjh = add i64 %.sroa.0.1233.i, 1
  %i.bji = add i64 %i.bjd, %.sroa.7.1234.i
  %spec.select.i105 = call i64 @llvm.umax.i64(i64 %i.bjd, i64 %.sroa.11.1235.i)
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bje, i64 8 ; 2 uses
  %i.bjk = load i64, ptr %i.bjj, align 8, !tbaa !402
  %i.bjl = add i64 %i.bjk, 1
  store i64 %i.bjl, ptr %i.bjj, align 8, !tbaa !402
  %.pre263.i = load i64, ptr %i.bem, align 8, !tbaa !46
  br label %bb.rv

bb.rv:                                            ; preds = %addSizeDist.exit.i, %bb.qw, %bb.qv
  %i.bjm = phi i64 [ %i.bfn, %bb.qv ], [ %i.bfn, %bb.qw ], [ %.pre263.i, %addSizeDist.exit.i ] ; 2 uses
  %.sroa.0.2.i = phi i64 [ %.sroa.0.1233.i, %bb.qv ], [ %.sroa.0.1233.i, %bb.qw ], [ %i.bjh, %addSizeDist.exit.i ] ; 2 uses
  %.sroa.7.2.i = phi i64 [ %.sroa.7.1234.i, %bb.qv ], [ %.sroa.7.1234.i, %bb.qw ], [ %i.bji, %addSizeDist.exit.i ] ; 2 uses
  %.sroa.11.2.i = phi i64 [ %.sroa.11.1235.i, %bb.qv ], [ %.sroa.11.1235.i, %bb.qw ], [ %spec.select.i105, %addSizeDist.exit.i ] ; 2 uses
  %.2139.i = phi i64 [ %.1138236.i, %bb.qv ], [ %.1138236.i, %bb.qw ], [ %i.bfv, %addSizeDist.exit.i ] ; 2 uses
  %.2.i106 = phi i64 [ %.1238.i, %bb.qv ], [ %.1238.i, %bb.qw ], [ %i.bfw, %addSizeDist.exit.i ] ; 2 uses
  %i.bjn = add i32 %.0129237.i, 1                 ; 2 uses
  %i.bjo = zext i32 %i.bjn to i64                 ; 2 uses
  %i.bjp = icmp ugt i64 %i.bjm, %i.bjo
  br i1 %i.bjp, label %bb.qv, label %._crit_edge.i107, !llvm.loop !320

._crit_edge.i107:                                 ; preds = %bb.rv, %bb.qu
  %.sroa.0.1.lcssa.i = phi i64 [ %.sroa.0.0.i, %bb.qu ], [ %.sroa.0.2.i, %bb.rv ] ; 6 uses
  %.sroa.7.1.lcssa.i = phi i64 [ %.sroa.7.0.i, %bb.qu ], [ %.sroa.7.2.i, %bb.rv ] ; 4 uses
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.qu ], [ %.sroa.11.2.i, %bb.rv ] ; 2 uses
  %.1138.lcssa.i = phi i64 [ %.0137.i, %bb.qu ], [ %.2139.i, %bb.rv ] ; 3 uses
  %.1.lcssa.i = phi i64 [ %.0.i99, %bb.qu ], [ %.2.i106, %bb.rv ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  %i.bjq = call i32 @gettimeofday(ptr noundef nonnull %13, ptr noundef null) #32 ; 0 uses
  %i.bjr = load i64, ptr %13, align 8, !tbaa !186
  %i.bjs = mul nsw i64 %i.bjr, 1000000
  %i.bjt = load i64, ptr %i.bee, align 8, !tbaa !187
  %i.bju = add nsw i64 %i.bjs, %i.bjt
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.bjv = sdiv i64 %i.bju, 1000
  %i.bjw = add nsw i64 %.0123.i, 300
  %i.bjx = icmp sgt i64 %i.bjv, %i.bjw
  br i1 %i.bjx, label %bb.rw, label %bb.rz

bb.rw:                                            ; preds = %._crit_edge.i107
  %i.bjy = call i32 @isatty(i32 noundef 1) #32
  %.not156.i = icmp eq i32 %i.bjy, 0
  br i1 %.not156.i, label %bb.rx, label %bb.ry

bb.rx:                                            ; preds = %bb.rw
  %i.bjz = call ptr @getenv(ptr noundef nonnull @.str) #32
  %.not157.i114 = icmp eq ptr %i.bjz, null
  br i1 %.not157.i114, label %bb.rz, label %bb.ry

bb.ry:                                            ; preds = %bb.rx, %bb.rw
  call fastcc void @displayKeyStats(i64 noundef %.1.lcssa.i, i64 noundef %i.bea, i64 noundef %.1138.lcssa.i, ptr noundef %i.bck, ptr noundef %i.bdd, ptr noundef %i.bcg, i64 noundef %i.bby, i32 noundef 1)
end_hunk_2
