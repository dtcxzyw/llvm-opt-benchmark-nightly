Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/torus3d_record?download=true
inline.NumInlined: 33
inline.NumDeleted: 15
begin_hunk_0_@torus3d_record_validate:bb.a

._crit_edge.i.us.us.i:                            ; preds = %._crit_edge.loopexit.i.us.us.i, %.lr.ph33.split.i.us.us.i
  %i.mh = phi i16 [ %.pre53.i.us.us.i, %._crit_edge.loopexit.i.us.us.i ], [ %i.lj, %.lr.ph33.split.i.us.us.i ] ; 4 uses
  %i.mi = phi i16 [ %i.me, %._crit_edge.loopexit.i.us.us.i ], [ %i.lk, %.lr.ph33.split.i.us.us.i ]
  %i.mj = phi i16 [ %i.me, %._crit_edge.loopexit.i.us.us.i ], [ 0, %.lr.ph33.split.i.us.us.i ]
  %indvars.iv.next48.i.us.us.i = add nuw nsw i32 %indvars.iv47.i.us.us.i, 1 ; 2 uses
  %i.mk = zext i16 %i.mh to i32
  %i.ml = icmp samesign ult i32 %indvars.iv.next48.i.us.us.i, %i.mk
  br i1 %i.ml, label %.lr.ph33.split.i.us.us.i, label %._crit_edge34.loopexit44.i.us.us.i, !llvm.loop !16

._crit_edge34.loopexit44.i.us.us.i:               ; preds = %._crit_edge.i.us.us.i
  %.pre54.i.us.us.i = load i16, ptr %i.hl, align 2
  br label %._crit_edge34.i.us.us.i

._crit_edge34.i.us.us.i:                          ; preds = %._crit_edge34.loopexit44.i.us.us.i, %.lr.ph33.i.us.us.i, %.lr.ph37.split.i.us.us.i
  %i.mm = phi i16 [ %.pre54.i.us.us.i, %._crit_edge34.loopexit44.i.us.us.i ], [ %i.lb, %.lr.ph37.split.i.us.us.i ], [ %i.lb, %.lr.ph33.i.us.us.i ] ; 2 uses
  %i.mn = phi i16 [ %i.mh, %._crit_edge34.loopexit44.i.us.us.i ], [ %i.lc, %.lr.ph37.split.i.us.us.i ], [ %i.lc, %.lr.ph33.i.us.us.i ]
  %i.mo = phi i16 [ %i.mh, %._crit_edge34.loopexit44.i.us.us.i ], [ 0, %.lr.ph37.split.i.us.us.i ], [ %i.ld, %.lr.ph33.i.us.us.i ]
  %indvars.iv.next51.i.us.us.i = add nuw nsw i32 %indvars.iv50.i.us.us.i, 1 ; 2 uses
  %i.mp = zext i16 %i.mm to i32
  %i.mq = icmp samesign ult i32 %indvars.iv.next51.i.us.us.i, %i.mp
  br i1 %i.mq, label %.lr.ph37.split.i.us.us.i, label %_build_anchor_bitmap.exit.us.us.i, !llvm.loop !18

_build_anchor_bitmap.exit.us.us.i:                ; preds = %._crit_edge34.i.us.us.i, %.lr.ph37.i.us.us.i, %bb.bz
  %i.mr = load ptr, ptr %i.hg, align 8
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.mr, i64 %indvars.iv85.i
  store ptr %i.kv, ptr %i.ms, align 8
  %i.mt = call i32 @bit_set_count(ptr noundef %i.kv) #10
  %i.mu = load ptr, ptr %i.kg, align 8
  %i.mv = getelementptr inbounds [4 x i8], ptr %i.mu, i64 %indvars.iv85.i
  store i32 %i.mt, ptr %i.mv, align 4
  %indvars.iv.next86.i = add nsw i64 %indvars.iv85.i, 1 ; 3 uses
  %indvars.iv.next.i69 = add nuw nsw i64 %indvars.iv.i68, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i69, %i.jw
  br i1 %exitcond.not.i, label %._crit_edge.us.us.i, label %bb.bz, !llvm.loop !19

._crit_edge.us.us.i:                              ; preds = %_build_anchor_bitmap.exit.us.us.i
  %indvars.iv.next89.i = add nuw nsw i64 %indvars.iv88.i, 1 ; 2 uses
  %exitcond92.not.i = icmp eq i64 %indvars.iv.next89.i, %i.jt
  br i1 %exitcond92.not.i, label %._crit_edge73.split.us.us.i, label %.preheader.us.us.i, !llvm.loop !20

._crit_edge73.split.us.us.i:                      ; preds = %._crit_edge.us.us.i
  %indvars.iv.next94.i = add nuw nsw i64 %indvars.iv93.i, 1 ; 2 uses
  %exitcond97.not.i = icmp eq i64 %indvars.iv.next94.i, %i.jr
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
  %.pre.i = load ptr, ptr %i.gw, align 8
  br label %._crit_edge140.i

._crit_edge140.i:                                 ; preds = %._crit_edge140.loopexit.i, %.._crit_edge140_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre160.i, %.._crit_edge140_crit_edge.i ], [ %i.hb, %._crit_edge140.loopexit.i ]
  %i.mw = phi ptr [ %i.gv, %.._crit_edge140_crit_edge.i ], [ %.pre.i, %._crit_edge140.loopexit.i ]
  call void @qsort(ptr noundef %i.mw, i64 noundef %.pre-phi.i, i64 noundef 80, ptr noundef nonnull @_placement_cmp) #10
  %i.mx = load i32, ptr %i.gt, align 8            ; 2 uses
  %i.my = icmp sgt i32 %i.mx, 0
  br i1 %i.my, label %.lr.ph.i58, label %.thread.i

.preheader.i63:                                   ; preds = %bb.cf
  %i.mz = icmp sgt i32 %i.nz, 0
  br i1 %i.mz, label %.lr.ph119.i, label %.thread.i

.lr.ph.i58:                                       ; preds = %._crit_edge140.i, %bb.cf
  %i.na = phi i32 [ %i.nz, %bb.cf ], [ %i.mx, %._crit_edge140.i ]
  %indvars.iv.i59 = phi i64 [ %indvars.iv.next.i62, %bb.cf ], [ 0, %._crit_edge140.i ] ; 2 uses
  %i.nb = load ptr, ptr %i.gw, align 8
  %i.nc = getelementptr inbounds nuw [80 x i8], ptr %i.nb, i64 %indvars.iv.i59 ; 7 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 30
  %i.ne = load i16, ptr %i.nd, align 2            ; 2 uses
  %i.nf = load i16, ptr %i.bd, align 8            ; 2 uses
  %.not7.i.i = icmp eq i16 %i.nf, 0
  br i1 %.not7.i.i, label %_gcd.exit.i, label %.lr.ph.i.i60

.lr.ph.i.i60:                                     ; preds = %.lr.ph.i58, %.lr.ph.i.i60
  %.09.i.i = phi i16 [ %.068.i.i, %.lr.ph.i.i60 ], [ %i.ne, %.lr.ph.i58 ]
  %.068.i.i = phi i16 [ %i.ng, %.lr.ph.i.i60 ], [ %i.nf, %.lr.ph.i58 ] ; 3 uses
  %i.ng = urem i16 %.09.i.i, %.068.i.i            ; 2 uses
  %.not.i.i61 = icmp eq i16 %i.ng, 0
  br i1 %.not.i.i61, label %_gcd.exit.i, label %.lr.ph.i.i60, !llvm.loop !22

_gcd.exit.i:                                      ; preds = %.lr.ph.i.i60, %.lr.ph.i58
  %.0.lcssa.i.i = phi i16 [ %i.ne, %.lr.ph.i58 ], [ %.068.i.i, %.lr.ph.i.i60 ]
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nc, i64 36
  %i.ni = load i16, ptr %i.nh, align 4
  %i.nj = icmp ult i16 %.0.lcssa.i.i, %i.ni
  br i1 %i.nj, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %_gcd.exit.i
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nc, i64 32
  %i.nl = load i16, ptr %i.nk, align 4            ; 2 uses
  %i.nm = load i16, ptr %i.bf, align 2            ; 2 uses
  %.not7.i56.i = icmp eq i16 %i.nm, 0
  br i1 %.not7.i56.i, label %_gcd.exit62.i, label %.lr.ph.i57.i

