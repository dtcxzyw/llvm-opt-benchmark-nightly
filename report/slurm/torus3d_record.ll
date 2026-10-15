Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/torus3d_record?download=true
inline.NumInlined: 33
inline.NumDeleted: 15
begin_hunk_0_@torus3d_record_validate:bb.a
  br i1 %exitcond92.not.i, label %._crit_edge73.split.us.us.i, label %.preheader.us.us.i, !llvm.loop !20

._crit_edge73.split.us.us.i:                      ; preds = %._crit_edge.us.us.i
  %indvars.iv.next94.i = add nuw nsw i64 %indvars.iv93.i, 1 ; 2 uses
  %exitcond97.not.i = icmp eq i64 %indvars.iv.next94.i, %i.jp
  br i1 %exitcond97.not.i, label %.loopexit, label %.preheader67.us.i, !llvm.loop !21

_build_placement_anchors.exit:                    ; preds = %bb.br, %bb.bv, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.thread.i

._crit_edge140.loopexit.i:                        ; preds = %.loopexit
  %.pre.i = load ptr, ptr %i.gu, align 8
  br label %._crit_edge140.i

._crit_edge140.i:                                 ; preds = %._crit_edge140.loopexit.i, %.._crit_edge140_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre159.i, %.._crit_edge140_crit_edge.i ], [ %i.gz, %._crit_edge140.loopexit.i ]
  %i.mu = phi ptr [ %i.gt, %.._crit_edge140_crit_edge.i ], [ %.pre.i, %._crit_edge140.loopexit.i ]
  call void @qsort(ptr noundef %i.mu, i64 noundef %.pre-phi.i, i64 noundef 80, ptr noundef nonnull @_placement_cmp) #10
  %i.mv = load i32, ptr %i.gr, align 8            ; 2 uses
  %i.mw = icmp sgt i32 %i.mv, 0
  br i1 %i.mw, label %.lr.ph.i58, label %.thread.i

.preheader.i63:                                   ; preds = %bb.cf
  %i.mx = icmp sgt i32 %i.nx, 0
  br i1 %i.mx, label %.lr.ph121.i, label %.thread.i

.lr.ph.i58:                                       ; preds = %._crit_edge140.i, %bb.cf
  %i.my = phi i32 [ %i.nx, %bb.cf ], [ %i.mv, %._crit_edge140.i ]
  %indvars.iv.i59 = phi i64 [ %indvars.iv.next.i62, %bb.cf ], [ 0, %._crit_edge140.i ] ; 2 uses
  %i.mz = load ptr, ptr %i.gu, align 8
  %i.na = getelementptr inbounds nuw [80 x i8], ptr %i.mz, i64 %indvars.iv.i59 ; 7 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 30
  %i.nc = load i16, ptr %i.nb, align 2            ; 2 uses
  %i.nd = load i16, ptr %i.bd, align 8            ; 2 uses
  %.not7.i.i = icmp eq i16 %i.nd, 0
  br i1 %.not7.i.i, label %_gcd.exit.i, label %.lr.ph.i.i60

.lr.ph.i.i60:                                     ; preds = %.lr.ph.i58, %.lr.ph.i.i60
  %.09.i.i = phi i16 [ %.068.i.i, %.lr.ph.i.i60 ], [ %i.nc, %.lr.ph.i58 ]
  %.068.i.i = phi i16 [ %i.ne, %.lr.ph.i.i60 ], [ %i.nd, %.lr.ph.i58 ] ; 3 uses
  %i.ne = urem i16 %.09.i.i, %.068.i.i            ; 2 uses
  %.not.i.i61 = icmp eq i16 %i.ne, 0
  br i1 %.not.i.i61, label %_gcd.exit.i, label %.lr.ph.i.i60, !llvm.loop !22

_gcd.exit.i:                                      ; preds = %.lr.ph.i.i60, %.lr.ph.i58
  %.0.lcssa.i.i = phi i16 [ %i.nc, %.lr.ph.i58 ], [ %.068.i.i, %.lr.ph.i.i60 ]
  %i.nf = getelementptr inbounds nuw i8, ptr %i.na, i64 36
  %i.ng = load i16, ptr %i.nf, align 4
  %i.nh = icmp ult i16 %.0.lcssa.i.i, %i.ng
  br i1 %i.nh, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %_gcd.exit.i
  %i.ni = getelementptr inbounds nuw i8, ptr %i.na, i64 32
  %i.nj = load i16, ptr %i.ni, align 4            ; 2 uses
  %i.nk = load i16, ptr %i.bf, align 2            ; 2 uses
  %.not7.i56.i = icmp eq i16 %i.nk, 0
  br i1 %.not7.i56.i, label %_gcd.exit62.i, label %.lr.ph.i57.i

