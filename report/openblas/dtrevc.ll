Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtrevc?download=true
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@dtrevc_:bb.a
  %i.ml = load double, ptr %i.ei, align 8, !tbaa !54
  %i.mm = fneg double %i.ml
  store double %i.mm, ptr %i.f, align 8, !tbaa !54
  %i.mn = load i32, ptr %3, align 4, !tbaa !52
  %i.mo = sext i32 %i.mn to i64
  br label %.lr.ph1296._crit_edge.sink.split

.lr.ph1296._crit_edge.sink.split:                 ; preds = %bb.aq, %bb.aw
  %.sink1634 = phi i64 [ %i.mo, %bb.aw ], [ %i.kt, %bb.aq ]
  %.21080.ph = phi i32 [ %i.js, %bb.aw ], [ %.110791177, %bb.aq ]
  %.pn1646 = mul nsw i64 %indvars.iv1416, %i.en
  %.pn = getelementptr [8 x i8], ptr %i.v, i64 %.pn1646
  %.sink1631 = getelementptr i8, ptr %.pn, i64 8
  %i.mp = getelementptr [8 x i8], ptr %i.ac, i64 %.sink1634
  %i.mq = getelementptr i8, ptr %i.mp, i64 8
  call void @daxpy_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.f, ptr noundef %.sink1631, ptr noundef nonnull @c__1, ptr noundef %i.mq, ptr noundef nonnull @c__1) #7
  br label %.lr.ph1296._crit_edge

.lr.ph1296._crit_edge:                            ; preds = %.lr.ph1296._crit_edge.sink.split, %.lr.ph1296
  %.21080 = phi i32 [ %.010781294, %.lr.ph1296 ], [ %.21080.ph, %.lr.ph1296._crit_edge.sink.split ]
  %i.mr = icmp sgt i64 %indvars.iv1416, 1
  br i1 %i.mr, label %.lr.ph1296, label %._crit_edge1297, !llvm.loop !16

._crit_edge1297:                                  ; preds = %.lr.ph1296._crit_edge, %bb.aj
  br i1 %i.ap, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge1297
  %i.ms = load i32, ptr %3, align 4, !tbaa !52
  %i.mt = sext i32 %i.ms to i64
  %i.mu = getelementptr [8 x i8], ptr %i.ac, i64 %i.mt
  %i.mv = getelementptr i8, ptr %i.mu, i64 8
  %i.mw = mul nsw i32 %.01304, %i.z               ; 3 uses
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr [8 x i8], ptr %i.ab, i64 %i.mx
  %i.mz = getelementptr i8, ptr %i.my, i64 8      ; 3 uses
  call void @dcopy_(ptr noundef nonnull %i.o, ptr noundef %i.mv, ptr noundef nonnull @c__1, ptr noundef %i.mz, ptr noundef nonnull @c__1) #7
  %i.na = call i32 @idamax_(ptr noundef nonnull %i.o, ptr noundef %i.mz, ptr noundef nonnull @c__1) #7
  %i.nb = add nsw i32 %i.na, %i.mw
  %i.nc = sext i32 %i.nb to i64
  %i.nd = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.nc
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !54 ; 4 uses
  store double %i.ne, ptr %i.f, align 8, !tbaa !54
  %i.nf = fcmp oge double %i.ne, 0.000000e+00
  %i.ng = fneg double %i.ne
  %i.nh = select i1 %i.nf, double %i.ne, double %i.ng
  %i.ni = fdiv double 1.000000e+00, %i.nh
  store double %i.ni, ptr %i.m, align 8, !tbaa !54
  call void @dscal_(ptr noundef nonnull %i.o, ptr noundef nonnull %i.m, ptr noundef %i.mz, ptr noundef nonnull @c__1) #7
  %i.nj = load i32, ptr %3, align 4, !tbaa !52    ; 3 uses
  store i32 %i.nj, ptr %i.c, align 4, !tbaa !52
  %i.nk = load i32, ptr %i.o, align 4, !tbaa !52  ; 3 uses
  %.not1155.not1298 = icmp slt i32 %i.nk, %i.nj
  br i1 %.not1155.not1298, label %.lr.ph1301.preheader, label %.loopexit1250

.lr.ph1301.preheader:                             ; preds = %bb.ax
  %i.nl = add nsw i32 %i.nk, 1
  %i.nm = add i32 %i.nl, %i.mw
  %i.nn = sext i32 %i.nm to i64
  %i.no = shl nsw i64 %i.nn, 3
  %scevgep1420 = getelementptr i8, ptr %scevgep, i64 %i.no
  %i.np = xor i32 %i.nk, -1
  %i.nq = add i32 %i.nj, %i.np
  %i.nr = zext i32 %i.nq to i64
  %i.ns = shl nuw nsw i64 %i.nr, 3
  %i.nt = add nuw nsw i64 %i.ns, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1420, i8 0, i64 %i.nt, i1 false), !tbaa !54
  br label %.loopexit1250

bb.ay:                                            ; preds = %._crit_edge1297
  %i.nu = load i32, ptr %i.o, align 4, !tbaa !52  ; 5 uses
  %i.nv = icmp sgt i32 %i.nu, 1
  br i1 %i.nv, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.nw = add nsw i32 %i.nu, -1
  store i32 %i.nw, ptr %i.c, align 4, !tbaa !52
  %i.nx = load i32, ptr %3, align 4, !tbaa !52    ; 2 uses
  %i.ny = sext i32 %i.nx to i64
  %i.nz = getelementptr [8 x i8], ptr %i.ac, i64 %i.ny
  %i.oa = getelementptr i8, ptr %i.nz, i64 8
  %i.ob = add nsw i32 %i.nx, %i.nu
  %i.oc = sext i32 %i.ob to i64
  %i.od = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.oc
  %i.oe = mul nsw i32 %i.nu, %i.z
  %i.of = sext i32 %i.oe to i64
  %i.og = getelementptr [8 x i8], ptr %i.ab, i64 %i.of
  %i.oh = getelementptr i8, ptr %i.og, i64 8
  call void @dgemv_(ptr noundef nonnull @.str.8, ptr noundef nonnull %3, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b22, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %i.oa, ptr noundef nonnull @c__1, ptr noundef nonnull %i.od, ptr noundef %i.oh, ptr noundef nonnull @c__1) #7
  %.pre1474 = load i32, ptr %i.o, align 4, !tbaa !52
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.oi = phi i32 [ %.pre1474, %bb.az ], [ %i.nu, %bb.ay ]
  %i.oj = mul nsw i32 %i.oi, %i.z
  %i.ok = sext i32 %i.oj to i64
  %i.ol = getelementptr [8 x i8], ptr %i.ab, i64 %i.ok
  %i.om = getelementptr i8, ptr %i.ol, i64 8
  %i.on = call i32 @idamax_(ptr noundef nonnull %3, ptr noundef %i.om, ptr noundef nonnull @c__1) #7
  %i.oo = load i32, ptr %i.o, align 4, !tbaa !52
  %i.op = mul nsw i32 %i.oo, %i.z                 ; 2 uses
  %i.oq = add nsw i32 %i.op, %i.on
  %i.or = sext i32 %i.oq to i64
  %i.os = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.or
  %i.ot = load double, ptr %i.os, align 8, !tbaa !54 ; 4 uses
  store double %i.ot, ptr %i.f, align 8, !tbaa !54
  %i.ou = fcmp oge double %i.ot, 0.000000e+00
  %i.ov = fneg double %i.ot
  %i.ow = select i1 %i.ou, double %i.ot, double %i.ov
  %i.ox = fdiv double 1.000000e+00, %i.ow
  store double %i.ox, ptr %i.m, align 8, !tbaa !54
  %i.oy = sext i32 %i.op to i64
  %i.oz = getelementptr [8 x i8], ptr %i.ab, i64 %i.oy
  %i.pa = getelementptr i8, ptr %i.oz, i64 8
  call void @dscal_(ptr noundef nonnull %3, ptr noundef nonnull %i.m, ptr noundef %i.pa, ptr noundef nonnull @c__1) #7
  br label %.loopexit1250