.lr.ph.i57.i:                                     ; preds = %bb.cc, %.lr.ph.i57.i
  %.09.i58.i = phi i16 [ %.068.i59.i, %.lr.ph.i57.i ], [ %i.nl, %bb.cc ]
  %.068.i59.i = phi i16 [ %i.nn, %.lr.ph.i57.i ], [ %i.nm, %bb.cc ] ; 3 uses
  %i.nn = urem i16 %.09.i58.i, %.068.i59.i        ; 2 uses
  %.not.i60.i = icmp eq i16 %i.nn, 0
  br i1 %.not.i60.i, label %_gcd.exit62.i, label %.lr.ph.i57.i, !llvm.loop !22

_gcd.exit62.i:                                    ; preds = %.lr.ph.i57.i, %bb.cc
  %.0.lcssa.i61.i = phi i16 [ %i.nl, %bb.cc ], [ %.068.i59.i, %.lr.ph.i57.i ]
  %i.no = getelementptr inbounds nuw i8, ptr %i.nc, i64 38
  %i.np = load i16, ptr %i.no, align 2
  %i.nq = icmp ult i16 %.0.lcssa.i61.i, %i.np
  br i1 %i.nq, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %_gcd.exit62.i
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nc, i64 34
  %i.ns = load i16, ptr %i.nr, align 2            ; 2 uses
  %i.nt = load i16, ptr %i.bh, align 4            ; 2 uses
  %.not7.i63.i = icmp eq i16 %i.nt, 0
  br i1 %.not7.i63.i, label %_gcd.exit69.i, label %.lr.ph.i64.i

.lr.ph.i64.i:                                     ; preds = %bb.cd, %.lr.ph.i64.i
  %.09.i65.i = phi i16 [ %.068.i66.i, %.lr.ph.i64.i ], [ %i.ns, %bb.cd ]
  %.068.i66.i = phi i16 [ %i.nu, %.lr.ph.i64.i ], [ %i.nt, %bb.cd ] ; 3 uses
  %i.nu = urem i16 %.09.i65.i, %.068.i66.i        ; 2 uses
  %.not.i67.i = icmp eq i16 %i.nu, 0
  br i1 %.not.i67.i, label %_gcd.exit69.i, label %.lr.ph.i64.i, !llvm.loop !22

_gcd.exit69.i:                                    ; preds = %.lr.ph.i64.i, %bb.cd
  %.0.lcssa.i68.i = phi i16 [ %i.ns, %bb.cd ], [ %.068.i66.i, %.lr.ph.i64.i ]
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nc, i64 40
  %i.nw = load i16, ptr %i.nv, align 4
  %i.nx = icmp ult i16 %.0.lcssa.i68.i, %i.nw
  br i1 %i.nx, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %_gcd.exit69.i, %_gcd.exit62.i, %_gcd.exit.i
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nc, i64 42
  store i8 1, ptr %i.ny, align 2
  %.pre.i66 = load i32, ptr %i.gt, align 8
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %_gcd.exit69.i
  %i.nz = phi i32 [ %.pre.i66, %bb.ce ], [ %i.na, %_gcd.exit69.i ] ; 4 uses
  %indvars.iv.next.i62 = add nuw nsw i64 %indvars.iv.i59, 1 ; 2 uses
  %i.oa = sext i32 %i.nz to i64
  %i.ob = icmp slt i64 %indvars.iv.next.i62, %i.oa
  br i1 %i.ob, label %.lr.ph.i58, label %.preheader.i63, !llvm.loop !23

.lr.ph119.i:                                      ; preds = %.preheader.i63, %._crit_edge.i65
  %i.oc = phi i32 [ %i.rr, %._crit_edge.i65 ], [ %i.nz, %.preheader.i63 ] ; 3 uses
  %indvars.iv127.i = phi i64 [ %indvars.iv.next128.i, %._crit_edge.i65 ], [ 0, %.preheader.i63 ] ; 2 uses
  %indvars.iv122.i = phi i64 [ %indvars.iv.next123.i, %._crit_edge.i65 ], [ 1, %.preheader.i63 ] ; 2 uses
  %indvars.iv.next128.i = add nuw nsw i64 %indvars.iv127.i, 1 ; 3 uses
  %i.od = sext i32 %i.oc to i64
  %i.oe = icmp slt i64 %indvars.iv.next128.i, %i.od
  br i1 %i.oe, label %.lr.ph116.i, label %.thread.i

.lr.ph116.i:                                      ; preds = %.lr.ph119.i
  %i.of = load ptr, ptr %i.gw, align 8
  %i.og = getelementptr inbounds nuw [80 x i8], ptr %i.of, i64 %indvars.iv127.i ; 11 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 44
  %i.oi = getelementptr inbounds nuw i8, ptr %i.og, i64 42 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.og, i64 24
  %i.ok = getelementptr inbounds nuw i8, ptr %i.og, i64 30
  %i.ol = getelementptr inbounds nuw i8, ptr %i.og, i64 36
  %i.om = getelementptr inbounds nuw i8, ptr %i.og, i64 26
  %i.on = getelementptr inbounds nuw i8, ptr %i.og, i64 32
  %i.oo = getelementptr inbounds nuw i8, ptr %i.og, i64 38
  %i.op = getelementptr inbounds nuw i8, ptr %i.og, i64 28
  %i.oq = getelementptr inbounds nuw i8, ptr %i.og, i64 34
  %i.or = getelementptr inbounds nuw i8, ptr %i.og, i64 40
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ck, %.lr.ph116.i
  %i.os = phi i32 [ %i.oc, %.lr.ph116.i ], [ %i.rn, %bb.ck ] ; 5 uses
  %i.ot = phi i32 [ %i.oc, %.lr.ph116.i ], [ %i.ro, %bb.ck ] ; 4 uses
  %indvars.iv124.i = phi i64 [ %indvars.iv122.i, %.lr.ph116.i ], [ %indvars.iv.next125.i.a, %bb.ck ] ; 2 uses
  %i.ou = load ptr, ptr %i.gw, align 8
  %i.ov = getelementptr inbounds nuw [80 x i8], ptr %i.ou, i64 %indvars.iv124.i ; 12 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 44
  %i.ox = load i32, ptr %i.ow, align 4
  %i.oy = load i32, ptr %i.oh, align 4
  %.not.i64 = icmp eq i32 %i.ox, %i.oy
  br i1 %.not.i64, label %bb.ch, label %._crit_edge.i65

bb.ch:                                            ; preds = %bb.cg
  %i.oz = load i8, ptr %i.oi, align 2, !range !24, !noundef !25
  %i.pa = trunc nuw i8 %i.oz to i1
  br i1 %i.pa, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ov, i64 42
  %i.pc = load i8, ptr %i.pb, align 2, !range !24, !noundef !25
  %i.pd = trunc nuw i8 %i.pc to i1
  br i1 %i.pd, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.pe = load i16, ptr %i.oj, align 8            ; 3 uses
  %i.pf = load i16, ptr %i.ok, align 2            ; 2 uses
  %i.pg = load i16, ptr %i.ol, align 4            ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ov, i64 24
  %i.pi = load i16, ptr %i.ph, align 8            ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ov, i64 30
  %i.pk = load i16, ptr %i.pj, align 2            ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ov, i64 36
  %i.pm = load i16, ptr %i.pl, align 4            ; 2 uses
  %i.pn = load i16, ptr %i.bd, align 8            ; 2 uses
  %.not7.i.i.i = icmp eq i16 %i.pk, 0
  br i1 %.not7.i.i.i, label %_gcd.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cj, %.lr.ph.i.i.i
  %.09.i.i.i = phi i16 [ %.068.i.i.i, %.lr.ph.i.i.i ], [ %i.pf, %bb.cj ]
  %.068.i.i.i = phi i16 [ %i.po, %.lr.ph.i.i.i ], [ %i.pk, %bb.cj ] ; 3 uses
  %i.po = urem i16 %.09.i.i.i, %.068.i.i.i        ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.po, 0
  br i1 %.not.i.i.i, label %_gcd.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !22

