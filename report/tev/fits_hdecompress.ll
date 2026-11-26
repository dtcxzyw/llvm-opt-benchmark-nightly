Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/fits_hdecompress?download=true
inline.NumInlined: 45
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 14
begin_hunk_0_@fits_hdecompress:bb.a
  %.14352.i302.i = phi ptr [ %i.mp, %.lr.ph55.i300.i.new ], [ %.14352.i302.i.unr, %.prol.loopexit214 ] ; 2 uses
  %.14551.i303.i = phi i32 [ %i.mq, %.lr.ph55.i300.i.new ], [ %.14551.i303.i.unr, %.prol.loopexit214 ] ; 2 uses
  %i.ls = load i32, ptr %.04153.i301.i, align 4, !tbaa !9
  store i32 %i.ls, ptr %.14352.i302.i, align 4, !tbaa !9
  %i.lt = getelementptr inbounds [4 x i8], ptr %.04153.i301.i, i64 %i.fi ; 2 uses
  %i.lu = getelementptr inbounds [4 x i8], ptr %.14352.i302.i, i64 %i.fl ; 2 uses
  %i.lv = load i32, ptr %i.lt, align 4, !tbaa !9
  store i32 %i.lv, ptr %i.lu, align 4, !tbaa !9
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.lt, i64 %i.fi ; 2 uses
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.lu, i64 %i.fl ; 2 uses
  %i.ly = load i32, ptr %i.lw, align 4, !tbaa !9
  store i32 %i.ly, ptr %i.lx, align 4, !tbaa !9
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.lw, i64 %i.fi ; 2 uses
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.lx, i64 %i.fl ; 2 uses
  %i.mb = load i32, ptr %i.lz, align 4, !tbaa !9
  store i32 %i.mb, ptr %i.ma, align 4, !tbaa !9
  %i.mc = getelementptr inbounds [4 x i8], ptr %i.lz, i64 %i.fi ; 2 uses
  %i.md = getelementptr inbounds [4 x i8], ptr %i.ma, i64 %i.fl ; 2 uses
  %i.me = load i32, ptr %i.mc, align 4, !tbaa !9
  store i32 %i.me, ptr %i.md, align 4, !tbaa !9
  %i.mf = getelementptr inbounds [4 x i8], ptr %i.mc, i64 %i.fi ; 2 uses
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.md, i64 %i.fl ; 2 uses
  %i.mh = load i32, ptr %i.mf, align 4, !tbaa !9
  store i32 %i.mh, ptr %i.mg, align 4, !tbaa !9
  %i.mi = getelementptr inbounds [4 x i8], ptr %i.mf, i64 %i.fi ; 2 uses
  %i.mj = getelementptr inbounds [4 x i8], ptr %i.mg, i64 %i.fl ; 2 uses
  %i.mk = load i32, ptr %i.mi, align 4, !tbaa !9
  store i32 %i.mk, ptr %i.mj, align 4, !tbaa !9
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.mi, i64 %i.fi ; 2 uses
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.mj, i64 %i.fl ; 2 uses
  %i.mn = load i32, ptr %i.ml, align 4, !tbaa !9
  store i32 %i.mn, ptr %i.mm, align 4, !tbaa !9
  %i.mo = getelementptr inbounds [4 x i8], ptr %i.ml, i64 %i.fi
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.mm, i64 %i.fl
  %i.mq = add nsw i32 %.14551.i303.i, -8
  %.not.i304.i.7 = icmp eq i32 %.14551.i303.i, 7
  br i1 %.not.i304.i.7, label %._crit_edge56.i295.i, label %.lr.ph55.i300.i.new, !llvm.loop !23

._crit_edge56.i295.i:                             ; preds = %.prol.loopexit214, %.lr.ph55.i300.i.new, %._crit_edge.i294.i
  br i1 %i.hi, label %.lr.ph61.i296.i, label %unshuffle.exit310.i

.lr.ph61.i296.i:                                  ; preds = %._crit_edge56.i295.i
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.kh, i64 %i.fh ; 2 uses
  br i1 %i.hu, label %.epil.preheader218, label %.lr.ph61.i296.i.new

.lr.ph61.i296.i.new:                              ; preds = %.lr.ph61.i296.i, %.lr.ph61.i296.i.new
  %.159.i297.i = phi ptr [ %i.np, %.lr.ph61.i296.i.new ], [ %i.ej, %.lr.ph61.i296.i ] ; 9 uses
  %.258.i298.i = phi ptr [ %i.no, %.lr.ph61.i296.i.new ], [ %i.mr, %.lr.ph61.i296.i ] ; 2 uses
  %niter224 = phi i32 [ %niter224.next.7, %.lr.ph61.i296.i.new ], [ 0, %.lr.ph61.i296.i ]
  %i.ms = load i32, ptr %.159.i297.i, align 4, !tbaa !9
  store i32 %i.ms, ptr %.258.i298.i, align 4, !tbaa !9
  %i.mt = getelementptr inbounds [4 x i8], ptr %.258.i298.i, i64 %i.fk ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.159.i297.i, i64 4
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !9
  store i32 %i.mv, ptr %i.mt, align 4, !tbaa !9
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.mt, i64 %i.fk ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.159.i297.i, i64 8
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !9
  store i32 %i.my, ptr %i.mw, align 4, !tbaa !9
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %i.fk ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.159.i297.i, i64 12
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !9
  store i32 %i.nb, ptr %i.mz, align 4, !tbaa !9
  %i.nc = getelementptr inbounds [4 x i8], ptr %i.mz, i64 %i.fk ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %.159.i297.i, i64 16
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !9
  store i32 %i.ne, ptr %i.nc, align 4, !tbaa !9
  %i.nf = getelementptr inbounds [4 x i8], ptr %i.nc, i64 %i.fk ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.159.i297.i, i64 20
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !9
  store i32 %i.nh, ptr %i.nf, align 4, !tbaa !9
  %i.ni = getelementptr inbounds [4 x i8], ptr %i.nf, i64 %i.fk ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.159.i297.i, i64 24
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !9
  store i32 %i.nk, ptr %i.ni, align 4, !tbaa !9
  %i.nl = getelementptr inbounds [4 x i8], ptr %i.ni, i64 %i.fk ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.159.i297.i, i64 28
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !9
  store i32 %i.nn, ptr %i.nl, align 4, !tbaa !9
  %i.no = getelementptr inbounds [4 x i8], ptr %i.nl, i64 %i.fk ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.159.i297.i, i64 32 ; 2 uses
  %niter224.next.7 = add i32 %niter224, 8         ; 2 uses
  %niter224.ncmp.7.not = icmp eq i32 %niter224.next.7, %unroll_iter223
  br i1 %niter224.ncmp.7.not, label %unshuffle.exit310.i.loopexit.unr-lcssa, label %.lr.ph61.i296.i.new, !llvm.loop !24

unshuffle.exit310.i.loopexit.unr-lcssa:           ; preds = %.lr.ph61.i296.i.new
  br i1 %lcmp.mod221.not, label %unshuffle.exit310.i, label %.epil.preheader218

.epil.preheader218:                               ; preds = %unshuffle.exit310.i.loopexit.unr-lcssa, %.lr.ph61.i296.i
  %.159.i297.i.epil.init = phi ptr [ %i.ej, %.lr.ph61.i296.i ], [ %i.np, %unshuffle.exit310.i.loopexit.unr-lcssa ]
  %.258.i298.i.epil.init = phi ptr [ %i.mr, %.lr.ph61.i296.i ], [ %i.no, %unshuffle.exit310.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod222)
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader218
  %.159.i297.i.epil = phi ptr [ %.159.i297.i.epil.init, %.epil.preheader218 ], [ %i.ns, %bb.z ] ; 2 uses
  %.258.i298.i.epil = phi ptr [ %.258.i298.i.epil.init, %.epil.preheader218 ], [ %i.nr, %bb.z ] ; 2 uses
  %epil.iter220 = phi i32 [ 0, %.epil.preheader218 ], [ %epil.iter220.next, %bb.z ]
  %i.nq = load i32, ptr %.159.i297.i.epil, align 4, !tbaa !9
  store i32 %i.nq, ptr %.258.i298.i.epil, align 4, !tbaa !9
  %i.nr = getelementptr inbounds [4 x i8], ptr %.258.i298.i.epil, i64 %i.fk
  %i.ns = getelementptr inbounds nuw i8, ptr %.159.i297.i.epil, i64 4
  %epil.iter220.next = add i32 %epil.iter220, 1   ; 2 uses
  %epil.iter220.cmp.not = icmp eq i32 %epil.iter220.next, %xtraiter219
  br i1 %epil.iter220.cmp.not, label %unshuffle.exit310.i, label %bb.z, !llvm.loop !30