.lr.ph.i57.i:                                     ; preds = %bb.cc, %.lr.ph.i57.i
  %.09.i58.i = phi i16 [ %.068.i59.i, %.lr.ph.i57.i ], [ %i.nj, %bb.cc ]
  %.068.i59.i = phi i16 [ %i.nl, %.lr.ph.i57.i ], [ %i.nk, %bb.cc ] ; 3 uses
  %i.nl = urem i16 %.09.i58.i, %.068.i59.i        ; 2 uses
  %.not.i60.i = icmp eq i16 %i.nl, 0
  br i1 %.not.i60.i, label %_gcd.exit62.i, label %.lr.ph.i57.i, !llvm.loop !22

_gcd.exit62.i:                                    ; preds = %.lr.ph.i57.i, %bb.cc
  %.0.lcssa.i61.i = phi i16 [ %i.nj, %bb.cc ], [ %.068.i59.i, %.lr.ph.i57.i ]
  %i.nm = getelementptr inbounds nuw i8, ptr %i.na, i64 38
  %i.nn = load i16, ptr %i.nm, align 2
  %i.no = icmp ult i16 %.0.lcssa.i61.i, %i.nn
  br i1 %i.no, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %_gcd.exit62.i
  %i.np = getelementptr inbounds nuw i8, ptr %i.na, i64 34
  %i.nq = load i16, ptr %i.np, align 2            ; 2 uses
  %i.nr = load i16, ptr %i.bh, align 4            ; 2 uses
  %.not7.i63.i = icmp eq i16 %i.nr, 0
  br i1 %.not7.i63.i, label %_gcd.exit69.i, label %.lr.ph.i64.i

.lr.ph.i64.i:                                     ; preds = %bb.cd, %.lr.ph.i64.i
  %.09.i65.i = phi i16 [ %.068.i66.i, %.lr.ph.i64.i ], [ %i.nq, %bb.cd ]
  %.068.i66.i = phi i16 [ %i.ns, %.lr.ph.i64.i ], [ %i.nr, %bb.cd ] ; 3 uses
  %i.ns = urem i16 %.09.i65.i, %.068.i66.i        ; 2 uses
  %.not.i67.i = icmp eq i16 %i.ns, 0
  br i1 %.not.i67.i, label %_gcd.exit69.i, label %.lr.ph.i64.i, !llvm.loop !22

_gcd.exit69.i:                                    ; preds = %.lr.ph.i64.i, %bb.cd
  %.0.lcssa.i68.i = phi i16 [ %i.nq, %bb.cd ], [ %.068.i66.i, %.lr.ph.i64.i ]
  %i.nt = getelementptr inbounds nuw i8, ptr %i.na, i64 40
  %i.nu = load i16, ptr %i.nt, align 4
  %i.nv = icmp ult i16 %.0.lcssa.i68.i, %i.nu
  br i1 %i.nv, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %_gcd.exit69.i, %_gcd.exit62.i, %_gcd.exit.i
  %i.nw = getelementptr inbounds nuw i8, ptr %i.na, i64 42
  store i8 1, ptr %i.nw, align 2
  %.pre.i66 = load i32, ptr %i.gr, align 8
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %_gcd.exit69.i
  %i.nx = phi i32 [ %.pre.i66, %bb.ce ], [ %i.my, %_gcd.exit69.i ] ; 4 uses
  %indvars.iv.next.i62 = add nuw nsw i64 %indvars.iv.i59, 1 ; 2 uses
  %i.ny = sext i32 %i.nx to i64
  %i.nz = icmp slt i64 %indvars.iv.next.i62, %i.ny
  br i1 %i.nz, label %.lr.ph.i58, label %.preheader.i63, !llvm.loop !23

.lr.ph121.i:                                      ; preds = %.preheader.i63, %._crit_edge.i65
  %i.oa = phi i32 [ %i.rp, %._crit_edge.i65 ], [ %i.nx, %.preheader.i63 ] ; 3 uses
  %indvars.iv129.i = phi i64 [ %indvars.iv.next130.i, %._crit_edge.i65 ], [ 0, %.preheader.i63 ] ; 2 uses
  %indvars.iv124.i = phi i64 [ %indvars.iv.next125.i, %._crit_edge.i65 ], [ 1, %.preheader.i63 ] ; 2 uses
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1 ; 3 uses
  %i.ob = sext i32 %i.oa to i64
  %i.oc = icmp slt i64 %indvars.iv.next130.i, %i.ob
  br i1 %i.oc, label %.lr.ph118.i, label %.thread.i