_gcd.exit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.cj
  %.0.lcssa.i.i.i = phi i16 [ %i.pf, %bb.cj ], [ %.068.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.not7.i27.i.i = icmp eq i16 %i.pn, 0
  br i1 %.not7.i27.i.i, label %_gcd.exit33.i.i, label %.lr.ph.i28.i.i

.lr.ph.i28.i.i:                                   ; preds = %_gcd.exit.i.i, %.lr.ph.i28.i.i
  %.09.i29.i.i = phi i16 [ %.068.i30.i.i, %.lr.ph.i28.i.i ], [ %.0.lcssa.i.i.i, %_gcd.exit.i.i ]
  %.068.i30.i.i = phi i16 [ %i.pp, %.lr.ph.i28.i.i ], [ %i.pn, %_gcd.exit.i.i ] ; 3 uses
  %i.pp = urem i16 %.09.i29.i.i, %.068.i30.i.i    ; 2 uses
  %.not.i31.i.i = icmp eq i16 %i.pp, 0
  br i1 %.not.i31.i.i, label %_gcd.exit33.i.i, label %.lr.ph.i28.i.i, !llvm.loop !22

_gcd.exit33.i.i:                                  ; preds = %.lr.ph.i28.i.i, %_gcd.exit.i.i
  %.0.lcssa.i32.i.i = phi i16 [ %.0.lcssa.i.i.i, %_gcd.exit.i.i ], [ %.068.i30.i.i, %.lr.ph.i28.i.i ]
  %i.pq = icmp eq i16 %i.pe, %i.pi
  br i1 %i.pq, label %_grids_overlap_axis.exit.thread.i, label %_grids_overlap_axis.exit.i

_grids_overlap_axis.exit.i:                       ; preds = %_gcd.exit33.i.i
  %1 = zext i16 %i.pi to i32                      ; 2 uses
  %2 = zext i16 %i.pe to i32                      ; 2 uses
  %i.pr = icmp ugt i16 %i.pi, %i.pe               ; 3 uses
  %i.ps = zext i16 %.0.lcssa.i32.i.i to i32       ; 2 uses
  %3 = sub nsw i32 %2, %1
  %4 = sub nsw i32 %1, %2
  %.sink46.i.i = select i1 %i.pr, i32 %4, i32 %3
  %.sink.i.i.a = select i1 %i.pr, i16 %i.pg, i16 %i.pm
  %.sink41.i.i = select i1 %i.pr, i16 %i.pm, i16 %i.pg
  %5 = srem i32 %.sink46.i.i, %i.ps
  %6 = and i32 %5, 65535                          ; 2 uses
  %i.pt = zext i16 %.sink.i.i.a to i32
  %i.pu = icmp samesign ult i32 %6, %i.pt
  %i.pv = sub nsw i32 %i.ps, %6
  %i.pw = zext i16 %.sink41.i.i to i32
  %7 = icmp slt i32 %i.pv, %i.pw
  %i.px = select i1 %i.pu, i1 true, i1 %7
  br i1 %i.px, label %_grids_overlap_axis.exit.thread.i, label %bb.ck

_grids_overlap_axis.exit.thread.i:                ; preds = %_grids_overlap_axis.exit.i, %_gcd.exit33.i.i
  %i.py = load i16, ptr %i.om, align 2            ; 3 uses
  %i.pz = load i16, ptr %i.on, align 8            ; 2 uses
  %i.qa = load i16, ptr %i.oo, align 2            ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ov, i64 26
  %i.qc = load i16, ptr %i.qb, align 2            ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ov, i64 32
  %i.qe = load i16, ptr %i.qd, align 8            ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ov, i64 38
  %i.qg = load i16, ptr %i.qf, align 2            ; 2 uses
  %i.qh = load i16, ptr %i.bf, align 2            ; 2 uses
  %.not7.i.i70.i = icmp eq i16 %i.qe, 0
  br i1 %.not7.i.i70.i, label %_gcd.exit.i75.i, label %.lr.ph.i.i71.i

.lr.ph.i.i71.i:                                   ; preds = %_grids_overlap_axis.exit.thread.i, %.lr.ph.i.i71.i
  %.09.i.i72.i = phi i16 [ %.068.i.i73.i, %.lr.ph.i.i71.i ], [ %i.pz, %_grids_overlap_axis.exit.thread.i ]
  %.068.i.i73.i = phi i16 [ %i.qi, %.lr.ph.i.i71.i ], [ %i.qe, %_grids_overlap_axis.exit.thread.i ] ; 3 uses
  %i.qi = urem i16 %.09.i.i72.i, %.068.i.i73.i    ; 2 uses
  %.not.i.i74.i = icmp eq i16 %i.qi, 0
  br i1 %.not.i.i74.i, label %_gcd.exit.i75.i, label %.lr.ph.i.i71.i, !llvm.loop !22

_gcd.exit.i75.i:                                  ; preds = %.lr.ph.i.i71.i, %_grids_overlap_axis.exit.thread.i
  %.0.lcssa.i.i76.i = phi i16 [ %i.pz, %_grids_overlap_axis.exit.thread.i ], [ %.068.i.i73.i, %.lr.ph.i.i71.i ] ; 2 uses
  %.not7.i27.i77.i = icmp eq i16 %i.qh, 0
  br i1 %.not7.i27.i77.i, label %_gcd.exit33.i82.i, label %.lr.ph.i28.i78.i

.lr.ph.i28.i78.i:                                 ; preds = %_gcd.exit.i75.i, %.lr.ph.i28.i78.i
  %.09.i29.i79.i = phi i16 [ %.068.i30.i80.i, %.lr.ph.i28.i78.i ], [ %.0.lcssa.i.i76.i, %_gcd.exit.i75.i ]
  %.068.i30.i80.i = phi i16 [ %i.qj, %.lr.ph.i28.i78.i ], [ %i.qh, %_gcd.exit.i75.i ] ; 3 uses
  %i.qj = urem i16 %.09.i29.i79.i, %.068.i30.i80.i ; 2 uses
  %.not.i31.i81.i = icmp eq i16 %i.qj, 0
  br i1 %.not.i31.i81.i, label %_gcd.exit33.i82.i, label %.lr.ph.i28.i78.i, !llvm.loop !22

_gcd.exit33.i82.i:                                ; preds = %.lr.ph.i28.i78.i, %_gcd.exit.i75.i
  %.0.lcssa.i32.i83.i = phi i16 [ %.0.lcssa.i.i76.i, %_gcd.exit.i75.i ], [ %.068.i30.i80.i, %.lr.ph.i28.i78.i ]
  %i.qk = icmp eq i16 %i.py, %i.qc
  br i1 %i.qk, label %_grids_overlap_axis.exit89.thread.i, label %_grids_overlap_axis.exit89.i

_grids_overlap_axis.exit89.i:                     ; preds = %_gcd.exit33.i82.i
  %8 = zext i16 %i.qc to i32                      ; 2 uses
  %9 = zext i16 %i.py to i32                      ; 2 uses
  %i.ql = icmp ugt i16 %i.qc, %i.py               ; 3 uses
  %i.qm = zext i16 %.0.lcssa.i32.i83.i to i32     ; 2 uses
  %10 = sub nsw i32 %9, %8
  %11 = sub nsw i32 %8, %9
  %.sink46.i85.i = select i1 %i.ql, i32 %11, i32 %10
  %.sink.i86.i.a = select i1 %i.ql, i16 %i.qa, i16 %i.qg
  %.sink41.i87.i = select i1 %i.ql, i16 %i.qg, i16 %i.qa
  %12 = srem i32 %.sink46.i85.i, %i.qm
  %13 = and i32 %12, 65535                        ; 2 uses
  %i.qn = zext i16 %.sink.i86.i.a to i32
  %i.qo = icmp samesign ult i32 %13, %i.qn
  %i.qp = sub nsw i32 %i.qm, %13
  %i.qq = zext i16 %.sink41.i87.i to i32
  %14 = icmp slt i32 %i.qp, %i.qq
  %i.qr = select i1 %i.qo, i1 true, i1 %14
  br i1 %i.qr, label %_grids_overlap_axis.exit89.thread.i, label %bb.ck

_grids_overlap_axis.exit89.thread.i:              ; preds = %_grids_overlap_axis.exit89.i, %_gcd.exit33.i82.i
  %i.qs = load i16, ptr %i.op, align 4            ; 3 uses
  %i.qt = load i16, ptr %i.oq, align 2            ; 2 uses
  %i.qu = load i16, ptr %i.or, align 8            ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ov, i64 28
  %i.qw = load i16, ptr %i.qv, align 4            ; 3 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.ov, i64 34
  %i.qy = load i16, ptr %i.qx, align 2            ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.ov, i64 40
  %i.ra = load i16, ptr %i.qz, align 8            ; 2 uses
  %i.rb = load i16, ptr %i.bh, align 4            ; 2 uses
  %.not7.i.i90.i = icmp eq i16 %i.qy, 0
  br i1 %.not7.i.i90.i, label %_gcd.exit.i95.i, label %.lr.ph.i.i91.i

.lr.ph.i.i91.i:                                   ; preds = %_grids_overlap_axis.exit89.thread.i, %.lr.ph.i.i91.i
  %.09.i.i92.i = phi i16 [ %.068.i.i93.i, %.lr.ph.i.i91.i ], [ %i.qt, %_grids_overlap_axis.exit89.thread.i ]
  %.068.i.i93.i = phi i16 [ %i.rc, %.lr.ph.i.i91.i ], [ %i.qy, %_grids_overlap_axis.exit89.thread.i ] ; 3 uses
  %i.rc = urem i16 %.09.i.i92.i, %.068.i.i93.i    ; 2 uses
  %.not.i.i94.i = icmp eq i16 %i.rc, 0
  br i1 %.not.i.i94.i, label %_gcd.exit.i95.i, label %.lr.ph.i.i91.i, !llvm.loop !22

_gcd.exit.i95.i:                                  ; preds = %.lr.ph.i.i91.i, %_grids_overlap_axis.exit89.thread.i
  %.0.lcssa.i.i96.i = phi i16 [ %i.qt, %_grids_overlap_axis.exit89.thread.i ], [ %.068.i.i93.i, %.lr.ph.i.i91.i ] ; 2 uses
  %.not7.i27.i97.i = icmp eq i16 %i.rb, 0
  br i1 %.not7.i27.i97.i, label %_gcd.exit33.i102.i, label %.lr.ph.i28.i98.i

.lr.ph.i28.i98.i:                                 ; preds = %_gcd.exit.i95.i, %.lr.ph.i28.i98.i
  %.09.i29.i99.i = phi i16 [ %.068.i30.i100.i, %.lr.ph.i28.i98.i ], [ %.0.lcssa.i.i96.i, %_gcd.exit.i95.i ]
  %.068.i30.i100.i = phi i16 [ %i.rd, %.lr.ph.i28.i98.i ], [ %i.rb, %_gcd.exit.i95.i ] ; 3 uses
  %i.rd = urem i16 %.09.i29.i99.i, %.068.i30.i100.i ; 2 uses
  %.not.i31.i101.i = icmp eq i16 %i.rd, 0
  br i1 %.not.i31.i101.i, label %_gcd.exit33.i102.i, label %.lr.ph.i28.i98.i, !llvm.loop !22

_gcd.exit33.i102.i:                               ; preds = %.lr.ph.i28.i98.i, %_gcd.exit.i95.i
  %.0.lcssa.i32.i103.i = phi i16 [ %.0.lcssa.i.i96.i, %_gcd.exit.i95.i ], [ %.068.i30.i100.i, %.lr.ph.i28.i98.i ]
  %i.re = icmp eq i16 %i.qs, %i.qw
  br i1 %i.re, label %_grids_overlap_axis.exit109.thread.i, label %_grids_overlap_axis.exit109.i

_grids_overlap_axis.exit109.i:                    ; preds = %_gcd.exit33.i102.i
  %15 = zext i16 %i.qw to i32                     ; 2 uses
  %16 = zext i16 %i.qs to i32                     ; 2 uses
  %i.rf = icmp ugt i16 %i.qw, %i.qs               ; 3 uses
  %i.rg = zext i16 %.0.lcssa.i32.i103.i to i32    ; 2 uses
  %17 = sub nsw i32 %16, %15
  %18 = sub nsw i32 %15, %16
  %.sink46.i105.i = select i1 %i.rf, i32 %18, i32 %17
  %.sink.i106.i = select i1 %i.rf, i16 %i.qu, i16 %i.ra
  %.sink41.i107.i = select i1 %i.rf, i16 %i.ra, i16 %i.qu
  %19 = srem i32 %.sink46.i105.i, %i.rg
  %20 = and i32 %19, 65535                        ; 2 uses
  %i.rh = zext i16 %.sink.i106.i to i32
  %i.ri = icmp samesign ult i32 %20, %i.rh
  %i.rj = sub nsw i32 %i.rg, %20
  %i.rk = zext i16 %.sink41.i107.i to i32
  %21 = icmp slt i32 %i.rj, %i.rk
  %i.rl = select i1 %i.ri, i1 true, i1 %21
  br i1 %i.rl, label %_grids_overlap_axis.exit109.thread.i, label %bb.ck

_grids_overlap_axis.exit109.thread.i:             ; preds = %_grids_overlap_axis.exit109.i, %_gcd.exit33.i102.i
  store i8 1, ptr %i.oi, align 2
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ov, i64 42
  store i8 1, ptr %i.rm, align 2
  %.pre130.i = load i32, ptr %i.gt, align 8       ; 2 uses
  br label %bb.ck

bb.ck:                                            ; preds = %_grids_overlap_axis.exit109.thread.i, %_grids_overlap_axis.exit109.i, %_grids_overlap_axis.exit89.i, %_grids_overlap_axis.exit.i, %bb.ci
  %i.rn = phi i32 [ %i.os, %bb.ci ], [ %.pre130.i, %_grids_overlap_axis.exit109.thread.i ], [ %i.os, %_grids_overlap_axis.exit109.i ], [ %i.os, %_grids_overlap_axis.exit89.i ], [ %i.os, %_grids_overlap_axis.exit.i ] ; 2 uses
  %i.ro = phi i32 [ %i.ot, %bb.ci ], [ %.pre130.i, %_grids_overlap_axis.exit109.thread.i ], [ %i.ot, %_grids_overlap_axis.exit109.i ], [ %i.ot, %_grids_overlap_axis.exit89.i ], [ %i.ot, %_grids_overlap_axis.exit.i ] ; 2 uses
  %indvars.iv.next125.i.a = add nuw nsw i64 %indvars.iv124.i, 1 ; 2 uses
  %i.rp = trunc nuw i64 %indvars.iv.next125.i.a to i32
  %i.rq = icmp sgt i32 %i.ro, %i.rp
  br i1 %i.rq, label %bb.cg, label %._crit_edge.i65, !llvm.loop !26

._crit_edge.i65:                                  ; preds = %bb.ck, %bb.cg
  %i.rr = phi i32 [ %i.os, %bb.cg ], [ %i.rn, %bb.ck ] ; 2 uses
  %.pre131.i = sext i32 %i.rr to i64
  %i.rs = icmp slt i64 %indvars.iv.next128.i, %.pre131.i
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 1
  br i1 %i.rs, label %.lr.ph119.i, label %.thread.i, !llvm.loop !27

.thread.i:                                        ; preds = %._crit_edge.i65, %.lr.ph119.i, %bb.ac, %bb.al, %bb.ae, %bb.aa, %bb.w, %.preheader.i63, %._crit_edge140.i, %_build_placement_anchors.exit, %bb.bi, %bb.be, %bb.bc, %_validate_regions_config.exit
  %.079 = phi ptr [ %.1, %bb.bc ], [ %.1, %bb.be ], [ %.1, %bb.bi ], [ %.2, %bb.aa ], [ %.1, %_build_placement_anchors.exit ], [ %.1, %_validate_regions_config.exit ], [ %.1, %._crit_edge140.i ], [ %.1, %.preheader.i63 ], [ %.2, %bb.w ], [ %.2, %bb.ae ], [ %.3, %bb.al ], [ %.2, %bb.ac ], [ %.1, %.lr.ph119.i ], [ %.1, %._crit_edge.i65 ] ; 3 uses
  %.not48 = phi i1 [ false, %bb.bc ], [ false, %bb.be ], [ false, %bb.bi ], [ false, %bb.aa ], [ false, %_build_placement_anchors.exit ], [ true, %_validate_regions_config.exit ], [ true, %._crit_edge140.i ], [ true, %.preheader.i63 ], [ false, %bb.w ], [ false, %bb.ae ], [ false, %bb.al ], [ false, %bb.ac ], [ true, %.lr.ph119.i ], [ true, %._crit_edge.i65 ]
  %.not120.i = icmp eq ptr %.079, null
  br i1 %.not120.i, label %_validate_config.exit, label %bb.cl

bb.cl:                                            ; preds = %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  %i.rt = call ptr @hostlist_ranged_string_xmalloc(ptr noundef nonnull %.079) #10 ; 2 uses
  store ptr %i.rt, ptr %i.i, align 8
  call void (ptr, ...) @warning(ptr noundef nonnull @.str.11, ptr noundef %i.rt) #10
  call void @slurm_xfree(ptr noundef nonnull %i.i) #10
  call void @hostlist_destroy(ptr noundef nonnull %.079) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  br label %_validate_config.exit

_validate_config.exit:                            ; preds = %.thread.i, %bb.cl
  br i1 %.not48, label %.preheader86, label %_validate_config.exit.thread

.preheader86:                                     ; preds = %_validate_config.exit
  %.not210 = icmp eq i64 %indvars.iv318, 0
  br i1 %.not210, label %._crit_edge, label %.lr.ph

_validate_config.exit.thread:                     ; preds = %_validate_config.exit, %bb.as, %bb.aq, %bb.g, %bb.n, %bb.p, %bb.j
  %i.ru = load ptr, ptr %i.y, align 8
  %i.rv = getelementptr inbounds nuw [56 x i8], ptr %i.ru, i64 %indvars.iv318
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.rx = load ptr, ptr %i.rw, align 8
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.2, ptr noundef %i.rx) #9
  unreachable