bb.bb:                                            ; preds = %bb.ai
  %i.pb = add nsw i32 %storemerge1302, -1         ; 7 uses
  %i.pc = mul nsw i32 %storemerge1302, %i.t       ; 2 uses
  %i.pd = add nsw i32 %i.pb, %i.pc
  %i.pe = sext i32 %i.pd to i64
  %i.pf = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.pe ; 2 uses
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !54 ; 2 uses
  store double %i.pg, ptr %i.f, align 8, !tbaa !54
  %i.ph = call double @llvm.fabs.f64(double %i.pg)
  %i.pi = mul nsw i32 %i.pb, %i.t                 ; 2 uses
  %i.pj = add nsw i32 %i.pi, %storemerge1302
  %i.pk = sext i32 %i.pj to i64
  %i.pl = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.pk
  %i.pm = load double, ptr %i.pl, align 8, !tbaa !54 ; 2 uses
  %i.pn = call double @llvm.fabs.f64(double %i.pm)
  %i.po = fcmp ult double %i.ph, %i.pn
  br i1 %i.po, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.pp = load i32, ptr %3, align 4, !tbaa !52    ; 2 uses
  %i.pq = add nsw i32 %i.pp, %i.pb
  %i.pr = sext i32 %i.pq to i64
  %i.ps = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.pr
  store double 1.000000e+00, ptr %i.ps, align 8, !tbaa !54
  %i.pt = load double, ptr %i.pf, align 8, !tbaa !54
  %i.pu = fdiv double %i.gt, %i.pt
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.pv = fdiv double %i.gy, %i.pm
  %i.pw = load i32, ptr %3, align 4, !tbaa !52    ; 2 uses
  %i.px = add nsw i32 %i.pw, %i.pb
  %i.py = sext i32 %i.px to i64
  %i.pz = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.py
  store double %i.pv, ptr %i.pz, align 8, !tbaa !54
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sink1635 = phi double [ 1.000000e+00, %bb.bd ], [ %i.pu, %bb.bc ]
  %i.qa = phi i32 [ %i.pw, %bb.bd ], [ %i.pp, %bb.bc ] ; 3 uses
  %i.qb = add nsw i32 %storemerge1302, %i.ed
  %i.qc = sext i32 %i.qb to i64
  %i.qd = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.qc
  store double %.sink1635, ptr %i.qd, align 8, !tbaa !54
  %i.qe = add nsw i32 %i.qa, %storemerge1302
  %i.qf = sext i32 %i.qe to i64
  %i.qg = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.qf
  store double 0.000000e+00, ptr %i.qg, align 8, !tbaa !54
  %i.qh = add nsw i32 %i.pb, %i.ed
  %i.qi = sext i32 %i.qh to i64
  %i.qj = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.qi
  store double 0.000000e+00, ptr %i.qj, align 8, !tbaa !54
  %i.qk = add nsw i32 %storemerge1302, -2         ; 3 uses
  store i32 %i.qk, ptr %i.c, align 4, !tbaa !52
  %.not11471263 = icmp samesign ult i32 %storemerge1302, 3
  br i1 %.not11471263, label %._crit_edge1270, label %.lr.ph1266

.lr.ph1266:                                       ; preds = %bb.be
  %i.ql = add nsw i32 %i.qa, %i.pb
  %i.qm = sext i32 %i.ql to i64                   ; 2 uses
  %i.qn = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.qm ; 6 uses
  %i.qo = add nsw i32 %storemerge1302, %i.ed
  %i.qp = sext i32 %i.qo to i64                   ; 2 uses
  %i.qq = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.qp ; 6 uses
  %i.qr = sext i32 %i.pi to i64                   ; 2 uses
  %i.qs = sext i32 %i.qa to i64                   ; 2 uses
  %i.qt = sext i32 %i.pc to i64                   ; 2 uses
  %wide.trip.count1390 = zext nneg i32 %i.pb to i64 ; 4 uses
  %invariant.gep1576 = getelementptr [8 x i8], ptr %i.v, i64 %i.qr ; 4 uses
  %invariant.gep1578 = getelementptr [8 x i8], ptr %i.ac, i64 %i.qs ; 4 uses
  %invariant.gep1580 = getelementptr [8 x i8], ptr %i.v, i64 %i.qt ; 4 uses
  %i.qu = add nsw i64 %wide.trip.count1390, -1    ; 3 uses
  %min.iters.check1765 = icmp ult i64 %i.qu, 20
  br i1 %min.iters.check1765, label %scalar.ph1764.preheader, label %vector.memcheck1766

vector.memcheck1766:                              ; preds = %.lr.ph1266
  %i.qv = shl nsw i64 %i.qs, 3                    ; 2 uses
  %i.qw = getelementptr i8, ptr %12, i64 %i.qv    ; 5 uses
  %i.qx = shl nuw nsw i64 %wide.trip.count1390, 3 ; 4 uses
  %i.qy = getelementptr i8, ptr %i.ac, i64 %i.qv
  %i.qz = getelementptr i8, ptr %i.qy, i64 %i.qx  ; 5 uses
  %i.ra = getelementptr i8, ptr %invariant.gep1582, i64 %i.qx ; 5 uses
  %i.rb = shl nsw i64 %i.qm, 3
  %i.rc = getelementptr i8, ptr %12, i64 %i.rb    ; 2 uses
  %i.rd = shl nsw i64 %i.qt, 3                    ; 2 uses
  %i.re = getelementptr i8, ptr %scevgep1762, i64 %i.rd ; 2 uses
  %i.rf = getelementptr i8, ptr %i.v, i64 %i.rd
  %i.rg = getelementptr i8, ptr %i.rf, i64 %i.qx  ; 2 uses
  %i.rh = shl nsw i64 %i.qr, 3                    ; 2 uses
  %i.ri = getelementptr i8, ptr %scevgep1762, i64 %i.rh ; 2 uses
  %i.rj = getelementptr i8, ptr %i.v, i64 %i.rh
  %i.rk = getelementptr i8, ptr %i.rj, i64 %i.qx  ; 2 uses
  %i.rl = shl nsw i64 %i.qp, 3
  %i.rm = getelementptr i8, ptr %12, i64 %i.rl    ; 2 uses
  %bound0 = icmp ult ptr %i.qw, %i.ra
  %bound1 = icmp ult ptr %scevgep1763, %i.qz
  %found.conflict = and i1 %bound0, %bound1
  %bound01767 = icmp ult ptr %i.qw, %i.rc
  %bound11768 = icmp ult ptr %i.qn, %i.qz
  %found.conflict1769 = and i1 %bound01767, %bound11768
  %conflict.rdx = or i1 %found.conflict, %found.conflict1769
  %bound01770 = icmp ult ptr %i.qw, %i.rg
  %bound11771 = icmp ult ptr %i.re, %i.qz
  %found.conflict1772 = and i1 %bound01770, %bound11771
  %conflict.rdx1773 = or i1 %conflict.rdx, %found.conflict1772
  %bound01774 = icmp ult ptr %i.qw, %i.rk
  %bound11775 = icmp ult ptr %i.ri, %i.qz
  %found.conflict1776 = and i1 %bound01774, %bound11775
  %conflict.rdx1777 = or i1 %conflict.rdx1773, %found.conflict1776
  %bound01778 = icmp ult ptr %i.qw, %i.rm
  %bound11779 = icmp ult ptr %i.qq, %i.qz
  %found.conflict1780 = and i1 %bound01778, %bound11779
  %conflict.rdx1781 = or i1 %conflict.rdx1777, %found.conflict1780
  %bound01782 = icmp ult ptr %scevgep1763, %i.rc
  %bound11783 = icmp ult ptr %i.qn, %i.ra
  %found.conflict1784 = and i1 %bound01782, %bound11783
  %conflict.rdx1785 = or i1 %conflict.rdx1781, %found.conflict1784
  %bound01786 = icmp ult ptr %scevgep1763, %i.rg
  %bound11787 = icmp ult ptr %i.re, %i.ra
  %found.conflict1788 = and i1 %bound01786, %bound11787
  %conflict.rdx1789 = or i1 %conflict.rdx1785, %found.conflict1788
  %bound01790 = icmp ult ptr %scevgep1763, %i.rk
  %bound11791 = icmp ult ptr %i.ri, %i.ra
  %found.conflict1792 = and i1 %bound01790, %bound11791
  %conflict.rdx1793 = or i1 %conflict.rdx1789, %found.conflict1792
  %bound01794 = icmp ult ptr %scevgep1763, %i.rm
  %bound11795 = icmp ult ptr %i.qq, %i.ra
  %found.conflict1796 = and i1 %bound01794, %bound11795
  %conflict.rdx1797 = or i1 %conflict.rdx1793, %found.conflict1796
  br i1 %conflict.rdx1797, label %scalar.ph1764.preheader, label %vector.ph1798