unshuffle.exit310.i:                              ; preds = %unshuffle.exit310.i.loopexit.unr-lcssa, %bb.z, %._crit_edge56.i295.i
  %indvars.iv.next368.i = add nuw nsw i64 %indvars.iv367.i, 1 ; 2 uses
  %exitcond371.not.i = icmp eq i64 %indvars.iv.next368.i, %wide.trip.count370.i
  br i1 %exitcond371.not.i, label %._crit_edge.i, label %bb.y, !llvm.loop !31

._crit_edge.i:                                    ; preds = %unshuffle.exit310.i, %.preheader.i28
  br i1 %brmerge.i, label %hsmooth.exit.i, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i
  %i.nt = add nsw i32 %.1262.i, -2                ; 2 uses
  %i.nu = icmp slt i32 %.1262.i, 5                ; 2 uses
  br i1 %i.nu, label %.preheader410.i.i, label %.lr.ph416.i.i

.lr.ph416.i.i:                                    ; preds = %bb.aa
  br i1 %i.gw, label %.lr.ph.i311.i, label %hsmooth.exit.i

.preheader410.i.i:                                ; preds = %._crit_edge.i312.i, %bb.aa
  br i1 %i.ga, label %.lr.ph423.i.i, label %hsmooth.exit.i

.lr.ph423.i.i:                                    ; preds = %.preheader410.i.i
  %i.nv = add nsw i32 %.1260.i, -2                ; 2 uses
  %i.nw = icmp sgt i32 %.1260.i, 4
  br i1 %i.nw, label %.lr.ph420.i.i, label %hsmooth.exit.i

.lr.ph.i311.i:                                    ; preds = %.lr.ph416.i.i, %._crit_edge.i312.i
  %indvars.iv434.i.i = phi i32 [ %indvars.iv.next435.i.i, %._crit_edge.i312.i ], [ %i.fp, %.lr.ph416.i.i ] ; 2 uses
  %indvars.iv.i.i29 = phi i32 [ %indvars.iv.next.i.i30, %._crit_edge.i312.i ], [ %i.fj, %.lr.ph416.i.i ] ; 2 uses
  %.0351414.i.i = phi i32 [ %i.pf, %._crit_edge.i312.i ], [ 2, %.lr.ph416.i.i ]
  %i.nx = sext i32 %indvars.iv.i.i29 to i64
  %i.ny = sext i32 %indvars.iv434.i.i to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %.lr.ph.i311.i
  %indvars.iv436.i.i = phi i64 [ %i.ny, %.lr.ph.i311.i ], [ %indvars.iv.next437.i.i, %bb.ad ] ; 2 uses
  %indvars.iv432.i.i = phi i64 [ %i.nx, %.lr.ph.i311.i ], [ %indvars.iv.next433.i.i, %bb.ad ] ; 4 uses
  %.0348411.i.i = phi i32 [ 0, %.lr.ph.i311.i ], [ %i.pd, %bb.ad ]
  %i.nz = sub nsw i64 %indvars.iv432.i.i, %i.fk
  %i.oa = getelementptr inbounds [4 x i8], ptr %2, i64 %i.nz
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !9  ; 2 uses
  %i.oc = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv432.i.i
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !9  ; 2 uses
  %gep.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv432.i.i
  %i.oe = load i32, ptr %gep.i.i, align 4, !tbaa !9 ; 2 uses
  %i.of = sub nsw i32 %i.oe, %i.od                ; 2 uses
  %i.og = sub nsw i32 %i.od, %i.ob                ; 2 uses
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.of, i32 %i.og)
  %i.oh = tail call i32 @llvm.smax.i32(i32 %..i.i, i32 0)
  %i.oi = shl i32 %i.oh, 2                        ; 2 uses
  %i.oj = tail call i32 @llvm.smax.i32(i32 %i.of, i32 %i.og)
  %i.ok = tail call i32 @llvm.smin.i32(i32 %i.oj, i32 0)
  %i.ol = shl i32 %i.ok, 2                        ; 3 uses
  %i.om = icmp slt i32 %i.ol, %i.oi
  br i1 %i.om, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.on = sub nsw i32 %i.oe, %i.ob                ; 2 uses
  %i.oo = icmp sgt i32 %i.on, %i.ol
  %i.op = tail call i32 @llvm.smin.i32(i32 %i.on, i32 %i.oi)
  %i.oq = select i1 %i.oo, i32 %i.op, i32 %i.ol
  %i.or = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv436.i.i ; 2 uses
  %i.os = load i32, ptr %i.or, align 4, !tbaa !9  ; 2 uses
  %i.ot = shl i32 %i.os, 3
  %i.ou = sub nsw i32 %i.oq, %i.ot                ; 3 uses
  %i.ov = lshr i32 %i.ou, 3
  %i.ow = add nsw i32 %i.ou, 7
  %i.ox = ashr i32 %i.ow, 3
  %i.oy = icmp slt i32 %i.ou, 0
  %i.oz = select i1 %i.oy, i32 %i.ox, i32 %i.ov
  %i.pa = tail call i32 @llvm.smin.i32(i32 %i.oz, i32 %i.fm)
  %i.pb = tail call i32 @llvm.smax.i32(i32 %i.pa, i32 %i.fo)
  %i.pc = add nsw i32 %i.pb, %i.os
  store i32 %i.pc, ptr %i.or, align 4, !tbaa !9
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %indvars.iv.next433.i.i = add nsw i64 %indvars.iv432.i.i, 2
  %indvars.iv.next437.i.i = add nsw i64 %indvars.iv436.i.i, 2
  %i.pd = add nuw nsw i32 %.0348411.i.i, 2        ; 2 uses
  %i.pe = icmp slt i32 %i.pd, %.1260.i
  br i1 %i.pe, label %bb.ab, label %._crit_edge.i312.i, !llvm.loop !32

._crit_edge.i312.i:                               ; preds = %bb.ad
  %i.pf = add nuw nsw i32 %.0351414.i.i, 2        ; 2 uses
  %i.pg = icmp slt i32 %i.pf, %i.nt
  %indvars.iv.next.i.i30 = add i32 %indvars.iv.i.i29, %i.fj
  %indvars.iv.next435.i.i = add i32 %indvars.iv434.i.i, %i.fj
  br i1 %i.pg, label %.lr.ph.i311.i, label %.preheader410.i.i, !llvm.loop !33

.preheader.i.i:                                   ; preds = %._crit_edge421.i.i
  br i1 %i.nu, label %hsmooth.exit.i, label %.lr.ph428.i.i

