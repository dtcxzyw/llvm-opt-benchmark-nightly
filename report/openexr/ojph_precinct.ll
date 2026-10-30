Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_precinct?download=true
inline.NumInlined: 109
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4ojph5local8precinct5parseEiPjPNS_21mem_elastic_allocatorERjPNS_11infile_baseEb:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.lf, i8 0, i64 %i.lg, i1 false)
  %indvars.iv.next38.i269.1 = or disjoint i64 %indvars.iv37.i268, 2 ; 2 uses
  %i.lh = trunc nuw i64 %indvars.iv.next38.i269.1 to i32
  %i.li = sub nuw i32 %spec.select, %i.lh
  %i.lj = shl nuw nsw i32 %i.li, 1
  %i.lk = shl nuw i32 1, %i.lj
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next38.i269.1
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !36
  %i.ln = zext nneg i32 %i.lk to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.lm, i8 0, i64 %i.ln, i1 false)
  %indvars.iv.next38.i269.2 = or disjoint i64 %indvars.iv37.i268, 3 ; 2 uses
  %i.lo = trunc nuw i64 %indvars.iv.next38.i269.2 to i32
  %i.lp = sub nuw i32 %spec.select, %i.lo
  %i.lq = shl nuw nsw i32 %i.lp, 1
  %i.lr = shl nuw i32 1, %i.lq
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next38.i269.2
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !36
  %i.lu = zext nneg i32 %i.lr to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.lt, i8 0, i64 %i.lu, i1 false)
  %indvars.iv.next38.i269.3 = add nuw nsw i64 %indvars.iv37.i268, 4 ; 2 uses
  %niter735.next.3 = add i64 %niter735, 4         ; 2 uses
  %niter735.ncmp.3 = icmp eq i64 %niter735.next.3, %unroll_iter734
  br i1 %niter735.ncmp.3, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa, label %bb.ah, !llvm.loop !1

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa: ; preds = %bb.ah
  %lcmp.mod732.not = icmp eq i64 %xtraiter730, 0
  br i1 %lcmp.mod732.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276, label %.epil.preheader729

.epil.preheader729:                               ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa, %.lr.ph29.i266
  %indvars.iv37.i268.epil.init = phi i64 [ 0, %.lr.ph29.i266 ], [ %indvars.iv.next38.i269.3, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa ]
  %lcmp.mod733 = icmp ne i64 %xtraiter730, 0
  call void @llvm.assume(i1 %lcmp.mod733)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.epil.preheader729
  %indvars.iv37.i268.epil = phi i64 [ %indvars.iv37.i268.epil.init, %.epil.preheader729 ], [ %indvars.iv.next38.i269.epil, %bb.ai ] ; 3 uses
  %epil.iter731 = phi i64 [ 0, %.epil.preheader729 ], [ %epil.iter731.next, %bb.ai ]
  %i.lv = trunc nuw i64 %indvars.iv37.i268.epil to i32
  %i.lw = sub nuw i32 %spec.select, %i.lv
  %i.lx = shl nuw nsw i32 %i.lw, 1
  %i.ly = shl nuw i32 1, %i.lx
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv37.i268.epil
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !36
  %i.mb = zext nneg i32 %i.ly to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ma, i8 0, i64 %i.mb, i1 false)
  %indvars.iv.next38.i269.epil = add nuw nsw i64 %indvars.iv37.i268.epil, 1
  %epil.iter731.next = add i64 %epil.iter731, 1   ; 2 uses
  %epil.iter731.cmp.not = icmp eq i64 %epil.iter731.next, %xtraiter730
  br i1 %epil.iter731.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276, label %bb.ai, !llvm.loop !135

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276: ; preds = %bb.ai, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %wide.trip.count40.i
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !36
  store i32 %i.dx, ptr %i.bw, align 8, !tbaa !43
  store i8 0, ptr %i.md, align 1, !tbaa !41
  %i.me = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.mf = getelementptr inbounds nuw [120 x i8], ptr %i.me, i64 %indvars.iv557
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 56
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !44
  %i.mi = load i32, ptr %i.cc, align 8, !tbaa !32 ; 2 uses
  %i.mj = load i32, ptr %i.cf, align 4, !tbaa !33 ; 2 uses
  %.not541 = icmp eq i32 %i.mj, 0
  br i1 %.not541, label %._crit_edge525.split, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276
  %i.mk = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %.not542 = icmp eq i32 %i.mi, 0
  br i1 %.not542, label %._crit_edge525.split, label %.preheader480.lr.ph