vector.ph1798:                                    ; preds = %vector.memcheck1766
  %n.vec1799 = and i64 %i.qu, -8                  ; 3 uses
  %i.rn = or disjoint i64 %n.vec1799, 1
  %i.ro = load double, ptr %i.qn, align 8, !tbaa !54, !alias.scope !60
  %.scalar = fneg double %i.ro
  %i.rp = insertelement <4 x double> poison, double %.scalar, i64 0
  %i.rq = shufflevector <4 x double> %i.rp, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.rr = load double, ptr %i.qq, align 8, !tbaa !54, !alias.scope !61
  %.scalar2013 = fneg double %i.rr
  %i.rs = insertelement <4 x double> poison, double %.scalar2013, i64 0
  %i.rt = shufflevector <4 x double> %i.rs, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1802

vector.body1802:                                  ; preds = %vector.body1802, %vector.ph1798
  %index1803 = phi i64 [ 0, %vector.ph1798 ], [ %index.next1808, %vector.body1802 ] ; 2 uses
  %i.ru = or disjoint i64 %index1803, 1           ; 4 uses
  %i.rv = getelementptr [8 x i8], ptr %invariant.gep1576, i64 %i.ru ; 2 uses
  %i.rw = getelementptr i8, ptr %i.rv, i64 32
  %wide.load1804 = load <4 x double>, ptr %i.rv, align 8, !tbaa !54, !alias.scope !62
  %wide.load1805 = load <4 x double>, ptr %i.rw, align 8, !tbaa !54, !alias.scope !62
  %i.rx = fmul <4 x double> %wide.load1804, %i.rq
  %i.ry = fmul <4 x double> %wide.load1805, %i.rq
  %i.rz = getelementptr [8 x i8], ptr %invariant.gep1578, i64 %i.ru ; 2 uses
  %i.sa = getelementptr i8, ptr %i.rz, i64 32
  store <4 x double> %i.rx, ptr %i.rz, align 8, !tbaa !54, !alias.scope !63, !noalias !64
  store <4 x double> %i.ry, ptr %i.sa, align 8, !tbaa !54, !alias.scope !63, !noalias !64
  %i.sb = getelementptr [8 x i8], ptr %invariant.gep1580, i64 %i.ru ; 2 uses
  %i.sc = getelementptr i8, ptr %i.sb, i64 32
  %wide.load1806 = load <4 x double>, ptr %i.sb, align 8, !tbaa !54, !alias.scope !65
  %wide.load1807 = load <4 x double>, ptr %i.sc, align 8, !tbaa !54, !alias.scope !65
  %i.sd = fmul <4 x double> %wide.load1806, %i.rt
  %i.se = fmul <4 x double> %wide.load1807, %i.rt
  %i.sf = getelementptr [8 x i8], ptr %invariant.gep1582, i64 %i.ru ; 2 uses
  %i.sg = getelementptr i8, ptr %i.sf, i64 32
  store <4 x double> %i.sd, ptr %i.sf, align 8, !tbaa !54, !alias.scope !66, !noalias !67
  store <4 x double> %i.se, ptr %i.sg, align 8, !tbaa !54, !alias.scope !66, !noalias !67
  %index.next1808 = add nuw i64 %index1803, 8     ; 2 uses
  %i.sh = icmp eq i64 %index.next1808, %n.vec1799
  br i1 %i.sh, label %middle.block1809, label %vector.body1802, !llvm.loop !24

middle.block1809:                                 ; preds = %vector.body1802
  %cmp.n1810 = icmp eq i64 %i.qu, %n.vec1799
  br i1 %cmp.n1810, label %.lr.ph1269.preheader, label %scalar.ph1764.preheader

scalar.ph1764.preheader:                          ; preds = %vector.memcheck1766, %.lr.ph1266, %middle.block1809
  %indvars.iv1387.ph = phi i64 [ 1, %vector.memcheck1766 ], [ 1, %.lr.ph1266 ], [ %i.rn, %middle.block1809 ] ; 7 uses
  %i.si = and i32 %storemerge1302, 1
  %lcmp.mod2051.not = icmp eq i32 %i.si, 0
  br i1 %lcmp.mod2051.not, label %scalar.ph1764.prol.loopexit, label %scalar.ph1764.prol

scalar.ph1764.prol:                               ; preds = %scalar.ph1764.preheader
  %i.sj = load double, ptr %i.qn, align 8, !tbaa !54
  %i.sk = fneg double %i.sj
  %gep1577.prol = getelementptr [8 x i8], ptr %invariant.gep1576, i64 %indvars.iv1387.ph
  %i.sl = load double, ptr %gep1577.prol, align 8, !tbaa !54
  %i.sm = fmul double %i.sl, %i.sk
  %gep1579.prol = getelementptr [8 x i8], ptr %invariant.gep1578, i64 %indvars.iv1387.ph
  store double %i.sm, ptr %gep1579.prol, align 8, !tbaa !54
  %i.sn = load double, ptr %i.qq, align 8, !tbaa !54
  %i.so = fneg double %i.sn
  %gep1581.prol = getelementptr [8 x i8], ptr %invariant.gep1580, i64 %indvars.iv1387.ph
  %i.sp = load double, ptr %gep1581.prol, align 8, !tbaa !54
  %i.sq = fmul double %i.sp, %i.so
  %gep1583.prol = getelementptr [8 x i8], ptr %invariant.gep1582, i64 %indvars.iv1387.ph
  store double %i.sq, ptr %gep1583.prol, align 8, !tbaa !54
  %indvars.iv.next1388.prol = add nuw nsw i64 %indvars.iv1387.ph, 1
  br label %scalar.ph1764.prol.loopexit

scalar.ph1764.prol.loopexit:                      ; preds = %scalar.ph1764.prol, %scalar.ph1764.preheader
  %indvars.iv1387.unr = phi i64 [ %indvars.iv1387.ph, %scalar.ph1764.preheader ], [ %indvars.iv.next1388.prol, %scalar.ph1764.prol ]
  %i.sr = add nsw i64 %wide.trip.count1390, -1
  %i.ss = icmp eq i64 %indvars.iv1387.ph, %i.sr
  br i1 %i.ss, label %.lr.ph1269.preheader, label %scalar.ph1764

.lr.ph1269.preheader:                             ; preds = %scalar.ph1764.prol.loopexit, %scalar.ph1764, %middle.block1809
  %i.st = zext nneg i32 %i.qk to i64
  br label %.lr.ph1269

scalar.ph1764:                                    ; preds = %scalar.ph1764.prol.loopexit, %scalar.ph1764
  %indvars.iv1387 = phi i64 [ %indvars.iv.next1388.1, %scalar.ph1764 ], [ %indvars.iv1387.unr, %scalar.ph1764.prol.loopexit ] ; 6 uses
  %i.su = load double, ptr %i.qn, align 8, !tbaa !54
  %i.sv = fneg double %i.su
  %gep1577 = getelementptr [8 x i8], ptr %invariant.gep1576, i64 %indvars.iv1387
  %i.sw = load double, ptr %gep1577, align 8, !tbaa !54
  %i.sx = fmul double %i.sw, %i.sv
  %gep1579 = getelementptr [8 x i8], ptr %invariant.gep1578, i64 %indvars.iv1387
  store double %i.sx, ptr %gep1579, align 8, !tbaa !54
  %i.sy = load double, ptr %i.qq, align 8, !tbaa !54
  %i.sz = fneg double %i.sy
  %gep1581 = getelementptr [8 x i8], ptr %invariant.gep1580, i64 %indvars.iv1387
  %i.ta = load double, ptr %gep1581, align 8, !tbaa !54
  %i.tb = fmul double %i.ta, %i.sz
  %gep1583 = getelementptr [8 x i8], ptr %invariant.gep1582, i64 %indvars.iv1387
  store double %i.tb, ptr %gep1583, align 8, !tbaa !54
  %indvars.iv.next1388 = add nuw nsw i64 %indvars.iv1387, 1 ; 4 uses
  %i.tc = load double, ptr %i.qn, align 8, !tbaa !54
  %i.td = fneg double %i.tc
  %gep1577.1 = getelementptr [8 x i8], ptr %invariant.gep1576, i64 %indvars.iv.next1388
  %i.te = load double, ptr %gep1577.1, align 8, !tbaa !54
  %i.tf = fmul double %i.te, %i.td
  %gep1579.1 = getelementptr [8 x i8], ptr %invariant.gep1578, i64 %indvars.iv.next1388
  store double %i.tf, ptr %gep1579.1, align 8, !tbaa !54
  %i.tg = load double, ptr %i.qq, align 8, !tbaa !54
  %i.th = fneg double %i.tg
  %gep1581.1 = getelementptr [8 x i8], ptr %invariant.gep1580, i64 %indvars.iv.next1388
  %i.ti = load double, ptr %gep1581.1, align 8, !tbaa !54
  %i.tj = fmul double %i.ti, %i.th
  %gep1583.1 = getelementptr [8 x i8], ptr %invariant.gep1582, i64 %indvars.iv.next1388
  store double %i.tj, ptr %gep1583.1, align 8, !tbaa !54
  %indvars.iv.next1388.1 = add nuw nsw i64 %indvars.iv1387, 2 ; 2 uses
  %exitcond1391.not.1 = icmp eq i64 %indvars.iv.next1388.1, %wide.trip.count1390
  br i1 %exitcond1391.not.1, label %.lr.ph1269.preheader, label %scalar.ph1764, !llvm.loop !25