bb.cm:                                            ; preds = %bb.co
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv318
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.cm, %.preheader86
  %indvars.iv.next319 = add nuw nsw i64 %indvars.iv318, 1 ; 2 uses
  %i.ry = load i32, ptr %i.p, align 8             ; 3 uses
  %i.rz = sext i32 %i.ry to i64
  %i.sa = icmp slt i64 %indvars.iv.next319, %i.rz
  br i1 %i.sa, label %bb.e, label %.preheader, !llvm.loop !29

.lr.ph:                                           ; preds = %.preheader86, %bb.cm
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.cm ], [ 0, %.preheader86 ] ; 4 uses
  %i.sb = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.sc = getelementptr inbounds nuw [56 x i8], ptr %i.sb, i64 %indvars.iv318
  %i.sd = load ptr, ptr %i.sc, align 8
  %i.se = getelementptr inbounds nuw [56 x i8], ptr %i.sb, i64 %indvars.iv
  %i.sf = load ptr, ptr %i.se, align 8
  %i.sg = call i32 @xstrcmp(ptr noundef %i.sd, ptr noundef %i.sf) #10
  %.not49 = icmp eq i32 %i.sg, 0
  %i.sh = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.si = getelementptr inbounds nuw [56 x i8], ptr %i.sh, i64 %indvars.iv318 ; 2 uses
  br i1 %.not49, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.lr.ph
  %i.sj = load ptr, ptr %i.si, align 8
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.3, ptr noundef %i.sj) #9
  unreachable