.lr.ph118.i:                                      ; preds = %.lr.ph121.i
  %i.od = load ptr, ptr %i.gu, align 8
  %i.oe = getelementptr inbounds nuw [80 x i8], ptr %i.od, i64 %indvars.iv129.i ; 11 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 44
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 42 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 24
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oe, i64 30
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oe, i64 36
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oe, i64 26
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oe, i64 32
  %i.om = getelementptr inbounds nuw i8, ptr %i.oe, i64 38
  %i.on = getelementptr inbounds nuw i8, ptr %i.oe, i64 28
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oe, i64 34
  %i.op = getelementptr inbounds nuw i8, ptr %i.oe, i64 40
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ck, %.lr.ph118.i
  %i.oq = phi i32 [ %i.oa, %.lr.ph118.i ], [ %i.rl, %bb.ck ] ; 5 uses
  %i.or = phi i32 [ %i.oa, %.lr.ph118.i ], [ %i.rm, %bb.ck ] ; 4 uses
  %indvars.iv126.i = phi i64 [ %indvars.iv124.i, %.lr.ph118.i ], [ %indvars.iv.next127.i, %bb.ck ] ; 2 uses
  %i.os = load ptr, ptr %i.gu, align 8
  %i.ot = getelementptr inbounds nuw [80 x i8], ptr %i.os, i64 %indvars.iv126.i ; 12 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 44
  %i.ov = load i32, ptr %i.ou, align 4
  %i.ow = load i32, ptr %i.of, align 4
  %.not.i64 = icmp eq i32 %i.ov, %i.ow
  br i1 %.not.i64, label %bb.ch, label %._crit_edge.i65

bb.ch:                                            ; preds = %bb.cg
  %i.ox = load i8, ptr %i.og, align 2, !range !33, !noundef !34
  %i.oy = trunc nuw i8 %i.ox to i1
  br i1 %i.oy, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ot, i64 42
  %i.pa = load i8, ptr %i.oz, align 2, !range !33, !noundef !34
  %i.pb = trunc nuw i8 %i.pa to i1
  br i1 %i.pb, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.pc = load i16, ptr %i.oh, align 8            ; 4 uses
  %i.pd = load i16, ptr %i.oi, align 2            ; 2 uses
  %i.pe = load i16, ptr %i.oj, align 4            ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ot, i64 24
  %i.pg = load i16, ptr %i.pf, align 8            ; 4 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ot, i64 30
  %i.pi = load i16, ptr %i.ph, align 2            ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ot, i64 36
  %i.pk = load i16, ptr %i.pj, align 4            ; 2 uses
  %i.pl = load i16, ptr %i.bd, align 8            ; 2 uses
  %.not7.i.i.i = icmp eq i16 %i.pi, 0
  br i1 %.not7.i.i.i, label %_gcd.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cj, %.lr.ph.i.i.i
  %.09.i.i.i = phi i16 [ %.068.i.i.i, %.lr.ph.i.i.i ], [ %i.pd, %bb.cj ]
  %.068.i.i.i = phi i16 [ %i.pm, %.lr.ph.i.i.i ], [ %i.pi, %bb.cj ] ; 3 uses
  %i.pm = urem i16 %.09.i.i.i, %.068.i.i.i        ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.pm, 0
  br i1 %.not.i.i.i, label %_gcd.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !22