.lr.ph1269:                                       ; preds = %.lr.ph1269.preheader, %.lr.ph1269._crit_edge
  %indvars.iv1392 = phi i64 [ %i.st, %.lr.ph1269.preheader ], [ %.pre1509, %.lr.ph1269._crit_edge ] ; 15 uses
  %.310811267 = phi i32 [ %i.qk, %.lr.ph1269.preheader ], [ %.51083, %.lr.ph1269._crit_edge ] ; 2 uses
  %indvars1394 = trunc i64 %indvars.iv1392 to i32 ; 2 uses
  %i.tk = sext i32 %.310811267 to i64
  %i.tl = icmp sgt i64 %indvars.iv1392, %i.tk
  %.pre1509 = add nsw i64 %indvars.iv1392, -1     ; 8 uses
  br i1 %i.tl, label %.lr.ph1269._crit_edge, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph1269
  %.not1152 = icmp eq i64 %indvars.iv1392, 1
  br i1 %.not1152, label %..thread1182_crit_edge, label %bb.bg

..thread1182_crit_edge:                           ; preds = %bb.bf
  %.pre1469 = load i32, ptr %3, align 4, !tbaa !52
  br label %.thread1182

bb.bg:                                            ; preds = %bb.bf
  %i.tm = add nsw i32 %indvars1394, -1            ; 2 uses
  %i.tn = mul nsw i32 %i.tm, %i.t
  %i.to = sext i32 %i.tn to i64                   ; 2 uses
  %i.tp = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv1392
  %i.tq = getelementptr [8 x i8], ptr %i.tp, i64 %i.to
  %i.tr = load double, ptr %i.tq, align 8, !tbaa !54
  %i.ts = fcmp oeq double %i.tr, 0.000000e+00
  %i.tt = trunc i64 %indvars.iv1392 to i32
  %i.tu = add i32 %i.tt, -2                       ; 5 uses
  %.pre1470 = load i32, ptr %3, align 4, !tbaa !52 ; 2 uses
  br i1 %i.ts, label %.thread1182, label %bb.bm

.thread1182:                                      ; preds = %..thread1182_crit_edge, %bb.bg
  %i.tv = phi i32 [ %.pre1470, %bb.bg ], [ %.pre1469, %..thread1182_crit_edge ]
  %.410821185 = phi i32 [ %i.tm, %bb.bg ], [ 0, %..thread1182_crit_edge ]
  %i.tw = mul nsw i64 %indvars.iv1392, %i.en
  %i.tx = mul nsw i32 %i.t, %indvars1394
  %i.ty = sext i32 %i.tx to i64
  %i.tz = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv1392
  %i.ua = getelementptr [8 x i8], ptr %i.tz, i64 %i.ty
  %i.ub = sext i32 %i.tv to i64
  %i.uc = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv1392
  %i.ud = getelementptr [8 x i8], ptr %i.uc, i64 %i.ub
  call void @dlaln2_(ptr noundef nonnull @c_false, ptr noundef nonnull @c__1, ptr noundef nonnull @c__2, ptr noundef nonnull %i.j, ptr noundef nonnull @c_b22, ptr noundef %i.ua, ptr noundef nonnull %5, ptr noundef nonnull @c_b22, ptr noundef nonnull @c_b22, ptr noundef nonnull %i.ud, ptr noundef nonnull %3, ptr noundef nonnull %i.q, ptr noundef nonnull %i.p, ptr noundef nonnull %i.l, ptr noundef nonnull @c__2, ptr noundef nonnull %i.k, ptr noundef nonnull %i.n, ptr noundef nonnull %i.g) #7
  %i.ue = load double, ptr %i.n, align 8, !tbaa !54 ; 4 uses
  %i.uf = fcmp ogt double %i.ue, 1.000000e+00
  br i1 %i.uf, label %bb.bh, label %thread-pre-split1186
end_hunk_0
begin_hunk_1_@dtrevc_:bb.a
  %i.ars = add nsw i32 %i.arp, %i.aro
  %i.art = sext i32 %i.ars to i64
  %i.aru = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.art
  %i.arv = mul nsw i32 %.21362, %i.w              ; 4 uses
  %i.arw = add nsw i32 %i.arp, %i.arv
  %i.arx = sext i32 %i.arw to i64
  %i.ary = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.arx
  call void @dcopy_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.aru, ptr noundef nonnull @c__1, ptr noundef %i.ary, ptr noundef nonnull @c__1) #7
  %i.arz = load i32, ptr %3, align 4, !tbaa !52
  %i.asa = load i32, ptr %i.o, align 4, !tbaa !52 ; 2 uses
  %i.asb = add i32 %i.arz, 1
  %i.asc = sub i32 %i.asb, %i.asa
  store i32 %i.asc, ptr %i.d, align 4, !tbaa !52
  %i.asd = add nsw i32 %i.asa, %i.arv
  %i.ase = sext i32 %i.asd to i64
  %i.asf = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ase
  %i.asg = call i32 @idamax_(ptr noundef nonnull %i.d, ptr noundef %i.asf, ptr noundef nonnull @c__1) #7
  %i.ash = load i32, ptr %i.o, align 4, !tbaa !52 ; 2 uses
  %i.asi = add i32 %i.ash, %i.arv                 ; 2 uses
  %i.asj = add i32 %i.asi, -1
  %i.ask = add i32 %i.asj, %i.asg
  %i.asl = sext i32 %i.ask to i64
  %i.asm = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.asl
  %i.asn = load double, ptr %i.asm, align 8, !tbaa !54 ; 4 uses
  store double %i.asn, ptr %i.f, align 8, !tbaa !54
  %i.aso = fcmp oge double %i.asn, 0.000000e+00
  %i.asp = fneg double %i.asn
  %i.asq = select i1 %i.aso, double %i.asn, double %i.asp
  %i.asr = fdiv double 1.000000e+00, %i.asq
  store double %i.asr, ptr %i.m, align 8, !tbaa !54
  %i.ass = load i32, ptr %3, align 4, !tbaa !52
  %reass.sub = sub i32 %i.ass, %i.ash
  %i.ast = add i32 %reass.sub, 1
  store i32 %i.ast, ptr %i.d, align 4, !tbaa !52
  %i.asu = sext i32 %i.asi to i64
  %i.asv = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.asu
  call void @dscal_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.m, ptr noundef %i.asv, ptr noundef nonnull @c__1) #7
  %i.asw = load i32, ptr %i.o, align 4, !tbaa !52 ; 2 uses
  %i.asx = add i32 %i.asw, -1                     ; 2 uses
  store i32 %i.asx, ptr %i.d, align 4, !tbaa !52
  %.not1142.not1322 = icmp sgt i32 %i.asw, 1
  br i1 %.not1142.not1322, label %.lr.ph1325.preheader, label %.loopexit

.lr.ph1325.preheader:                             ; preds = %bb.cw
  %i.asy = add i32 %i.arv, 1
  %i.asz = sext i32 %i.asy to i64
  %i.ata = shl nsw i64 %i.asz, 3
  %scevgep1433 = getelementptr i8, ptr %scevgep1432, i64 %i.ata
  %i.atb = zext nneg i32 %i.asx to i64
  %i.atc = shl nuw nsw i64 %i.atb, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1433, i8 0, i64 %i.atc, i1 false), !tbaa !54
  br label %.loopexit