._crit_edge525.split:                             ; preds = %._crit_edge, %.lr.ph, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.dm

.preheader480.lr.ph:                              ; preds = %.lr.ph, %._crit_edge
  %.0210524 = phi i32 [ %i.mw, %._crit_edge ], [ 0, %.lr.ph ] ; 5 uses
  %i.ml = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.mm = getelementptr inbounds nuw [120 x i8], ptr %i.ml, i64 %indvars.iv557
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 104
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !45
  %i.mp = load i32, ptr %i.cb, align 8, !tbaa !47
  %i.mq = load i32, ptr %i.mk, align 4, !tbaa !46
  %i.mr = add i32 %i.mq, %.0210524
  %i.ms = mul i32 %i.mr, %i.mh
  %i.mt = add i32 %i.ms, %i.mp
  %i.mu = zext i32 %i.mt to i64
  %i.mv = getelementptr inbounds nuw [32 x i8], ptr %i.mo, i64 %i.mu
  br label %.preheader480.a

.preheader480.a:                                  ; preds = %.preheader480.lr.ph, %.thread447
  %.0208522 = phi i32 [ 0, %.preheader480.lr.ph ], [ %i.aap, %.thread447 ] ; 4 uses
  %.0209521 = phi ptr [ %i.mv, %.preheader480.lr.ph ], [ %i.aaq, %.thread447 ] ; 7 uses
  br label %bb.aj

._crit_edge:                                      ; preds = %.thread447
  %i.mw = add nuw i32 %.0210524, 1                ; 2 uses
  %exitcond556.not = icmp eq i32 %i.mw, %i.mj
  br i1 %exitcond556.not, label %._crit_edge525.split, label %.preheader480.lr.ph, !llvm.loop !136

bb.aj:                                            ; preds = %.preheader480.a, %.thread443
  %indvars.iv = phi i64 [ %wide.trip.count40.i, %.preheader480.a ], [ %indvars.iv.next, %.thread443 ] ; 2 uses
  %i.mx = trunc nuw i64 %indvars.iv to i32
  %i.my = add nsw i32 %i.mx, -1                   ; 7 uses
  %i.mz = lshr i32 %.0208522, %i.my               ; 2 uses
  %i.na = lshr i32 %.0210524, %i.my               ; 2 uses
  %i.nb = zext i32 %i.my to i64                   ; 2 uses
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.nb
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !36
  %notmask.i278 = shl nsw i32 -1, %i.my
  %i.ne = xor i32 %notmask.i278, -1               ; 2 uses
  %i.nf = add i32 %i.ee, %i.ne
  %i.ng = lshr i32 %i.nf, %i.my
  %i.nh = mul i32 %i.ng, %i.na
  %i.ni = add i32 %i.nh, %i.mz
  %i.nj = zext i32 %i.ni to i64
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.nj ; 2 uses
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !41
  %i.nm = icmp eq i8 %i.nl, 1
  br i1 %i.nm, label %.thread447, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.nb
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !36
  %i.np = add i32 %i.gi, %i.ne
  %i.nq = lshr i32 %i.np, %i.my
  %i.nr = mul i32 %i.nq, %i.na
  %i.ns = add i32 %i.nr, %i.mz
  %i.nt = zext i32 %i.ns to i64
  %i.nu = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.nt ; 2 uses
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !41
  %i.nw = icmp eq i8 %i.nv, 0
  br i1 %i.nw, label %bb.al, label %.thread443

bb.al:                                            ; preds = %bb.ak
  %i.nx = load i32, ptr %i.p, align 4, !tbaa !60  ; 2 uses
  %i.ny = icmp eq i32 %i.nx, 0
  br i1 %i.ny, label %bb.am, label %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280