.lr.ph420.i.i:                                    ; preds = %.lr.ph423.i.i, %._crit_edge421.i.i
  %indvars.iv441.i.i = phi i32 [ %indvars.iv.next442.i.i, %._crit_edge421.i.i ], [ 2, %.lr.ph423.i.i ] ; 2 uses
  %.1352422.i.i = phi i32 [ %i.qn, %._crit_edge421.i.i ], [ 0, %.lr.ph423.i.i ]
  %i.ph = sext i32 %indvars.iv441.i.i to i64      ; 2 uses
  %.phi.trans.insert.i.i = getelementptr [4 x i8], ptr %2, i64 %i.ph
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !9
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %.lr.ph420.i.i
  %8 = phi i32 [ %.pre.i.i, %.lr.ph420.i.i ], [ %i.pm, %bb.ag ] ; 2 uses
  %indvars.iv443.i.i = phi i64 [ %i.ph, %.lr.ph420.i.i ], [ %indvars.iv.next444.i.i, %bb.ag ] ; 2 uses
  %.1349417.i.i = phi i32 [ 2, %.lr.ph420.i.i ], [ %i.ql, %bb.ag ]
  %i.pi = getelementptr [4 x i8], ptr %2, i64 %indvars.iv443.i.i ; 2 uses
  %i.pj = getelementptr i8, ptr %i.pi, i64 -8
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !9  ; 2 uses
  %indvars.iv.next444.i.i = add nsw i64 %indvars.iv443.i.i, 2 ; 2 uses
  %i.pl = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next444.i.i
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !9  ; 3 uses
  %i.pn = sub nsw i32 %i.pm, %8                   ; 2 uses
  %i.po = sub nsw i32 %8, %i.pk                   ; 2 uses
  %.403.i.i = tail call i32 @llvm.smin.i32(i32 %i.pn, i32 %i.po)
  %i.pp = tail call i32 @llvm.smax.i32(i32 %.403.i.i, i32 0)
  %i.pq = shl i32 %i.pp, 2                        ; 2 uses
  %i.pr = tail call i32 @llvm.smax.i32(i32 %i.pn, i32 %i.po)
  %i.ps = tail call i32 @llvm.smin.i32(i32 %i.pr, i32 0)
  %i.pt = shl i32 %i.ps, 2                        ; 3 uses
  %i.pu = icmp slt i32 %i.pt, %i.pq
  br i1 %i.pu, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.pv = sub nsw i32 %i.pm, %i.pk                ; 2 uses
  %i.pw = icmp sgt i32 %i.pv, %i.pt
  %i.px = tail call i32 @llvm.smin.i32(i32 %i.pv, i32 %i.pq)
  %i.py = select i1 %i.pw, i32 %i.px, i32 %i.pt
  %i.pz = getelementptr i8, ptr %i.pi, i64 4      ; 2 uses
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !9  ; 2 uses
  %i.qb = shl i32 %i.qa, 3
  %i.qc = sub nsw i32 %i.py, %i.qb                ; 3 uses
  %i.qd = lshr i32 %i.qc, 3
  %i.qe = add nsw i32 %i.qc, 7
  %i.qf = ashr i32 %i.qe, 3
  %i.qg = icmp slt i32 %i.qc, 0
  %i.qh = select i1 %i.qg, i32 %i.qf, i32 %i.qd
  %i.qi = tail call i32 @llvm.smin.i32(i32 %i.qh, i32 %i.fm)
  %i.qj = tail call i32 @llvm.smax.i32(i32 %i.qi, i32 %i.fo)
  %i.qk = add nsw i32 %i.qj, %i.qa
  store i32 %i.qk, ptr %i.pz, align 4, !tbaa !9
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ql = add nuw nsw i32 %.1349417.i.i, 2        ; 2 uses
  %i.qm = icmp slt i32 %i.ql, %i.nv
  br i1 %i.qm, label %bb.ae, label %._crit_edge421.i.i, !llvm.loop !34

._crit_edge421.i.i:                               ; preds = %bb.ag
  %i.qn = add nuw nsw i32 %.1352422.i.i, 2        ; 2 uses
  %i.qo = icmp slt i32 %i.qn, %.1262.i
  %indvars.iv.next442.i.i = add i32 %indvars.iv441.i.i, %i.fj
  br i1 %i.qo, label %.lr.ph420.i.i, label %.preheader.i.i, !llvm.loop !35

.lr.ph428.i.i:                                    ; preds = %.preheader.i.i, %._crit_edge429.i.i
  %indvars.iv450.i.i = phi i32 [ %indvars.iv.next451.i.i, %._crit_edge429.i.i ], [ %i.fr, %.preheader.i.i ] ; 2 uses
  %indvars.iv446.i.i = phi i32 [ %indvars.iv.next447.i.i, %._crit_edge429.i.i ], [ %i.fq, %.preheader.i.i ] ; 2 uses
  %.2353430.i.i = phi i32 [ %i.ti, %._crit_edge429.i.i ], [ 2, %.preheader.i.i ]
  %i.qp = sext i32 %indvars.iv446.i.i to i64
  %i.qq = sext i32 %indvars.iv450.i.i to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %.lr.ph428.i.i
  %indvars.iv452.i.i = phi i64 [ %i.qq, %.lr.ph428.i.i ], [ %indvars.iv.next453.i.i, %bb.aj ] ; 2 uses
  %indvars.iv448.i.i = phi i64 [ %i.qp, %.lr.ph428.i.i ], [ %indvars.iv.next449.i.i, %bb.aj ] ; 4 uses
  %.2350424.i.i = phi i32 [ 2, %.lr.ph428.i.i ], [ %i.tg, %bb.aj ]
  %i.qr = sub nsw i64 %indvars.iv448.i.i, %i.fk
  %i.qs = getelementptr [4 x i8], ptr %2, i64 %i.qr ; 2 uses
  %i.qt = getelementptr i8, ptr %i.qs, i64 -8
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !9  ; 2 uses
  %gep473.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv448.i.i ; 2 uses
  %i.qv = getelementptr i8, ptr %gep473.i.i, i64 -8
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !9  ; 2 uses
  %i.qx = getelementptr i8, ptr %i.qs, i64 8
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !9  ; 2 uses
  %i.qz = getelementptr i8, ptr %gep473.i.i, i64 8
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !9  ; 2 uses
  %i.rb = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv448.i.i ; 2 uses
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !9  ; 4 uses
  %i.rd = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv452.i.i ; 2 uses
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !9
  %i.rf = shl i32 %i.re, 1                        ; 7 uses
  %i.rg = getelementptr i8, ptr %i.rb, i64 4
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !9
  %i.ri = shl i32 %i.rh, 1                        ; 5 uses
  %i.rj = sub nsw i32 %i.ra, %i.rc                ; 2 uses
  %i.rk = tail call i32 @llvm.smax.i32(i32 %i.rj, i32 0)
  %i.rl = add i32 %i.ri, %i.rf                    ; 2 uses
  %i.rm = sub i32 %i.rk, %i.rl
  %i.rn = sub nsw i32 %i.rc, %i.qw                ; 2 uses
  %i.ro = tail call i32 @llvm.smax.i32(i32 %i.rn, i32 0)
  %i.rp = add nsw i32 %i.ro, %i.rf
  %i.rq = sub i32 %i.rp, %i.ri
  %.406.i.i = tail call i32 @llvm.smin.i32(i32 %i.rm, i32 %i.rq)
  %i.rr = sub nsw i32 %i.rc, %i.qy                ; 2 uses
  %i.rs = tail call i32 @llvm.smax.i32(i32 %i.rr, i32 0)
  %i.rt = sub nsw i32 %i.rs, %i.rf
  %i.ru = sub nsw i32 %i.qu, %i.rc                ; 2 uses
  %i.rv = tail call i32 @llvm.smax.i32(i32 %i.ru, i32 0)
  %i.rw = add nsw i32 %i.rv, %i.rf
  %.pn.i.i = tail call i32 @llvm.smin.i32(i32 %i.rt, i32 %i.rw)
  %i.rx = add nsw i32 %.pn.i.i, %i.ri
  %i.ry = tail call i32 @llvm.smin.i32(i32 %.406.i.i, i32 %i.rx)
  %i.rz = shl i32 %i.ry, 4                        ; 2 uses
  %i.sa = tail call i32 @llvm.smin.i32(i32 %i.rj, i32 0)
  %i.sb = sub i32 %i.sa, %i.rl
  %i.sc = tail call i32 @llvm.smin.i32(i32 %i.rn, i32 0)
  %i.sd = add nsw i32 %i.sc, %i.rf
  %i.se = sub i32 %i.sd, %i.ri
  %i.sf = tail call i32 @llvm.smax.i32(i32 %i.sb, i32 %i.se)
  %i.sg = tail call i32 @llvm.smin.i32(i32 %i.rr, i32 0)
  %i.sh = sub nsw i32 %i.sg, %i.rf
  %i.si = tail call i32 @llvm.smin.i32(i32 %i.ru, i32 0)
  %i.sj = add nsw i32 %i.si, %i.rf
  %.pn400.i.i = tail call i32 @llvm.smax.i32(i32 %i.sh, i32 %i.sj)
  %i.sk = add nsw i32 %.pn400.i.i, %i.ri
  %i.sl = tail call i32 @llvm.smax.i32(i32 %i.sf, i32 %i.sk)
  %i.sm = shl i32 %i.sl, 4                        ; 3 uses
  %i.sn = icmp slt i32 %i.sm, %i.rz
  br i1 %i.sn, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.so = add i32 %i.qw, %i.qy
  %i.sp = sub i32 %i.qu, %i.so
  %i.sq = add i32 %i.sp, %i.ra                    ; 2 uses
  %i.sr = icmp sgt i32 %i.sq, %i.sm
  %i.ss = tail call i32 @llvm.smin.i32(i32 %i.sq, i32 %i.rz)
  %i.st = select i1 %i.sr, i32 %i.ss, i32 %i.sm
  %i.su = getelementptr i8, ptr %i.rd, i64 4      ; 2 uses
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !9  ; 2 uses
  %i.sw = shl i32 %i.sv, 6
  %i.sx = sub nsw i32 %i.st, %i.sw                ; 3 uses
  %i.sy = lshr i32 %i.sx, 6
  %i.sz = add nsw i32 %i.sx, 63
  %i.ta = ashr i32 %i.sz, 6
  %i.tb = icmp slt i32 %i.sx, 0
  %i.tc = select i1 %i.tb, i32 %i.ta, i32 %i.sy
  %i.td = tail call i32 @llvm.smin.i32(i32 %i.tc, i32 %i.fm)
  %i.te = tail call i32 @llvm.smax.i32(i32 %i.td, i32 %i.fo)
  %i.tf = add nsw i32 %i.te, %i.sv
  store i32 %i.tf, ptr %i.su, align 4, !tbaa !9
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %indvars.iv.next449.i.i = add nsw i64 %indvars.iv448.i.i, 2
  %indvars.iv.next453.i.i = add nsw i64 %indvars.iv452.i.i, 2
  %i.tg = add nuw nsw i32 %.2350424.i.i, 2        ; 2 uses
  %i.th = icmp slt i32 %i.tg, %i.nv
  br i1 %i.th, label %bb.ah, label %._crit_edge429.i.i, !llvm.loop !36