bb.cx:                                            ; preds = %._crit_edge1321
  %i.atd = icmp slt i32 %i.arp, %i.aro
  br i1 %i.atd, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.ate = sub nsw i32 %i.aro, %i.arp
  store i32 %i.ate, ptr %i.d, align 4, !tbaa !52
  %i.atf = add nsw i32 %i.arp, 1                  ; 2 uses
  %i.atg = mul nsw i32 %i.atf, %i.w
  %i.ath = sext i32 %i.atg to i64
  %i.ati = getelementptr [8 x i8], ptr %i.y, i64 %i.ath
  %i.atj = getelementptr i8, ptr %i.ati, i64 8
  %i.atk = add nsw i32 %i.atf, %i.aro
  %i.atl = sext i32 %i.atk to i64
  %i.atm = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.atl
  %i.atn = add nsw i32 %i.aro, %i.arp
  %i.ato = sext i32 %i.atn to i64
  %i.atp = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ato
  %i.atq = mul nsw i32 %i.arp, %i.w
  %i.atr = sext i32 %i.atq to i64
  %i.ats = getelementptr [8 x i8], ptr %i.y, i64 %i.atr
  %i.att = getelementptr i8, ptr %i.ats, i64 8
  call void @dgemv_(ptr noundef nonnull @.str.8, ptr noundef nonnull %3, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b22, ptr noundef %i.atj, ptr noundef nonnull %7, ptr noundef nonnull %i.atm, ptr noundef nonnull @c__1, ptr noundef nonnull %i.atp, ptr noundef %i.att, ptr noundef nonnull @c__1) #7
  %.pre1485 = load i32, ptr %i.o, align 4, !tbaa !52
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.atu = phi i32 [ %.pre1485, %bb.cy ], [ %i.arp, %bb.cx ]
  %i.atv = mul nsw i32 %i.atu, %i.w
  %i.atw = sext i32 %i.atv to i64
  %i.atx = getelementptr [8 x i8], ptr %i.y, i64 %i.atw
  %i.aty = getelementptr i8, ptr %i.atx, i64 8
  %i.atz = call i32 @idamax_(ptr noundef nonnull %3, ptr noundef %i.aty, ptr noundef nonnull @c__1) #7
  %i.aua = load i32, ptr %i.o, align 4, !tbaa !52
  %i.aub = mul nsw i32 %i.aua, %i.w               ; 2 uses
  %i.auc = add nsw i32 %i.aub, %i.atz
  %i.aud = sext i32 %i.auc to i64
  %i.aue = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aud
  %i.auf = load double, ptr %i.aue, align 8, !tbaa !54 ; 4 uses
  store double %i.auf, ptr %i.f, align 8, !tbaa !54
  %i.aug = fcmp oge double %i.auf, 0.000000e+00
  %i.auh = fneg double %i.auf
  %i.aui = select i1 %i.aug, double %i.auf, double %i.auh
  %i.auj = fdiv double 1.000000e+00, %i.aui
  store double %i.auj, ptr %i.m, align 8, !tbaa !54
  %i.auk = sext i32 %i.aub to i64
  %i.aul = getelementptr [8 x i8], ptr %i.y, i64 %i.auk
  %i.aum = getelementptr i8, ptr %i.aul, i64 8
  call void @dscal_(ptr noundef nonnull %3, ptr noundef nonnull %i.m, ptr noundef %i.aum, ptr noundef nonnull @c__1) #7
  br label %.loopexit

bb.da:                                            ; preds = %bb.ci
  %i.aun = add nsw i32 %storemerge11281360, 1     ; 6 uses
  %i.auo = mul nsw i32 %i.aun, %i.t
  %i.aup = add nsw i32 %i.auo, %storemerge11281360
  %i.auq = sext i32 %i.aup to i64
  %i.aur = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.auq
  %i.aus = load double, ptr %i.aur, align 8, !tbaa !54 ; 3 uses
  store double %i.aus, ptr %i.f, align 8, !tbaa !54
  %i.aut = call double @llvm.fabs.f64(double %i.aus)
  %i.auu = mul nsw i32 %storemerge11281360, %i.t
  %i.auv = add nsw i32 %i.aun, %i.auu
  %i.auw = sext i32 %i.auv to i64
  %i.aux = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.auw ; 2 uses
  %i.auy = load double, ptr %i.aux, align 8, !tbaa !54
  %i.auz = call double @llvm.fabs.f64(double %i.auy)
  %i.ava = fcmp ult double %i.aut, %i.auz
  br i1 %i.ava, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.avb = fdiv double %i.aiz, %i.aus
  %i.avc = load i32, ptr %3, align 4, !tbaa !52   ; 2 uses
  %i.avd = add nsw i32 %i.avc, %storemerge11281360
  %i.ave = sext i32 %i.avd to i64
  %i.avf = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ave
  store double %i.avb, ptr %i.avf, align 8, !tbaa !54
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da
  %i.avg = load i32, ptr %3, align 4, !tbaa !52   ; 2 uses
  %i.avh = add nsw i32 %i.avg, %storemerge11281360
  %i.avi = sext i32 %i.avh to i64
  %i.avj = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.avi
  store double 1.000000e+00, ptr %i.avj, align 8, !tbaa !54
  %i.avk = load double, ptr %i.aux, align 8, !tbaa !54
  %i.avl = fdiv double %i.aje, %i.avk
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.sink1642 = phi double [ %i.avl, %bb.dc ], [ 1.000000e+00, %bb.db ]
  %i.avm = phi i32 [ %i.avg, %bb.dc ], [ %i.avc, %bb.db ] ; 12 uses
  %i.avn = add nsw i32 %i.aun, %i.ed
  %i.avo = sext i32 %i.avn to i64
  %i.avp = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.avo
  store double %.sink1642, ptr %i.avp, align 8, !tbaa !54
  %i.avq = add nsw i32 %i.avm, %i.aun
  %i.avr = sext i32 %i.avq to i64
  %i.avs = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.avr
  store double 0.000000e+00, ptr %i.avs, align 8, !tbaa !54
  %i.avt = add nsw i32 %storemerge11281360, %i.ed
  %i.avu = sext i32 %i.avt to i64
  %i.avv = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.avu
  store double 0.000000e+00, ptr %i.avv, align 8, !tbaa !54
  %i.avw = add nsw i32 %storemerge11281360, 2     ; 4 uses
  %.not11331326 = icmp sgt i32 %i.avw, %i.avm
  br i1 %.not11331326, label %._crit_edge1330.thread, label %.lr.ph1329

._crit_edge1330.thread:                           ; preds = %bb.dd
  store i32 %i.avm, ptr %i.d, align 4, !tbaa !52
  br label %._crit_edge1338

.lr.ph1329:                                       ; preds = %bb.dd
  %i.avx = add nsw i32 %i.avm, %storemerge11281360
  %i.avy = sext i32 %i.avx to i64                 ; 2 uses
  %i.avz = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.avy ; 6 uses
  %i.awa = add nsw i32 %i.aun, %i.ed
  %i.awb = sext i32 %i.awa to i64                 ; 2 uses
  %i.awc = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.awb ; 6 uses
  %i.awd = sext i32 %i.avw to i64                 ; 8 uses
  %i.awe = sext i32 %storemerge11281360 to i64    ; 2 uses
  %i.awf = sext i32 %i.aun to i64                 ; 2 uses
  %i.awg = sext i32 %i.avm to i64                 ; 2 uses
  %i.awh = add i32 %i.avm, 1
  %invariant.gep1606 = getelementptr [8 x i8], ptr %i.v, i64 %i.awe ; 4 uses
  %invariant.gep1608 = getelementptr [8 x i8], ptr %i.ac, i64 %i.awg ; 4 uses
  %invariant.gep1610 = getelementptr [8 x i8], ptr %i.v, i64 %i.awf ; 4 uses
  %i.awi = add i32 %i.avm, -2
  %i.awj = sub i32 %i.awi, %storemerge11281360    ; 2 uses
  %i.awk = zext i32 %i.awj to i64                 ; 2 uses
  %i.awl = add nuw nsw i64 %i.awk, 1              ; 2 uses
  %min.iters.check1920 = icmp ugt i32 %i.awj, 22
  %or.cond2012 = select i1 %min.iters.check1920, i1 %ident.check.not, i1 false
  br i1 %or.cond2012, label %vector.memcheck1921, label %scalar.ph1919.preheader