_gcd.exit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.cj
  %.0.lcssa.i.i.i = phi i16 [ %i.pd, %bb.cj ], [ %.068.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.not7.i27.i.i = icmp eq i16 %i.pl, 0
  br i1 %.not7.i27.i.i, label %_gcd.exit33.i.i, label %.lr.ph.i28.i.i

.lr.ph.i28.i.i:                                   ; preds = %_gcd.exit.i.i, %.lr.ph.i28.i.i
  %.09.i29.i.i = phi i16 [ %.068.i30.i.i, %.lr.ph.i28.i.i ], [ %.0.lcssa.i.i.i, %_gcd.exit.i.i ]
  %.068.i30.i.i = phi i16 [ %i.pn, %.lr.ph.i28.i.i ], [ %i.pl, %_gcd.exit.i.i ] ; 3 uses
  %i.pn = urem i16 %.09.i29.i.i, %.068.i30.i.i    ; 2 uses
  %.not.i31.i.i = icmp eq i16 %i.pn, 0
  br i1 %.not.i31.i.i, label %_gcd.exit33.i.i, label %.lr.ph.i28.i.i, !llvm.loop !22

_gcd.exit33.i.i:                                  ; preds = %.lr.ph.i28.i.i, %_gcd.exit.i.i
  %.0.lcssa.i32.i.i = phi i16 [ %.0.lcssa.i.i.i, %_gcd.exit.i.i ], [ %.068.i30.i.i, %.lr.ph.i28.i.i ] ; 2 uses
  %i.po = icmp eq i16 %i.pc, %i.pg
  br i1 %i.po, label %_grids_overlap_axis.exit.thread.i, label %_grids_overlap_axis.exit.i

_grids_overlap_axis.exit.i:                       ; preds = %_gcd.exit33.i.i
  %i.pp = icmp ugt i16 %i.pg, %i.pc               ; 3 uses
  %i.pq = sub i16 %i.pc, %i.pg
  %i.pr = sub i16 %i.pg, %i.pc
  %.sink48.i.i = select i1 %i.pp, i16 %i.pr, i16 %i.pq
  %.sink.i.i = select i1 %i.pp, i16 %i.pe, i16 %i.pk
  %.sink44.i.i = select i1 %i.pp, i16 %i.pk, i16 %i.pe
  %i.ps = urem i16 %.sink48.i.i, %.0.lcssa.i32.i.i ; 2 uses
  %i.pt = icmp ult i16 %i.ps, %.sink.i.i
  %1 = sub nuw i16 %.0.lcssa.i32.i.i, %i.ps
  %i.pu = icmp ult i16 %1, %.sink44.i.i
  %i.pv = select i1 %i.pt, i1 true, i1 %i.pu
  br i1 %i.pv, label %_grids_overlap_axis.exit.thread.i, label %bb.ck

_grids_overlap_axis.exit.thread.i:                ; preds = %_grids_overlap_axis.exit.i, %_gcd.exit33.i.i
  %i.pw = load i16, ptr %i.ok, align 2            ; 4 uses
  %i.px = load i16, ptr %i.ol, align 8            ; 2 uses
  %i.py = load i16, ptr %i.om, align 2            ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ot, i64 26
  %i.qa = load i16, ptr %i.pz, align 2            ; 4 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ot, i64 32
  %i.qc = load i16, ptr %i.qb, align 8            ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ot, i64 38
  %i.qe = load i16, ptr %i.qd, align 2            ; 2 uses
  %i.qf = load i16, ptr %i.bf, align 2            ; 2 uses
  %.not7.i.i70.i = icmp eq i16 %i.qc, 0
  br i1 %.not7.i.i70.i, label %_gcd.exit.i75.i, label %.lr.ph.i.i71.i

.lr.ph.i.i71.i:                                   ; preds = %_grids_overlap_axis.exit.thread.i, %.lr.ph.i.i71.i
  %.09.i.i72.i = phi i16 [ %.068.i.i73.i, %.lr.ph.i.i71.i ], [ %i.px, %_grids_overlap_axis.exit.thread.i ]
  %.068.i.i73.i = phi i16 [ %i.qg, %.lr.ph.i.i71.i ], [ %i.qc, %_grids_overlap_axis.exit.thread.i ] ; 3 uses
  %i.qg = urem i16 %.09.i.i72.i, %.068.i.i73.i    ; 2 uses
  %.not.i.i74.i = icmp eq i16 %i.qg, 0
  br i1 %.not.i.i74.i, label %_gcd.exit.i75.i, label %.lr.ph.i.i71.i, !llvm.loop !22

_gcd.exit.i75.i:                                  ; preds = %.lr.ph.i.i71.i, %_grids_overlap_axis.exit.thread.i
  %.0.lcssa.i.i76.i = phi i16 [ %i.px, %_grids_overlap_axis.exit.thread.i ], [ %.068.i.i73.i, %.lr.ph.i.i71.i ] ; 2 uses
  %.not7.i27.i77.i = icmp eq i16 %i.qf, 0
  br i1 %.not7.i27.i77.i, label %_gcd.exit33.i82.i, label %.lr.ph.i28.i78.i

.lr.ph.i28.i78.i:                                 ; preds = %_gcd.exit.i75.i, %.lr.ph.i28.i78.i
  %.09.i29.i79.i = phi i16 [ %.068.i30.i80.i, %.lr.ph.i28.i78.i ], [ %.0.lcssa.i.i76.i, %_gcd.exit.i75.i ]
  %.068.i30.i80.i = phi i16 [ %i.qh, %.lr.ph.i28.i78.i ], [ %i.qf, %_gcd.exit.i75.i ] ; 3 uses
  %i.qh = urem i16 %.09.i29.i79.i, %.068.i30.i80.i ; 2 uses
  %.not.i31.i81.i = icmp eq i16 %i.qh, 0
  br i1 %.not.i31.i81.i, label %_gcd.exit33.i82.i, label %.lr.ph.i28.i78.i, !llvm.loop !22

_gcd.exit33.i82.i:                                ; preds = %.lr.ph.i28.i78.i, %_gcd.exit.i75.i
  %.0.lcssa.i32.i83.i = phi i16 [ %.0.lcssa.i.i76.i, %_gcd.exit.i75.i ], [ %.068.i30.i80.i, %.lr.ph.i28.i78.i ] ; 2 uses
  %i.qi = icmp eq i16 %i.pw, %i.qa
  br i1 %i.qi, label %_grids_overlap_axis.exit90.thread.i, label %_grids_overlap_axis.exit90.i

_grids_overlap_axis.exit90.i:                     ; preds = %_gcd.exit33.i82.i
  %i.qj = icmp ugt i16 %i.qa, %i.pw               ; 3 uses
  %i.qk = sub i16 %i.pw, %i.qa
  %i.ql = sub i16 %i.qa, %i.pw
  %.sink48.i85.i = select i1 %i.qj, i16 %i.ql, i16 %i.qk
  %.sink.i86.i = select i1 %i.qj, i16 %i.py, i16 %i.qe
  %.sink44.i87.i = select i1 %i.qj, i16 %i.qe, i16 %i.py
  %i.qm = urem i16 %.sink48.i85.i, %.0.lcssa.i32.i83.i ; 2 uses
  %i.qn = icmp ult i16 %i.qm, %.sink.i86.i
  %2 = sub nuw i16 %.0.lcssa.i32.i83.i, %i.qm
  %i.qo = icmp ult i16 %2, %.sink44.i87.i
  %i.qp = select i1 %i.qn, i1 true, i1 %i.qo
  br i1 %i.qp, label %_grids_overlap_axis.exit90.thread.i, label %bb.ck

_grids_overlap_axis.exit90.thread.i:              ; preds = %_grids_overlap_axis.exit90.i, %_gcd.exit33.i82.i
  %i.qq = load i16, ptr %i.on, align 4            ; 4 uses
  %i.qr = load i16, ptr %i.oo, align 2            ; 2 uses
  %i.qs = load i16, ptr %i.op, align 8            ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.ot, i64 28
  %i.qu = load i16, ptr %i.qt, align 4            ; 4 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ot, i64 34
  %i.qw = load i16, ptr %i.qv, align 2            ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.ot, i64 40
  %i.qy = load i16, ptr %i.qx, align 8            ; 2 uses
  %i.qz = load i16, ptr %i.bh, align 4            ; 2 uses
  %.not7.i.i91.i = icmp eq i16 %i.qw, 0
  br i1 %.not7.i.i91.i, label %_gcd.exit.i96.i, label %.lr.ph.i.i92.i

.lr.ph.i.i92.i:                                   ; preds = %_grids_overlap_axis.exit90.thread.i, %.lr.ph.i.i92.i
  %.09.i.i93.i = phi i16 [ %.068.i.i94.i, %.lr.ph.i.i92.i ], [ %i.qr, %_grids_overlap_axis.exit90.thread.i ]
  %.068.i.i94.i = phi i16 [ %i.ra, %.lr.ph.i.i92.i ], [ %i.qw, %_grids_overlap_axis.exit90.thread.i ] ; 3 uses
  %i.ra = urem i16 %.09.i.i93.i, %.068.i.i94.i    ; 2 uses
  %.not.i.i95.i = icmp eq i16 %i.ra, 0
  br i1 %.not.i.i95.i, label %_gcd.exit.i96.i, label %.lr.ph.i.i92.i, !llvm.loop !22

_gcd.exit.i96.i:                                  ; preds = %.lr.ph.i.i92.i, %_grids_overlap_axis.exit90.thread.i
  %.0.lcssa.i.i97.i = phi i16 [ %i.qr, %_grids_overlap_axis.exit90.thread.i ], [ %.068.i.i94.i, %.lr.ph.i.i92.i ] ; 2 uses
  %.not7.i27.i98.i = icmp eq i16 %i.qz, 0
  br i1 %.not7.i27.i98.i, label %_gcd.exit33.i103.i, label %.lr.ph.i28.i99.i

.lr.ph.i28.i99.i:                                 ; preds = %_gcd.exit.i96.i, %.lr.ph.i28.i99.i
  %.09.i29.i100.i = phi i16 [ %.068.i30.i101.i, %.lr.ph.i28.i99.i ], [ %.0.lcssa.i.i97.i, %_gcd.exit.i96.i ]
  %.068.i30.i101.i = phi i16 [ %i.rb, %.lr.ph.i28.i99.i ], [ %i.qz, %_gcd.exit.i96.i ] ; 3 uses
  %i.rb = urem i16 %.09.i29.i100.i, %.068.i30.i101.i ; 2 uses
  %.not.i31.i102.i = icmp eq i16 %i.rb, 0
  br i1 %.not.i31.i102.i, label %_gcd.exit33.i103.i, label %.lr.ph.i28.i99.i, !llvm.loop !22

_gcd.exit33.i103.i:                               ; preds = %.lr.ph.i28.i99.i, %_gcd.exit.i96.i
  %.0.lcssa.i32.i104.i = phi i16 [ %.0.lcssa.i.i97.i, %_gcd.exit.i96.i ], [ %.068.i30.i101.i, %.lr.ph.i28.i99.i ] ; 2 uses
  %i.rc = icmp eq i16 %i.qq, %i.qu
  br i1 %i.rc, label %_grids_overlap_axis.exit111.thread.i, label %_grids_overlap_axis.exit111.i

_grids_overlap_axis.exit111.i:                    ; preds = %_gcd.exit33.i103.i
  %i.rd = icmp ugt i16 %i.qu, %i.qq               ; 3 uses
  %i.re = sub i16 %i.qq, %i.qu
  %i.rf = sub i16 %i.qu, %i.qq
  %.sink48.i106.i = select i1 %i.rd, i16 %i.rf, i16 %i.re
  %.sink.i107.i = select i1 %i.rd, i16 %i.qs, i16 %i.qy
  %.sink44.i108.i = select i1 %i.rd, i16 %i.qy, i16 %i.qs
  %i.rg = urem i16 %.sink48.i106.i, %.0.lcssa.i32.i104.i ; 2 uses
  %i.rh = icmp ult i16 %i.rg, %.sink.i107.i
  %3 = sub nuw i16 %.0.lcssa.i32.i104.i, %i.rg
  %i.ri = icmp ult i16 %3, %.sink44.i108.i
  %i.rj = select i1 %i.rh, i1 true, i1 %i.ri
  br i1 %i.rj, label %_grids_overlap_axis.exit111.thread.i, label %bb.ck

_grids_overlap_axis.exit111.thread.i:             ; preds = %_grids_overlap_axis.exit111.i, %_gcd.exit33.i103.i
  store i8 1, ptr %i.og, align 2
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ot, i64 42
  store i8 1, ptr %i.rk, align 2
  %.pre132.i = load i32, ptr %i.gr, align 8       ; 2 uses
  br label %bb.ck

bb.ck:                                            ; preds = %_grids_overlap_axis.exit111.thread.i, %_grids_overlap_axis.exit111.i, %_grids_overlap_axis.exit90.i, %_grids_overlap_axis.exit.i, %bb.ci
  %i.rl = phi i32 [ %i.oq, %bb.ci ], [ %.pre132.i, %_grids_overlap_axis.exit111.thread.i ], [ %i.oq, %_grids_overlap_axis.exit111.i ], [ %i.oq, %_grids_overlap_axis.exit90.i ], [ %i.oq, %_grids_overlap_axis.exit.i ] ; 2 uses
  %i.rm = phi i32 [ %i.or, %bb.ci ], [ %.pre132.i, %_grids_overlap_axis.exit111.thread.i ], [ %i.or, %_grids_overlap_axis.exit111.i ], [ %i.or, %_grids_overlap_axis.exit90.i ], [ %i.or, %_grids_overlap_axis.exit.i ] ; 2 uses
  %indvars.iv.next127.i = add nuw nsw i64 %indvars.iv126.i, 1 ; 2 uses
  %i.rn = trunc nuw i64 %indvars.iv.next127.i to i32
  %i.ro = icmp sgt i32 %i.rm, %i.rn
  br i1 %i.ro, label %bb.cg, label %._crit_edge.i65, !llvm.loop !24

._crit_edge.i65:                                  ; preds = %bb.ck, %bb.cg
  %i.rp = phi i32 [ %i.oq, %bb.cg ], [ %i.rl, %bb.ck ] ; 2 uses
  %.pre133.i = sext i32 %i.rp to i64
  %i.rq = icmp slt i64 %indvars.iv.next130.i, %.pre133.i
  %indvars.iv.next125.i = add nuw nsw i64 %indvars.iv124.i, 1
  br i1 %i.rq, label %.lr.ph121.i, label %.thread.i, !llvm.loop !25

.thread.i:                                        ; preds = %._crit_edge.i65, %.lr.ph121.i, %bb.ac, %bb.al, %bb.ae, %bb.aa, %bb.w, %.preheader.i63, %._crit_edge140.i, %_build_placement_anchors.exit, %bb.bi, %bb.be, %bb.bc, %_validate_regions_config.exit
  %.080 = phi ptr [ %.1, %bb.bc ], [ %.1, %bb.be ], [ %.1, %bb.bi ], [ %.2, %bb.aa ], [ %.1, %_build_placement_anchors.exit ], [ %.1, %_validate_regions_config.exit ], [ %.1, %._crit_edge140.i ], [ %.1, %.preheader.i63 ], [ %.2, %bb.w ], [ %.2, %bb.ae ], [ %.3, %bb.al ], [ %.2, %bb.ac ], [ %.1, %.lr.ph121.i ], [ %.1, %._crit_edge.i65 ] ; 3 uses
  %.not48 = phi i1 [ false, %bb.bc ], [ false, %bb.be ], [ false, %bb.bi ], [ false, %bb.aa ], [ false, %_build_placement_anchors.exit ], [ true, %_validate_regions_config.exit ], [ true, %._crit_edge140.i ], [ true, %.preheader.i63 ], [ false, %bb.w ], [ false, %bb.ae ], [ false, %bb.al ], [ false, %bb.ac ], [ true, %.lr.ph121.i ], [ true, %._crit_edge.i65 ]
  %.not120.i = icmp eq ptr %.080, null
  br i1 %.not120.i, label %_validate_config.exit, label %bb.cl

bb.cl:                                            ; preds = %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  %i.rr = call ptr @hostlist_ranged_string_xmalloc(ptr noundef nonnull %.080) #10 ; 2 uses
  store ptr %i.rr, ptr %i.i, align 8
  call void (ptr, ...) @warning(ptr noundef nonnull @.str.11, ptr noundef %i.rr) #10
  call void @slurm_xfree(ptr noundef nonnull %i.i) #10
  call void @hostlist_destroy(ptr noundef nonnull %.080) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  br label %_validate_config.exit

_validate_config.exit:                            ; preds = %.thread.i, %bb.cl
  br i1 %.not48, label %.preheader87, label %_validate_config.exit.thread

.preheader87:                                     ; preds = %_validate_config.exit
  %.not211 = icmp eq i64 %indvars.iv319, 0
  br i1 %.not211, label %._crit_edge, label %.lr.ph

_validate_config.exit.thread:                     ; preds = %_validate_config.exit, %bb.as, %bb.aq, %bb.g, %bb.n, %bb.p, %bb.j
  %i.rs = load ptr, ptr %i.y, align 8
  %i.rt = getelementptr inbounds nuw [56 x i8], ptr %i.rs, i64 %indvars.iv319
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  %i.rv = load ptr, ptr %i.ru, align 8
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.2, ptr noundef %i.rv) #9
  unreachable