._crit_edge429.i.i:                               ; preds = %bb.aj
  %i.ti = add nuw nsw i32 %.2353430.i.i, 2        ; 2 uses
  %i.tj = icmp slt i32 %i.ti, %i.nt
  %indvars.iv.next447.i.i = add i32 %indvars.iv446.i.i, %i.fj
  %indvars.iv.next451.i.i = add i32 %indvars.iv450.i.i, %i.fj
  br i1 %i.tj, label %.lr.ph428.i.i, label %hsmooth.exit.i, !llvm.loop !37

hsmooth.exit.i:                                   ; preds = %._crit_edge429.i.i, %.preheader.i.i, %.lr.ph423.i.i, %.preheader410.i.i, %.lr.ph416.i.i, %._crit_edge.i
  %i.tk = srem i32 %.1262.i, 2                    ; 2 uses
  %i.tl = srem i32 %.1260.i, 2                    ; 7 uses
  %i.tm = sub nsw i32 %.1262.i, %i.tk             ; 2 uses
  %i.tn = icmp sgt i32 %i.tm, 0
  br i1 %i.tn, label %.lr.ph336.i, label %._crit_edge337.i

.lr.ph336.i:                                      ; preds = %hsmooth.exit.i
  %i.to = sub nsw i32 %.1260.i, %i.tl             ; 2 uses
  %i.tp = icmp sgt i32 %i.to, 0
  %.not291.i = icmp eq i32 %i.tl, 0
  %i.tq = add i32 %i.fu, -1
  %i.tr = add nsw i32 %i.tq, %i.fx
  %i.ts = sub i32 %i.tr, %i.tl
  %i.tt = lshr i32 %i.ts, 1
  %i.tu = zext nneg i32 %i.tt to i64
  %i.tv = shl nuw nsw i64 %i.tu, 3                ; 2 uses
  %scevgep140 = getelementptr i8, ptr %scevgep, i64 %i.tv ; 2 uses
  %scevgep142 = getelementptr i8, ptr %scevgep141, i64 %i.tv ; 2 uses
  %i.tw = add i32 %i.fu, %i.fx
  %i.tx = xor i32 %i.tl, -1
  %i.ty = add i32 %i.tw, %i.tx                    ; 2 uses
  %i.tz = lshr i32 %i.ty, 1
  %narrow = add nuw i32 %i.tz, 1
  %i.ua = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check144 = icmp ult i32 %i.ty, 6
  %n.vec165 = and i64 %i.ua, 4294967292           ; 4 uses
  %i.ub = shl nuw nsw i64 %n.vec165, 1            ; 2 uses
  %i.uc = trunc nuw i64 %n.vec165 to i32
  %i.ud = shl i32 %i.uc, 1
  %broadcast.splatinsert166 = insertelement <4 x i32> poison, i32 %.0243358.i, i64 0
  %broadcast.splat167 = shufflevector <4 x i32> %broadcast.splatinsert166, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert168 = insertelement <4 x i32> poison, i32 %.0246357.i, i64 0
  %broadcast.splat169 = shufflevector <4 x i32> %broadcast.splatinsert168, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert170 = insertelement <4 x i32> poison, i32 %.0248356.i, i64 0
  %broadcast.splat171 = shufflevector <4 x i32> %broadcast.splatinsert170, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert172 = insertelement <4 x i32> poison, i32 %.1245.i, i64 0
  %broadcast.splat173 = shufflevector <4 x i32> %broadcast.splatinsert172, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert174 = insertelement <4 x i32> poison, i32 %.0247359.i, i64 0
  %broadcast.splat175 = shufflevector <4 x i32> %broadcast.splatinsert174, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert176 = insertelement <4 x i32> poison, i32 %.0249355.i, i64 0
  %broadcast.splat177 = shufflevector <4 x i32> %broadcast.splatinsert176, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert178 = insertelement <4 x i32> poison, i32 %.0251353.i, i64 0
  %broadcast.splat179 = shufflevector <4 x i32> %broadcast.splatinsert178, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert180 = insertelement <4 x i32> poison, i32 %.0250354.i, i64 0
  %broadcast.splat181 = shufflevector <4 x i32> %broadcast.splatinsert180, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert182 = insertelement <4 x i32> poison, i32 %.1253.i, i64 0
  %broadcast.splat183 = shufflevector <4 x i32> %broadcast.splatinsert182, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %cmp.n196 = icmp eq i64 %n.vec165, %i.ua
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ap, %.lr.ph336.i
  %indvars.iv376.i = phi i32 [ %i.dz, %.lr.ph336.i ], [ %indvars.iv.next377.i, %bb.ap ] ; 2 uses
  %indvars.iv372.i = phi i32 [ 0, %.lr.ph336.i ], [ %indvars.iv.next373.i, %bb.ap ] ; 2 uses
  %.1267335.i = phi i32 [ 0, %.lr.ph336.i ], [ %i.zg, %bb.ap ] ; 2 uses
  %i.ue = mul nsw i32 %.1267335.i, %i.dz          ; 2 uses
  %i.uf = add nsw i32 %i.ue, %i.dz
  br i1 %i.tp, label %.lr.ph332.preheader.i, label %._crit_edge333.i

.lr.ph332.preheader.i:                            ; preds = %bb.ak
  %i.ug = sext i32 %indvars.iv376.i to i64        ; 5 uses
  %i.uh = sext i32 %indvars.iv372.i to i64        ; 5 uses
  br i1 %min.iters.check144, label %.lr.ph332.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph332.preheader.i
  %i.ui = shl nsw i64 %i.ug, 2                    ; 4 uses
  %i.uj = getelementptr i8, ptr %scevgep, i64 %i.ui ; 3 uses
  %i.uk = getelementptr i8, ptr %scevgep142, i64 %i.ui ; 3 uses