vector.memcheck1921:                              ; preds = %.lr.ph1329
  %i.awm = shl nsw i64 %i.awd, 3                  ; 2 uses
  %i.awn = add nsw i64 %i.awg, %i.awd
  %i.awo = shl nsw i64 %i.awn, 3                  ; 2 uses
  %i.awp = getelementptr i8, ptr %i.ac, i64 %i.awo ; 5 uses
  %i.awq = shl nuw nsw i64 %i.awk, 3              ; 4 uses
  %i.awr = getelementptr i8, ptr %12, i64 %i.awo
  %i.aws = getelementptr i8, ptr %i.awr, i64 %i.awq ; 5 uses
  %i.awt = getelementptr i8, ptr %invariant.gep1614, i64 %i.awm ; 5 uses
  %i.awu = getelementptr i8, ptr %invariant.gep1616, i64 %i.awm
  %i.awv = getelementptr i8, ptr %i.awu, i64 %i.awq ; 5 uses
  %i.aww = shl nsw i64 %i.avy, 3
  %i.awx = getelementptr i8, ptr %12, i64 %i.aww  ; 2 uses
  %i.awy = add nsw i64 %i.awd, %i.awf
  %i.awz = shl nsw i64 %i.awy, 3                  ; 2 uses
  %i.axa = getelementptr i8, ptr %scevgep1918, i64 %i.awz ; 2 uses
  %i.axb = getelementptr i8, ptr %scevgep1917, i64 %i.awz
  %i.axc = getelementptr i8, ptr %i.axb, i64 %i.awq ; 2 uses
  %i.axd = add nsw i64 %i.awe, %i.awd
  %i.axe = shl nsw i64 %i.axd, 3                  ; 2 uses
  %i.axf = getelementptr i8, ptr %scevgep1918, i64 %i.axe ; 2 uses
  %i.axg = getelementptr i8, ptr %scevgep1917, i64 %i.axe
  %i.axh = getelementptr i8, ptr %i.axg, i64 %i.awq ; 2 uses
  %i.axi = shl nsw i64 %i.awb, 3
  %i.axj = getelementptr i8, ptr %12, i64 %i.axi  ; 2 uses
  %bound01922 = icmp ult ptr %i.awp, %i.awv
  %bound11923 = icmp ult ptr %i.awt, %i.aws
  %found.conflict1924 = and i1 %bound01922, %bound11923
  %bound01925 = icmp ult ptr %i.awp, %i.awx
  %bound11926 = icmp ult ptr %i.avz, %i.aws
  %found.conflict1927 = and i1 %bound01925, %bound11926
  %conflict.rdx1928 = or i1 %found.conflict1924, %found.conflict1927
  %bound01929 = icmp ult ptr %i.awp, %i.axc
  %bound11930 = icmp ult ptr %i.axa, %i.aws
  %found.conflict1931 = and i1 %bound01929, %bound11930
  %conflict.rdx1932 = or i1 %conflict.rdx1928, %found.conflict1931
  %bound01933 = icmp ult ptr %i.awp, %i.axh
  %bound11934 = icmp ult ptr %i.axf, %i.aws
  %found.conflict1935 = and i1 %bound01933, %bound11934
  %conflict.rdx1936 = or i1 %conflict.rdx1932, %found.conflict1935
  %bound01937 = icmp ult ptr %i.awp, %i.axj
  %bound11938 = icmp ult ptr %i.awc, %i.aws
  %found.conflict1939 = and i1 %bound01937, %bound11938
  %conflict.rdx1940 = or i1 %conflict.rdx1936, %found.conflict1939
  %bound01941 = icmp ult ptr %i.awt, %i.awx
  %bound11942 = icmp ult ptr %i.avz, %i.awv
  %found.conflict1943 = and i1 %bound01941, %bound11942
  %conflict.rdx1944 = or i1 %conflict.rdx1940, %found.conflict1943
  %bound01945 = icmp ult ptr %i.awt, %i.axc
  %bound11946 = icmp ult ptr %i.axa, %i.awv
  %found.conflict1947 = and i1 %bound01945, %bound11946
  %conflict.rdx1948 = or i1 %conflict.rdx1944, %found.conflict1947
  %bound01949 = icmp ult ptr %i.awt, %i.axh
  %bound11950 = icmp ult ptr %i.axf, %i.awv
  %found.conflict1951 = and i1 %bound01949, %bound11950
  %conflict.rdx1952 = or i1 %conflict.rdx1948, %found.conflict1951
  %bound01953 = icmp ult ptr %i.awt, %i.axj
  %bound11954 = icmp ult ptr %i.awc, %i.awv
  %found.conflict1955 = and i1 %bound01953, %bound11954
  %conflict.rdx1956 = or i1 %conflict.rdx1952, %found.conflict1955
  br i1 %conflict.rdx1956, label %scalar.ph1919.preheader, label %vector.ph1957

vector.ph1957:                                    ; preds = %vector.memcheck1921
  %n.vec1958 = and i64 %i.awl, 8589934584         ; 3 uses
  %i.axk = add nsw i64 %n.vec1958, %i.awd
  %i.axl = load double, ptr %i.avz, align 8, !tbaa !54, !alias.scope !68
  %.scalar2014 = fneg double %i.axl
  %i.axm = insertelement <4 x double> poison, double %.scalar2014, i64 0
  %i.axn = shufflevector <4 x double> %i.axm, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.axo = load double, ptr %i.awc, align 8, !tbaa !54, !alias.scope !69
  %.scalar2015 = fneg double %i.axo
  %i.axp = insertelement <4 x double> poison, double %.scalar2015, i64 0
  %i.axq = shufflevector <4 x double> %i.axp, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1963

vector.body1963:                                  ; preds = %vector.body1963, %vector.ph1957
  %index1964 = phi i64 [ 0, %vector.ph1957 ], [ %index.next1969, %vector.body1963 ] ; 2 uses
  %i.axr = add i64 %index1964, %i.awd             ; 4 uses
  %i.axs = getelementptr [8 x i8], ptr %invariant.gep1606, i64 %i.axr ; 2 uses
  %i.axt = getelementptr i8, ptr %i.axs, i64 32
  %wide.load1965 = load <4 x double>, ptr %i.axs, align 8, !tbaa !54, !alias.scope !70
  %wide.load1966 = load <4 x double>, ptr %i.axt, align 8, !tbaa !54, !alias.scope !70
  %i.axu = fmul <4 x double> %wide.load1965, %i.axn
  %i.axv = fmul <4 x double> %wide.load1966, %i.axn
  %i.axw = getelementptr [8 x i8], ptr %invariant.gep1608, i64 %i.axr ; 2 uses
  %i.axx = getelementptr i8, ptr %i.axw, i64 32
  store <4 x double> %i.axu, ptr %i.axw, align 8, !tbaa !54, !alias.scope !71, !noalias !72
  store <4 x double> %i.axv, ptr %i.axx, align 8, !tbaa !54, !alias.scope !71, !noalias !72
  %i.axy = getelementptr [8 x i8], ptr %invariant.gep1610, i64 %i.axr ; 2 uses
  %i.axz = getelementptr i8, ptr %i.axy, i64 32
  %wide.load1967 = load <4 x double>, ptr %i.axy, align 8, !tbaa !54, !alias.scope !73
  %wide.load1968 = load <4 x double>, ptr %i.axz, align 8, !tbaa !54, !alias.scope !73
  %i.aya = fmul <4 x double> %wide.load1967, %i.axq
  %i.ayb = fmul <4 x double> %wide.load1968, %i.axq
  %i.ayc = getelementptr [8 x i8], ptr %invariant.gep1612, i64 %i.axr ; 2 uses
  %i.ayd = getelementptr i8, ptr %i.ayc, i64 32
  store <4 x double> %i.aya, ptr %i.ayc, align 8, !tbaa !54, !alias.scope !74, !noalias !75
  store <4 x double> %i.ayb, ptr %i.ayd, align 8, !tbaa !54, !alias.scope !74, !noalias !75
  %index.next1969 = add nuw i64 %index1964, 8     ; 2 uses
  %i.aye = icmp eq i64 %index.next1969, %n.vec1958
  br i1 %i.aye, label %middle.block1970, label %vector.body1963, !llvm.loop !44