bb.cm:                                            ; preds = %bb.co
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv319
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.cm, %.preheader87
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1 ; 2 uses
  %i.rw = load i32, ptr %i.p, align 8             ; 3 uses
  %i.rx = sext i32 %i.rw to i64
  %i.ry = icmp slt i64 %indvars.iv.next320, %i.rx
  br i1 %i.ry, label %bb.e, label %.preheader, !llvm.loop !27

.lr.ph:                                           ; preds = %.preheader87, %bb.cm
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.cm ], [ 0, %.preheader87 ] ; 4 uses
  %i.rz = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.sa = getelementptr inbounds nuw [56 x i8], ptr %i.rz, i64 %indvars.iv319
  %i.sb = load ptr, ptr %i.sa, align 8
  %i.sc = getelementptr inbounds nuw [56 x i8], ptr %i.rz, i64 %indvars.iv
  %i.sd = load ptr, ptr %i.sc, align 8
  %i.se = call i32 @xstrcmp(ptr noundef %i.sb, ptr noundef %i.sd) #10
  %.not49 = icmp eq i32 %i.se, 0
  %i.sf = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.sg = getelementptr inbounds nuw [56 x i8], ptr %i.sf, i64 %indvars.iv319 ; 2 uses
  br i1 %.not49, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.lr.ph
  %i.sh = load ptr, ptr %i.sg, align 8
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.3, ptr noundef %i.sh) #9
  unreachable