end_hunk_0
begin_hunk_1_@fits_hdecompress64:bb.a
  %.14352.i302.i = phi ptr [ %i.mm, %.lr.ph55.i300.i.new ], [ %.14352.i302.i.unr, %.prol.loopexit98 ] ; 2 uses
  %.14551.i303.i = phi i32 [ %i.mn, %.lr.ph55.i300.i.new ], [ %.14551.i303.i.unr, %.prol.loopexit98 ] ; 2 uses
  %i.lp = load i64, ptr %.04153.i301.i, align 8, !tbaa !18
  store i64 %i.lp, ptr %.14352.i302.i, align 8, !tbaa !18
  %i.lq = getelementptr inbounds [8 x i8], ptr %.04153.i301.i, i64 %i.fe ; 2 uses
  %i.lr = getelementptr inbounds [8 x i8], ptr %.14352.i302.i, i64 %i.fh ; 2 uses
  %i.ls = load i64, ptr %i.lq, align 8, !tbaa !18
  store i64 %i.ls, ptr %i.lr, align 8, !tbaa !18
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.lq, i64 %i.fe ; 2 uses
  %i.lu = getelementptr inbounds [8 x i8], ptr %i.lr, i64 %i.fh ; 2 uses
  %i.lv = load i64, ptr %i.lt, align 8, !tbaa !18
  store i64 %i.lv, ptr %i.lu, align 8, !tbaa !18
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.lt, i64 %i.fe ; 2 uses
  %i.lx = getelementptr inbounds [8 x i8], ptr %i.lu, i64 %i.fh ; 2 uses
  %i.ly = load i64, ptr %i.lw, align 8, !tbaa !18
  store i64 %i.ly, ptr %i.lx, align 8, !tbaa !18
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.lw, i64 %i.fe ; 2 uses
  %i.ma = getelementptr inbounds [8 x i8], ptr %i.lx, i64 %i.fh ; 2 uses
  %i.mb = load i64, ptr %i.lz, align 8, !tbaa !18
  store i64 %i.mb, ptr %i.ma, align 8, !tbaa !18
  %i.mc = getelementptr inbounds [8 x i8], ptr %i.lz, i64 %i.fe ; 2 uses
  %i.md = getelementptr inbounds [8 x i8], ptr %i.ma, i64 %i.fh ; 2 uses
  %i.me = load i64, ptr %i.mc, align 8, !tbaa !18
  store i64 %i.me, ptr %i.md, align 8, !tbaa !18
  %i.mf = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %i.fe ; 2 uses
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.md, i64 %i.fh ; 2 uses
  %i.mh = load i64, ptr %i.mf, align 8, !tbaa !18
  store i64 %i.mh, ptr %i.mg, align 8, !tbaa !18
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.mf, i64 %i.fe ; 2 uses
  %i.mj = getelementptr inbounds [8 x i8], ptr %i.mg, i64 %i.fh ; 2 uses
  %i.mk = load i64, ptr %i.mi, align 8, !tbaa !18
  store i64 %i.mk, ptr %i.mj, align 8, !tbaa !18
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.mi, i64 %i.fe
  %i.mm = getelementptr inbounds [8 x i8], ptr %i.mj, i64 %i.fh
  %i.mn = add nsw i32 %.14551.i303.i, -8
  %.not.i304.i.7 = icmp eq i32 %.14551.i303.i, 7
  br i1 %.not.i304.i.7, label %._crit_edge56.i295.i, label %.lr.ph55.i300.i.new, !llvm.loop !47

._crit_edge56.i295.i:                             ; preds = %.prol.loopexit98, %.lr.ph55.i300.i.new, %._crit_edge.i294.i
  br i1 %i.hf, label %.lr.ph61.i296.i, label %unshuffle64.exit310.i

.lr.ph61.i296.i:                                  ; preds = %._crit_edge56.i295.i
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.ke, i64 %i.fd ; 2 uses
  br i1 %i.hr, label %.epil.preheader102, label %.lr.ph61.i296.i.new

.lr.ph61.i296.i.new:                              ; preds = %.lr.ph61.i296.i, %.lr.ph61.i296.i.new
  %.159.i297.i = phi ptr [ %i.nm, %.lr.ph61.i296.i.new ], [ %i.ee, %.lr.ph61.i296.i ] ; 9 uses
  %.258.i298.i = phi ptr [ %i.nl, %.lr.ph61.i296.i.new ], [ %i.mo, %.lr.ph61.i296.i ] ; 2 uses
  %niter108 = phi i32 [ %niter108.next.7, %.lr.ph61.i296.i.new ], [ 0, %.lr.ph61.i296.i ]
  %i.mp = load i64, ptr %.159.i297.i, align 8, !tbaa !18
  store i64 %i.mp, ptr %.258.i298.i, align 8, !tbaa !18
  %i.mq = getelementptr inbounds [8 x i8], ptr %.258.i298.i, i64 %i.fg ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.159.i297.i, i64 8
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !18
  store i64 %i.ms, ptr %i.mq, align 8, !tbaa !18
  %i.mt = getelementptr inbounds [8 x i8], ptr %i.mq, i64 %i.fg ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.159.i297.i, i64 16
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !18
  store i64 %i.mv, ptr %i.mt, align 8, !tbaa !18
  %i.mw = getelementptr inbounds [8 x i8], ptr %i.mt, i64 %i.fg ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.159.i297.i, i64 24
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !18
  store i64 %i.my, ptr %i.mw, align 8, !tbaa !18
  %i.mz = getelementptr inbounds [8 x i8], ptr %i.mw, i64 %i.fg ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.159.i297.i, i64 32
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !18
  store i64 %i.nb, ptr %i.mz, align 8, !tbaa !18
  %i.nc = getelementptr inbounds [8 x i8], ptr %i.mz, i64 %i.fg ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %.159.i297.i, i64 40
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !18
  store i64 %i.ne, ptr %i.nc, align 8, !tbaa !18
  %i.nf = getelementptr inbounds [8 x i8], ptr %i.nc, i64 %i.fg ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.159.i297.i, i64 48
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !18
  store i64 %i.nh, ptr %i.nf, align 8, !tbaa !18
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.nf, i64 %i.fg ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.159.i297.i, i64 56
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !18
  store i64 %i.nk, ptr %i.ni, align 8, !tbaa !18
  %i.nl = getelementptr inbounds [8 x i8], ptr %i.ni, i64 %i.fg ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.159.i297.i, i64 64 ; 2 uses
  %niter108.next.7 = add i32 %niter108, 8         ; 2 uses
  %niter108.ncmp.7.not = icmp eq i32 %niter108.next.7, %unroll_iter107
  br i1 %niter108.ncmp.7.not, label %unshuffle64.exit310.i.loopexit.unr-lcssa, label %.lr.ph61.i296.i.new, !llvm.loop !48

unshuffle64.exit310.i.loopexit.unr-lcssa:         ; preds = %.lr.ph61.i296.i.new
  br i1 %lcmp.mod105.not, label %unshuffle64.exit310.i, label %.epil.preheader102

.epil.preheader102:                               ; preds = %unshuffle64.exit310.i.loopexit.unr-lcssa, %.lr.ph61.i296.i
  %.159.i297.i.epil.init = phi ptr [ %i.ee, %.lr.ph61.i296.i ], [ %i.nm, %unshuffle64.exit310.i.loopexit.unr-lcssa ]
  %.258.i298.i.epil.init = phi ptr [ %i.mo, %.lr.ph61.i296.i ], [ %i.nl, %unshuffle64.exit310.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod106)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader102
  %.159.i297.i.epil = phi ptr [ %.159.i297.i.epil.init, %.epil.preheader102 ], [ %i.np, %bb.aa ] ; 2 uses
  %.258.i298.i.epil = phi ptr [ %.258.i298.i.epil.init, %.epil.preheader102 ], [ %i.no, %bb.aa ] ; 2 uses
  %epil.iter104 = phi i32 [ 0, %.epil.preheader102 ], [ %epil.iter104.next, %bb.aa ]
  %i.nn = load i64, ptr %.159.i297.i.epil, align 8, !tbaa !18
  store i64 %i.nn, ptr %.258.i298.i.epil, align 8, !tbaa !18
  %i.no = getelementptr inbounds [8 x i8], ptr %.258.i298.i.epil, i64 %i.fg
  %i.np = getelementptr inbounds nuw i8, ptr %.159.i297.i.epil, i64 8
  %epil.iter104.next = add i32 %epil.iter104, 1   ; 2 uses
  %epil.iter104.cmp.not = icmp eq i32 %epil.iter104.next, %xtraiter103
  br i1 %epil.iter104.cmp.not, label %unshuffle64.exit310.i, label %bb.aa, !llvm.loop !54