bb.co:                                            ; preds = %.lr.ph
  %i.sk = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  %i.sl = load ptr, ptr %i.sk, align 8
  %i.sm = getelementptr inbounds nuw [56 x i8], ptr %i.sh, i64 %indvars.iv
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 16
  %i.so = load ptr, ptr %i.sn, align 8
  %i.sp = call i32 @bit_overlap_any(ptr noundef %i.sl, ptr noundef %i.so) #10
  %.not50 = icmp eq i32 %i.sp, 0
  br i1 %.not50, label %bb.cm, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.sq = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.sr = getelementptr inbounds nuw [56 x i8], ptr %i.sq, i64 %indvars.iv318
  %i.ss = load ptr, ptr %i.sr, align 8
  %i.st = getelementptr inbounds nuw [56 x i8], ptr %i.sq, i64 %indvars.iv
  %i.su = load ptr, ptr %i.st, align 8
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.4, ptr noundef %i.ss, ptr noundef %i.su) #9
  unreachable

._crit_edge208:                                   ; preds = %bb.de
  %i.sv = icmp sgt i32 %.pr, 0
  %i.sw = load ptr, ptr %i.s, align 8             ; 2 uses
  %.not22.i = icmp ne ptr %i.sw, null
  %or.cond = and i1 %i.sv, %.not22.i
  br i1 %or.cond, label %.lr.ph30.i, label %_log_toruses.exit

.lr.ph30.i:                                       ; preds = %._crit_edge208, %._crit_edge.i54
  %.01829.i = phi i32 [ %i.va, %._crit_edge.i54 ], [ 0, %._crit_edge208 ] ; 2 uses
  %.01928.i = phi ptr [ %i.vb, %._crit_edge.i54 ], [ %i.sw, %._crit_edge208 ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  %i.sx = getelementptr inbounds nuw i8, ptr %.01928.i, i64 16
  %i.sy = load ptr, ptr %i.sx, align 8
  %i.sz = call ptr @bitmap2node_name(ptr noundef %i.sy) #10
  store ptr %i.sz, ptr %i.h, align 8
  %i.ta = call i32 @get_log_level() #10
  %i.tb = icmp sgt i32 %i.ta, 4
  br i1 %i.tb, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.lr.ph30.i
  %i.tc = load ptr, ptr %.01928.i, align 8
  %i.td = getelementptr inbounds nuw i8, ptr %.01928.i, i64 48
  %i.te = load i16, ptr %i.td, align 8
  %i.tf = zext i16 %i.te to i32
  %i.tg = getelementptr inbounds nuw i8, ptr %.01928.i, i64 50
  %i.th = load i16, ptr %i.tg, align 2
  %i.ti = zext i16 %i.th to i32
  %i.tj = getelementptr inbounds nuw i8, ptr %.01928.i, i64 52
  %i.tk = load i16, ptr %i.tj, align 4
  %i.tl = zext i16 %i.tk to i32
  %i.tm = load ptr, ptr %i.h, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.23, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._log_toruses, i32 noundef %.01829.i, ptr noundef %i.tc, i32 noundef %i.tf, i32 noundef %i.ti, i32 noundef %i.tl, ptr noundef %i.tm) #10
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.lr.ph30.i
  call void @slurm_xfree(ptr noundef nonnull %i.h) #10
  %i.tn = getelementptr inbounds nuw i8, ptr %.01928.i, i64 8 ; 2 uses
  %i.to = load i32, ptr %i.tn, align 8
  %.not.i.i53 = icmp eq i32 %i.to, 0
  br i1 %.not.i.i53, label %_log_node_coordinates.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cr
  %i.tp = getelementptr inbounds nuw i8, ptr %.01928.i, i64 48
  %i.tq = getelementptr inbounds nuw i8, ptr %.01928.i, i64 50
  %i.tr = getelementptr inbounds nuw i8, ptr %.01928.i, i64 24 ; 2 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cx, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.cx ] ; 4 uses
  %i.ts = load i16, ptr %i.tp, align 8
  %i.tt = zext i16 %i.ts to i32                   ; 3 uses
  %i.tu = trunc nuw i64 %indvars.iv.i.i to i32    ; 3 uses
  %i.tv = urem i32 %i.tu, %i.tt                   ; 2 uses
  %i.tw = udiv i32 %i.tu, %i.tt
  %i.tx = load i16, ptr %i.tq, align 2
  %i.ty = zext i16 %i.tx to i32                   ; 2 uses
  %i.tz = urem i32 %i.tw, %i.ty                   ; 2 uses
  %i.ua = mul nuw i32 %i.ty, %i.tt
  %i.ub = udiv i32 %i.tu, %i.ua                   ; 2 uses
  %i.uc = load ptr, ptr %i.tr, align 8
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %indvars.iv.i.i
  %i.ue = load i32, ptr %i.ud, align 4
  %i.uf = icmp eq i32 %i.ue, -2
  %i.ug = call i32 @get_log_level() #10
  %i.uh = icmp sgt i32 %i.ug, 4                   ; 2 uses
  br i1 %i.uf, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  br i1 %i.uh, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  %i.ui = and i32 %i.ub, 65535
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.24, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._log_node_coordinates, i32 noundef %i.tv, i32 noundef %i.tz, i32 noundef %i.ui) #10
  br label %bb.cx