._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280: ; preds = %bb.al
  %.pre.i282 = load i32, ptr %i.r, align 8, !tbaa !63
  br label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.nz = load i32, ptr %i.q, align 4, !tbaa !62
  %.not.i.not.i284 = icmp eq i32 %i.nz, 0
  br i1 %.not.i.not.i284, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  store i32 0, ptr %i.k, align 4, !tbaa !35
  %i.oa = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !57
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  %i.od = load ptr, ptr %i.oc, align 8
  %i.oe = call noundef i64 %i.od(ptr noundef nonnull align 8 dereferenceable(8) %i.oa, ptr noundef nonnull %i.k, i64 noundef 1), !inline_history !123
  %.not12.i.i285 = icmp eq i64 %i.oe, 1
  br i1 %.not12.i.i285, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.of = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.14, ptr %i.of, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.of, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.og = load i32, ptr %i.k, align 4, !tbaa !35  ; 3 uses
  store i32 %i.og, ptr %i.r, align 8, !tbaa !63
  %i.oh = load i8, ptr %i.s, align 8, !tbaa !64, !range !30, !noundef !31
  %narrow13.i.i286 = sub nuw nsw i8 8, %i.oh
  %i.oi = zext nneg i8 %narrow13.i.i286 to i32
  %i.oj = icmp eq i32 %i.og, 255
  %i.ok = zext i1 %i.oj to i8
  store i8 %i.ok, ptr %i.s, align 8, !tbaa !64
  %i.ol = load i32, ptr %i.q, align 4, !tbaa !62
  %i.om = add i32 %i.ol, -1
  store i32 %i.om, ptr %i.q, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  br label %bb.ar

bb.aq:                                            ; preds = %bb.am
  store i32 0, ptr %i.r, align 8, !tbaa !63
  %i.on = load i8, ptr %i.s, align 8, !tbaa !64, !range !30, !noundef !31
  %narrow.i.i287 = sub nuw nsw i8 8, %i.on
  %i.oo = zext nneg i8 %narrow.i.i287 to i32
  store i8 0, ptr %i.s, align 8, !tbaa !64
  %i.op = add nsw i32 %i.oo, -1
  store i32 %i.op, ptr %i.p, align 4, !tbaa !60
  store i32 0, ptr %4, align 4, !tbaa !35
  %i.oq = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str, ptr %i.oq, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.oq, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.ar:                                            ; preds = %bb.ap, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280
  %.ph = phi i32 [ %i.oi, %bb.ap ], [ %i.nx, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280 ]
  %.ph438 = phi i32 [ %i.og, %bb.ap ], [ %.pre.i282, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280 ]
  %i.or = add nsw i32 %.ph, -1                    ; 2 uses
  store i32 %i.or, ptr %i.p, align 4, !tbaa !60
  %i.os = lshr i32 %.ph438, %i.or                 ; 2 uses
  %12 = trunc i32 %i.os to i1
  %13 = trunc i32 %i.os to i8
  %14 = and i8 %13, 1
  %i.ot = xor i8 %14, 1
  store i8 %i.ot, ptr %i.nk, align 1, !tbaa !41
  store i8 1, ptr %i.nu, align 1, !tbaa !41
  br i1 %12, label %.thread443, label %.thread447

.thread443:                                       ; preds = %bb.ak, %bb.ar
  %.not218 = icmp eq i32 %i.my, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %.not218, label %.preheader479.a, label %bb.aj, !llvm.loop !137

bb.as:                                            ; preds = %bb.ba
  %i.ou = getelementptr inbounds nuw i8, ptr %.0209521, i64 12
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !152
  %i.ow = icmp ugt i32 %.2202, %i.ov
  br i1 %i.ow, label %bb.bb, label %bb.bc