unshuffle64.exit310.i:                            ; preds = %unshuffle64.exit310.i.loopexit.unr-lcssa, %bb.aa, %._crit_edge56.i295.i
  %indvars.iv.next368.i = add nuw nsw i64 %indvars.iv367.i, 1 ; 2 uses
  %exitcond371.not.i = icmp eq i64 %indvars.iv.next368.i, %wide.trip.count370.i
  br i1 %exitcond371.not.i, label %._crit_edge.i, label %bb.z, !llvm.loop !55

._crit_edge.i:                                    ; preds = %unshuffle64.exit310.i, %.preheader.i
  br i1 %brmerge.i, label %hsmooth64.exit.i, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.i
  %i.nq = add nsw i32 %.1262.i, -2                ; 2 uses
  %i.nr = icmp slt i32 %.1262.i, 5                ; 2 uses
  br i1 %i.nr, label %.preheader410.i.i, label %.lr.ph416.i.i

.lr.ph416.i.i:                                    ; preds = %bb.ab
  br i1 %i.gt, label %.lr.ph.i311.i, label %hsmooth64.exit.i

.preheader410.i.i:                                ; preds = %._crit_edge.i312.i, %bb.ab
  br i1 %i.fx, label %.lr.ph423.i.i, label %hsmooth64.exit.i

.lr.ph423.i.i:                                    ; preds = %.preheader410.i.i
  %i.ns = add nsw i32 %.1260.i, -2                ; 2 uses
  %i.nt = icmp sgt i32 %.1260.i, 4
  br i1 %i.nt, label %.lr.ph420.i.i, label %hsmooth64.exit.i

.lr.ph.i311.i:                                    ; preds = %.lr.ph416.i.i, %._crit_edge.i312.i
  %indvars.iv434.i.i = phi i32 [ %indvars.iv.next435.i.i, %._crit_edge.i312.i ], [ %i.fm, %.lr.ph416.i.i ] ; 2 uses
  %indvars.iv.i.i39 = phi i32 [ %indvars.iv.next.i.i40, %._crit_edge.i312.i ], [ %i.ff, %.lr.ph416.i.i ] ; 2 uses
  %.0351414.i.i = phi i32 [ %i.pc, %._crit_edge.i312.i ], [ 2, %.lr.ph416.i.i ]
  %i.nu = sext i32 %indvars.iv.i.i39 to i64
  %i.nv = sext i32 %indvars.iv434.i.i to i64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %.lr.ph.i311.i
  %indvars.iv436.i.i = phi i64 [ %i.nv, %.lr.ph.i311.i ], [ %indvars.iv.next437.i.i, %bb.ae ] ; 2 uses
  %indvars.iv432.i.i = phi i64 [ %i.nu, %.lr.ph.i311.i ], [ %indvars.iv.next433.i.i, %bb.ae ] ; 4 uses
  %.0348411.i.i = phi i32 [ 0, %.lr.ph.i311.i ], [ %i.pa, %bb.ae ]
  %i.nw = sub nsw i64 %indvars.iv432.i.i, %i.fg
  %i.nx = getelementptr inbounds [8 x i8], ptr %2, i64 %i.nw
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !18 ; 2 uses
  %i.nz = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv432.i.i
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !18 ; 2 uses
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv432.i.i
  %i.ob = load i64, ptr %gep.i.i, align 8, !tbaa !18 ; 2 uses
  %i.oc = sub nsw i64 %i.ob, %i.oa                ; 2 uses
  %i.od = sub nsw i64 %i.oa, %i.ny                ; 2 uses
  %..i.i = tail call i64 @llvm.smin.i64(i64 %i.oc, i64 %i.od)
  %i.oe = tail call i64 @llvm.smax.i64(i64 %..i.i, i64 0)
  %i.of = shl i64 %i.oe, 2                        ; 2 uses
  %i.og = tail call i64 @llvm.smax.i64(i64 %i.oc, i64 %i.od)
  %i.oh = tail call i64 @llvm.smin.i64(i64 %i.og, i64 0)
  %i.oi = shl i64 %i.oh, 2                        ; 3 uses
  %i.oj = icmp slt i64 %i.oi, %i.of
  br i1 %i.oj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ok = sub nsw i64 %i.ob, %i.ny                ; 2 uses
  %i.ol = icmp sgt i64 %i.ok, %i.oi
  %i.om = tail call i64 @llvm.smin.i64(i64 %i.ok, i64 %i.of)
  %i.on = select i1 %i.ol, i64 %i.om, i64 %i.oi
  %i.oo = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv436.i.i ; 2 uses
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !18 ; 2 uses
  %i.oq = shl i64 %i.op, 3
  %i.or = sub nsw i64 %i.on, %i.oq                ; 3 uses
  %i.os = lshr i64 %i.or, 3
  %i.ot = add nsw i64 %i.or, 7
  %i.ou = ashr i64 %i.ot, 3
  %i.ov = icmp slt i64 %i.or, 0
  %i.ow = select i1 %i.ov, i64 %i.ou, i64 %i.os
  %i.ox = tail call i64 @llvm.smin.i64(i64 %i.ow, i64 %i.fj)
  %i.oy = tail call i64 @llvm.smax.i64(i64 %i.ox, i64 %i.fl)
  %i.oz = add nsw i64 %i.oy, %i.op
  store i64 %i.oz, ptr %i.oo, align 8, !tbaa !18
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %indvars.iv.next433.i.i = add nsw i64 %indvars.iv432.i.i, 2
  %indvars.iv.next437.i.i = add nsw i64 %indvars.iv436.i.i, 2
  %i.pa = add nuw nsw i32 %.0348411.i.i, 2        ; 2 uses
  %i.pb = icmp slt i32 %i.pa, %.1260.i
  br i1 %i.pb, label %bb.ac, label %._crit_edge.i312.i, !llvm.loop !56

._crit_edge.i312.i:                               ; preds = %bb.ae
  %i.pc = add nuw nsw i32 %.0351414.i.i, 2        ; 2 uses
  %i.pd = icmp slt i32 %i.pc, %i.nq
  %indvars.iv.next.i.i40 = add i32 %indvars.iv.i.i39, %i.ff
  %indvars.iv.next435.i.i = add i32 %indvars.iv434.i.i, %i.ff
  br i1 %i.pd, label %.lr.ph.i311.i, label %.preheader410.i.i, !llvm.loop !57

.preheader.i.i:                                   ; preds = %._crit_edge421.i.i
  br i1 %i.nr, label %hsmooth64.exit.i, label %.lr.ph428.i.i

.lr.ph420.i.i:                                    ; preds = %.lr.ph423.i.i, %._crit_edge421.i.i
  %indvars.iv441.i.i = phi i32 [ %indvars.iv.next442.i.i, %._crit_edge421.i.i ], [ 2, %.lr.ph423.i.i ] ; 2 uses
  %.1352422.i.i = phi i32 [ %i.qk, %._crit_edge421.i.i ], [ 0, %.lr.ph423.i.i ]
  %i.pe = sext i32 %indvars.iv441.i.i to i64      ; 2 uses
  %.phi.trans.insert.i.i = getelementptr [8 x i8], ptr %2, i64 %i.pe
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !18
  br label %bb.af