bb.cv:                                            ; preds = %bb.cs
  br i1 %i.uh, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.uj = and i32 %i.ub, 65535
  %i.uk = load ptr, ptr @node_record_table_ptr, align 8
  %i.ul = load ptr, ptr %i.tr, align 8
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %indvars.iv.i.i
  %i.un = load i32, ptr %i.um, align 4
  %i.uo = zext i32 %i.un to i64
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.uk, i64 %i.uo
  %i.uq = load ptr, ptr %i.up, align 8
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 280
  %i.us = load ptr, ptr %i.ur, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.25, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._log_node_coordinates, i32 noundef %i.tv, i32 noundef %i.tz, i32 noundef %i.uj, ptr noundef %i.us) #10
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu, %bb.ct
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ut = load i32, ptr %i.tn, align 8
  %i.uu = zext i32 %i.ut to i64
end_hunk_0
begin_hunk_1_@torus3d_record_update_torus_config:bb.a
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.preheader, %bb.f, %..thread_crit_edge.i.i
  %i.cc = phi i16 [ %.pre.i.i, %..thread_crit_edge.i.i ], [ %.pre284.i.i, %bb.f ], [ %.pre284.i.i, %.preheader ]
  %indvars124.i = trunc i64 %indvars.iv.next82.i to i16 ; 3 uses
  %i.cd = zext i16 %i.cc to i64
  %i.ce = icmp samesign ult i64 %.pre110.i, %i.cd
  br i1 %i.ce, label %.preheader179.us.i.i, label %.thread167.i.i

.preheader179.us.i.i:                             ; preds = %.thread.i.i, %..critedge.loopexit_crit_edge.us.i.i
  %indvars.iv88.i = phi i64 [ %indvars.iv.next89.i, %..critedge.loopexit_crit_edge.us.i.i ], [ %indvars.iv86.i, %.thread.i.i ] ; 4 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.j
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %indvars.iv81.i
  br i1 %exitcond.not.i.i, label %..critedge.loopexit_crit_edge.us.i.i, label %bb.i, !llvm.loop !38

bb.i:                                             ; preds = %bb.h, %.preheader179.us.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.i, %.preheader179.us.i.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 3 uses
  %i.cf = load i16, ptr %i.aj, align 8
  %i.cg = zext i16 %i.cf to i64
  %i.ch = load i16, ptr %i.ai, align 2
  %i.ci = zext i16 %i.ch to i64
  %i.cj = mul nuw nsw i64 %indvars.iv102.i, %i.ci
  %reass.add.i154.us.i.i = add nuw nsw i64 %i.cj, %indvars.iv88.i
  %reass.mul.i155.us.i.i = mul nuw nsw i64 %reass.add.i154.us.i.i, %i.cg
  %i.ck = add nuw nsw i64 %reass.mul.i155.us.i.i, %indvars.iv.i.i
  %i.cl = load ptr, ptr %i.ak, align 8
  %i.cm = and i64 %i.ck, 4294967295               ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = icmp eq i32 %i.co, -2
  br i1 %i.cp, label %.thread167.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cq = call i32 @slurm_bit_test(ptr noundef %i.ae, i64 noundef %i.cm) #10
  %.not146.us.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not146.us.i.i, label %bb.h, label %.thread167.i.i

..critedge.loopexit_crit_edge.us.i.i:             ; preds = %bb.h
  %indvars.iv.next89.i = add nuw nsw i64 %indvars.iv88.i, 1 ; 3 uses
  %i.cr = load i16, ptr %i.ai, align 2
  %i.cs = zext i16 %i.cr to i64
  %i.ct = icmp samesign ult i64 %indvars.iv.next89.i, %i.cs
  br i1 %i.ct, label %.preheader179.us.i.i, label %.thread167.i.i

.thread167.i.i:                                   ; preds = %..critedge.loopexit_crit_edge.us.i.i, %bb.i, %bb.j, %.thread.i.i
  %.0119184.i.i.in = phi i64 [ %indvars.iv88.i, %bb.i ], [ %.pre110.i, %.thread.i.i ], [ %indvars.iv88.i, %bb.j ], [ %indvars.iv.next89.i, %..critedge.loopexit_crit_edge.us.i.i ]
  %.0119184.i.i.in.fr = freeze i64 %.0119184.i.i.in ; 2 uses
  %.0119184.i.i = trunc i64 %.0119184.i.i.in.fr to i16
  %i.cu = and i64 %.0119184.i.i.in.fr, 65535      ; 6 uses
  %i.cv = icmp samesign ult i64 %indvars.iv97.i, %i.cu
  br i1 %i.cv, label %.thread167.split.us.i.i, label %.thread167.split.i.i

.thread167.split.us.i.i:                          ; preds = %.thread167.i.i
  %i.cw = and i64 %indvars.iv.next82.i, 65535     ; 2 uses
  %.not233.i.i = icmp samesign ult i64 %indvars.iv.i, %i.cw
  %i.cx = load i16, ptr %i.ag, align 4            ; 2 uses
  br i1 %.not233.i.i, label %.thread167.split.us.split.preheader.i.i, label %.thread167.split.us.split.us.i.i

.thread167.split.us.split.preheader.i.i:          ; preds = %.thread167.split.us.i.i
  %i.cy = zext i16 %i.cx to i64
  %i.cz = icmp samesign ult i64 %.pre109.i, %i.cy
  br i1 %i.cz, label %.preheader178.us.i.i, label %.split.us.i.i

.thread167.split.us.split.us.i.i:                 ; preds = %.thread167.split.us.i.i
  %spec.select.i.i = call i16 @llvm.umax.i16(i16 %i.aq, i16 %i.cx)
  br label %.split.us.i.i

.thread167.split.us.split.i.loopexit.i:           ; preds = %.thread170.us.i.i
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 3 uses
  %i.da = load i16, ptr %i.ag, align 4
  %i.db = zext i16 %i.da to i64
  %i.dc = icmp samesign ult i64 %indvars.iv.next42, %i.db
  br i1 %i.dc, label %.preheader178.us.i.i, label %.split.us.i.i.loopexit29, !llvm.loop !39

bb.k:                                             ; preds = %bb.m
  %indvars.iv.next245.i.i = add nuw nsw i64 %indvars.iv244.i.i, 1 ; 2 uses
  %exitcond249.not.i.i = icmp eq i64 %indvars.iv.next245.i.i, %i.cw
  br i1 %exitcond249.not.i.i, label %.thread170.us.i.i, label %bb.l, !llvm.loop !40

bb.l:                                             ; preds = %.preheader177.us206.i.i, %bb.k
  %indvars.iv244.i.i = phi i64 [ %indvars.iv.i, %.preheader177.us206.i.i ], [ %indvars.iv.next245.i.i, %bb.k ] ; 2 uses
  %i.dd = load i16, ptr %i.aj, align 8
  %i.de = zext i16 %i.dd to i64
  %i.df = load i16, ptr %i.ai, align 2
  %i.dg = zext i16 %i.df to i64
  %i.dh = mul nuw nsw i64 %indvars.iv41, %i.dg
  %reass.add.i156.us.i.i = add nuw nsw i64 %i.dh, %indvars.iv250.i.i
  %reass.mul.i157.us.i.i = mul nuw nsw i64 %reass.add.i156.us.i.i, %i.de
  %i.di = add nuw nsw i64 %reass.mul.i157.us.i.i, %indvars.iv244.i.i
  %i.dj = load ptr, ptr %i.ak, align 8
  %i.dk = and i64 %i.di, 4294967295               ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = icmp eq i32 %i.dm, -2
  br i1 %i.dn, label %.split.us.i.i.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.do = call i32 @slurm_bit_test(ptr noundef %i.ae, i64 noundef %i.dk) #10
  %.not148.us.i.i = icmp eq i32 %i.do, 0
  br i1 %.not148.us.i.i, label %bb.k, label %.split.us.i.i.loopexit