bb.co:                                            ; preds = %.lr.ph
  %i.si = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  %i.sj = load ptr, ptr %i.si, align 8
  %i.sk = getelementptr inbounds nuw [56 x i8], ptr %i.sf, i64 %indvars.iv
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  %i.sm = load ptr, ptr %i.sl, align 8
  %i.sn = call i32 @bit_overlap_any(ptr noundef %i.sj, ptr noundef %i.sm) #10
  %.not50 = icmp eq i32 %i.sn, 0
  br i1 %.not50, label %bb.cm, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.so = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.sp = getelementptr inbounds nuw [56 x i8], ptr %i.so, i64 %indvars.iv319
  %i.sq = load ptr, ptr %i.sp, align 8
  %i.sr = getelementptr inbounds nuw [56 x i8], ptr %i.so, i64 %indvars.iv
  %i.ss = load ptr, ptr %i.sr, align 8
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.4, ptr noundef %i.sq, ptr noundef %i.ss) #9
  unreachable

._crit_edge209:                                   ; preds = %bb.de
  %i.st = icmp sgt i32 %.pr, 0
  %i.su = load ptr, ptr %i.s, align 8             ; 2 uses
  %.not22.i = icmp ne ptr %i.su, null
  %or.cond = and i1 %i.st, %.not22.i
  br i1 %or.cond, label %.lr.ph30.i, label %_log_toruses.exit