.preheader479.a:                                  ; preds = %.thread443, %bb.ba
  %indvars.iv554 = phi i64 [ %indvars.iv.next555, %bb.ba ], [ %wide.trip.count40.i, %.thread443 ] ; 3 uses
  %indvars.iv.next555 = add nsw i64 %indvars.iv554, -1 ; 5 uses
  %i.ox = trunc nuw i64 %indvars.iv554 to i32     ; 4 uses
  %i.oy = lshr i32 %.0208522, %i.ox
  %i.oz = lshr i32 %.0210524, %i.ox
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv554
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !36
  %notmask.i291 = shl nsw i32 -1, %i.ox
  %i.pc = xor i32 %notmask.i291, -1
  %i.pd = add i32 %i.il, %i.pc
  %i.pe = lshr i32 %i.pd, %i.ox
  %i.pf = mul i32 %i.pe, %i.oz
  %i.pg = add i32 %i.pf, %i.oy
  %i.ph = zext i32 %i.pg to i64
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.ph
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !41
  %i.pk = zext i8 %i.pj to i32                    ; 2 uses
  %i.pl = trunc nuw i64 %indvars.iv.next555 to i32 ; 5 uses
  %i.pm = lshr i32 %.0208522, %i.pl               ; 2 uses
  %i.pn = lshr i32 %.0210524, %i.pl               ; 2 uses
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next555
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !36
  %notmask.i292 = shl nsw i32 -1, %i.pl
  %i.pq = xor i32 %notmask.i292, -1               ; 2 uses
  %i.pr = add i32 %i.kp, %i.pq
  %i.ps = lshr i32 %i.pr, %i.pl
  %i.pt = mul i32 %i.ps, %i.pn
  %i.pu = add i32 %i.pt, %i.pm
  %i.pv = zext i32 %i.pu to i64
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pp, i64 %i.pv ; 2 uses
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !41
  %i.py = icmp eq i8 %i.px, 0
  br i1 %i.py, label %.preheader.preheader, label %bb.ba

.preheader.preheader:                             ; preds = %.preheader479.a
  %.pre573 = load i32, ptr %i.p, align 4, !tbaa !60
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.ay
  %i.pz = phi i32 [ %i.qt, %bb.ay ], [ %.pre573, %.preheader.preheader ] ; 2 uses
  %.1201518 = phi i32 [ %i.qw, %bb.ay ], [ %i.pk, %.preheader.preheader ]
  %i.qa = icmp eq i32 %i.pz, 0
  br i1 %i.qa, label %bb.at, label %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i293

._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i293: ; preds = %.preheader
  %.pre.i295 = load i32, ptr %i.r, align 8, !tbaa !63
  br label %bb.ay

bb.at:                                            ; preds = %.preheader
  %i.qb = load i32, ptr %i.q, align 4, !tbaa !62
  %.not.i.not.i297 = icmp eq i32 %i.qb, 0
  br i1 %.not.i.not.i297, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  store i32 0, ptr %i.j, align 4, !tbaa !35
  %i.qc = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !57
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %i.qf = load ptr, ptr %i.qe, align 8
  %i.qg = call noundef i64 %i.qf(ptr noundef nonnull align 8 dereferenceable(8) %i.qc, ptr noundef nonnull %i.j, i64 noundef 1), !inline_history !123
  %.not12.i.i298 = icmp eq i64 %i.qg, 1
  br i1 %.not12.i.i298, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.qh = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.14, ptr %i.qh, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.qh, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.qi = load i32, ptr %i.j, align 4, !tbaa !35  ; 3 uses
  store i32 %i.qi, ptr %i.r, align 8, !tbaa !63
  %i.qj = load i8, ptr %i.s, align 8, !tbaa !64, !range !30, !noundef !31
  %narrow13.i.i299 = sub nuw nsw i8 8, %i.qj
  %i.qk = zext nneg i8 %narrow13.i.i299 to i32
  %i.ql = icmp eq i32 %i.qi, 255
  %i.qm = zext i1 %i.ql to i8
  store i8 %i.qm, ptr %i.s, align 8, !tbaa !64
  %i.qn = load i32, ptr %i.q, align 4, !tbaa !62
  %i.qo = add i32 %i.qn, -1
  store i32 %i.qo, ptr %i.q, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  br label %bb.ay

