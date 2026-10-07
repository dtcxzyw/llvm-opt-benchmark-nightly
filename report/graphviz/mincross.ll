Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/mincross?download=true
inline.NumInlined: 101
inline.NumDeleted: 50
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@mincross:bb.a
bb.al:                                            ; preds = %bb.ak
  %i.my = getelementptr inbounds nuw i8, ptr %i.mr, i64 312
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !99
  %.not.i.i.i = icmp eq i64 %i.mz, 0
  br i1 %.not.i.i.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.na = getelementptr inbounds nuw i8, ptr %i.mr, i64 304
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !100 ; 3 uses
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !52 ; 2 uses
  %i.nd = load i32, ptr %i.nc, align 8
  %i.ne = and i32 %i.nd, 3
  %i.nf = icmp eq i32 %i.ne, 3
  %i.ng = select i1 %i.nf, i64 56, i64 120
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.ng
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !56 ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !52 ; 2 uses
  %.not451.i.i.i = icmp eq ptr %i.nk, null
  br i1 %.not451.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.am
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !15
  %.phi.trans.insert15.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 364
  %.pre16.i.i.i = load i32, ptr %.phi.trans.insert15.i.i.i, align 4, !tbaa !57
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %i.nl = phi i32 [ %.pre16.i.i.i, %.lr.ph.preheader.i.i.i ], [ %i.oa, %.lr.ph.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ]
  %i.nm = phi ptr [ %i.nk, %.lr.ph.preheader.i.i.i ], [ %i.nz, %.lr.ph.i.i.i ] ; 2 uses
  %.03.i.i.i = phi ptr [ %i.ni, %.lr.ph.preheader.i.i.i ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %i.nn = load i32, ptr %i.nm, align 8
  %i.no = and i32 %i.nn, 3
  %i.np = icmp eq i32 %i.no, 3
  %i.nq = select i1 %i.np, i64 56, i64 120
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.nq
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !56 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !15
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 364
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !57 ; 2 uses
  %i.nx = icmp sgt i32 %i.nw, %i.nl
  %spec.select.i.i.i = select i1 %i.nx, ptr %i.ns, ptr %.03.i.i.i ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %indvars.iv.next.i.i.i
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !52 ; 2 uses
  %.not45.i.i.i = icmp eq ptr %i.nz, null
  %i.oa = tail call i32 @llvm.smax.i32(i32 %i.nw, i32 %i.nl)
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !165

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.am
  %.0.lcssa.i.i.i = phi ptr [ %i.ni, %bb.am ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %i.ob = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !15
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 368
  %i.oe = load double, ptr %i.od, align 8, !tbaa !179 ; 2 uses
  %i.of = fcmp ult double %i.oe, 0.000000e+00
  br i1 %i.of, label %flat_mval.exit.i.i, label %bb.an

bb.an:                                            ; preds = %._crit_edge.i.i.i
  %i.og = fadd double %i.oe, 1.000000e+00
  br label %.sink.split.i.i.i

bb.ao:                                            ; preds = %bb.al
  %i.oh = getelementptr inbounds nuw i8, ptr %i.mr, i64 296
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !101
  %.not43.i.i.i = icmp eq i64 %i.oi, 0
  br i1 %.not43.i.i.i, label %flat_mval.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.oj = getelementptr inbounds nuw i8, ptr %i.mr, i64 288
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !83 ; 3 uses
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !52 ; 2 uses
  %i.om = load i32, ptr %i.ol, align 8
  %i.on = and i32 %i.om, 3
  %i.oo = icmp eq i32 %i.on, 2
  %i.op = select i1 %i.oo, i64 56, i64 -8
  %i.oq = getelementptr inbounds i8, ptr %i.ol, i64 %i.op
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !56 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !52 ; 2 uses
  %.not444.i.i.i = icmp eq ptr %i.ot, null
  br i1 %.not444.i.i.i, label %._crit_edge9.i.i.i, label %.lr.ph8.preheader.i.i.i

.lr.ph8.preheader.i.i.i:                          ; preds = %bb.ap
  %.phi.trans.insert17.i.i.i = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  %.pre18.i.i.i = load ptr, ptr %.phi.trans.insert17.i.i.i, align 8, !tbaa !15
  %.phi.trans.insert19.i.i.i = getelementptr inbounds nuw i8, ptr %.pre18.i.i.i, i64 364
  %.pre20.i.i.i = load i32, ptr %.phi.trans.insert19.i.i.i, align 4, !tbaa !57
  br label %.lr.ph8.i.i.i

.lr.ph8.i.i.i:                                    ; preds = %.lr.ph8.i.i.i, %.lr.ph8.preheader.i.i.i
  %i.ou = phi i32 [ %.pre20.i.i.i, %.lr.ph8.preheader.i.i.i ], [ %i.pj, %.lr.ph8.i.i.i ] ; 2 uses
  %indvars.iv12.i.i.i = phi i64 [ 1, %.lr.ph8.preheader.i.i.i ], [ %indvars.iv.next13.i.i.i, %.lr.ph8.i.i.i ]
  %i.ov = phi ptr [ %i.ot, %.lr.ph8.preheader.i.i.i ], [ %i.pi, %.lr.ph8.i.i.i ] ; 2 uses
  %.26.i.i.i = phi ptr [ %i.or, %.lr.ph8.preheader.i.i.i ], [ %spec.select46.i.i.i, %.lr.ph8.i.i.i ]
  %i.ow = load i32, ptr %i.ov, align 8
  %i.ox = and i32 %i.ow, 3
  %i.oy = icmp eq i32 %i.ox, 2
  %i.oz = select i1 %i.oy, i64 56, i64 -8
  %i.pa = getelementptr inbounds i8, ptr %i.ov, i64 %i.oz
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !56 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !15
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 364
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !57 ; 2 uses
  %i.pg = icmp slt i32 %i.pf, %i.ou
  %spec.select46.i.i.i = select i1 %i.pg, ptr %i.pb, ptr %.26.i.i.i ; 2 uses
  %indvars.iv.next13.i.i.i = add nuw nsw i64 %indvars.iv12.i.i.i, 1 ; 2 uses
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.ok, i64 %indvars.iv.next13.i.i.i
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !52 ; 2 uses
  %.not44.i.i.i = icmp eq ptr %i.pi, null
  %i.pj = tail call i32 @llvm.smin.i32(i32 %i.pf, i32 %i.ou)
  br i1 %.not44.i.i.i, label %._crit_edge9.i.i.i, label %.lr.ph8.i.i.i, !llvm.loop !166

._crit_edge9.i.i.i:                               ; preds = %.lr.ph8.i.i.i, %bb.ap
  %.2.lcssa.i.i.i = phi ptr [ %i.or, %bb.ap ], [ %spec.select46.i.i.i, %.lr.ph8.i.i.i ]
  %i.pk = getelementptr inbounds nuw i8, ptr %.2.lcssa.i.i.i, i64 16
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !15
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 368
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !179 ; 2 uses
  %i.po = fcmp ogt double %i.pn, 0.000000e+00
  br i1 %i.po, label %bb.aq, label %flat_mval.exit.i.i

bb.aq:                                            ; preds = %._crit_edge9.i.i.i
  %i.pp = fadd double %i.pn, -1.000000e+00
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.aq, %bb.an
  %.sink.i.i.i = phi double [ %i.pp, %bb.aq ], [ %i.og, %bb.an ]
  %i.pq = getelementptr inbounds nuw i8, ptr %i.mr, i64 368
  store double %.sink.i.i.i, ptr %i.pq, align 8, !tbaa !179
  br label %flat_mval.exit.i.i

flat_mval.exit.i.i:                               ; preds = %.sink.split.i.i.i, %._crit_edge9.i.i.i, %bb.ao, %._crit_edge.i.i.i, %bb.ak, %.lr.ph107.i.i
  %.182.i.i = phi i1 [ %.081105.i.i, %.lr.ph107.i.i ], [ %.081105.i.i, %bb.ak ], [ true, %._crit_edge9.i.i.i ], [ true, %._crit_edge.i.i.i ], [ true, %bb.ao ], [ %.081105.i.i, %.sink.split.i.i.i ] ; 2 uses
  %indvars.iv.next119.i.i = add nuw nsw i64 %indvars.iv118.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next119.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %medians.exit.i, label %.lr.ph107.i.i, !llvm.loop !167

medians.exit.i:                                   ; preds = %flat_mval.exit.i.i
  %i.pr = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !43 ; 3 uses
  %i.pt = or i1 %i.he, %.182.i.i
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %wide.trip.count.i.i
  %.b.i.i.i = load i1, ptr @ReMincross, align 1
  %i.pv = getelementptr inbounds nuw i8, ptr %i.mh, i64 132
  %i.pw = load ptr, ptr @Root, align 8
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 16 ; 2 uses
  %spec.select72.idx.i.i = select i1 %i.pt, i64 0, i64 -8
  br label %.preheader17.i.i

.preheader17.i.i:                                 ; preds = %.critedge.thread.i.i, %medians.exit.i
  %.06038.in.i.i = phi i32 [ %i.ml, %medians.exit.i ], [ %.06038.i.i, %.critedge.thread.i.i ] ; 2 uses
  %.05536.i.i = phi ptr [ %i.pu, %medians.exit.i ], [ %spec.select72.i.i, %.critedge.thread.i.i ] ; 5 uses
  %.06135.i.i = phi i32 [ 0, %medians.exit.i ], [ %.16225.i.i, %.critedge.thread.i.i ] ; 2 uses
  %.06038.i.i = add nsw i32 %.06038.in.i.i, -1
  %i.py = icmp ult ptr %i.ps, %.05536.i.i
  br i1 %i.py, label %.preheader.i33.i, label %.critedge.thread.i.i

.preheader.i33.i:                                 ; preds = %.preheader17.i.i, %.thread.thread.i.i
  %.05832.i.i = phi ptr [ %.05729.i.i, %.thread.thread.i.i ], [ %i.ps, %.preheader17.i.i ]
  %.16231.i.i = phi i32 [ %.4.i35.i, %.thread.thread.i.i ], [ %.06135.i.i, %.preheader17.i.i ] ; 9 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.as, %.preheader.i33.i
  %.15926.i.i = phi ptr [ %.05832.i.i, %.preheader.i33.i ], [ %i.qf, %bb.as ] ; 2 uses
  %i.pz = load ptr, ptr %.15926.i.i, align 8, !tbaa !44 ; 4 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !15 ; 6 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 368
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !179 ; 3 uses
  %i.qe = fcmp olt double %i.qd, 0.000000e+00
  %i.qf = getelementptr inbounds nuw i8, ptr %.15926.i.i, i64 8 ; 3 uses
  %i.qg = icmp ult ptr %i.qf, %.05536.i.i         ; 2 uses
  br i1 %i.qe, label %bb.as, label %.critedge.preheader.i.i

.critedge.preheader.i.i:                          ; preds = %bb.ar
  br i1 %i.qg, label %.lr.ph.preheader.i.i, label %.critedge.thread.i.i

.lr.ph.preheader.i.i:                             ; preds = %.critedge.preheader.i.i
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qb, i64 336
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qb, i64 233
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qb, i64 216
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qb, i64 360 ; 2 uses
  br label %.lr.ph.i34.i

bb.as:                                            ; preds = %bb.ar
  br i1 %i.qg, label %bb.ar, label %.critedge.thread.i.i, !llvm.loop !168

.lr.ph.i34.i:                                     ; preds = %.critedge.i.i, %.lr.ph.preheader.i.i
  %.05729.i.i = phi ptr [ %.057.i.i, %.critedge.i.i ], [ %i.qf, %.lr.ph.preheader.i.i ] ; 4 uses
  %.05428.i.i = phi i1 [ %.1.i.i, %.critedge.i.i ], [ false, %.lr.ph.preheader.i.i ] ; 2 uses
  %.pre.i.i = load ptr, ptr %.05729.i.i, align 8, !tbaa !44 ; 4 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 16
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !15 ; 5 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 336
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !102 ; 2 uses
  br i1 %.05428.i.i, label %2, label %.lr.ph._crit_edge.i.i

2:                                                ; preds = %.lr.ph.i34.i
  %.not68.i.i = icmp eq ptr %i.qo, null
  br i1 %.not68.i.i, label %.lr.ph._crit_edge.i.i, label %.critedge.i.i

.lr.ph._crit_edge.i.i:                            ; preds = %2, %.lr.ph.i34.i
  %3 = phi ptr [ null, %2 ], [ %i.qo, %.lr.ph.i34.i ] ; 3 uses
  %i.qp = load ptr, ptr %i.qh, align 8, !tbaa !102 ; 2 uses
  %.not27.i.i.i = icmp eq ptr %i.qp, %3           ; 2 uses
  br i1 %.b.i.i.i, label %bb.ay, label %bb.at

bb.at:                                            ; preds = %.lr.ph._crit_edge.i.i
  %.not25.i.i.i = icmp eq ptr %i.qp, null
  %.not26.i.i.i = icmp eq ptr %3, null
  %i.qq = or i1 %.not26.i.i.i, %.not25.i.i.i
  %or.cond29.i.i.i = or i1 %.not27.i.i.i, %i.qq
  br i1 %or.cond29.i.i.i, label %bb.az, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.qr = load i8, ptr %i.qi, align 1, !tbaa !103
  %i.qs = icmp eq i8 %i.qr, 7
  br i1 %i.qs, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.qt = load i8, ptr %i.qj, align 8, !tbaa !104
  %i.qu = icmp eq i8 %i.qt, 1
  br i1 %i.qu, label %left2right.exit.thread.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qm, i64 233
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !103
  %i.qx = icmp eq i8 %i.qw, 7
  br i1 %i.qx, label %bb.ax, label %.thread.thread.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qm, i64 216
  %i.qz = load i8, ptr %i.qy, align 8, !tbaa !104
  %i.ra = icmp eq i8 %i.qz, 1
  br i1 %i.ra, label %left2right.exit.thread.i.i, label %.thread.thread.i.i

bb.ay:                                            ; preds = %.lr.ph._crit_edge.i.i
  br i1 %.not27.i.i.i, label %bb.az, label %.thread.thread.i.i

bb.az:                                            ; preds = %bb.ay, %bb.at
  %i.rb = load i32, ptr %i.qk, align 8, !tbaa !105
  %i.rc = sext i32 %i.rb to i64
  %i.rd = getelementptr inbounds [88 x i8], ptr %i.mj, i64 %i.rc
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 80
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !90 ; 4 uses
  %i.rg = icmp eq ptr %i.rf, null
  br i1 %i.rg, label %left2right.exit.thread.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.rh = load i32, ptr %i.pv, align 4, !tbaa !106
  %i.ri = and i32 %i.rh, 1
  %.not28.i.i.i = icmp eq i32 %i.ri, 0            ; 2 uses
  %spec.select.i.i36.i = select i1 %.not28.i.i.i, ptr %i.pz, ptr %.pre.i.i
  %spec.select30.i.i.i = select i1 %.not28.i.i.i, ptr %.pre.i.i, ptr %i.pz
  %i.rj = getelementptr inbounds nuw i8, ptr %spec.select.i.i36.i, i64 16
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !15
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 448
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !107
  %i.rn = sext i32 %i.rm to i64                   ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %spec.select30.i.i.i, i64 16
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !15
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 448
  %i.rr = load i32, ptr %i.rq, align 8, !tbaa !107
  %i.rs = sext i32 %i.rr to i64                   ; 2 uses
  %i.rt = load i64, ptr %i.rf, align 8, !tbaa !108
  %.not.i.i.i.i = icmp ugt i64 %i.rt, %i.rn
  br i1 %.not.i.i.i.i, label %bb.bb, label %left2right.exit.thread.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !109 ; 2 uses
  %.not15.i.i.i.i = icmp ugt i64 %i.rv, %i.rs
  br i1 %.not15.i.i.i.i, label %left2right.exit.i.i, label %left2right.exit.thread.i.i

left2right.exit.i.i:                              ; preds = %bb.bb
  %i.rw = mul i64 %i.rv, %i.rn
  %i.rx = add i64 %i.rw, %i.rs                    ; 2 uses
  %i.ry = lshr i64 %i.rx, 3
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !92
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 %i.ry
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !66
  %i.sd = trunc i64 %i.rx to i8
  %i.se = and i8 %i.sd, 7
  %i.sf = lshr i8 %i.sc, %i.se
  %i.sg = trunc i8 %i.sf to i1
  br i1 %i.sg, label %.thread.thread.i.i, label %left2right.exit.thread.i.i

left2right.exit.thread.i.i:                       ; preds = %left2right.exit.i.i, %bb.bb, %bb.ba, %bb.az, %bb.ax, %bb.av
  %i.sh = getelementptr inbounds nuw i8, ptr %i.qm, i64 368
  %i.si = load double, ptr %i.sh, align 8, !tbaa !179 ; 3 uses
  %i.sj = fcmp ult double %i.si, 0.000000e+00
  br i1 %i.sj, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %left2right.exit.thread.i.i
  %.not69.i.i = icmp ne ptr %3, null
  %spec.select.i.i = or i1 %.05428.i.i, %.not69.i.i
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.bc, %2
  %.1.i.i = phi i1 [ true, %2 ], [ %spec.select.i.i, %bb.bc ]
  %.057.i.i = getelementptr inbounds nuw i8, ptr %.05729.i.i, i64 8 ; 2 uses
  %i.sk = icmp ult ptr %.057.i.i, %.05536.i.i
  br i1 %i.sk, label %.lr.ph.i34.i, label %.critedge.thread.i.i, !llvm.loop !169

bb.bd:                                            ; preds = %left2right.exit.thread.i.i
  %i.sl = fcmp ogt double %i.qd, %i.si
  %i.sm = fcmp oge double %i.qd, %i.si
  %or.cond.i.i = and i1 %i.he, %i.sm
  %or.cond71.i.i = or i1 %i.sl, %or.cond.i.i
  br i1 %or.cond71.i.i, label %bb.be, label %.thread.thread.i.i

bb.be:                                            ; preds = %bb.bd
  %i.sn = load i32, ptr %i.qk, align 8, !tbaa !105
  %i.so = getelementptr inbounds nuw i8, ptr %i.qb, i64 364 ; 2 uses
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !57 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.qm, i64 364 ; 2 uses
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !57 ; 2 uses
  store i32 %i.sr, ptr %i.so, align 4, !tbaa !57
  %i.ss = load ptr, ptr %i.px, align 8, !tbaa !15
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 264
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !39
  %i.sv = sext i32 %i.sn to i64
  %i.sw = getelementptr inbounds [88 x i8], ptr %i.su, i64 %i.sv
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !43 ; 2 uses
  %i.sz = sext i32 %i.sr to i64
  %i.ta = getelementptr inbounds [8 x i8], ptr %i.sy, i64 %i.sz
  store ptr %i.pz, ptr %i.ta, align 8, !tbaa !44
  store i32 %i.sp, ptr %i.sq, align 4, !tbaa !57
  %i.tb = sext i32 %i.sp to i64
  %i.tc = getelementptr inbounds [8 x i8], ptr %i.sy, i64 %i.tb
  store ptr %.pre.i.i, ptr %i.tc, align 8, !tbaa !44
  %i.td = add nsw i32 %.16231.i.i, 1
  br label %.thread.thread.i.i

.thread.thread.i.i:                               ; preds = %left2right.exit.i.i, %bb.ay, %bb.ax, %bb.aw, %bb.be, %bb.bd
  %.4.i35.i = phi i32 [ %i.td, %bb.be ], [ %.16231.i.i, %bb.bd ], [ %.16231.i.i, %bb.aw ], [ %.16231.i.i, %bb.ax ], [ %.16231.i.i, %bb.ay ], [ %.16231.i.i, %left2right.exit.i.i ] ; 2 uses
  %i.te = icmp ult ptr %.05729.i.i, %.05536.i.i
  br i1 %i.te, label %.preheader.i33.i, label %.critedge.thread.i.i

.critedge.thread.i.i:                             ; preds = %.thread.thread.i.i, %.critedge.preheader.i.i, %bb.as, %.critedge.i.i, %.preheader17.i.i
  %.16225.i.i = phi i32 [ %.16231.i.i, %bb.as ], [ %.06135.i.i, %.preheader17.i.i ], [ %.16231.i.i, %.critedge.i.i ], [ %.16231.i.i, %.critedge.preheader.i.i ], [ %.4.i35.i, %.thread.thread.i.i ] ; 2 uses
  %spec.select72.i.i = getelementptr inbounds i8, ptr %.05536.i.i, i64 %spec.select72.idx.i.i
  %i.tf = icmp sgt i32 %.06038.in.i.i, 1
  br i1 %i.tf, label %.preheader17.i.i, label %._crit_edge.i.i, !llvm.loop !170

._crit_edge.i.i:                                  ; preds = %.critedge.thread.i.i
  %i.tg = icmp eq i32 %.16225.i.i, 0
  br i1 %i.tg, label %reorder.exit.i, label %bb.bf

bb.bf:                                            ; preds = %._crit_edge.i.i
  %i.th = load ptr, ptr %i.px, align 8, !tbaa !15
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 264
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !39
  %i.tk = getelementptr [88 x i8], ptr %i.tj, i64 %indvars.iv.i91 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 65
  store i8 0, ptr %i.tl, align 1, !tbaa !94
  %i.tm = icmp sgt i64 %indvars.iv.i91, 0
  br i1 %i.tm, label %bb.bg, label %reorder.exit.i

bb.bg:                                            ; preds = %bb.bf
  %i.tn = getelementptr i8, ptr %i.tk, i64 -23
  store i8 0, ptr %i.tn, align 1, !tbaa !94
  br label %reorder.exit.i

reorder.exit.i:                                   ; preds = %bb.bg, %bb.bf, %._crit_edge.i.i, %.preheader.i.i, %bb.x
  %.val32116.i = phi ptr [ %i.mh, %bb.bg ], [ %i.mh, %.preheader.i.i ], [ %i.mh, %._crit_edge.i.i ], [ %i.mh, %bb.bf ], [ %.val3284.i, %bb.x ] ; 2 uses
  %.pre8690115.i = phi ptr [ %i.mj, %bb.bg ], [ %i.mj, %.preheader.i.i ], [ %i.mj, %._crit_edge.i.i ], [ %i.mj, %bb.bf ], [ %.pre86.i, %bb.x ]
  %indvars.iv.next.i92 = add nsw i64 %indvars.iv.i91, %i.id
  %i.to = icmp eq i64 %indvars.iv.i91, %sext.i
  br i1 %i.to, label %mincross_step.exit, label %bb.x, !llvm.loop !171

mincross_step.exit:                               ; preds = %reorder.exit.i, %bb.w
  %.val.i = phi ptr [ %i.hg, %bb.w ], [ %.val32116.i, %reorder.exit.i ]
  %i.tp = xor i1 %i.he, true
  tail call fastcc void @transpose(ptr %.val.i, i1 noundef zeroext %i.tp)
  %i.tq = tail call fastcc i64 @ncross()          ; 5 uses
  %.not64 = icmp sgt i64 %i.tq, %.3155
  br i1 %.not64, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %mincross_step.exit
  %.val = load ptr, ptr %i.bi, align 8, !tbaa !15 ; 3 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.val, i64 336
  %i.ts = load i32, ptr %i.tr, align 8, !tbaa !37 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.val, i64 340
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !38 ; 2 uses
  %.not2.i94 = icmp sgt i32 %i.ts, %i.tu
  br i1 %.not2.i94, label %save_best.exit107, label %.preheader.lr.ph.i95

.preheader.lr.ph.i95:                             ; preds = %bb.bh
  %i.tv = getelementptr inbounds nuw i8, ptr %.val, i64 264
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !39
  %i.tx = sext i32 %i.ts to i64
  %i.ty = add i32 %i.tu, 1
  br label %.preheader.i96

.preheader.i96:                                   ; preds = %._crit_edge.i98, %.preheader.lr.ph.i95
  %indvars.iv6.i97 = phi i64 [ %i.tx, %.preheader.lr.ph.i95 ], [ %indvars.iv.next7.i99, %._crit_edge.i98 ] ; 2 uses
  %i.tz = getelementptr inbounds [88 x i8], ptr %i.tw, i64 %indvars.iv6.i97 ; 2 uses
  %i.ua = load i32, ptr %i.tz, align 8, !tbaa !42 ; 3 uses
  %i.ub = icmp sgt i32 %i.ua, 0
  br i1 %i.ub, label %.lr.ph.i102, label %._crit_edge.i98

.lr.ph.i102:                                      ; preds = %.preheader.i96
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !43 ; 5 uses
  %wide.trip.count.i103 = zext nneg i32 %i.ua to i64 ; 2 uses
  %xtraiter323 = and i64 %wide.trip.count.i103, 3 ; 3 uses
  %i.ue = icmp ult i32 %i.ua, 4
  br i1 %i.ue, label %.epil.preheader322, label %.lr.ph.i102.new

.lr.ph.i102.new:                                  ; preds = %.lr.ph.i102
  %unroll_iter327 = and i64 %wide.trip.count.i103, 2147483644
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.lr.ph.i102.new
  %indvars.iv.i104 = phi i64 [ 0, %.lr.ph.i102.new ], [ %indvars.iv.next.i105.3, %bb.bi ] ; 5 uses
  %niter328 = phi i64 [ 0, %.lr.ph.i102.new ], [ %niter328.next.3, %bb.bi ]
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %indvars.iv.i104
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !44
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 16
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !15 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 364
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !57
  %i.ul = sitofp i32 %i.uk to double
  %i.um = getelementptr inbounds nuw i8, ptr %i.ui, i64 32
  store double %i.ul, ptr %i.um, align 8, !tbaa !176
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %indvars.iv.i104
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !44
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !15 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 364
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !57
  %i.uu = sitofp i32 %i.ut to double
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ur, i64 32
  store double %i.uu, ptr %i.uv, align 8, !tbaa !176
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %indvars.iv.i104
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 16
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !44
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 16
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !15 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 364
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !57
  %i.vd = sitofp i32 %i.vc to double
  %i.ve = getelementptr inbounds nuw i8, ptr %i.va, i64 32
  store double %i.vd, ptr %i.ve, align 8, !tbaa !176
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %indvars.iv.i104
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 24
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !44
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 16
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !15 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 364
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !57
  %i.vm = sitofp i32 %i.vl to double
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vj, i64 32
  store double %i.vm, ptr %i.vn, align 8, !tbaa !176
  %indvars.iv.next.i105.3 = add nuw nsw i64 %indvars.iv.i104, 4 ; 2 uses
  %niter328.next.3 = add i64 %niter328, 4         ; 2 uses
  %niter328.ncmp.3 = icmp eq i64 %niter328.next.3, %unroll_iter327
  br i1 %niter328.ncmp.3, label %._crit_edge.i98.loopexit.unr-lcssa, label %bb.bi, !llvm.loop !154

._crit_edge.i98.loopexit.unr-lcssa:               ; preds = %bb.bi
  %lcmp.mod325.not = icmp eq i64 %xtraiter323, 0
  br i1 %lcmp.mod325.not, label %._crit_edge.i98, label %.epil.preheader322

.epil.preheader322:                               ; preds = %._crit_edge.i98.loopexit.unr-lcssa, %.lr.ph.i102
  %indvars.iv.i104.epil.init = phi i64 [ 0, %.lr.ph.i102 ], [ %indvars.iv.next.i105.3, %._crit_edge.i98.loopexit.unr-lcssa ]
  %lcmp.mod326 = icmp ne i64 %xtraiter323, 0
  tail call void @llvm.assume(i1 %lcmp.mod326)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.epil.preheader322
  %indvars.iv.i104.epil = phi i64 [ %indvars.iv.i104.epil.init, %.epil.preheader322 ], [ %indvars.iv.next.i105.epil, %bb.bj ] ; 2 uses
  %epil.iter324 = phi i64 [ 0, %.epil.preheader322 ], [ %epil.iter324.next, %bb.bj ]
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %indvars.iv.i104.epil
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !44
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !15 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 364
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !57
  %i.vu = sitofp i32 %i.vt to double
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vr, i64 32
  store double %i.vu, ptr %i.vv, align 8, !tbaa !176
  %indvars.iv.next.i105.epil = add nuw nsw i64 %indvars.iv.i104.epil, 1
  %epil.iter324.next = add i64 %epil.iter324, 1   ; 2 uses
  %epil.iter324.cmp.not = icmp eq i64 %epil.iter324.next, %xtraiter323
  br i1 %epil.iter324.cmp.not, label %._crit_edge.i98, label %bb.bj, !llvm.loop !172

._crit_edge.i98:                                  ; preds = %._crit_edge.i98.loopexit.unr-lcssa, %bb.bj, %.preheader.i96
  %indvars.iv.next7.i99 = add nsw i64 %indvars.iv6.i97, 1 ; 2 uses
  %lftr.wideiv.i100 = trunc i64 %indvars.iv.next7.i99 to i32
  %exitcond9.not.i101 = icmp eq i32 %i.ty, %lftr.wideiv.i100
  br i1 %exitcond9.not.i101, label %save_best.exit107, label %.preheader.i96, !llvm.loop !156

save_best.exit107:                                ; preds = %._crit_edge.i98, %bb.bh
  %i.vw = sitofp i64 %i.tq to double
  %i.vx = sitofp i64 %.3155 to double
  %i.vy = fmul nnan double %i.vx, f0x3FEFD70A3D70A3D7
  %i.vz = fcmp ogt double %i.vy, %i.vw
end_hunk_0