.thread170.us.i.i:                                ; preds = %bb.k
  %indvars.iv.next251.i.i = add nuw nsw i64 %indvars.iv250.i.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next251.i.i, %i.cu
  br i1 %exitcond.not.i, label %.thread167.split.us.split.i.loopexit.i, label %.preheader177.us206.i.i, !llvm.loop !39

.preheader177.us206.i.i:                          ; preds = %.preheader178.us.i.i, %.thread170.us.i.i
  %indvars.iv250.i.i = phi i64 [ %indvars.iv97.i, %.preheader178.us.i.i ], [ %indvars.iv.next251.i.i, %.thread170.us.i.i ] ; 2 uses
  br label %bb.l

.preheader178.us.i.i:                             ; preds = %.thread167.split.us.split.preheader.i.i, %.thread167.split.us.split.i.loopexit.i
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %.thread167.split.us.split.i.loopexit.i ], [ %indvars.iv39, %.thread167.split.us.split.preheader.i.i ] ; 3 uses
  br label %.preheader177.us206.i.i

.thread167.split.i.i:                             ; preds = %.thread167.i.i
  %i.dp = load i16, ptr %i.ag, align 4
  %umax243.i.i = call i16 @llvm.umax.i16(i16 %i.dp, i16 %i.aq)
  br label %.split.us.i.i

.split.us.i.i.loopexit29:                         ; preds = %.thread167.split.us.split.i.loopexit.i
  %i.dq = trunc nuw i64 %indvars.iv.next42 to i16
  br label %.split.us.i.i

.split.us.i.i.loopexit:                           ; preds = %bb.l, %bb.m
  %i.dr = trunc nuw i64 %indvars.iv41 to i16
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %.split.us.i.i.loopexit, %.split.us.i.i.loopexit29, %.thread167.split.i.i, %.thread167.split.us.split.us.i.i, %.thread167.split.us.split.preheader.i.i
  %.us-phi210.i.i = phi i16 [ %spec.select.i.i, %.thread167.split.us.split.us.i.i ], [ %umax243.i.i, %.thread167.split.i.i ], [ %i.aq, %.thread167.split.us.split.preheader.i.i ], [ %i.dq, %.split.us.i.i.loopexit29 ], [ %i.dr, %.split.us.i.i.loopexit ] ; 2 uses
  %i.ds = zext i16 %.us-phi210.i.i to i64         ; 3 uses
  %i.dt = icmp samesign ult i64 %indvars.iv102.i, %i.ds ; 2 uses
  br i1 %i.dt, label %.preheader176.lr.ph.i.i, label %._crit_edge219.split.i.i

.preheader176.lr.ph.i.i:                          ; preds = %.split.us.i.i
  %i.du = icmp samesign uge i64 %indvars.iv97.i, %i.cu
  %i.dv = and i64 %indvars.iv.next82.i, 65535
  %i.dw = icmp samesign uge i64 %indvars.iv.i, %i.dv
  %brmerge.i.i = or i1 %i.dw, %i.du
  br i1 %brmerge.i.i, label %._crit_edge219.split.i.i, label %.preheader176.i.i

.preheader176.i.i:                                ; preds = %.preheader176.lr.ph.i.i, %._crit_edge217.i.i
  %indvars.iv263.i.i = phi i64 [ %indvars.iv.next264.i.i, %._crit_edge217.i.i ], [ %indvars.iv102.i, %.preheader176.lr.ph.i.i ] ; 2 uses
  br label %.preheader175.i.i

._crit_edge219.split.i.i:                         ; preds = %._crit_edge217.i.i, %.preheader176.lr.ph.i.i, %.split.us.i.i
  %.not147.i.i = icmp slt i32 %.23145.i, %.246.i
  br i1 %.not147.i.i, label %bb.p, label %bb.o

.preheader175.i.i:                                ; preds = %._crit_edge.i.i, %.preheader176.i.i
  %indvars.iv258.i.i = phi i64 [ %indvars.iv97.i, %.preheader176.i.i ], [ %indvars.iv.next259.i.i, %._crit_edge.i.i ] ; 2 uses
  br label %bb.n

._crit_edge217.i.i:                               ; preds = %._crit_edge.i.i
  %indvars.iv.next264.i.i = add nuw nsw i64 %indvars.iv263.i.i, 1 ; 2 uses
  %exitcond267.not.i.i = icmp eq i64 %indvars.iv.next264.i.i, %i.ds
  br i1 %exitcond267.not.i.i, label %._crit_edge219.split.i.i, label %.preheader176.i.i, !llvm.loop !41

._crit_edge.i.i:                                  ; preds = %bb.n
  %indvars.iv.next259.i.i = add nuw nsw i64 %indvars.iv258.i.i, 1 ; 2 uses
  %exitcond262.not.i.i = icmp eq i64 %indvars.iv.next259.i.i, %i.cu
  br i1 %exitcond262.not.i.i, label %._crit_edge217.i.i, label %.preheader175.i.i, !llvm.loop !42

bb.n:                                             ; preds = %bb.n, %.preheader175.i.i
  %indvars.iv253.i.i = phi i64 [ %indvars.iv.i, %.preheader175.i.i ], [ %indvars.iv.next254.i.i, %bb.n ] ; 2 uses
  %i.dx = load i16, ptr %i.aj, align 8
  %i.dy = zext i16 %i.dx to i64
  %i.dz = load i16, ptr %i.ai, align 2
  %i.ea = zext i16 %i.dz to i64
  %i.eb = mul nuw nsw i64 %indvars.iv263.i.i, %i.ea
  %reass.add.i158.i.i = add nuw nsw i64 %i.eb, %indvars.iv258.i.i
  %reass.mul.i159.i.i = mul nuw nsw i64 %reass.add.i158.i.i, %i.dy
  %i.ec = add nuw nsw i64 %reass.mul.i159.i.i, %indvars.iv253.i.i
  %i.ed = and i64 %i.ec, 4294967295
  call void @bit_set(ptr noundef %i.ae, i64 noundef %i.ed) #10
  %indvars.iv.next254.i.i = add nuw nsw i64 %indvars.iv253.i.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next254.i.i to i16
  %exitcond = icmp eq i16 %lftr.wideiv, %indvars124.i
  br i1 %exitcond, label %._crit_edge.i.i, label %bb.n, !llvm.loop !43

bb.o:                                             ; preds = %._crit_edge219.split.i.i
  %i.ee = shl nsw i32 %.246.i, 1                  ; 2 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = call ptr @slurm_xrecalloc(ptr noundef nonnull %i.b, i64 noundef %i.ef, i64 noundef 24, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1, i32 noundef 699, ptr noundef nonnull @__func__._build_region) #10 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge219.split.i.i
  %.4.i = phi i32 [ %.246.i, %._crit_edge219.split.i.i ], [ %i.ee, %bb.o ]
  %i.eh = load ptr, ptr %i.b, align 8
  %i.ei = add nsw i32 %.23145.i, 1
  %i.ej = sext i32 %.23145.i to i64
  %i.ek = getelementptr inbounds [24 x i8], ptr %i.eh, i64 %i.ej ; 7 uses
  %i.el = trunc nuw i64 %indvars.iv.i to i16      ; 2 uses
  store i16 %i.el, ptr %i.ek, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  store i16 %i.au, ptr %i.em, align 2
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  store i16 %i.ar, ptr %i.en, align 4
  %i.eo = sub i16 %indvars124.i, %i.el
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 6
  store i16 %i.eo, ptr %i.ep, align 2
  %i.eq = sub i16 %.0119184.i.i, %i.au
  %i.er = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i16 %i.eq, ptr %i.er, align 8
  %i.es = sub i16 %.us-phi210.i.i, %i.ar
  %i.et = getelementptr inbounds nuw i8, ptr %i.ek, i64 10
  store i16 %i.es, ptr %i.et, align 2
  %i.eu = call ptr @hostlist_create(ptr noundef null) #10 ; 3 uses
  br i1 %i.dt, label %.preheader174.lr.ph.i.i, label %_build_region.exit.i