bb.ax:                                            ; preds = %bb.at
  store i32 0, ptr %i.r, align 8, !tbaa !63
  %i.qp = load i8, ptr %i.s, align 8, !tbaa !64, !range !30, !noundef !31
  %narrow.i.i300 = sub nuw nsw i8 8, %i.qp
  %i.qq = zext nneg i8 %narrow.i.i300 to i32
  store i8 0, ptr %i.s, align 8, !tbaa !64
  %i.qr = add nsw i32 %i.qq, -1
  store i32 %i.qr, ptr %i.p, align 4, !tbaa !60
  store i32 0, ptr %4, align 4, !tbaa !35
  %i.qs = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.1, ptr %i.qs, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.qs, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.ay:                                            ; preds = %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i293, %bb.aw
  %.ph449 = phi i32 [ %i.qk, %bb.aw ], [ %i.pz, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i293 ]
  %.ph450 = phi i32 [ %i.qi, %bb.aw ], [ %.pre.i295, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i293 ]
  %i.qt = add nsw i32 %.ph449, -1                 ; 3 uses
  store i32 %i.qt, ptr %i.p, align 4, !tbaa !60
  %i.qu = lshr i32 %.ph450, %i.qt
  %i.qv = and i32 %i.qu, 1                        ; 2 uses
  %reass.sub = add i32 %.1201518, 1
  %i.qw = sub i32 %reass.sub, %i.qv               ; 3 uses
  %i.qx = icmp eq i32 %i.qv, 0
  br i1 %i.qx, label %.preheader, label %bb.az, !llvm.loop !138

bb.az:                                            ; preds = %bb.ay
  %i.qy = trunc i32 %i.qw to i8
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next555
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !36
  %i.rb = add i32 %i.il, %i.pq
  %i.rc = lshr i32 %i.rb, %i.pl
  %i.rd = mul i32 %i.rc, %i.pn
  %i.re = add i32 %i.rd, %i.pm
  %i.rf = zext i32 %i.re to i64
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ra, i64 %i.rf
  store i8 %i.qy, ptr %i.rg, align 1, !tbaa !41
  store i8 1, ptr %i.pw, align 1, !tbaa !41
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.preheader479.a
  %.2202 = phi i32 [ %i.qw, %bb.az ], [ %i.pk, %.preheader479.a ] ; 2 uses
  %.not219 = icmp eq i64 %indvars.iv.next555, 0
  br i1 %.not219, label %bb.as, label %.preheader479.a, !llvm.loop !139

bb.bb:                                            ; preds = %bb.as
  %i.rh = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.2, ptr %i.rh, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.rh, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.bc:                                            ; preds = %bb.as
  %i.ri = getelementptr inbounds nuw i8, ptr %.0209521, i64 16 ; 3 uses
  store i32 %.2202, ptr %i.ri, align 8, !tbaa !49
  %i.rj = load i32, ptr %i.p, align 4, !tbaa !60  ; 2 uses
  %i.rk = icmp eq i32 %i.rj, 0
  br i1 %i.rk, label %bb.bd, label %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i304

._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i304: ; preds = %bb.bc
  %.pre.i306 = load i32, ptr %i.r, align 8, !tbaa !63
  br label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.rl = load i32, ptr %i.q, align 4, !tbaa !62
  %.not.i.not.i308 = icmp eq i32 %i.rl, 0
  br i1 %.not.i.not.i308, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  store i32 0, ptr %i.i, align 4, !tbaa !35
  %i.rm = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !57
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  %i.rp = load ptr, ptr %i.ro, align 8
  %i.rq = call noundef i64 %i.rp(ptr noundef nonnull align 8 dereferenceable(8) %i.rm, ptr noundef nonnull %i.i, i64 noundef 1), !inline_history !123
  %.not12.i.i309 = icmp eq i64 %i.rq, 1
  br i1 %.not12.i.i309, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.rr = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.14, ptr %i.rr, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.rr, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.rs = load i32, ptr %i.i, align 4, !tbaa !35  ; 3 uses
  store i32 %i.rs, ptr %i.r, align 8, !tbaa !63
  %i.rt = load i8, ptr %i.s, align 8, !tbaa !64, !range !30, !noundef !31
  %narrow13.i.i310 = sub nuw nsw i8 8, %i.rt
  %i.ru = zext nneg i8 %narrow13.i.i310 to i32
  %i.rv = icmp eq i32 %i.rs, 255
  %i.rw = zext i1 %i.rv to i8
  store i8 %i.rw, ptr %i.s, align 8, !tbaa !64
  %i.rx = load i32, ptr %i.q, align 4, !tbaa !62
  %i.ry = add i32 %i.rx, -1
  store i32 %i.ry, ptr %i.q, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bd
  store i32 0, ptr %i.r, align 8, !tbaa !63
  %i.rz = load i8, ptr %i.s, align 8, !tbaa !64, !range !30, !noundef !31
end_hunk_0