bb.af:                                            ; preds = %bb.ah, %.lr.ph420.i.i
  %8 = phi i64 [ %.pre.i.i, %.lr.ph420.i.i ], [ %i.pj, %bb.ah ] ; 2 uses
  %indvars.iv443.i.i = phi i64 [ %i.pe, %.lr.ph420.i.i ], [ %indvars.iv.next444.i.i, %bb.ah ] ; 2 uses
  %.1349417.i.i = phi i32 [ 2, %.lr.ph420.i.i ], [ %i.qi, %bb.ah ]
  %i.pf = getelementptr [8 x i8], ptr %2, i64 %indvars.iv443.i.i ; 2 uses
  %i.pg = getelementptr i8, ptr %i.pf, i64 -16
  %i.ph = load i64, ptr %i.pg, align 8, !tbaa !18 ; 2 uses
  %indvars.iv.next444.i.i = add nsw i64 %indvars.iv443.i.i, 2 ; 2 uses
  %i.pi = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.next444.i.i
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !18 ; 3 uses
  %i.pk = sub nsw i64 %i.pj, %8                   ; 2 uses
  %i.pl = sub nsw i64 %8, %i.ph                   ; 2 uses
  %.403.i.i = tail call i64 @llvm.smin.i64(i64 %i.pk, i64 %i.pl)
  %i.pm = tail call i64 @llvm.smax.i64(i64 %.403.i.i, i64 0)
  %i.pn = shl i64 %i.pm, 2                        ; 2 uses
  %i.po = tail call i64 @llvm.smax.i64(i64 %i.pk, i64 %i.pl)
  %i.pp = tail call i64 @llvm.smin.i64(i64 %i.po, i64 0)
  %i.pq = shl i64 %i.pp, 2                        ; 3 uses
  %i.pr = icmp slt i64 %i.pq, %i.pn
  br i1 %i.pr, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ps = sub nsw i64 %i.pj, %i.ph                ; 2 uses
  %i.pt = icmp sgt i64 %i.ps, %i.pq
  %i.pu = tail call i64 @llvm.smin.i64(i64 %i.ps, i64 %i.pn)
  %i.pv = select i1 %i.pt, i64 %i.pu, i64 %i.pq
  %i.pw = getelementptr i8, ptr %i.pf, i64 8      ; 2 uses
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !18 ; 2 uses
  %i.py = shl i64 %i.px, 3
  %i.pz = sub nsw i64 %i.pv, %i.py                ; 3 uses
  %i.qa = lshr i64 %i.pz, 3
  %i.qb = add nsw i64 %i.pz, 7
  %i.qc = ashr i64 %i.qb, 3
  %i.qd = icmp slt i64 %i.pz, 0
  %i.qe = select i1 %i.qd, i64 %i.qc, i64 %i.qa
  %i.qf = tail call i64 @llvm.smin.i64(i64 %i.qe, i64 %i.fj)
  %i.qg = tail call i64 @llvm.smax.i64(i64 %i.qf, i64 %i.fl)
  %i.qh = add nsw i64 %i.qg, %i.px
  store i64 %i.qh, ptr %i.pw, align 8, !tbaa !18
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.qi = add nuw nsw i32 %.1349417.i.i, 2        ; 2 uses
  %i.qj = icmp slt i32 %i.qi, %i.ns
  br i1 %i.qj, label %bb.af, label %._crit_edge421.i.i, !llvm.loop !58

._crit_edge421.i.i:                               ; preds = %bb.ah
  %i.qk = add nuw nsw i32 %.1352422.i.i, 2        ; 2 uses
  %i.ql = icmp slt i32 %i.qk, %.1262.i
  %indvars.iv.next442.i.i = add i32 %indvars.iv441.i.i, %i.ff
  br i1 %i.ql, label %.lr.ph420.i.i, label %.preheader.i.i, !llvm.loop !59

.lr.ph428.i.i:                                    ; preds = %.preheader.i.i, %._crit_edge429.i.i
  %indvars.iv450.i.i = phi i32 [ %indvars.iv.next451.i.i, %._crit_edge429.i.i ], [ %i.fo, %.preheader.i.i ] ; 2 uses
  %indvars.iv446.i.i = phi i32 [ %indvars.iv.next447.i.i, %._crit_edge429.i.i ], [ %i.fn, %.preheader.i.i ] ; 2 uses
  %.2353430.i.i = phi i32 [ %i.tf, %._crit_edge429.i.i ], [ 2, %.preheader.i.i ]
  %i.qm = sext i32 %indvars.iv446.i.i to i64
  %i.qn = sext i32 %indvars.iv450.i.i to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %.lr.ph428.i.i
  %indvars.iv452.i.i = phi i64 [ %i.qn, %.lr.ph428.i.i ], [ %indvars.iv.next453.i.i, %bb.ak ] ; 2 uses
  %indvars.iv448.i.i = phi i64 [ %i.qm, %.lr.ph428.i.i ], [ %indvars.iv.next449.i.i, %bb.ak ] ; 4 uses
  %.2350424.i.i = phi i32 [ 2, %.lr.ph428.i.i ], [ %i.td, %bb.ak ]
  %i.qo = sub nsw i64 %indvars.iv448.i.i, %i.fg
  %i.qp = getelementptr [8 x i8], ptr %2, i64 %i.qo ; 2 uses
  %i.qq = getelementptr i8, ptr %i.qp, i64 -16
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !18 ; 2 uses
  %gep472.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv448.i.i ; 2 uses
  %i.qs = getelementptr i8, ptr %gep472.i.i, i64 -16
  %i.qt = load i64, ptr %i.qs, align 8, !tbaa !18 ; 2 uses
  %i.qu = getelementptr i8, ptr %i.qp, i64 16
  %i.qv = load i64, ptr %i.qu, align 8, !tbaa !18 ; 2 uses
  %i.qw = getelementptr i8, ptr %gep472.i.i, i64 16
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !18 ; 2 uses
  %i.qy = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv448.i.i ; 2 uses
  %i.qz = load i64, ptr %i.qy, align 8, !tbaa !18 ; 4 uses
  %i.ra = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv452.i.i ; 2 uses
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !18
  %i.rc = shl i64 %i.rb, 1                        ; 7 uses
  %i.rd = getelementptr i8, ptr %i.qy, i64 8
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !18
  %i.rf = shl i64 %i.re, 1                        ; 5 uses
  %i.rg = sub nsw i64 %i.qx, %i.qz                ; 2 uses
  %i.rh = tail call i64 @llvm.smax.i64(i64 %i.rg, i64 0)
  %i.ri = add i64 %i.rf, %i.rc                    ; 2 uses
  %i.rj = sub i64 %i.rh, %i.ri
  %i.rk = sub nsw i64 %i.qz, %i.qt                ; 2 uses
  %i.rl = tail call i64 @llvm.smax.i64(i64 %i.rk, i64 0)
  %i.rm = add nsw i64 %i.rl, %i.rc
  %i.rn = sub i64 %i.rm, %i.rf
  %.406.i.i = tail call i64 @llvm.smin.i64(i64 %i.rj, i64 %i.rn)
  %i.ro = sub nsw i64 %i.qz, %i.qv                ; 2 uses
  %i.rp = tail call i64 @llvm.smax.i64(i64 %i.ro, i64 0)
  %i.rq = sub nsw i64 %i.rp, %i.rc
  %i.rr = sub nsw i64 %i.qr, %i.qz                ; 2 uses
  %i.rs = tail call i64 @llvm.smax.i64(i64 %i.rr, i64 0)
  %i.rt = add nsw i64 %i.rs, %i.rc
  %.pn.i.i = tail call i64 @llvm.smin.i64(i64 %i.rq, i64 %i.rt)
  %i.ru = add nsw i64 %.pn.i.i, %i.rf
  %i.rv = tail call i64 @llvm.smin.i64(i64 %.406.i.i, i64 %i.ru)
  %i.rw = shl i64 %i.rv, 4                        ; 2 uses
  %i.rx = tail call i64 @llvm.smin.i64(i64 %i.rg, i64 0)
  %i.ry = sub i64 %i.rx, %i.ri
  %i.rz = tail call i64 @llvm.smin.i64(i64 %i.rk, i64 0)
  %i.sa = add nsw i64 %i.rz, %i.rc
  %i.sb = sub i64 %i.sa, %i.rf
  %i.sc = tail call i64 @llvm.smax.i64(i64 %i.ry, i64 %i.sb)
  %i.sd = tail call i64 @llvm.smin.i64(i64 %i.ro, i64 0)
  %i.se = sub nsw i64 %i.sd, %i.rc
  %i.sf = tail call i64 @llvm.smin.i64(i64 %i.rr, i64 0)
  %i.sg = add nsw i64 %i.sf, %i.rc
  %.pn400.i.i = tail call i64 @llvm.smax.i64(i64 %i.se, i64 %i.sg)
  %i.sh = add nsw i64 %.pn400.i.i, %i.rf
  %i.si = tail call i64 @llvm.smax.i64(i64 %i.sc, i64 %i.sh)
  %i.sj = shl i64 %i.si, 4                        ; 3 uses
  %i.sk = icmp slt i64 %i.sj, %i.rw
  br i1 %i.sk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.sl = add i64 %i.qt, %i.qv
  %i.sm = sub i64 %i.qr, %i.sl
  %i.sn = add i64 %i.sm, %i.qx                    ; 2 uses
  %i.so = icmp sgt i64 %i.sn, %i.sj
  %i.sp = tail call i64 @llvm.smin.i64(i64 %i.sn, i64 %i.rw)
  %i.sq = select i1 %i.so, i64 %i.sp, i64 %i.sj
  %i.sr = getelementptr i8, ptr %i.ra, i64 8      ; 2 uses
  %i.ss = load i64, ptr %i.sr, align 8, !tbaa !18 ; 2 uses
  %i.st = shl i64 %i.ss, 6
  %i.su = sub nsw i64 %i.sq, %i.st                ; 3 uses
  %i.sv = lshr i64 %i.su, 6
  %i.sw = add nsw i64 %i.su, 63
  %i.sx = ashr i64 %i.sw, 6
  %i.sy = icmp slt i64 %i.su, 0
  %i.sz = select i1 %i.sy, i64 %i.sx, i64 %i.sv
  %i.ta = tail call i64 @llvm.smin.i64(i64 %i.sz, i64 %i.fj)
  %i.tb = tail call i64 @llvm.smax.i64(i64 %i.ta, i64 %i.fl)
  %i.tc = add nsw i64 %i.tb, %i.ss
  store i64 %i.tc, ptr %i.sr, align 8, !tbaa !18
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %indvars.iv.next449.i.i = add nsw i64 %indvars.iv448.i.i, 2
  %indvars.iv.next453.i.i = add nsw i64 %indvars.iv452.i.i, 2
  %i.td = add nuw nsw i32 %.2350424.i.i, 2        ; 2 uses
  %i.te = icmp slt i32 %i.td, %i.ns
  br i1 %i.te, label %bb.ai, label %._crit_edge429.i.i, !llvm.loop !60