.preheader174.lr.ph.i.i:                          ; preds = %bb.p
  %i.ev = icmp samesign uge i64 %indvars.iv97.i, %i.cu
  %i.ew = and i64 %indvars.iv.next82.i, 65535
  %i.ex = icmp samesign uge i64 %indvars.iv.i, %i.ew
  %brmerge232.i.i = or i1 %i.ex, %i.ev
  br i1 %brmerge232.i.i, label %_build_region.exit.i, label %.preheader174.i.i

.preheader174.i.i:                                ; preds = %.preheader174.lr.ph.i.i, %._crit_edge224.i.i
  %indvars.iv279.i.i = phi i64 [ %indvars.iv.next280.i.i, %._crit_edge224.i.i ], [ %indvars.iv102.i, %.preheader174.lr.ph.i.i ] ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge222.i.i, %.preheader174.i.i
  %indvars.iv274.i.i = phi i64 [ %indvars.iv97.i, %.preheader174.i.i ], [ %indvars.iv.next275.i.i, %._crit_edge222.i.i ] ; 2 uses
  br label %bb.q

._crit_edge224.i.i:                               ; preds = %._crit_edge222.i.i
  %indvars.iv.next280.i.i = add nuw nsw i64 %indvars.iv279.i.i, 1 ; 2 uses
  %exitcond283.not.i.i = icmp eq i64 %indvars.iv.next280.i.i, %i.ds
  br i1 %exitcond283.not.i.i, label %_build_region.exit.i, label %.preheader174.i.i, !llvm.loop !44

._crit_edge222.i.i:                               ; preds = %bb.q
  %indvars.iv.next275.i.i = add nuw nsw i64 %indvars.iv274.i.i, 1 ; 2 uses
  %exitcond278.not.i.i = icmp eq i64 %indvars.iv.next275.i.i, %i.cu
  br i1 %exitcond278.not.i.i, label %._crit_edge224.i.i, label %.preheader.i.i, !llvm.loop !45

bb.q:                                             ; preds = %bb.q, %.preheader.i.i
  %indvars.iv268.i.i = phi i64 [ %indvars.iv.i, %.preheader.i.i ], [ %indvars.iv.next269.i.i, %bb.q ] ; 2 uses
  %i.ey = load i16, ptr %i.aj, align 8
  %i.ez = zext i16 %i.ey to i64
  %i.fa = load i16, ptr %i.ai, align 2
  %i.fb = zext i16 %i.fa to i64
  %i.fc = mul nuw nsw i64 %indvars.iv279.i.i, %i.fb
  %reass.add.i160.i.i = add nuw nsw i64 %i.fc, %indvars.iv274.i.i
  %reass.mul.i161.i.i = mul nuw nsw i64 %reass.add.i160.i.i, %i.ez
  %i.fd = add nuw nsw i64 %reass.mul.i161.i.i, %indvars.iv268.i.i
  %i.fe = load ptr, ptr %i.ak, align 8
  %i.ff = and i64 %i.fd, 4294967295
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4
  %i.fi = load ptr, ptr @node_record_table_ptr, align 8
  %i.fj = zext i32 %i.fh to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fj
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 280
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = call i32 @hostlist_push_host(ptr noundef %i.eu, ptr noundef %i.fn) #10 ; 0 uses
  %indvars.iv.next269.i.i = add nuw nsw i64 %indvars.iv268.i.i, 1 ; 2 uses
  %lftr.wideiv44 = trunc i64 %indvars.iv.next269.i.i to i16
  %exitcond45 = icmp eq i16 %lftr.wideiv44, %indvars124.i
  br i1 %exitcond45, label %._crit_edge222.i.i, label %bb.q, !llvm.loop !46

_build_region.exit.i:                             ; preds = %._crit_edge224.i.i, %.preheader174.lr.ph.i.i, %bb.p
  %i.fp = call ptr @hostlist_ranged_string_xmalloc(ptr noundef %i.eu) #10
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store ptr %i.fp, ptr %i.fq, align 8
  call void @hostlist_destroy(ptr noundef %i.eu) #10
  br label %bb.r

bb.r:                                             ; preds = %_build_region.exit.i, %bb.e, %bb.d
  %.332.i = phi i32 [ %.23145.i, %bb.d ], [ %i.ei, %_build_region.exit.i ], [ %.23145.i, %bb.e ] ; 2 uses
  %.3.i = phi i32 [ %.246.i, %bb.d ], [ %.4.i, %_build_region.exit.i ], [ %.246.i, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fr = load i16, ptr %i.aj, align 8            ; 3 uses
  %i.fs = zext i16 %i.fr to i64
  %i.ft = icmp samesign ult i64 %indvars.iv.next.i, %i.fs
  br i1 %i.ft, label %bb.d, label %._crit_edge.loopexit.i, !llvm.loop !47

bb.s:                                             ; preds = %._crit_edge62.i
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #10
  br label %_rebuild_regions.exit

_rebuild_regions.exit:                            ; preds = %._crit_edge62.i, %bb.s
  %i.fu = load ptr, ptr %i.b, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr %i.fu, ptr %i.fv, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i32 %.029.lcssa.i, ptr %i.fw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %_rebuild_regions.exit
  ret void
}

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @torus3d_record_table_destroy(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not15 = icmp eq ptr %i.c, null
  br i1 %.not15, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph20, label %.loopexit

.lr.ph20:                                         ; preds = %.preheader, %._crit_edge
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %._crit_edge ], [ 0, %.preheader ] ; 8 uses
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw [56 x i8], ptr %i.g, i64 %indvars.iv23
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  tail call void @slurm_xfree(ptr noundef nonnull %i.i) #10
  %i.j = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %i.j, i64 %indvars.iv23
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.not17 = icmp eq ptr %i.m, null
  br i1 %.not17, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph20
  tail call void @slurm_bit_free(ptr noundef nonnull %i.l) #10
  %.pre = load ptr, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph20
  %i.n = phi ptr [ %.pre, %bb.c ], [ %i.j, %.lr.ph20 ]
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %indvars.iv23
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr null, ptr %i.p, align 8
  %i.q = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw [56 x i8], ptr %i.q, i64 %indvars.iv23 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_free_placement.exit, %bb.d
  %.lcssa = phi ptr [ %i.r, %bb.d ], [ %i.ay, %_free_placement.exit ]
  tail call void @slurm_xfree(ptr noundef nonnull %.lcssa) #10
  %i.v = load ptr, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.v, i64 %indvars.iv23
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  tail call void @slurm_xfree(ptr noundef nonnull %i.x) #10
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %i.y = load i32, ptr %i.d, align 8
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next24, %i.z
  br i1 %i.aa, label %.lr.ph20, label %.loopexit, !llvm.loop !48

.lr.ph:                                           ; preds = %bb.d, %_free_placement.exit
  %i.ab = phi ptr [ %i.ax, %_free_placement.exit ], [ %i.q, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_free_placement.exit ], [ 0, %bb.d ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [56 x i8], ptr %i.ab, i64 %indvars.iv23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw [80 x i8], ptr %i.ae, i64 %indvars.iv ; 10 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %_free_placement.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ag = load ptr, ptr %i.af, align 8
  %.not17.i = icmp eq ptr %i.ag, null
  br i1 %.not17.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.g
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %.preheader.i ] ; 3 uses
  %i.ak = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %.not18.i = icmp eq ptr %i.am, null
  br i1 %.not18.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @slurm_bit_free(ptr noundef nonnull %i.al) #10
  %.pre.i = load ptr, ptr %i.af, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %i.an = phi ptr [ %.pre.i, %bb.f ], [ %i.ak, %.lr.ph.i ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i
  store ptr null, ptr %i.ao, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
end_hunk_1