middle.block1970:                                 ; preds = %vector.body1963
  %cmp.n1971 = icmp eq i64 %i.awl, %n.vec1958
  br i1 %cmp.n1971, label %.lr.ph1337.preheader, label %scalar.ph1919.preheader

scalar.ph1919.preheader:                          ; preds = %vector.memcheck1921, %.lr.ph1329, %middle.block1970
  %indvars.iv1438.ph = phi i64 [ %i.awd, %vector.memcheck1921 ], [ %i.awd, %.lr.ph1329 ], [ %i.axk, %middle.block1970 ] ; 6 uses
  %i.ayf = trunc i64 %indvars.iv1438.ph to i32    ; 2 uses
  %i.ayg = add i32 %i.avm, %i.ayf
  %i.ayh = and i32 %i.ayg, 1
  %lcmp.mod2058.not.not = icmp eq i32 %i.ayh, 0
  br i1 %lcmp.mod2058.not.not, label %scalar.ph1919.prol, label %scalar.ph1919.prol.loopexit

scalar.ph1919.prol:                               ; preds = %scalar.ph1919.preheader
  %i.ayi = load double, ptr %i.avz, align 8, !tbaa !54
  %i.ayj = fneg double %i.ayi
  %i.ayk = mul nsw i64 %indvars.iv1438.ph, %i.ahh ; 2 uses
  %gep1607.prol = getelementptr [8 x i8], ptr %invariant.gep1606, i64 %i.ayk
  %i.ayl = load double, ptr %gep1607.prol, align 8, !tbaa !54
  %i.aym = fmul double %i.ayl, %i.ayj
  %gep1609.prol = getelementptr [8 x i8], ptr %invariant.gep1608, i64 %indvars.iv1438.ph
  store double %i.aym, ptr %gep1609.prol, align 8, !tbaa !54
  %i.ayn = load double, ptr %i.awc, align 8, !tbaa !54
  %i.ayo = fneg double %i.ayn
  %gep1611.prol = getelementptr [8 x i8], ptr %invariant.gep1610, i64 %i.ayk
  %i.ayp = load double, ptr %gep1611.prol, align 8, !tbaa !54
  %i.ayq = fmul double %i.ayp, %i.ayo
  %gep1613.prol = getelementptr [8 x i8], ptr %invariant.gep1612, i64 %indvars.iv1438.ph
  store double %i.ayq, ptr %gep1613.prol, align 8, !tbaa !54
  %indvars.iv.next1439.prol = add nsw i64 %indvars.iv1438.ph, 1
  br label %scalar.ph1919.prol.loopexit

scalar.ph1919.prol.loopexit:                      ; preds = %scalar.ph1919.prol, %scalar.ph1919.preheader
  %indvars.iv1438.unr = phi i64 [ %indvars.iv1438.ph, %scalar.ph1919.preheader ], [ %indvars.iv.next1439.prol, %scalar.ph1919.prol ]
  %i.ayr = icmp eq i32 %i.avm, %i.ayf
  br i1 %i.ayr, label %.lr.ph1337.preheader, label %scalar.ph1919

scalar.ph1919:                                    ; preds = %scalar.ph1919.prol.loopexit, %scalar.ph1919
  %indvars.iv1438 = phi i64 [ %indvars.iv.next1439.1, %scalar.ph1919 ], [ %indvars.iv1438.unr, %scalar.ph1919.prol.loopexit ] ; 5 uses
  %i.ays = load double, ptr %i.avz, align 8, !tbaa !54
  %i.ayt = fneg double %i.ays
  %i.ayu = mul nsw i64 %indvars.iv1438, %i.ahh    ; 2 uses
  %gep1607 = getelementptr [8 x i8], ptr %invariant.gep1606, i64 %i.ayu
  %i.ayv = load double, ptr %gep1607, align 8, !tbaa !54
  %i.ayw = fmul double %i.ayv, %i.ayt
  %gep1609 = getelementptr [8 x i8], ptr %invariant.gep1608, i64 %indvars.iv1438
  store double %i.ayw, ptr %gep1609, align 8, !tbaa !54
  %i.ayx = load double, ptr %i.awc, align 8, !tbaa !54
  %i.ayy = fneg double %i.ayx
  %gep1611 = getelementptr [8 x i8], ptr %invariant.gep1610, i64 %i.ayu
  %i.ayz = load double, ptr %gep1611, align 8, !tbaa !54
  %i.aza = fmul double %i.ayz, %i.ayy
  %gep1613 = getelementptr [8 x i8], ptr %invariant.gep1612, i64 %indvars.iv1438
  store double %i.aza, ptr %gep1613, align 8, !tbaa !54
  %indvars.iv.next1439 = add nsw i64 %indvars.iv1438, 1 ; 3 uses
  %i.azb = load double, ptr %i.avz, align 8, !tbaa !54
  %i.azc = fneg double %i.azb
  %i.azd = mul nsw i64 %indvars.iv.next1439, %i.ahh ; 2 uses
  %gep1607.1 = getelementptr [8 x i8], ptr %invariant.gep1606, i64 %i.azd
  %i.aze = load double, ptr %gep1607.1, align 8, !tbaa !54
  %i.azf = fmul double %i.aze, %i.azc
  %gep1609.1 = getelementptr [8 x i8], ptr %invariant.gep1608, i64 %indvars.iv.next1439
  store double %i.azf, ptr %gep1609.1, align 8, !tbaa !54
  %i.azg = load double, ptr %i.awc, align 8, !tbaa !54
  %i.azh = fneg double %i.azg
  %gep1611.1 = getelementptr [8 x i8], ptr %invariant.gep1610, i64 %i.azd
  %i.azi = load double, ptr %gep1611.1, align 8, !tbaa !54
  %i.azj = fmul double %i.azi, %i.azh
  %gep1613.1 = getelementptr [8 x i8], ptr %invariant.gep1612, i64 %indvars.iv.next1439
  store double %i.azj, ptr %gep1613.1, align 8, !tbaa !54
  %indvars.iv.next1439.1 = add nsw i64 %indvars.iv1438, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next1439.1 to i32
  %exitcond1442.not.1 = icmp eq i32 %i.awh, %lftr.wideiv.1
  br i1 %exitcond1442.not.1, label %.lr.ph1337.preheader, label %scalar.ph1919, !llvm.loop !45

.lr.ph1337.preheader:                             ; preds = %scalar.ph1919.prol.loopexit, %scalar.ph1919, %middle.block1970
  store i32 %i.avm, ptr %i.d, align 4, !tbaa !52
  %i.azk = sext i32 %i.avw to i64
  br label %.lr.ph1337

.lr.ph1337:                                       ; preds = %.lr.ph1337.preheader, %.lr.ph1337._crit_edge
  %i.azl = phi i32 [ %i.avm, %.lr.ph1337.preheader ], [ %i.biv, %.lr.ph1337._crit_edge ] ; 8 uses
  %indvars.iv1443 = phi i64 [ %i.azk, %.lr.ph1337.preheader ], [ %.pre1507, %.lr.ph1337._crit_edge ] ; 26 uses
  %.210631335 = phi double [ %i.cr, %.lr.ph1337.preheader ], [ %.31064, %.lr.ph1337._crit_edge ] ; 3 uses
  %.910871333 = phi i32 [ %i.avw, %.lr.ph1337.preheader ], [ %.111089, %.lr.ph1337._crit_edge ] ; 2 uses
  %.410941332 = phi double [ 1.000000e+00, %.lr.ph1337.preheader ], [ %.71097, %.lr.ph1337._crit_edge ] ; 5 uses
  %indvars1446 = trunc i64 %indvars.iv1443 to i32 ; 3 uses
  %i.azm = sext i32 %.910871333 to i64
  %i.azn = icmp slt i64 %indvars.iv1443, %i.azm
  %.pre1507 = add nsw i64 %indvars.iv1443, 1      ; 4 uses
  br i1 %i.azn, label %.lr.ph1337._crit_edge, label %bb.de

bb.de:                                            ; preds = %.lr.ph1337
  %i.azo = sext i32 %i.azl to i64
  %i.azp = icmp slt i64 %indvars.iv1443, %i.azo
  br i1 %i.azp, label %bb.df, label %..thread1194_crit_edge

..thread1194_crit_edge:                           ; preds = %bb.de
  %i.azq = trunc nsw i64 %.pre1507 to i32
  %.pre1490.pre = load i32, ptr %i.o, align 4, !tbaa !52
  br label %.thread1194