._crit_edge429.i.i:                               ; preds = %bb.ak
  %i.tf = add nuw nsw i32 %.2353430.i.i, 2        ; 2 uses
  %i.tg = icmp slt i32 %i.tf, %i.nq
  %indvars.iv.next447.i.i = add i32 %indvars.iv446.i.i, %i.ff
  %indvars.iv.next451.i.i = add i32 %indvars.iv450.i.i, %i.ff
  br i1 %i.tg, label %.lr.ph428.i.i, label %hsmooth64.exit.i, !llvm.loop !61

hsmooth64.exit.i:                                 ; preds = %._crit_edge429.i.i, %.preheader.i.i, %.lr.ph423.i.i, %.preheader410.i.i, %.lr.ph416.i.i, %._crit_edge.i
  %i.th = srem i32 %.1262.i, 2                    ; 2 uses
  %i.ti = srem i32 %.1260.i, 2                    ; 4 uses
  %i.tj = sub nsw i32 %.1262.i, %i.th             ; 2 uses
  %i.tk = icmp sgt i32 %i.tj, 0
  br i1 %i.tk, label %.lr.ph336.i, label %._crit_edge337.i

.lr.ph336.i:                                      ; preds = %hsmooth64.exit.i
  %i.tl = sub nsw i32 %.1260.i, %i.ti             ; 2 uses
  %i.tm = icmp sgt i32 %i.tl, 0
  %i.tn = zext nneg i32 %.1253.i to i64           ; 6 uses
  %.not291.i = icmp eq i32 %i.ti, 0
  br label %bb.al

bb.al:                                            ; preds = %bb.aq, %.lr.ph336.i
  %indvars.iv376.i = phi i32 [ %i.dl, %.lr.ph336.i ], [ %indvars.iv.next377.i, %bb.aq ] ; 2 uses
  %indvars.iv372.i = phi i32 [ 0, %.lr.ph336.i ], [ %indvars.iv.next373.i, %bb.aq ] ; 2 uses
  %.1267335.i = phi i32 [ 0, %.lr.ph336.i ], [ %i.wl, %bb.aq ] ; 2 uses
  %i.to = mul nsw i32 %.1267335.i, %i.dl          ; 2 uses
  %i.tp = add nsw i32 %i.to, %i.dl
  br i1 %i.tm, label %.lr.ph332.preheader.i, label %._crit_edge333.i

.lr.ph332.preheader.i:                            ; preds = %bb.al
  %i.tq = sext i32 %indvars.iv376.i to i64
  %i.tr = sext i32 %indvars.iv372.i to i64
  br label %.lr.ph332.i

.lr.ph332.i:                                      ; preds = %bb.ao, %.lr.ph332.preheader.i
  %indvars.iv378.i = phi i64 [ %i.tq, %.lr.ph332.preheader.i ], [ %indvars.iv.next379.i, %bb.ao ] ; 2 uses
  %indvars.iv374.i = phi i64 [ %i.tr, %.lr.ph332.preheader.i ], [ %indvars.iv.next375.i, %bb.ao ] ; 2 uses
  %.1265328.i = phi i32 [ 0, %.lr.ph332.preheader.i ], [ %i.vq, %bb.ao ]
  %i.ts = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv374.i ; 3 uses
  %i.tt = load i64, ptr %i.ts, align 8, !tbaa !18 ; 3 uses
  %i.tu = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv378.i ; 3 uses
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !18 ; 2 uses
  %i.tw = getelementptr i8, ptr %i.ts, i64 8      ; 2 uses
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !18 ; 2 uses
  %i.ty = getelementptr i8, ptr %i.tu, i64 8      ; 2 uses
  %i.tz = load i64, ptr %i.ty, align 8, !tbaa !18 ; 2 uses
  %i.ua = icmp slt i64 %i.tv, 0
  %i.ub = select i1 %i.ua, i64 %.0243358.i, i64 %.0248355.i
  %i.uc = add nsw i64 %i.ub, %i.tv
  %i.ud = and i64 %i.uc, %.0250354.i              ; 2 uses
  %i.ue = icmp slt i64 %i.tx, 0
  %i.uf = select i1 %i.ue, i64 %.0243358.i, i64 %.0248355.i
  %i.ug = add nsw i64 %i.uf, %i.tx
  %i.uh = and i64 %i.ug, %.0250354.i              ; 2 uses
  %i.ui = icmp slt i64 %i.tz, 0
  %i.uj = select i1 %i.ui, i64 %.1245.i, i64 %.0249359.i
  %i.uk = add nsw i64 %i.uj, %i.tz
  %i.ul = and i64 %i.uk, %.0251353.i              ; 5 uses
  %i.um = and i64 %i.ul, %.0247356.i              ; 6 uses
  %i.un = icmp slt i64 %i.ud, 0
  %i.uo = sub i64 0, %i.um                        ; 2 uses
  %.p316.i = select i1 %i.un, i64 %i.um, i64 %i.uo
  %i.up = add i64 %.p316.i, %i.ud                 ; 3 uses
  %i.uq = icmp slt i64 %i.uh, 0
  %.p317.i = select i1 %i.uq, i64 %i.um, i64 %i.uo
  %i.ur = add i64 %.p317.i, %i.uh                 ; 4 uses
  %i.us = xor i64 %i.up, %i.ul
  %i.ut = xor i64 %i.us, %i.ur
  %i.uu = and i64 %i.ut, %.0246357.i              ; 3 uses
  %i.uv = icmp sgt i64 %i.tt, -1
  br i1 %i.uv, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.lr.ph332.i
  %i.uw = add nsw i64 %i.um, %i.tt
  %i.ux = sub i64 %i.uw, %i.uu
end_hunk_1