.lr.ph30.i:                                       ; preds = %._crit_edge209, %._crit_edge.i54
  %.01829.i = phi i32 [ %i.uy, %._crit_edge.i54 ], [ 0, %._crit_edge209 ] ; 2 uses
  %.01928.i = phi ptr [ %i.uz, %._crit_edge.i54 ], [ %i.su, %._crit_edge209 ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  %i.sv = getelementptr inbounds nuw i8, ptr %.01928.i, i64 16
  %i.sw = load ptr, ptr %i.sv, align 8
  %i.sx = call ptr @bitmap2node_name(ptr noundef %i.sw) #10
  store ptr %i.sx, ptr %i.h, align 8
  %i.sy = call i32 @get_log_level() #10
  %i.sz = icmp sgt i32 %i.sy, 4
  br i1 %i.sz, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.lr.ph30.i
  %i.ta = load ptr, ptr %.01928.i, align 8
  %i.tb = getelementptr inbounds nuw i8, ptr %.01928.i, i64 48
  %i.tc = load i16, ptr %i.tb, align 8
  %i.td = zext i16 %i.tc to i32
  %i.te = getelementptr inbounds nuw i8, ptr %.01928.i, i64 50
  %i.tf = load i16, ptr %i.te, align 2
  %i.tg = zext i16 %i.tf to i32
  %i.th = getelementptr inbounds nuw i8, ptr %.01928.i, i64 52
  %i.ti = load i16, ptr %i.th, align 4
  %i.tj = zext i16 %i.ti to i32
  %i.tk = load ptr, ptr %i.h, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.23, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._log_toruses, i32 noundef %.01829.i, ptr noundef %i.ta, i32 noundef %i.td, i32 noundef %i.tg, i32 noundef %i.tj, ptr noundef %i.tk) #10
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.lr.ph30.i
  call void @slurm_xfree(ptr noundef nonnull %i.h) #10
  %i.tl = getelementptr inbounds nuw i8, ptr %.01928.i, i64 8 ; 2 uses
  %i.tm = load i32, ptr %i.tl, align 8
  %.not.i.i53 = icmp eq i32 %i.tm, 0
  br i1 %.not.i.i53, label %_log_node_coordinates.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cr
  %i.tn = getelementptr inbounds nuw i8, ptr %.01928.i, i64 48
  %i.to = getelementptr inbounds nuw i8, ptr %.01928.i, i64 50
  %i.tp = getelementptr inbounds nuw i8, ptr %.01928.i, i64 24 ; 2 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cx, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.cx ] ; 4 uses
  %i.tq = load i16, ptr %i.tn, align 8
  %i.tr = zext i16 %i.tq to i32                   ; 3 uses
  %i.ts = trunc nuw i64 %indvars.iv.i.i to i32    ; 3 uses
  %i.tt = urem i32 %i.ts, %i.tr                   ; 2 uses
  %i.tu = udiv i32 %i.ts, %i.tr
  %i.tv = load i16, ptr %i.to, align 2
  %i.tw = zext i16 %i.tv to i32                   ; 2 uses
  %i.tx = urem i32 %i.tu, %i.tw                   ; 2 uses
  %i.ty = mul nuw i32 %i.tw, %i.tr
  %i.tz = udiv i32 %i.ts, %i.ty                   ; 2 uses
  %i.ua = load ptr, ptr %i.tp, align 8
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %indvars.iv.i.i
  %i.uc = load i32, ptr %i.ub, align 4
  %i.ud = icmp eq i32 %i.uc, -2
  %i.ue = call i32 @get_log_level() #10
  %i.uf = icmp sgt i32 %i.ue, 4                   ; 2 uses
  br i1 %i.ud, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  br i1 %i.uf, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  %i.ug = and i32 %i.tz, 65535
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.24, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._log_node_coordinates, i32 noundef %i.tt, i32 noundef %i.tx, i32 noundef %i.ug) #10
  br label %bb.cx

bb.cv:                                            ; preds = %bb.cs
  br i1 %i.uf, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.uh = and i32 %i.tz, 65535
  %i.ui = load ptr, ptr @node_record_table_ptr, align 8
  %i.uj = load ptr, ptr %i.tp, align 8
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %indvars.iv.i.i
  %i.ul = load i32, ptr %i.uk, align 4
  %i.um = zext i32 %i.ul to i64
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.ui, i64 %i.um
  %i.uo = load ptr, ptr %i.un, align 8
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 280
  %i.uq = load ptr, ptr %i.up, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.25, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._log_node_coordinates, i32 noundef %i.tt, i32 noundef %i.tx, i32 noundef %i.uh, ptr noundef %i.uq) #10
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu, %bb.ct
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ur = load i32, ptr %i.tl, align 8
end_hunk_0