bb.df:                                            ; preds = %bb.de
  %i.azr = add nsw i32 %indvars1446, 1
  %i.azs = mul nsw i64 %indvars.iv1443, %i.ahh    ; 3 uses
  %i.azt = getelementptr [8 x i8], ptr %i.v, i64 %.pre1507
  %i.azu = getelementptr [8 x i8], ptr %i.azt, i64 %i.azs
  %i.azv = load double, ptr %i.azu, align 8, !tbaa !54
  %i.azw = fcmp oeq double %i.azv, 0.000000e+00
  %i.azx = trunc nsw i64 %indvars.iv1443 to i32
  %i.azy = add i32 %i.azx, 2
  %.pre1490.pre1497 = load i32, ptr %i.o, align 4, !tbaa !52 ; 4 uses
  br i1 %i.azw, label %.thread1194, label %bb.dk

.thread1194:                                      ; preds = %..thread1194_crit_edge, %bb.df
  %.pre1490 = phi i32 [ %.pre1490.pre1497, %bb.df ], [ %.pre1490.pre, %..thread1194_crit_edge ] ; 3 uses
  %.1010881197 = phi i32 [ %i.azr, %bb.df ], [ %i.azq, %..thread1194_crit_edge ]
  %i.azz = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %indvars.iv1443
end_hunk_1
begin_hunk_2_@dtrevc_:bb.a
  br i1 %exitcond1452.not, label %._crit_edge1344, label %scalar.ph1812, !llvm.loop !50

._crit_edge1344:                                  ; preds = %scalar.ph1812, %middle.block1831
  %.lcssa1651 = phi double [ %i.bta, %middle.block1831 ], [ %i.btb, %scalar.ph1812 ]
  %.lcssa1650 = phi double [ %i.bsy, %middle.block1831 ], [ %i.btl, %scalar.ph1812 ]
  store double %.lcssa1651, ptr %i.f, align 8, !tbaa !54
  br label %bb.dv

bb.dv:                                            ; preds = %._crit_edge1500, %._crit_edge1344
  %.pre-phi1506 = phi i64 [ %.pre1505, %._crit_edge1500 ], [ %i.bqh, %._crit_edge1344 ]
  %.31103.lcssa = phi double [ 0.000000e+00, %._crit_edge1500 ], [ %.lcssa1650, %._crit_edge1344 ]
  %i.btm = fdiv double 1.000000e+00, %.31103.lcssa
  store double %i.btm, ptr %i.m, align 8, !tbaa !54
  %i.btn = getelementptr [8 x i8], ptr %i.y, i64 %.pre-phi1506
  %i.bto = getelementptr i8, ptr %i.btn, i64 8
  call void @dscal_(ptr noundef nonnull %3, ptr noundef nonnull %i.m, ptr noundef %i.bto, ptr noundef nonnull @c__1) #7
  %i.btp = load i32, ptr %i.o, align 4, !tbaa !52
  %i.btq = add nsw i32 %i.btp, 1
  %i.btr = mul nsw i32 %i.btq, %i.w
  %i.bts = sext i32 %i.btr to i64
  %i.btt = getelementptr [8 x i8], ptr %i.y, i64 %i.bts
  %i.btu = getelementptr i8, ptr %i.btt, i64 8
  call void @dscal_(ptr noundef nonnull %3, ptr noundef nonnull %i.m, ptr noundef %i.btu, ptr noundef nonnull @c__1) #7
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph1325.preheader, %.lr.ph1358.preheader, %bb.cw, %bb.dq, %bb.dv, %bb.cz
  %spec.select1219.v = phi i32 [ 2, %bb.dv ], [ 2, %bb.dq ], [ 1, %bb.cz ], [ 1, %bb.cw ], [ 2, %.lr.ph1358.preheader ], [ 1, %.lr.ph1325.preheader ]
  %spec.select1219 = add nsw i32 %spec.select1219.v, %.21362
  %spec.select1220 = sext i1 %.not1132 to i32
  %.pre1493 = load i32, ptr %i.o, align 4, !tbaa !52
  %.pre1494 = load i32, ptr %i.c, align 4, !tbaa !52
  br label %.thread1204

bb.dw:                                            ; preds = %bb.cf
  %i.btv = icmp eq i32 %.4, 1
  %spec.select1221 = select i1 %i.btv, i32 -1, i32 %.4
  br label %.thread1204

.thread1204:                                      ; preds = %bb.dw, %.loopexit, %bb.cb
  %i.btw = phi i32 [ %i.ahm, %bb.cb ], [ %i.ahm, %bb.dw ], [ %.pre1494, %.loopexit ] ; 2 uses
  %i.btx = phi i32 [ %storemerge11281360, %bb.cb ], [ %storemerge11281360, %bb.dw ], [ %.pre1493, %.loopexit ] ; 2 uses
  %.312031207 = phi i32 [ %.21362, %bb.cb ], [ %.21362, %bb.dw ], [ %spec.select1219, %.loopexit ]
  %i.bty = phi i32 [ 0, %bb.cb ], [ %spec.select1221, %bb.dw ], [ %spec.select1220, %.loopexit ]
  %i.btz = add nsw i32 %i.btx, 1                  ; 2 uses
  store i32 %i.btz, ptr %i.o, align 4, !tbaa !52
  %.not1129.not = icmp slt i32 %i.btx, %i.btw
  br i1 %.not1129.not, label %bb.cb, label %.loopexit1249, !llvm.loop !51

.loopexit1249:                                    ; preds = %.thread1204, %bb.ca, %.loopexit1253, %bb.v, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

declare void @dlabad_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

declare void @dlaln2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @daxpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @idamax_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @ddot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.maxnum.v4f64(<4 x double>, <4 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fmax.v4f64(<4 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i1> @llvm.is.fpclass.v4f64(<4 x double>, i32 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v3f64.p0(<3 x double>, ptr captures(none), <3 x i1>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !55}
!9 = distinct !{!9, !55}
!10 = distinct !{!10, !56}
!11 = distinct !{!11, !55}
!12 = distinct !{!12, !55, !57, !58}
!13 = distinct !{!13, !55, !57, !58}
!14 = distinct !{!14, !56}
!15 = distinct !{!15, !55, !57}
!16 = distinct !{!16, !55}
!17 = distinct !{!17, i1 false, !"LVerDomain"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !55, !57, !58}
!25 = distinct !{!25, !55, !57}
!26 = distinct !{!26, !55}
!27 = distinct !{!27, !55, !57, !58}
!28 = distinct !{!28, !55, !58, !57}
!29 = distinct !{!29, !55, !57, !58}
!30 = distinct !{!30, !55, !58, !57}
!31 = distinct !{!31, !55}
!32 = distinct !{!32, !55, !57, !58}
!33 = distinct !{!33, !55, !57, !58}
!34 = distinct !{!34, !56}
!35 = distinct !{!35, !55, !57}
!36 = distinct !{!36, !55}
!37 = distinct !{!37, i1 false, !"LVerDomain"}
!38 = distinct !{!38, !37}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !37}
!41 = distinct !{!41, !37}
!42 = distinct !{!42, !37}
!43 = distinct !{!43, !37}
!44 = distinct !{!44, !55, !57, !58}
!45 = distinct !{!45, !55, !57}
!46 = distinct !{!46, !55}
!47 = distinct !{!47, !55, !57, !58}
!48 = distinct !{!48, !55, !58, !57}
!49 = distinct !{!49, !55, !57, !58}
!50 = distinct !{!50, !55, !58, !57}
!51 = distinct !{!51, !55}
!52 = !{!5, !5, i64 0}
!53 = !{!"double", !4, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!"llvm.loop.isvectorized", i32 1}
!58 = !{!"llvm.loop.unroll.runtime.disable"}
!59 = !{!"branch_weights", i32 4, i32 12}
!60 = !{!18}
!61 = !{!19}
!62 = !{!20}
!63 = !{!21}
!64 = !{!23, !18, !22, !20, !19}
!65 = !{!22}
!66 = !{!23}
!67 = !{!18, !22, !20, !19}
!68 = !{!38}
!69 = !{!39}
!70 = !{!40}
!71 = !{!41}
!72 = !{!43, !38, !42, !40, !39}
!73 = !{!42}
!74 = !{!43}
!75 = !{!38, !42, !40, !39}
end_hunk_2
