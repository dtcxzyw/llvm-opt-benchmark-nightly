begin_hunk_0_@on_proc_comm_diff:bb.a
  %i.il = load double, ptr %i.ik, align 8, !tbaa !21
  %i.im = getelementptr inbounds [8 x i8], ptr %i.if, i64 %.01022
  %i.in = load double, ptr %i.im, align 8, !tbaa !21
  %i.io = fadd double %i.il, %i.in
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.ic, i64 %.01022
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !21
  %i.ir = fadd double %i.io, %i.iq
  %i.is = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %.01022
  %i.it = load double, ptr %i.is, align 8, !tbaa !21
  %i.iu = fadd double %i.ir, %i.it
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %.01028
  store double %i.iu, ptr %i.iv, align 8, !tbaa !21
  %indvars.iv.next1334 = add nuw nsw i64 %indvars.iv1333, 1 ; 2 uses
  %exitcond1337.not = icmp eq i64 %indvars.iv.next1334, %wide.trip.count1336
  br i1 %exitcond1337.not, label %._crit_edge1200, label %bb.p, !llvm.loop !98

._crit_edge1200:                                  ; preds = %bb.p
  %indvars.iv.next1339 = add nuw nsw i64 %indvars.iv1338, 1 ; 2 uses
  %exitcond1342.not = icmp eq i64 %indvars.iv.next1339, %wide.trip.count1341
  br i1 %exitcond1342.not, label %._crit_edge1203.split, label %.preheader1095, !llvm.loop !99

._crit_edge1203.split:                            ; preds = %._crit_edge1200
  %indvars.iv.next1344 = add nsw i64 %indvars.iv1343, 1 ; 2 uses
  %i.iw = icmp slt i64 %indvars.iv.next1344, %i.hi
  br i1 %i.iw, label %.preheader1096, label %.loopexit, !llvm.loop !100

bb.q:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.r, label %bb.ai

bb.r:                                             ; preds = %bb.q
  %i.ix = icmp eq i32 %2, 0
  %i.iy = load i32, ptr @x_block_size, align 4, !tbaa !4 ; 3 uses
  %i.iz = add nsw i32 %i.iy, 1                    ; 2 uses
  br i1 %i.ix, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ja = sext i32 %i.iz to i64
  %i.jb = sext i32 %i.iy to i64
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.jc = sext i32 %i.iy to i64
  %i.jd = sext i32 %i.iz to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.11045 = phi i64 [ 0, %bb.s ], [ %i.jd, %bb.t ] ; 5 uses
  %.11043 = phi i64 [ 1, %bb.s ], [ %i.jc, %bb.t ]
  %.11041 = phi i64 [ %i.ja, %bb.s ], [ 0, %bb.t ]
  %.11039 = phi i64 [ %i.jb, %bb.s ], [ 1, %bb.t ] ; 3 uses
  %i.je = icmp sgt i32 %6, 0
  br i1 %i.je, label %.lr.ph1196, label %.loopexit

.lr.ph1196:                                       ; preds = %bb.u
  %i.jf = add nsw i32 %6, %5
  %i.jg = load i32, ptr @z_block_half, align 4, !tbaa !4 ; 3 uses
  %i.jh = mul i32 %i.jg, %3                       ; 2 uses
  %i.ji = load i32, ptr @y_block_half, align 4, !tbaa !4 ; 3 uses
  %i.jj = mul nsw i32 %i.ji, %4                   ; 2 uses
  %i.jk = add i32 %i.jg, 1                        ; 11 uses
  %i.jl = load i32, ptr @z_block_size, align 4, !tbaa !4
  %i.jm = add nsw i32 %i.jl, 1
  %i.jn = add i32 %i.ji, 1                        ; 2 uses
  %i.jo = load i32, ptr @y_block_size, align 4, !tbaa !4
  %i.jp = add nsw i32 %i.jo, 1
  %i.jq = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !27
  %i.js = sext i32 %i.jj to i64                   ; 2 uses
  %i.jt = sext i32 %i.jh to i64                   ; 17 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !27
  %.not10851166 = icmp slt i32 %i.jg, 1           ; 5 uses
  %i.jw = add nsw i32 %i.jk, %i.jh
  %i.jx = sext i32 %i.jw to i64                   ; 3 uses
  %i.jy = sext i32 %i.jm to i64                   ; 11 uses
  %i.jz = icmp eq i32 %4, 0
  %i.ka = icmp eq i32 %3, 0                       ; 3 uses
  %.not10871180 = icmp slt i32 %i.ji, 1
  %i.kb = add nsw i32 %i.jn, %i.jj
  %i.kc = sext i32 %i.kb to i64
  %i.kd = sext i32 %i.jp to i64                   ; 4 uses
  %i.ke = icmp eq i32 %4, 1
  %i.kf = sext i32 %5 to i64
  %i.kg = sext i32 %i.jf to i64
  %wide.trip.count1303 = zext i32 %i.jk to i64    ; 19 uses
  %wide.trip.count1308 = zext i32 %i.jk to i64
  %wide.trip.count1318 = zext i32 %i.jn to i64
  %wide.trip.count1313 = zext i32 %i.jk to i64
  %wide.trip.count1323 = zext i32 %i.jk to i64
  %wide.trip.count1328 = zext i32 %i.jk to i64
  %i.kh = shl nsw i64 %i.jt, 3
  %i.ki = add nsw i64 %i.jt, %wide.trip.count1303
  %i.kj = shl nsw i64 %i.ki, 3
  %i.kk = shl nuw nsw i64 %wide.trip.count1303, 4
  %i.kl = add nsw i64 %i.kk, -8                   ; 2 uses
  %i.km = add nsw i64 %wide.trip.count1303, -1    ; 5 uses
  %i.kn = shl nsw i64 %i.jt, 3
  %i.ko = add nsw i64 %i.kn, 8                    ; 3 uses
  %i.kp = add nsw i64 %i.jt, %wide.trip.count1303
  %i.kq = shl nsw i64 %i.kp, 3                    ; 3 uses
  %i.kr = shl nuw nsw i64 %wide.trip.count1303, 4
  %i.ks = add nsw i64 %i.kr, -8                   ; 4 uses
  %i.kt = add nsw i64 %wide.trip.count1303, -1    ; 3 uses
  %i.ku = shl nsw i64 %i.jt, 3
  %i.kv = add nsw i64 %i.jt, %wide.trip.count1303
  %i.kw = shl nsw i64 %i.kv, 3
  %i.kx = shl nuw nsw i64 %wide.trip.count1303, 4
  %i.ky = add nsw i64 %i.kx, -8                   ; 2 uses
  %i.kz = add nsw i64 %wide.trip.count1303, -1    ; 5 uses
  %i.la = shl nsw i64 %i.jt, 3
  %i.lb = add nsw i64 %i.jt, %wide.trip.count1303
  %i.lc = shl nsw i64 %i.lb, 3
  %min.iters.check1762 = icmp ult i32 %i.jk, 5
  %n.vec1765 = and i64 %i.kz, -2                  ; 2 uses
  %i.ld = or i64 %i.kz, 1
  %cmp.n1774 = icmp eq i64 %i.kz, %n.vec1765
  %i.le = and i64 %wide.trip.count1303, 1
  %lcmp.mod1980.not.not = icmp eq i64 %i.le, 0
  %i.lf = add nsw i64 %wide.trip.count1303, -1
  %min.iters.check1737 = icmp ult i32 %i.jk, 5
  %n.vec1740 = and i64 %i.kz, -4                  ; 3 uses
  %i.lg = or disjoint i64 %n.vec1740, 1
  %cmp.n1751 = icmp eq i64 %i.kz, %n.vec1740
  %i.lh = and i64 %wide.trip.count1303, 1
  %lcmp.mod1982.not.not = icmp eq i64 %i.lh, 0
  %i.li = add nsw i64 %wide.trip.count1303, -1
  %min.iters.check1709 = icmp ult i32 %i.jk, 11
  %n.vec1712 = and i64 %i.kt, -2                  ; 2 uses
  %i.lj = or i64 %i.kt, 1
  %cmp.n1726 = icmp eq i64 %i.kt, %n.vec1712
  %min.iters.check1634 = icmp ult i32 %i.jk, 5
  %n.vec1637 = and i64 %i.km, -2                  ; 2 uses
  %i.lk = or i64 %i.km, 1
  %cmp.n1646 = icmp eq i64 %i.km, %n.vec1637
  %i.ll = and i64 %wide.trip.count1303, 1
  %lcmp.mod1984.not.not = icmp eq i64 %i.ll, 0
  %i.lm = add nsw i64 %wide.trip.count1303, -1
  %min.iters.check1609 = icmp ult i32 %i.jk, 5
  %n.vec1612 = and i64 %i.km, -4                  ; 3 uses
  %i.ln = or disjoint i64 %n.vec1612, 1
  %cmp.n1623 = icmp eq i64 %i.km, %n.vec1612
  %i.lo = and i64 %wide.trip.count1303, 1
  %lcmp.mod1986.not.not = icmp eq i64 %i.lo, 0
  %i.lp = add nsw i64 %wide.trip.count1303, -1
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph1196, %.loopexit1098
  %indvars.iv1330 = phi i64 [ %i.kf, %.lr.ph1196 ], [ %indvars.iv.next1331, %.loopexit1098 ] ; 3 uses
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.jr, i64 %indvars.iv1330
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !28 ; 6 uses
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.lr, i64 %.11043
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !30 ; 3 uses
  %i.lu = getelementptr inbounds [8 x i8], ptr %i.lt, i64 %i.js
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !32 ; 5 uses
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.lv, i64 %i.jt
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !21
  %i.ly = fmul double %i.lx, 2.500000e-01
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.jv, i64 %indvars.iv1330
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !28 ; 4 uses
  %i.mb = getelementptr inbounds [8 x i8], ptr %i.ma, i64 %.11041
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !30 ; 4 uses
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !32 ; 9 uses
  store double %i.ly, ptr %i.md, align 8, !tbaa !21
  br i1 %.not10851166, label %._crit_edge1170, label %.lr.ph1169.preheader

.lr.ph1169.preheader:                             ; preds = %bb.v
  %invariant.gep1417 = getelementptr [8 x i8], ptr %i.lv, i64 %i.jt ; 5 uses
  br i1 %min.iters.check1762, label %.lr.ph1169.preheader1947, label %vector.memcheck1753

vector.memcheck1753:                              ; preds = %.lr.ph1169.preheader
  %scevgep1754 = getelementptr i8, ptr %i.md, i64 8
  %scevgep1755 = getelementptr i8, ptr %i.md, i64 %i.ky
  %i.me = getelementptr i8, ptr %i.lv, i64 %i.la
  %scevgep1756 = getelementptr i8, ptr %i.me, i64 8
  %scevgep1757 = getelementptr i8, ptr %i.lv, i64 %i.lc
  %bound01758 = icmp ult ptr %scevgep1754, %scevgep1757
  %bound11759 = icmp ult ptr %scevgep1756, %scevgep1755
  %found.conflict1760 = and i1 %bound01758, %bound11759
  br i1 %found.conflict1760, label %.lr.ph1169.preheader1947, label %vector.body1766

vector.body1766:                                  ; preds = %vector.memcheck1753, %vector.body1766
  %index1767 = phi i64 [ %index.next1772, %vector.body1766 ], [ 0, %vector.memcheck1753 ] ; 3 uses
  %i.mf = or disjoint i64 %index1767, 1           ; 2 uses
  %i.mg = add i64 %index1767, 2                   ; 2 uses
  %i.mh = getelementptr [8 x i8], ptr %invariant.gep1417, i64 %i.mf
  %i.mi = getelementptr [8 x i8], ptr %invariant.gep1417, i64 %i.mg
  %i.mj = load double, ptr %i.mh, align 8, !tbaa !21, !alias.scope !101
  %i.mk = load double, ptr %i.mi, align 8, !tbaa !21, !alias.scope !101
  %.scalar = fmul double %i.mj, 2.500000e-01
  %i.ml = insertelement <2 x double> poison, double %.scalar, i64 0
  %i.mm = shufflevector <2 x double> %i.ml, <2 x double> poison, <2 x i32> zeroinitializer
  %.scalar1936 = fmul double %i.mk, 2.500000e-01
  %i.mn = insertelement <2 x double> poison, double %.scalar1936, i64 0
  %i.mo = shufflevector <2 x double> %i.mn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mp = shl nuw nsw i64 %i.mf, 4
  %i.mq = shl nuw nsw i64 %i.mg, 4
  %i.mr = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.mp
  %i.ms = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.mq
  %i.mt = getelementptr i8, ptr %i.mr, i64 -8
  %i.mu = getelementptr i8, ptr %i.ms, i64 -8
  store <2 x double> %i.mm, ptr %i.mt, align 8
  store <2 x double> %i.mo, ptr %i.mu, align 8
  %index.next1772 = add nuw i64 %index1767, 2     ; 2 uses
  %i.mv = icmp eq i64 %index.next1772, %n.vec1765
  br i1 %i.mv, label %middle.block1773, label %vector.body1766, !llvm.loop !104

middle.block1773:                                 ; preds = %vector.body1766
  br i1 %cmp.n1774, label %._crit_edge1170, label %.lr.ph1169.preheader1947

.lr.ph1169.preheader1947:                         ; preds = %vector.memcheck1753, %.lr.ph1169.preheader, %middle.block1773
  %indvars.iv1300.ph = phi i64 [ 1, %vector.memcheck1753 ], [ 1, %.lr.ph1169.preheader ], [ %i.ld, %middle.block1773 ] ; 5 uses
  br i1 %lcmp.mod1980.not.not, label %.lr.ph1169.prol, label %.lr.ph1169.prol.loopexit

.lr.ph1169.prol:                                  ; preds = %.lr.ph1169.preheader1947
  %gep1418.prol = getelementptr [8 x i8], ptr %invariant.gep1417, i64 %indvars.iv1300.ph
  %i.mw = load double, ptr %gep1418.prol, align 8, !tbaa !21
  %i.mx = fmul double %i.mw, 2.500000e-01         ; 2 uses
  %.idx1386.prol = shl nuw nsw i64 %indvars.iv1300.ph, 4
  %i.my = getelementptr inbounds nuw i8, ptr %i.md, i64 %.idx1386.prol ; 2 uses
  store double %i.mx, ptr %i.my, align 8, !tbaa !21
  %i.mz = getelementptr i8, ptr %i.my, i64 -8
  store double %i.mx, ptr %i.mz, align 8, !tbaa !21
  %indvars.iv.next1301.prol = add nuw nsw i64 %indvars.iv1300.ph, 1
  br label %.lr.ph1169.prol.loopexit

.lr.ph1169.prol.loopexit:                         ; preds = %.lr.ph1169.prol, %.lr.ph1169.preheader1947
  %indvars.iv1300.unr = phi i64 [ %indvars.iv1300.ph, %.lr.ph1169.preheader1947 ], [ %indvars.iv.next1301.prol, %.lr.ph1169.prol ]
  %i.na = icmp eq i64 %indvars.iv1300.ph, %i.lf
  br i1 %i.na, label %._crit_edge1170, label %.lr.ph1169

.lr.ph1169:                                       ; preds = %.lr.ph1169.prol.loopexit, %.lr.ph1169
  %indvars.iv1300 = phi i64 [ %indvars.iv.next1301.1, %.lr.ph1169 ], [ %indvars.iv1300.unr, %.lr.ph1169.prol.loopexit ] ; 4 uses
  %gep1418 = getelementptr [8 x i8], ptr %invariant.gep1417, i64 %indvars.iv1300
  %i.nb = load double, ptr %gep1418, align 8, !tbaa !21
  %i.nc = fmul double %i.nb, 2.500000e-01         ; 2 uses
  %.idx1386 = shl nuw nsw i64 %indvars.iv1300, 4
  %i.nd = getelementptr inbounds nuw i8, ptr %i.md, i64 %.idx1386 ; 2 uses
  store double %i.nc, ptr %i.nd, align 8, !tbaa !21
  %i.ne = getelementptr i8, ptr %i.nd, i64 -8
  store double %i.nc, ptr %i.ne, align 8, !tbaa !21
  %indvars.iv.next1301 = add nuw nsw i64 %indvars.iv1300, 1 ; 2 uses
  %gep1418.1 = getelementptr [8 x i8], ptr %invariant.gep1417, i64 %indvars.iv.next1301
  %i.nf = load double, ptr %gep1418.1, align 8, !tbaa !21
  %i.ng = fmul double %i.nf, 2.500000e-01         ; 2 uses
  %.idx1386.1 = shl nuw nsw i64 %indvars.iv.next1301, 4
  %i.nh = getelementptr inbounds nuw i8, ptr %i.md, i64 %.idx1386.1 ; 2 uses
  store double %i.ng, ptr %i.nh, align 8, !tbaa !21
  %i.ni = getelementptr i8, ptr %i.nh, i64 -8
  store double %i.ng, ptr %i.ni, align 8, !tbaa !21
  %indvars.iv.next1301.1 = add nuw nsw i64 %indvars.iv1300, 2 ; 2 uses
  %exitcond1304.not.1 = icmp eq i64 %indvars.iv.next1301.1, %wide.trip.count1303
  br i1 %exitcond1304.not.1, label %._crit_edge1170, label %.lr.ph1169, !llvm.loop !105

._crit_edge1170:                                  ; preds = %.lr.ph1169.prol.loopexit, %.lr.ph1169, %middle.block1773, %bb.v
  %i.nj = getelementptr inbounds [8 x i8], ptr %i.lv, i64 %i.jx
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !21
  %i.nl = fmul double %i.nk, 2.500000e-01
  %i.nm = getelementptr inbounds [8 x i8], ptr %i.md, i64 %i.jy
  store double %i.nl, ptr %i.nm, align 8, !tbaa !21
  br i1 %i.jz, label %bb.w, label %.loopexit1099

bb.w:                                             ; preds = %._crit_edge1170
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.ma, i64 %.11039
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !30
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !32 ; 9 uses
  br i1 %i.ka, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.nq = load double, ptr %i.np, align 8, !tbaa !21
  %i.nr = getelementptr inbounds [8 x i8], ptr %i.lr, i64 %.11045
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !30
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !32 ; 2 uses
  store double %i.nq, ptr %i.nt, align 8, !tbaa !21
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.nu = getelementptr inbounds [8 x i8], ptr %i.np, i64 %i.jy
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !21
  %i.nw = getelementptr inbounds [8 x i8], ptr %i.lr, i64 %.11045
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !30
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !32 ; 2 uses
  %i.nz = getelementptr inbounds [8 x i8], ptr %i.ny, i64 %i.jy
  store double %i.nv, ptr %i.nz, align 8, !tbaa !21
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.oa = phi ptr [ %i.ny, %bb.y ], [ %i.nt, %bb.x ] ; 3 uses
  br i1 %.not10851166, label %.loopexit1099, label %.lr.ph1174

.lr.ph1174:                                       ; preds = %bb.z
  %invariant.gep1419 = getelementptr [8 x i8], ptr %i.oa, i64 %i.jt ; 4 uses
  br i1 %min.iters.check1737, label %scalar.ph1736.preheader, label %vector.memcheck1728

vector.memcheck1728:                              ; preds = %.lr.ph1174
  %i.ob = getelementptr i8, ptr %i.oa, i64 %i.ku
  %scevgep1729 = getelementptr i8, ptr %i.ob, i64 8
  %scevgep1730 = getelementptr i8, ptr %i.oa, i64 %i.kw
  %scevgep1731 = getelementptr i8, ptr %i.np, i64 8
  %scevgep1732 = getelementptr i8, ptr %i.np, i64 %i.ky
  %bound01733 = icmp ult ptr %scevgep1729, %scevgep1732
  %bound11734 = icmp ult ptr %scevgep1731, %scevgep1730
  %found.conflict1735 = and i1 %bound01733, %bound11734
  br i1 %found.conflict1735, label %scalar.ph1736.preheader, label %vector.body1741

vector.body1741:                                  ; preds = %vector.memcheck1728, %vector.body1741
  %index1742 = phi i64 [ %index.next1749, %vector.body1741 ], [ 0, %vector.memcheck1728 ] ; 3 uses
  %i.oc = or disjoint i64 %index1742, 1           ; 2 uses
  %i.od = shl i64 %i.oc, 4
  %i.oe = shl i64 %index1742, 4
  %i.of = getelementptr i8, ptr %i.np, i64 %i.od
  %i.og = getelementptr i8, ptr %i.np, i64 %i.oe
  %i.oh = getelementptr i8, ptr %i.of, i64 -8
  %i.oi = getelementptr i8, ptr %i.og, i64 40
  %wide.vec1743 = load <4 x double>, ptr %i.oh, align 8, !tbaa !21, !alias.scope !106 ; 2 uses
  %strided.vec1744 = shufflevector <4 x double> %wide.vec1743, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec1745 = shufflevector <4 x double> %wide.vec1743, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec1746 = load <4 x double>, ptr %i.oi, align 8, !tbaa !21, !alias.scope !106 ; 2 uses
  %strided.vec1747 = shufflevector <4 x double> %wide.vec1746, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec1748 = shufflevector <4 x double> %wide.vec1746, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.oj = fadd <2 x double> %strided.vec1744, %strided.vec1745
  %i.ok = fadd <2 x double> %strided.vec1747, %strided.vec1748
  %i.ol = getelementptr [8 x i8], ptr %invariant.gep1419, i64 %i.oc ; 2 uses
  %i.om = getelementptr i8, ptr %i.ol, i64 16
  store <2 x double> %i.oj, ptr %i.ol, align 8, !tbaa !21, !alias.scope !109, !noalias !106
  store <2 x double> %i.ok, ptr %i.om, align 8, !tbaa !21, !alias.scope !109, !noalias !106
  %index.next1749 = add nuw i64 %index1742, 4     ; 2 uses
  %i.on = icmp eq i64 %index.next1749, %n.vec1740
  br i1 %i.on, label %middle.block1750, label %vector.body1741, !llvm.loop !111

middle.block1750:                                 ; preds = %vector.body1741
  br i1 %cmp.n1751, label %.loopexit1099, label %scalar.ph1736.preheader

scalar.ph1736.preheader:                          ; preds = %vector.memcheck1728, %.lr.ph1174, %middle.block1750
  %indvars.iv1305.ph = phi i64 [ 1, %vector.memcheck1728 ], [ 1, %.lr.ph1174 ], [ %i.lg, %middle.block1750 ] ; 5 uses
  br i1 %lcmp.mod1982.not.not, label %scalar.ph1736.prol, label %scalar.ph1736.prol.loopexit

scalar.ph1736.prol:                               ; preds = %scalar.ph1736.preheader
  %.idx1387.prol = shl nsw i64 %indvars.iv1305.ph, 4
  %i.oo = getelementptr i8, ptr %i.np, i64 %.idx1387.prol ; 2 uses
  %i.op = getelementptr i8, ptr %i.oo, i64 -8
  %i.oq = load double, ptr %i.op, align 8, !tbaa !21
  %i.or = load double, ptr %i.oo, align 8, !tbaa !21
  %i.os = fadd double %i.oq, %i.or
  %gep1420.prol = getelementptr [8 x i8], ptr %invariant.gep1419, i64 %indvars.iv1305.ph
  store double %i.os, ptr %gep1420.prol, align 8, !tbaa !21
  %indvars.iv.next1306.prol = add nuw nsw i64 %indvars.iv1305.ph, 1
  br label %scalar.ph1736.prol.loopexit

scalar.ph1736.prol.loopexit:                      ; preds = %scalar.ph1736.prol, %scalar.ph1736.preheader
  %indvars.iv1305.unr = phi i64 [ %indvars.iv1305.ph, %scalar.ph1736.preheader ], [ %indvars.iv.next1306.prol, %scalar.ph1736.prol ]
  %i.ot = icmp eq i64 %indvars.iv1305.ph, %i.li
  br i1 %i.ot, label %.loopexit1099, label %scalar.ph1736

scalar.ph1736:                                    ; preds = %scalar.ph1736.prol.loopexit, %scalar.ph1736
  %indvars.iv1305 = phi i64 [ %indvars.iv.next1306.1, %scalar.ph1736 ], [ %indvars.iv1305.unr, %scalar.ph1736.prol.loopexit ] ; 4 uses
  %.idx1387 = shl i64 %indvars.iv1305, 4
  %i.ou = getelementptr i8, ptr %i.np, i64 %.idx1387 ; 2 uses
  %i.ov = getelementptr i8, ptr %i.ou, i64 -8
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !21
  %i.ox = load double, ptr %i.ou, align 8, !tbaa !21
  %i.oy = fadd double %i.ow, %i.ox
  %gep1420 = getelementptr [8 x i8], ptr %invariant.gep1419, i64 %indvars.iv1305
  store double %i.oy, ptr %gep1420, align 8, !tbaa !21
  %indvars.iv.next1306 = add nuw nsw i64 %indvars.iv1305, 1 ; 2 uses
  %.idx1387.1 = shl i64 %indvars.iv.next1306, 4
  %i.oz = getelementptr i8, ptr %i.np, i64 %.idx1387.1 ; 2 uses
  %i.pa = getelementptr i8, ptr %i.oz, i64 -8
  %i.pb = load double, ptr %i.pa, align 8, !tbaa !21
  %i.pc = load double, ptr %i.oz, align 8, !tbaa !21
  %i.pd = fadd double %i.pb, %i.pc
  %gep1420.1 = getelementptr [8 x i8], ptr %invariant.gep1419, i64 %indvars.iv.next1306
  store double %i.pd, ptr %gep1420.1, align 8, !tbaa !21
  %indvars.iv.next1306.1 = add nuw nsw i64 %indvars.iv1305, 2 ; 2 uses
  %exitcond1309.not.1 = icmp eq i64 %indvars.iv.next1306.1, %wide.trip.count1308
  br i1 %exitcond1309.not.1, label %.loopexit1099, label %scalar.ph1736, !llvm.loop !112

.loopexit1099:                                    ; preds = %scalar.ph1736.prol.loopexit, %scalar.ph1736, %middle.block1750, %bb.z, %._crit_edge1170
  br i1 %.not10871180, label %._crit_edge1184, label %.lr.ph1183

.lr.ph1183:                                       ; preds = %.loopexit1099
  %i.pe = getelementptr inbounds [8 x i8], ptr %i.ma, i64 %.11039
  %i.pf = getelementptr inbounds [8 x i8], ptr %i.lr, i64 %.11045 ; 2 uses
  %i.pg = load ptr, ptr %i.pe, align 8, !tbaa !30 ; 3 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph1183, %._crit_edge1179
  %indvars.iv1315 = phi i64 [ 1, %.lr.ph1183 ], [ %indvars.iv.next1316, %._crit_edge1179 ] ; 3 uses
  %i.ph = add nsw i64 %indvars.iv1315, %i.js      ; 3 uses
  %i.pi = getelementptr inbounds [8 x i8], ptr %i.lt, i64 %i.ph
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !32 ; 6 uses
  %i.pk = getelementptr inbounds [8 x i8], ptr %i.pj, i64 %i.jt
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !21
  %i.pm = fmul double %i.pl, 2.500000e-01         ; 2 uses
  %i.pn = shl nuw nsw i64 %indvars.iv1315, 1      ; 4 uses
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %i.pn
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !32 ; 7 uses
  store double %i.pm, ptr %i.pp, align 8, !tbaa !21
  %i.pq = add nsw i64 %i.pn, -1                   ; 2 uses
  %i.pr = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %i.pq
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !32 ; 7 uses
  store double %i.pm, ptr %i.ps, align 8, !tbaa !21
  %i.pt = getelementptr inbounds [8 x i8], ptr %i.pg, i64 %i.pq
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !32 ; 7 uses
  br i1 %i.ka, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.pv = load double, ptr %i.pu, align 8, !tbaa !21
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %i.pn
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !32 ; 2 uses
  %i.py = load double, ptr %i.px, align 8, !tbaa !21
  %i.pz = fadd double %i.pv, %i.py
  %i.qa = load ptr, ptr %i.pf, align 8, !tbaa !30
  %i.qb = getelementptr inbounds [8 x i8], ptr %i.qa, i64 %i.ph
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !32 ; 2 uses
  store double %i.pz, ptr %i.qc, align 8, !tbaa !21
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.qd = getelementptr inbounds [8 x i8], ptr %i.pu, i64 %i.jy
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !21
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %i.pn
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !32 ; 2 uses
  %i.qh = getelementptr inbounds [8 x i8], ptr %i.qg, i64 %i.jy
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !21
  %i.qj = fadd double %i.qe, %i.qi
  %i.qk = load ptr, ptr %i.pf, align 8, !tbaa !30
  %i.ql = getelementptr inbounds [8 x i8], ptr %i.qk, i64 %i.ph
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !32 ; 2 uses
  %i.qn = getelementptr inbounds [8 x i8], ptr %i.qm, i64 %i.jy
  store double %i.qj, ptr %i.qn, align 8, !tbaa !21
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.qo = phi ptr [ %i.qm, %bb.ac ], [ %i.qc, %bb.ab ] ; 4 uses
  %i.qp = phi ptr [ %i.qg, %bb.ac ], [ %i.px, %bb.ab ] ; 5 uses
  br i1 %.not10851166, label %._crit_edge1179, label %.lr.ph1178.preheader

.lr.ph1178.preheader:                             ; preds = %bb.ad
  br i1 %min.iters.check1709, label %.lr.ph1178.preheader1945, label %vector.memcheck1648

vector.memcheck1648:                              ; preds = %.lr.ph1178.preheader
  %scevgep1649 = getelementptr i8, ptr %i.pp, i64 8 ; 5 uses
  %scevgep1650 = getelementptr i8, ptr %i.pp, i64 %i.ks ; 5 uses
  %scevgep1651 = getelementptr i8, ptr %i.ps, i64 8 ; 5 uses
  %scevgep1652 = getelementptr i8, ptr %i.ps, i64 %i.ks ; 5 uses
  %scevgep1653 = getelementptr i8, ptr %i.qo, i64 %i.ko ; 5 uses
  %scevgep1654 = getelementptr i8, ptr %i.qo, i64 %i.kq ; 5 uses
  %scevgep1655 = getelementptr i8, ptr %i.pj, i64 %i.ko ; 3 uses
  %scevgep1656 = getelementptr i8, ptr %i.pj, i64 %i.kq ; 3 uses
  %scevgep1657 = getelementptr i8, ptr %i.pu, i64 8 ; 3 uses
  %scevgep1658 = getelementptr i8, ptr %i.pu, i64 %i.ks ; 3 uses
  %scevgep1659 = getelementptr i8, ptr %i.qp, i64 8 ; 3 uses
  %scevgep1660 = getelementptr i8, ptr %i.qp, i64 %i.ks ; 3 uses
  %bound01661 = icmp ult ptr %scevgep1649, %scevgep1652
  %bound11662 = icmp ult ptr %scevgep1651, %scevgep1650
  %found.conflict1663 = and i1 %bound01661, %bound11662
  %bound01664 = icmp ult ptr %scevgep1649, %scevgep1654
  %bound11665 = icmp ult ptr %scevgep1653, %scevgep1650
  %found.conflict1666 = and i1 %bound01664, %bound11665
  %conflict.rdx1667 = or i1 %found.conflict1663, %found.conflict1666
  %bound01668 = icmp ult ptr %scevgep1649, %scevgep1656
  %bound11669 = icmp ult ptr %scevgep1655, %scevgep1650
  %found.conflict1670 = and i1 %bound01668, %bound11669
  %conflict.rdx1671 = or i1 %conflict.rdx1667, %found.conflict1670
  %bound01672 = icmp ult ptr %scevgep1649, %scevgep1658
  %bound11673 = icmp ult ptr %scevgep1657, %scevgep1650
  %found.conflict1674 = and i1 %bound01672, %bound11673
  %conflict.rdx1675 = or i1 %conflict.rdx1671, %found.conflict1674
  %bound01676 = icmp ult ptr %scevgep1649, %scevgep1660
  %bound11677 = icmp ult ptr %scevgep1659, %scevgep1650
  %found.conflict1678 = and i1 %bound01676, %bound11677
  %conflict.rdx1679 = or i1 %conflict.rdx1675, %found.conflict1678
  %bound01680 = icmp ult ptr %scevgep1651, %scevgep1654
  %bound11681 = icmp ult ptr %scevgep1653, %scevgep1652
  %found.conflict1682 = and i1 %bound01680, %bound11681
  %conflict.rdx1683 = or i1 %conflict.rdx1679, %found.conflict1682
  %bound01684 = icmp ult ptr %scevgep1651, %scevgep1656
  %bound11685 = icmp ult ptr %scevgep1655, %scevgep1652
  %found.conflict1686 = and i1 %bound01684, %bound11685
  %conflict.rdx1687 = or i1 %conflict.rdx1683, %found.conflict1686
  %bound01688 = icmp ult ptr %scevgep1651, %scevgep1658
  %bound11689 = icmp ult ptr %scevgep1657, %scevgep1652
  %found.conflict1690 = and i1 %bound01688, %bound11689
  %conflict.rdx1691 = or i1 %conflict.rdx1687, %found.conflict1690
  %bound01692 = icmp ult ptr %scevgep1651, %scevgep1660
  %bound11693 = icmp ult ptr %scevgep1659, %scevgep1652
  %found.conflict1694 = and i1 %bound01692, %bound11693
  %conflict.rdx1695 = or i1 %conflict.rdx1691, %found.conflict1694
  %bound01696 = icmp ult ptr %scevgep1653, %scevgep1656
  %bound11697 = icmp ult ptr %scevgep1655, %scevgep1654
  %found.conflict1698 = and i1 %bound01696, %bound11697
  %conflict.rdx1699 = or i1 %conflict.rdx1695, %found.conflict1698
  %bound01700 = icmp ult ptr %scevgep1653, %scevgep1658
  %bound11701 = icmp ult ptr %scevgep1657, %scevgep1654
  %found.conflict1702 = and i1 %bound01700, %bound11701
  %conflict.rdx1703 = or i1 %conflict.rdx1699, %found.conflict1702
  %bound01704 = icmp ult ptr %scevgep1653, %scevgep1660
  %bound11705 = icmp ult ptr %scevgep1659, %scevgep1654
  %found.conflict1706 = and i1 %bound01704, %bound11705
  %conflict.rdx1707 = or i1 %conflict.rdx1703, %found.conflict1706
  br i1 %conflict.rdx1707, label %.lr.ph1178.preheader1945, label %vector.body1713

vector.body1713:                                  ; preds = %vector.memcheck1648, %vector.body1713
  %index1714 = phi i64 [ %index.next1724, %vector.body1713 ], [ 0, %vector.memcheck1648 ] ; 2 uses
  %i.qq = or disjoint i64 %index1714, 1           ; 2 uses
  %i.qr = add nsw i64 %i.qq, %i.jt                ; 2 uses
  %i.qs = getelementptr inbounds [8 x i8], ptr %i.pj, i64 %i.qr
  %wide.load1715 = load <2 x double>, ptr %i.qs, align 8, !tbaa !21, !alias.scope !113
  %i.qt = shl nuw nsw i64 %i.qq, 1
  %i.qu = add nsw i64 %i.qt, -1                   ; 4 uses
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %i.qu
  %i.qw = shufflevector <2 x double> %wide.load1715, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %interleaved.vec1716 = fmul <4 x double> %i.qw, splat (double 2.500000e-01) ; 2 uses
  store <4 x double> %interleaved.vec1716, ptr %i.qv, align 8, !tbaa !21, !alias.scope !116, !noalias !118
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %i.qu
  store <4 x double> %interleaved.vec1716, ptr %i.qx, align 8, !tbaa !21, !alias.scope !123, !noalias !124
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.qu
  %wide.vec1718 = load <4 x double>, ptr %i.qy, align 8, !tbaa !21, !alias.scope !125 ; 2 uses
  %strided.vec1719 = shufflevector <4 x double> %wide.vec1718, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec1720 = shufflevector <4 x double> %wide.vec1718, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.qz = fadd <2 x double> %strided.vec1719, %strided.vec1720
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.qp, i64 %i.qu
  %wide.vec1721 = load <4 x double>, ptr %i.ra, align 8, !tbaa !21, !alias.scope !126 ; 2 uses
  %strided.vec1722 = shufflevector <4 x double> %wide.vec1721, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec1723 = shufflevector <4 x double> %wide.vec1721, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.rb = fadd <2 x double> %i.qz, %strided.vec1722
  %i.rc = fadd <2 x double> %i.rb, %strided.vec1723
  %i.rd = getelementptr inbounds [8 x i8], ptr %i.qo, i64 %i.qr
  store <2 x double> %i.rc, ptr %i.rd, align 8, !tbaa !21, !alias.scope !127, !noalias !128
  %index.next1724 = add nuw i64 %index1714, 2     ; 2 uses
  %i.re = icmp eq i64 %index.next1724, %n.vec1712
  br i1 %i.re, label %middle.block1725, label %vector.body1713, !llvm.loop !129

middle.block1725:                                 ; preds = %vector.body1713
  br i1 %cmp.n1726, label %._crit_edge1179, label %.lr.ph1178.preheader1945

.lr.ph1178.preheader1945:                         ; preds = %vector.memcheck1648, %.lr.ph1178.preheader, %middle.block1725
  %indvars.iv1310.ph = phi i64 [ 1, %vector.memcheck1648 ], [ 1, %.lr.ph1178.preheader ], [ %i.lj, %middle.block1725 ]
  br label %.lr.ph1178

.lr.ph1178:                                       ; preds = %.lr.ph1178.preheader1945, %.lr.ph1178
  %indvars.iv1310 = phi i64 [ %indvars.iv.next1311, %.lr.ph1178 ], [ %indvars.iv1310.ph, %.lr.ph1178.preheader1945 ] ; 3 uses
  %i.rf = add nsw i64 %indvars.iv1310, %i.jt      ; 2 uses
  %i.rg = getelementptr inbounds [8 x i8], ptr %i.pj, i64 %i.rf
  %i.rh = load double, ptr %i.rg, align 8, !tbaa !21
  %i.ri = fmul double %i.rh, 2.500000e-01         ; 4 uses
  %i.rj = shl nuw nsw i64 %indvars.iv1310, 1      ; 5 uses
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %i.rj
  store double %i.ri, ptr %i.rk, align 8, !tbaa !21
  %i.rl = add nsw i64 %i.rj, -1                   ; 4 uses
  %i.rm = getelementptr inbounds [8 x i8], ptr %i.pp, i64 %i.rl
  store double %i.ri, ptr %i.rm, align 8, !tbaa !21
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %i.rj
  store double %i.ri, ptr %i.rn, align 8, !tbaa !21
  %i.ro = getelementptr inbounds [8 x i8], ptr %i.ps, i64 %i.rl
  store double %i.ri, ptr %i.ro, align 8, !tbaa !21
  %i.rp = getelementptr inbounds [8 x i8], ptr %i.pu, i64 %i.rl
  %i.rq = load double, ptr %i.rp, align 8, !tbaa !21
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.rj
  %i.rs = load double, ptr %i.rr, align 8, !tbaa !21
  %i.rt = fadd double %i.rq, %i.rs
  %i.ru = getelementptr inbounds [8 x i8], ptr %i.qp, i64 %i.rl
  %i.rv = load double, ptr %i.ru, align 8, !tbaa !21
  %i.rw = fadd double %i.rt, %i.rv
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.qp, i64 %i.rj
  %i.ry = load double, ptr %i.rx, align 8, !tbaa !21
  %i.rz = fadd double %i.rw, %i.ry
  %i.sa = getelementptr inbounds [8 x i8], ptr %i.qo, i64 %i.rf
  store double %i.rz, ptr %i.sa, align 8, !tbaa !21
  %indvars.iv.next1311 = add nuw nsw i64 %indvars.iv1310, 1 ; 2 uses
  %exitcond1314.not = icmp eq i64 %indvars.iv.next1311, %wide.trip.count1313
  br i1 %exitcond1314.not, label %._crit_edge1179, label %.lr.ph1178, !llvm.loop !130

._crit_edge1179:                                  ; preds = %.lr.ph1178, %middle.block1725, %bb.ad
  %i.sb = getelementptr inbounds [8 x i8], ptr %i.pj, i64 %i.jx
  %i.sc = load double, ptr %i.sb, align 8, !tbaa !21
  %i.sd = fmul double %i.sc, 2.500000e-01         ; 2 uses
  %i.se = getelementptr inbounds [8 x i8], ptr %i.pp, i64 %i.jy
  store double %i.sd, ptr %i.se, align 8, !tbaa !21
  %i.sf = getelementptr inbounds [8 x i8], ptr %i.ps, i64 %i.jy
  store double %i.sd, ptr %i.sf, align 8, !tbaa !21
  %indvars.iv.next1316 = add nuw nsw i64 %indvars.iv1315, 1 ; 2 uses
  %exitcond1319.not = icmp eq i64 %indvars.iv.next1316, %wide.trip.count1318
  br i1 %exitcond1319.not, label %._crit_edge1184, label %bb.aa, !llvm.loop !131

._crit_edge1184:                                  ; preds = %._crit_edge1179, %.loopexit1099
  %i.sg = getelementptr inbounds [8 x i8], ptr %i.lt, i64 %i.kc
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !32 ; 5 uses
  %i.si = getelementptr inbounds [8 x i8], ptr %i.sh, i64 %i.jt
  %i.sj = load double, ptr %i.si, align 8, !tbaa !21
  %i.sk = fmul double %i.sj, 2.500000e-01
  %i.sl = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %i.kd
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !32 ; 9 uses
  store double %i.sk, ptr %i.sm, align 8, !tbaa !21
  br i1 %.not10851166, label %._crit_edge1189, label %.lr.ph1188.preheader

.lr.ph1188.preheader:                             ; preds = %._crit_edge1184
  %invariant.gep1421 = getelementptr [8 x i8], ptr %i.sh, i64 %i.jt ; 5 uses
  br i1 %min.iters.check1634, label %.lr.ph1188.preheader1946, label %vector.memcheck1625

vector.memcheck1625:                              ; preds = %.lr.ph1188.preheader
  %scevgep1626 = getelementptr i8, ptr %i.sm, i64 8
  %scevgep1627 = getelementptr i8, ptr %i.sm, i64 %i.kl
  %scevgep1628 = getelementptr i8, ptr %i.sh, i64 %i.ko
  %scevgep1629 = getelementptr i8, ptr %i.sh, i64 %i.kq
  %bound01630 = icmp ult ptr %scevgep1626, %scevgep1629
  %bound11631 = icmp ult ptr %scevgep1628, %scevgep1627
  %found.conflict1632 = and i1 %bound01630, %bound11631
  br i1 %found.conflict1632, label %.lr.ph1188.preheader1946, label %vector.body1638

vector.body1638:                                  ; preds = %vector.memcheck1625, %vector.body1638
  %index1639 = phi i64 [ %index.next1644, %vector.body1638 ], [ 0, %vector.memcheck1625 ] ; 3 uses
  %i.sn = or disjoint i64 %index1639, 1           ; 2 uses
  %i.so = add i64 %index1639, 2                   ; 2 uses
  %i.sp = getelementptr [8 x i8], ptr %invariant.gep1421, i64 %i.sn
  %i.sq = getelementptr [8 x i8], ptr %invariant.gep1421, i64 %i.so
  %i.sr = load double, ptr %i.sp, align 8, !tbaa !21, !alias.scope !132
  %i.ss = load double, ptr %i.sq, align 8, !tbaa !21, !alias.scope !132
  %.scalar1937 = fmul double %i.sr, 2.500000e-01
  %i.st = insertelement <2 x double> poison, double %.scalar1937, i64 0
  %i.su = shufflevector <2 x double> %i.st, <2 x double> poison, <2 x i32> zeroinitializer
  %.scalar1938 = fmul double %i.ss, 2.500000e-01
  %i.sv = insertelement <2 x double> poison, double %.scalar1938, i64 0
  %i.sw = shufflevector <2 x double> %i.sv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sx = shl nuw nsw i64 %i.sn, 4
  %i.sy = shl nuw nsw i64 %i.so, 4
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sm, i64 %i.sx
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sm, i64 %i.sy
  %i.tb = getelementptr i8, ptr %i.sz, i64 -8
  %i.tc = getelementptr i8, ptr %i.ta, i64 -8
  store <2 x double> %i.su, ptr %i.tb, align 8
  store <2 x double> %i.sw, ptr %i.tc, align 8
  %index.next1644 = add nuw i64 %index1639, 2     ; 2 uses
  %i.td = icmp eq i64 %index.next1644, %n.vec1637
  br i1 %i.td, label %middle.block1645, label %vector.body1638, !llvm.loop !135

middle.block1645:                                 ; preds = %vector.body1638
  br i1 %cmp.n1646, label %._crit_edge1189, label %.lr.ph1188.preheader1946

.lr.ph1188.preheader1946:                         ; preds = %vector.memcheck1625, %.lr.ph1188.preheader, %middle.block1645
  %indvars.iv1320.ph = phi i64 [ 1, %vector.memcheck1625 ], [ 1, %.lr.ph1188.preheader ], [ %i.lk, %middle.block1645 ] ; 5 uses
  br i1 %lcmp.mod1984.not.not, label %.lr.ph1188.prol, label %.lr.ph1188.prol.loopexit

.lr.ph1188.prol:                                  ; preds = %.lr.ph1188.preheader1946
  %gep1422.prol = getelementptr [8 x i8], ptr %invariant.gep1421, i64 %indvars.iv1320.ph
  %i.te = load double, ptr %gep1422.prol, align 8, !tbaa !21
  %i.tf = fmul double %i.te, 2.500000e-01         ; 2 uses
  %.idx1388.prol = shl nuw nsw i64 %indvars.iv1320.ph, 4
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sm, i64 %.idx1388.prol ; 2 uses
  store double %i.tf, ptr %i.tg, align 8, !tbaa !21
  %i.th = getelementptr i8, ptr %i.tg, i64 -8
  store double %i.tf, ptr %i.th, align 8, !tbaa !21
  %indvars.iv.next1321.prol = add nuw nsw i64 %indvars.iv1320.ph, 1
  br label %.lr.ph1188.prol.loopexit

.lr.ph1188.prol.loopexit:                         ; preds = %.lr.ph1188.prol, %.lr.ph1188.preheader1946
  %indvars.iv1320.unr = phi i64 [ %indvars.iv1320.ph, %.lr.ph1188.preheader1946 ], [ %indvars.iv.next1321.prol, %.lr.ph1188.prol ]
  %i.ti = icmp eq i64 %indvars.iv1320.ph, %i.lm
  br i1 %i.ti, label %._crit_edge1189, label %.lr.ph1188

.lr.ph1188:                                       ; preds = %.lr.ph1188.prol.loopexit, %.lr.ph1188
  %indvars.iv1320 = phi i64 [ %indvars.iv.next1321.1, %.lr.ph1188 ], [ %indvars.iv1320.unr, %.lr.ph1188.prol.loopexit ] ; 4 uses
  %gep1422 = getelementptr [8 x i8], ptr %invariant.gep1421, i64 %indvars.iv1320
  %i.tj = load double, ptr %gep1422, align 8, !tbaa !21
  %i.tk = fmul double %i.tj, 2.500000e-01         ; 2 uses
  %.idx1388 = shl nuw nsw i64 %indvars.iv1320, 4
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sm, i64 %.idx1388 ; 2 uses
  store double %i.tk, ptr %i.tl, align 8, !tbaa !21
  %i.tm = getelementptr i8, ptr %i.tl, i64 -8
  store double %i.tk, ptr %i.tm, align 8, !tbaa !21
  %indvars.iv.next1321 = add nuw nsw i64 %indvars.iv1320, 1 ; 2 uses
  %gep1422.1 = getelementptr [8 x i8], ptr %invariant.gep1421, i64 %indvars.iv.next1321
  %i.tn = load double, ptr %gep1422.1, align 8, !tbaa !21
  %i.to = fmul double %i.tn, 2.500000e-01         ; 2 uses
  %.idx1388.1 = shl nuw nsw i64 %indvars.iv.next1321, 4
  %i.tp = getelementptr inbounds nuw i8, ptr %i.sm, i64 %.idx1388.1 ; 2 uses
  store double %i.to, ptr %i.tp, align 8, !tbaa !21
  %i.tq = getelementptr i8, ptr %i.tp, i64 -8
  store double %i.to, ptr %i.tq, align 8, !tbaa !21
  %indvars.iv.next1321.1 = add nuw nsw i64 %indvars.iv1320, 2 ; 2 uses
  %exitcond1324.not.1 = icmp eq i64 %indvars.iv.next1321.1, %wide.trip.count1323
  br i1 %exitcond1324.not.1, label %._crit_edge1189, label %.lr.ph1188, !llvm.loop !136

._crit_edge1189:                                  ; preds = %.lr.ph1188.prol.loopexit, %.lr.ph1188, %middle.block1645, %._crit_edge1184
  %i.tr = getelementptr inbounds [8 x i8], ptr %i.sh, i64 %i.jx
  %i.ts = load double, ptr %i.tr, align 8, !tbaa !21
  %i.tt = fmul double %i.ts, 2.500000e-01
  %i.tu = getelementptr inbounds [8 x i8], ptr %i.sm, i64 %i.jy
  store double %i.tt, ptr %i.tu, align 8, !tbaa !21
  br i1 %i.ke, label %bb.ae, label %.loopexit1098

bb.ae:                                            ; preds = %._crit_edge1189
  %i.tv = getelementptr inbounds [8 x i8], ptr %i.ma, i64 %.11039
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !30
  %i.tx = getelementptr inbounds [8 x i8], ptr %i.tw, i64 %i.kd
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !32 ; 9 uses
  br i1 %i.ka, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.tz = load double, ptr %i.ty, align 8, !tbaa !21
  %i.ua = getelementptr inbounds [8 x i8], ptr %i.lr, i64 %.11045
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !30
  %i.uc = getelementptr inbounds [8 x i8], ptr %i.ub, i64 %i.kd
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !32 ; 2 uses
  store double %i.tz, ptr %i.ud, align 8, !tbaa !21
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.ue = getelementptr inbounds [8 x i8], ptr %i.ty, i64 %i.jy
  %i.uf = load double, ptr %i.ue, align 8, !tbaa !21
  %i.ug = getelementptr inbounds [8 x i8], ptr %i.lr, i64 %.11045
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !30
  %i.ui = getelementptr inbounds [8 x i8], ptr %i.uh, i64 %i.kd
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !32 ; 2 uses
  %i.uk = getelementptr inbounds [8 x i8], ptr %i.uj, i64 %i.jy
  store double %i.uf, ptr %i.uk, align 8, !tbaa !21
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ul = phi ptr [ %i.uj, %bb.ag ], [ %i.ud, %bb.af ] ; 3 uses
  br i1 %.not10851166, label %.loopexit1098, label %.lr.ph1193

.lr.ph1193:                                       ; preds = %bb.ah
  %invariant.gep1423 = getelementptr [8 x i8], ptr %i.ul, i64 %i.jt ; 4 uses
  br i1 %min.iters.check1609, label %scalar.ph1608.preheader, label %vector.memcheck1600

vector.memcheck1600:                              ; preds = %.lr.ph1193
  %i.um = getelementptr i8, ptr %i.ul, i64 %i.kh
  %scevgep1601 = getelementptr i8, ptr %i.um, i64 8
  %scevgep1602 = getelementptr i8, ptr %i.ul, i64 %i.kj
  %scevgep1603 = getelementptr i8, ptr %i.ty, i64 8
  %scevgep1604 = getelementptr i8, ptr %i.ty, i64 %i.kl
  %bound01605 = icmp ult ptr %scevgep1601, %scevgep1604
  %bound11606 = icmp ult ptr %scevgep1603, %scevgep1602
  %found.conflict1607 = and i1 %bound01605, %bound11606
  br i1 %found.conflict1607, label %scalar.ph1608.preheader, label %vector.body1613

vector.body1613:                                  ; preds = %vector.memcheck1600, %vector.body1613
  %index1614 = phi i64 [ %index.next1621, %vector.body1613 ], [ 0, %vector.memcheck1600 ] ; 3 uses
  %i.un = or disjoint i64 %index1614, 1           ; 2 uses
  %i.uo = shl i64 %i.un, 4
  %i.up = shl i64 %index1614, 4
  %i.uq = getelementptr i8, ptr %i.ty, i64 %i.uo
  %i.ur = getelementptr i8, ptr %i.ty, i64 %i.up
  %i.us = getelementptr i8, ptr %i.uq, i64 -8
  %i.ut = getelementptr i8, ptr %i.ur, i64 40
  %wide.vec1615 = load <4 x double>, ptr %i.us, align 8, !tbaa !21, !alias.scope !137 ; 2 uses
  %strided.vec1616 = shufflevector <4 x double> %wide.vec1615, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec1617 = shufflevector <4 x double> %wide.vec1615, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec1618 = load <4 x double>, ptr %i.ut, align 8, !tbaa !21, !alias.scope !137 ; 2 uses
  %strided.vec1619 = shufflevector <4 x double> %wide.vec1618, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec1620 = shufflevector <4 x double> %wide.vec1618, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.uu = fadd <2 x double> %strided.vec1616, %strided.vec1617
  %i.uv = fadd <2 x double> %strided.vec1619, %strided.vec1620
  %i.uw = getelementptr [8 x i8], ptr %invariant.gep1423, i64 %i.un ; 2 uses
  %i.ux = getelementptr i8, ptr %i.uw, i64 16
  store <2 x double> %i.uu, ptr %i.uw, align 8, !tbaa !21, !alias.scope !140, !noalias !137
  store <2 x double> %i.uv, ptr %i.ux, align 8, !tbaa !21, !alias.scope !140, !noalias !137
  %index.next1621 = add nuw i64 %index1614, 4     ; 2 uses
  %i.uy = icmp eq i64 %index.next1621, %n.vec1612
  br i1 %i.uy, label %middle.block1622, label %vector.body1613, !llvm.loop !142

middle.block1622:                                 ; preds = %vector.body1613
  br i1 %cmp.n1623, label %.loopexit1098, label %scalar.ph1608.preheader

scalar.ph1608.preheader:                          ; preds = %vector.memcheck1600, %.lr.ph1193, %middle.block1622
  %indvars.iv1325.ph = phi i64 [ 1, %vector.memcheck1600 ], [ 1, %.lr.ph1193 ], [ %i.ln, %middle.block1622 ] ; 5 uses
  br i1 %lcmp.mod1986.not.not, label %scalar.ph1608.prol, label %scalar.ph1608.prol.loopexit

scalar.ph1608.prol:                               ; preds = %scalar.ph1608.preheader
  %.idx1389.prol = shl nsw i64 %indvars.iv1325.ph, 4
  %i.uz = getelementptr i8, ptr %i.ty, i64 %.idx1389.prol ; 2 uses
  %i.va = getelementptr i8, ptr %i.uz, i64 -8
  %i.vb = load double, ptr %i.va, align 8, !tbaa !21
  %i.vc = load double, ptr %i.uz, align 8, !tbaa !21
  %i.vd = fadd double %i.vb, %i.vc
  %gep1424.prol = getelementptr [8 x i8], ptr %invariant.gep1423, i64 %indvars.iv1325.ph
  store double %i.vd, ptr %gep1424.prol, align 8, !tbaa !21
  %indvars.iv.next1326.prol = add nuw nsw i64 %indvars.iv1325.ph, 1
  br label %scalar.ph1608.prol.loopexit

scalar.ph1608.prol.loopexit:                      ; preds = %scalar.ph1608.prol, %scalar.ph1608.preheader
  %indvars.iv1325.unr = phi i64 [ %indvars.iv1325.ph, %scalar.ph1608.preheader ], [ %indvars.iv.next1326.prol, %scalar.ph1608.prol ]
  %i.ve = icmp eq i64 %indvars.iv1325.ph, %i.lp
  br i1 %i.ve, label %.loopexit1098, label %scalar.ph1608

scalar.ph1608:                                    ; preds = %scalar.ph1608.prol.loopexit, %scalar.ph1608
  %indvars.iv1325 = phi i64 [ %indvars.iv.next1326.1, %scalar.ph1608 ], [ %indvars.iv1325.unr, %scalar.ph1608.prol.loopexit ] ; 4 uses
  %.idx1389 = shl i64 %indvars.iv1325, 4
  %i.vf = getelementptr i8, ptr %i.ty, i64 %.idx1389 ; 2 uses
  %i.vg = getelementptr i8, ptr %i.vf, i64 -8
  %i.vh = load double, ptr %i.vg, align 8, !tbaa !21
  %i.vi = load double, ptr %i.vf, align 8, !tbaa !21
  %i.vj = fadd double %i.vh, %i.vi
  %gep1424 = getelementptr [8 x i8], ptr %invariant.gep1423, i64 %indvars.iv1325
  store double %i.vj, ptr %gep1424, align 8, !tbaa !21
  %indvars.iv.next1326 = add nuw nsw i64 %indvars.iv1325, 1 ; 2 uses
  %.idx1389.1 = shl i64 %indvars.iv.next1326, 4
  %i.vk = getelementptr i8, ptr %i.ty, i64 %.idx1389.1 ; 2 uses
  %i.vl = getelementptr i8, ptr %i.vk, i64 -8
  %i.vm = load double, ptr %i.vl, align 8, !tbaa !21
  %i.vn = load double, ptr %i.vk, align 8, !tbaa !21
  %i.vo = fadd double %i.vm, %i.vn
  %gep1424.1 = getelementptr [8 x i8], ptr %invariant.gep1423, i64 %indvars.iv.next1326
  store double %i.vo, ptr %gep1424.1, align 8, !tbaa !21
  %indvars.iv.next1326.1 = add nuw nsw i64 %indvars.iv1325, 2 ; 2 uses
  %exitcond1329.not.1 = icmp eq i64 %indvars.iv.next1326.1, %wide.trip.count1328
  br i1 %exitcond1329.not.1, label %.loopexit1098, label %scalar.ph1608, !llvm.loop !143

.loopexit1098:                                    ; preds = %scalar.ph1608.prol.loopexit, %scalar.ph1608, %middle.block1622, %bb.ah, %._crit_edge1189
  %indvars.iv.next1331 = add nsw i64 %indvars.iv1330, 1 ; 2 uses
  %i.vp = icmp slt i64 %indvars.iv.next1331, %i.kg
  br i1 %i.vp, label %bb.v, label %.loopexit, !llvm.loop !144

bb.ai:                                            ; preds = %bb.q
  %i.vq = and i32 %2, -2
  switch i32 %i.vq, label %.loopexit [
    i32 2, label %bb.aj
    i32 4, label %bb.az
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.vr = icmp eq i32 %2, 2
  %i.vs = load i32, ptr @y_block_size, align 4, !tbaa !4 ; 3 uses
  %i.vt = add nsw i32 %i.vs, 1                    ; 2 uses
  br i1 %i.vr, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.vu = sext i32 %i.vt to i64
  %i.vv = sext i32 %i.vs to i64
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.vw = sext i32 %i.vs to i64
  %i.vx = sext i32 %i.vt to i64
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.11037 = phi i64 [ 0, %bb.ak ], [ %i.vx, %bb.al ] ; 6 uses
  %.11035 = phi i64 [ 1, %bb.ak ], [ %i.vw, %bb.al ] ; 3 uses
  %.11033 = phi i64 [ %i.vu, %bb.ak ], [ 0, %bb.al ] ; 4 uses
  %.11031 = phi i64 [ %i.vv, %bb.ak ], [ 1, %bb.al ] ; 5 uses
  %i.vy = icmp sgt i32 %6, 0
  br i1 %i.vy, label %.lr.ph1165, label %.loopexit

.lr.ph1165:                                       ; preds = %bb.am
  %i.vz = add nsw i32 %6, %5
  %i.wa = load i32, ptr @z_block_half, align 4, !tbaa !4 ; 3 uses
  %i.wb = mul i32 %i.wa, %3                       ; 2 uses
  %i.wc = load i32, ptr @x_block_half, align 4, !tbaa !4 ; 3 uses
  %i.wd = mul nsw i32 %i.wc, %4                   ; 2 uses
  %i.we = add i32 %i.wa, 1                        ; 11 uses
  %i.wf = load i32, ptr @z_block_size, align 4, !tbaa !4
  %i.wg = add nsw i32 %i.wf, 1
  %i.wh = add i32 %i.wc, 1                        ; 2 uses
  %i.wi = load i32, ptr @x_block_size, align 4, !tbaa !4
  %i.wj = add nsw i32 %i.wi, 1
  %i.wk = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !27
  %i.wm = sext i32 %i.wd to i64                   ; 2 uses
  %i.wn = sext i32 %i.wb to i64                   ; 17 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !27
  %.not10791135 = icmp slt i32 %i.wa, 1           ; 5 uses
  %i.wq = add nsw i32 %i.we, %i.wb
  %i.wr = sext i32 %i.wq to i64                   ; 3 uses
  %i.ws = sext i32 %i.wg to i64                   ; 11 uses
  %i.wt = icmp eq i32 %4, 0
  %i.wu = icmp eq i32 %3, 0                       ; 3 uses
  %.not10811149 = icmp slt i32 %i.wc, 1
  %i.wv = add nsw i32 %i.wh, %i.wd
  %i.ww = sext i32 %i.wv to i64
  %i.wx = sext i32 %i.wj to i64                   ; 3 uses
  %i.wy = icmp eq i32 %4, 1
  %i.wz = sext i32 %5 to i64
  %i.xa = sext i32 %i.vz to i64
  %wide.trip.count1270 = zext i32 %i.we to i64    ; 19 uses
  %wide.trip.count1275 = zext i32 %i.we to i64
  %wide.trip.count1285 = zext i32 %i.wh to i64
  %wide.trip.count1280 = zext i32 %i.we to i64
  %wide.trip.count1290 = zext i32 %i.we to i64
  %wide.trip.count1295 = zext i32 %i.we to i64
  %i.xb = shl nsw i64 %i.wn, 3
  %i.xc = add nsw i64 %i.wn, %wide.trip.count1270
  %i.xd = shl nsw i64 %i.xc, 3
  %i.xe = shl nuw nsw i64 %wide.trip.count1270, 4
  %i.xf = add nsw i64 %i.xe, -8                   ; 2 uses
  %i.xg = add nsw i64 %wide.trip.count1270, -1    ; 5 uses
  %i.xh = shl nsw i64 %i.wn, 3
  %i.xi = add nsw i64 %i.xh, 8                    ; 3 uses
  %i.xj = add nsw i64 %i.wn, %wide.trip.count1270
  %i.xk = shl nsw i64 %i.xj, 3                    ; 3 uses
  %i.xl = shl nuw nsw i64 %wide.trip.count1270, 4
  %i.xm = add nsw i64 %i.xl, -8                   ; 4 uses
  %i.xn = add nsw i64 %wide.trip.count1270, -1    ; 3 uses
  %i.xo = shl nsw i64 %i.wn, 3
  %i.xp = add nsw i64 %i.wn, %wide.trip.count1270
  %i.xq = shl nsw i64 %i.xp, 3
  %i.xr = shl nuw nsw i64 %wide.trip.count1270, 4
  %i.xs = add nsw i64 %i.xr, -8                   ; 2 uses
  %i.xt = add nsw i64 %wide.trip.count1270, -1    ; 5 uses
  %i.xu = shl nsw i64 %i.wn, 3
  %i.xv = add nsw i64 %i.wn, %wide.trip.count1270
  %i.xw = shl nsw i64 %i.xv, 3
  %min.iters.check1586 = icmp ult i32 %i.we, 5
  %n.vec1589 = and i64 %i.xt, -2                  ; 2 uses
  %i.xx = or i64 %i.xt, 1
  %cmp.n1598 = icmp eq i64 %i.xt, %n.vec1589
  %i.xy = and i64 %wide.trip.count1270, 1
  %lcmp.mod1972.not.not = icmp eq i64 %i.xy, 0
  %i.xz = add nsw i64 %wide.trip.count1270, -1
  %min.iters.check1561 = icmp ult i32 %i.we, 5
  %n.vec1564 = and i64 %i.xt, -4                  ; 3 uses
  %i.ya = or disjoint i64 %n.vec1564, 1
  %cmp.n1575 = icmp eq i64 %i.xt, %n.vec1564
  %i.yb = and i64 %wide.trip.count1270, 1
  %lcmp.mod1974.not.not = icmp eq i64 %i.yb, 0
  %i.yc = add nsw i64 %wide.trip.count1270, -1
  %min.iters.check1535 = icmp ult i32 %i.we, 11
  %n.vec1538 = and i64 %i.xn, -2                  ; 2 uses
  %i.yd = or i64 %i.xn, 1
  %cmp.n1550 = icmp eq i64 %i.xn, %n.vec1538
  %min.iters.check1463 = icmp ult i32 %i.we, 5
  %n.vec1466 = and i64 %i.xg, -2                  ; 2 uses
  %i.ye = or i64 %i.xg, 1
  %cmp.n1473 = icmp eq i64 %i.xg, %n.vec1466
  %i.yf = and i64 %wide.trip.count1270, 1
  %lcmp.mod1976.not.not = icmp eq i64 %i.yf, 0
  %i.yg = add nsw i64 %wide.trip.count1270, -1
  %min.iters.check = icmp ult i32 %i.we, 5
  %n.vec = and i64 %i.xg, -4                      ; 3 uses
  %i.yh = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.xg, %n.vec
  %i.yi = and i64 %wide.trip.count1270, 1
  %lcmp.mod1978.not.not = icmp eq i64 %i.yi, 0
  %i.yj = add nsw i64 %wide.trip.count1270, -1
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph1165, %.loopexit1101
  %indvars.iv1297 = phi i64 [ %i.wz, %.lr.ph1165 ], [ %indvars.iv.next1298, %.loopexit1101 ] ; 3 uses
  %i.yk = getelementptr inbounds [8 x i8], ptr %i.wl, i64 %indvars.iv1297
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !28 ; 7 uses
  %i.ym = getelementptr inbounds [8 x i8], ptr %i.yl, i64 %i.wm
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !30
  %i.yo = getelementptr inbounds [8 x i8], ptr %i.yn, i64 %.11035
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !32 ; 5 uses
  %i.yq = getelementptr inbounds [8 x i8], ptr %i.yp, i64 %i.wn
  %i.yr = load double, ptr %i.yq, align 8, !tbaa !21
  %i.ys = fmul double %i.yr, 2.500000e-01
  %i.yt = getelementptr inbounds [8 x i8], ptr %i.wp, i64 %indvars.iv1297
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !28 ; 3 uses
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !30 ; 2 uses
  %i.yw = getelementptr inbounds [8 x i8], ptr %i.yv, i64 %.11033
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !32 ; 9 uses
  store double %i.ys, ptr %i.yx, align 8, !tbaa !21
  br i1 %.not10791135, label %._crit_edge1139, label %.lr.ph1138.preheader

.lr.ph1138.preheader:                             ; preds = %bb.an
  %invariant.gep1407 = getelementptr [8 x i8], ptr %i.yp, i64 %i.wn ; 5 uses
  br i1 %min.iters.check1586, label %.lr.ph1138.preheader1951, label %vector.memcheck1577

vector.memcheck1577:                              ; preds = %.lr.ph1138.preheader
  %scevgep1578 = getelementptr i8, ptr %i.yx, i64 8
  %scevgep1579 = getelementptr i8, ptr %i.yx, i64 %i.xs
  %i.yy = getelementptr i8, ptr %i.yp, i64 %i.xu
  %scevgep1580 = getelementptr i8, ptr %i.yy, i64 8
  %scevgep1581 = getelementptr i8, ptr %i.yp, i64 %i.xw
  %bound01582 = icmp ult ptr %scevgep1578, %scevgep1581
  %bound11583 = icmp ult ptr %scevgep1580, %scevgep1579
  %found.conflict1584 = and i1 %bound01582, %bound11583
  br i1 %found.conflict1584, label %.lr.ph1138.preheader1951, label %vector.body1590

vector.body1590:                                  ; preds = %vector.memcheck1577, %vector.body1590
  %index1591 = phi i64 [ %index.next1596, %vector.body1590 ], [ 0, %vector.memcheck1577 ] ; 3 uses
  %i.yz = or disjoint i64 %index1591, 1           ; 2 uses
  %i.za = add i64 %index1591, 2                   ; 2 uses
  %i.zb = getelementptr [8 x i8], ptr %invariant.gep1407, i64 %i.yz
  %i.zc = getelementptr [8 x i8], ptr %invariant.gep1407, i64 %i.za
  %i.zd = load double, ptr %i.zb, align 8, !tbaa !21, !alias.scope !145
  %i.ze = load double, ptr %i.zc, align 8, !tbaa !21, !alias.scope !145
  %.scalar1939 = fmul double %i.zd, 2.500000e-01
  %i.zf = insertelement <2 x double> poison, double %.scalar1939, i64 0
  %i.zg = shufflevector <2 x double> %i.zf, <2 x double> poison, <2 x i32> zeroinitializer
  %.scalar1940 = fmul double %i.ze, 2.500000e-01
  %i.zh = insertelement <2 x double> poison, double %.scalar1940, i64 0
  %i.zi = shufflevector <2 x double> %i.zh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.zj = shl nuw nsw i64 %i.yz, 4
  %i.zk = shl nuw nsw i64 %i.za, 4
  %i.zl = getelementptr inbounds nuw i8, ptr %i.yx, i64 %i.zj
  %i.zm = getelementptr inbounds nuw i8, ptr %i.yx, i64 %i.zk
  %i.zn = getelementptr i8, ptr %i.zl, i64 -8
  %i.zo = getelementptr i8, ptr %i.zm, i64 -8
  store <2 x double> %i.zg, ptr %i.zn, align 8
  store <2 x double> %i.zi, ptr %i.zo, align 8
  %index.next1596 = add nuw i64 %index1591, 2     ; 2 uses
  %i.zp = icmp eq i64 %index.next1596, %n.vec1589
  br i1 %i.zp, label %middle.block1597, label %vector.body1590, !llvm.loop !148

middle.block1597:                                 ; preds = %vector.body1590
  br i1 %cmp.n1598, label %._crit_edge1139, label %.lr.ph1138.preheader1951

.lr.ph1138.preheader1951:                         ; preds = %vector.memcheck1577, %.lr.ph1138.preheader, %middle.block1597
  %indvars.iv1267.ph = phi i64 [ 1, %vector.memcheck1577 ], [ 1, %.lr.ph1138.preheader ], [ %i.xx, %middle.block1597 ] ; 5 uses
  br i1 %lcmp.mod1972.not.not, label %.lr.ph1138.prol, label %.lr.ph1138.prol.loopexit

.lr.ph1138.prol:                                  ; preds = %.lr.ph1138.preheader1951
  %gep1408.prol = getelementptr [8 x i8], ptr %invariant.gep1407, i64 %indvars.iv1267.ph
  %i.zq = load double, ptr %gep1408.prol, align 8, !tbaa !21
  %i.zr = fmul double %i.zq, 2.500000e-01         ; 2 uses
  %.idx1381.prol = shl nuw nsw i64 %indvars.iv1267.ph, 4
  %i.zs = getelementptr inbounds nuw i8, ptr %i.yx, i64 %.idx1381.prol ; 2 uses
  store double %i.zr, ptr %i.zs, align 8, !tbaa !21
  %i.zt = getelementptr i8, ptr %i.zs, i64 -8
  store double %i.zr, ptr %i.zt, align 8, !tbaa !21
  %indvars.iv.next1268.prol = add nuw nsw i64 %indvars.iv1267.ph, 1
  br label %.lr.ph1138.prol.loopexit

.lr.ph1138.prol.loopexit:                         ; preds = %.lr.ph1138.prol, %.lr.ph1138.preheader1951
  %indvars.iv1267.unr = phi i64 [ %indvars.iv1267.ph, %.lr.ph1138.preheader1951 ], [ %indvars.iv.next1268.prol, %.lr.ph1138.prol ]
  %i.zu = icmp eq i64 %indvars.iv1267.ph, %i.xz
  br i1 %i.zu, label %._crit_edge1139, label %.lr.ph1138

.lr.ph1138:                                       ; preds = %.lr.ph1138.prol.loopexit, %.lr.ph1138
  %indvars.iv1267 = phi i64 [ %indvars.iv.next1268.1, %.lr.ph1138 ], [ %indvars.iv1267.unr, %.lr.ph1138.prol.loopexit ] ; 4 uses
  %gep1408 = getelementptr [8 x i8], ptr %invariant.gep1407, i64 %indvars.iv1267
  %i.zv = load double, ptr %gep1408, align 8, !tbaa !21
  %i.zw = fmul double %i.zv, 2.500000e-01         ; 2 uses
  %.idx1381 = shl nuw nsw i64 %indvars.iv1267, 4
  %i.zx = getelementptr inbounds nuw i8, ptr %i.yx, i64 %.idx1381 ; 2 uses
  store double %i.zw, ptr %i.zx, align 8, !tbaa !21
  %i.zy = getelementptr i8, ptr %i.zx, i64 -8
  store double %i.zw, ptr %i.zy, align 8, !tbaa !21
  %indvars.iv.next1268 = add nuw nsw i64 %indvars.iv1267, 1 ; 2 uses
  %gep1408.1 = getelementptr [8 x i8], ptr %invariant.gep1407, i64 %indvars.iv.next1268
  %i.zz = load double, ptr %gep1408.1, align 8, !tbaa !21
  %i.aaa = fmul double %i.zz, 2.500000e-01        ; 2 uses
  %.idx1381.1 = shl nuw nsw i64 %indvars.iv.next1268, 4
  %i.aab = getelementptr inbounds nuw i8, ptr %i.yx, i64 %.idx1381.1 ; 2 uses
  store double %i.aaa, ptr %i.aab, align 8, !tbaa !21
  %i.aac = getelementptr i8, ptr %i.aab, i64 -8
  store double %i.aaa, ptr %i.aac, align 8, !tbaa !21
  %indvars.iv.next1268.1 = add nuw nsw i64 %indvars.iv1267, 2 ; 2 uses
  %exitcond1271.not.1 = icmp eq i64 %indvars.iv.next1268.1, %wide.trip.count1270
  br i1 %exitcond1271.not.1, label %._crit_edge1139, label %.lr.ph1138, !llvm.loop !149

._crit_edge1139:                                  ; preds = %.lr.ph1138.prol.loopexit, %.lr.ph1138, %middle.block1597, %bb.an
  %i.aad = getelementptr inbounds [8 x i8], ptr %i.yp, i64 %i.wr
  %i.aae = load double, ptr %i.aad, align 8, !tbaa !21
  %i.aaf = fmul double %i.aae, 2.500000e-01
  %i.aag = getelementptr inbounds [8 x i8], ptr %i.yx, i64 %i.ws
  store double %i.aaf, ptr %i.aag, align 8, !tbaa !21
  br i1 %i.wt, label %bb.ao, label %.loopexit1102

bb.ao:                                            ; preds = %._crit_edge1139
  %i.aah = getelementptr inbounds [8 x i8], ptr %i.yv, i64 %.11031
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !32 ; 9 uses
  br i1 %i.wu, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.aaj = load double, ptr %i.aai, align 8, !tbaa !21
  %i.aak = load ptr, ptr %i.yl, align 8, !tbaa !30
  %i.aal = getelementptr inbounds [8 x i8], ptr %i.aak, i64 %.11037
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !32 ; 2 uses
  store double %i.aaj, ptr %i.aam, align 8, !tbaa !21
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.aan = getelementptr inbounds [8 x i8], ptr %i.aai, i64 %i.ws
  %i.aao = load double, ptr %i.aan, align 8, !tbaa !21
  %i.aap = load ptr, ptr %i.yl, align 8, !tbaa !30
  %i.aaq = getelementptr inbounds [8 x i8], ptr %i.aap, i64 %.11037
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !32 ; 2 uses
  %i.aas = getelementptr inbounds [8 x i8], ptr %i.aar, i64 %i.ws
  store double %i.aao, ptr %i.aas, align 8, !tbaa !21
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.aat = phi ptr [ %i.aar, %bb.aq ], [ %i.aam, %bb.ap ] ; 3 uses
  br i1 %.not10791135, label %.loopexit1102, label %.lr.ph1143

.lr.ph1143:                                       ; preds = %bb.ar
  %invariant.gep1409 = getelementptr [8 x i8], ptr %i.aat, i64 %i.wn ; 4 uses
  br i1 %min.iters.check1561, label %scalar.ph1560.preheader, label %vector.memcheck1552

vector.memcheck1552:                              ; preds = %.lr.ph1143
  %i.aau = getelementptr i8, ptr %i.aat, i64 %i.xo
  %scevgep1553 = getelementptr i8, ptr %i.aau, i64 8
  %scevgep1554 = getelementptr i8, ptr %i.aat, i64 %i.xq
  %scevgep1555 = getelementptr i8, ptr %i.aai, i64 8
  %scevgep1556 = getelementptr i8, ptr %i.aai, i64 %i.xs
  %bound01557 = icmp ult ptr %scevgep1553, %scevgep1556
  %bound11558 = icmp ult ptr %scevgep1555, %scevgep1554
  %found.conflict1559 = and i1 %bound01557, %bound11558
  br i1 %found.conflict1559, label %scalar.ph1560.preheader, label %vector.body1565

vector.body1565:                                  ; preds = %vector.memcheck1552, %vector.body1565
  %index1566 = phi i64 [ %index.next1573, %vector.body1565 ], [ 0, %vector.memcheck1552 ] ; 3 uses
  %i.aav = or disjoint i64 %index1566, 1          ; 2 uses
  %i.aaw = shl i64 %i.aav, 4
  %i.aax = shl i64 %index1566, 4
  %i.aay = getelementptr i8, ptr %i.aai, i64 %i.aaw
  %i.aaz = getelementptr i8, ptr %i.aai, i64 %i.aax
  %i.aba = getelementptr i8, ptr %i.aay, i64 -8
  %i.abb = getelementptr i8, ptr %i.aaz, i64 40
  %wide.vec1567 = load <4 x double>, ptr %i.aba, align 8, !tbaa !21, !alias.scope !150 ; 2 uses
  %strided.vec1568 = shufflevector <4 x double> %wide.vec1567, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec1569 = shufflevector <4 x double> %wide.vec1567, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec1570 = load <4 x double>, ptr %i.abb, align 8, !tbaa !21, !alias.scope !150 ; 2 uses
  %strided.vec1571 = shufflevector <4 x double> %wide.vec1570, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec1572 = shufflevector <4 x double> %wide.vec1570, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.abc = fadd <2 x double> %strided.vec1568, %strided.vec1569
  %i.abd = fadd <2 x double> %strided.vec1571, %strided.vec1572
  %i.abe = getelementptr [8 x i8], ptr %invariant.gep1409, i64 %i.aav ; 2 uses
  %i.abf = getelementptr i8, ptr %i.abe, i64 16
  store <2 x double> %i.abc, ptr %i.abe, align 8, !tbaa !21, !alias.scope !153, !noalias !150
  store <2 x double> %i.abd, ptr %i.abf, align 8, !tbaa !21, !alias.scope !153, !noalias !150
  %index.next1573 = add nuw i64 %index1566, 4     ; 2 uses
  %i.abg = icmp eq i64 %index.next1573, %n.vec1564
  br i1 %i.abg, label %middle.block1574, label %vector.body1565, !llvm.loop !155

middle.block1574:                                 ; preds = %vector.body1565
  br i1 %cmp.n1575, label %.loopexit1102, label %scalar.ph1560.preheader

scalar.ph1560.preheader:                          ; preds = %vector.memcheck1552, %.lr.ph1143, %middle.block1574
  %indvars.iv1272.ph = phi i64 [ 1, %vector.memcheck1552 ], [ 1, %.lr.ph1143 ], [ %i.ya, %middle.block1574 ] ; 5 uses
  br i1 %lcmp.mod1974.not.not, label %scalar.ph1560.prol, label %scalar.ph1560.prol.loopexit

scalar.ph1560.prol:                               ; preds = %scalar.ph1560.preheader
  %.idx1382.prol = shl nsw i64 %indvars.iv1272.ph, 4
  %i.abh = getelementptr i8, ptr %i.aai, i64 %.idx1382.prol ; 2 uses
  %i.abi = getelementptr i8, ptr %i.abh, i64 -8
  %i.abj = load double, ptr %i.abi, align 8, !tbaa !21
  %i.abk = load double, ptr %i.abh, align 8, !tbaa !21
  %i.abl = fadd double %i.abj, %i.abk
  %gep1410.prol = getelementptr [8 x i8], ptr %invariant.gep1409, i64 %indvars.iv1272.ph
  store double %i.abl, ptr %gep1410.prol, align 8, !tbaa !21
  %indvars.iv.next1273.prol = add nuw nsw i64 %indvars.iv1272.ph, 1
  br label %scalar.ph1560.prol.loopexit

scalar.ph1560.prol.loopexit:                      ; preds = %scalar.ph1560.prol, %scalar.ph1560.preheader
  %indvars.iv1272.unr = phi i64 [ %indvars.iv1272.ph, %scalar.ph1560.preheader ], [ %indvars.iv.next1273.prol, %scalar.ph1560.prol ]
  %i.abm = icmp eq i64 %indvars.iv1272.ph, %i.yc
  br i1 %i.abm, label %.loopexit1102, label %scalar.ph1560

scalar.ph1560:                                    ; preds = %scalar.ph1560.prol.loopexit, %scalar.ph1560
  %indvars.iv1272 = phi i64 [ %indvars.iv.next1273.1, %scalar.ph1560 ], [ %indvars.iv1272.unr, %scalar.ph1560.prol.loopexit ] ; 4 uses
  %.idx1382 = shl i64 %indvars.iv1272, 4
  %i.abn = getelementptr i8, ptr %i.aai, i64 %.idx1382 ; 2 uses
  %i.abo = getelementptr i8, ptr %i.abn, i64 -8
  %i.abp = load double, ptr %i.abo, align 8, !tbaa !21
  %i.abq = load double, ptr %i.abn, align 8, !tbaa !21
  %i.abr = fadd double %i.abp, %i.abq
  %gep1410 = getelementptr [8 x i8], ptr %invariant.gep1409, i64 %indvars.iv1272
  store double %i.abr, ptr %gep1410, align 8, !tbaa !21
  %indvars.iv.next1273 = add nuw nsw i64 %indvars.iv1272, 1 ; 2 uses
  %.idx1382.1 = shl i64 %indvars.iv.next1273, 4
  %i.abs = getelementptr i8, ptr %i.aai, i64 %.idx1382.1 ; 2 uses
  %i.abt = getelementptr i8, ptr %i.abs, i64 -8
  %i.abu = load double, ptr %i.abt, align 8, !tbaa !21
  %i.abv = load double, ptr %i.abs, align 8, !tbaa !21
  %i.abw = fadd double %i.abu, %i.abv
  %gep1410.1 = getelementptr [8 x i8], ptr %invariant.gep1409, i64 %indvars.iv.next1273
  store double %i.abw, ptr %gep1410.1, align 8, !tbaa !21
  %indvars.iv.next1273.1 = add nuw nsw i64 %indvars.iv1272, 2 ; 2 uses
  %exitcond1276.not.1 = icmp eq i64 %indvars.iv.next1273.1, %wide.trip.count1275
  br i1 %exitcond1276.not.1, label %.loopexit1102, label %scalar.ph1560, !llvm.loop !156

.loopexit1102:                                    ; preds = %scalar.ph1560.prol.loopexit, %scalar.ph1560, %middle.block1574, %bb.ar, %._crit_edge1139
  br i1 %.not10811149, label %._crit_edge1153, label %.lr.ph1152.preheader

.lr.ph1152.preheader:                             ; preds = %.loopexit1102
  %invariant.gep1411 = getelementptr [8 x i8], ptr %i.yl, i64 %i.wm
  br label %.lr.ph1152

.lr.ph1152:                                       ; preds = %.lr.ph1152.preheader, %._crit_edge1148
  %indvars.iv1282 = phi i64 [ 1, %.lr.ph1152.preheader ], [ %indvars.iv.next1283, %._crit_edge1148 ] ; 3 uses
  %gep1412 = getelementptr [8 x i8], ptr %invariant.gep1411, i64 %indvars.iv1282
  %i.abx = load ptr, ptr %gep1412, align 8, !tbaa !30 ; 3 uses
  %i.aby = getelementptr inbounds [8 x i8], ptr %i.abx, i64 %.11035
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !32 ; 6 uses
  %i.aca = getelementptr inbounds [8 x i8], ptr %i.abz, i64 %i.wn
  %i.acb = load double, ptr %i.aca, align 8, !tbaa !21
  %i.acc = fmul double %i.acb, 2.500000e-01       ; 2 uses
  %.idx1383 = shl i64 %indvars.iv1282, 4
  %i.acd = getelementptr i8, ptr %i.yu, i64 %.idx1383 ; 2 uses
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !30 ; 3 uses
  %i.acf = getelementptr inbounds [8 x i8], ptr %i.ace, i64 %.11033
  %i.acg = load ptr, ptr %i.acf, align 8, !tbaa !32 ; 7 uses
  store double %i.acc, ptr %i.acg, align 8, !tbaa !21
  %i.ach = getelementptr i8, ptr %i.acd, i64 -8
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !30 ; 2 uses
  %i.acj = getelementptr inbounds [8 x i8], ptr %i.aci, i64 %.11033
  %i.ack = load ptr, ptr %i.acj, align 8, !tbaa !32 ; 7 uses
  store double %i.acc, ptr %i.ack, align 8, !tbaa !21
  %i.acl = getelementptr inbounds [8 x i8], ptr %i.aci, i64 %.11031
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !32 ; 7 uses
  br i1 %i.wu, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph1152
  %i.acn = load double, ptr %i.acm, align 8, !tbaa !21
  %i.aco = getelementptr inbounds [8 x i8], ptr %i.ace, i64 %.11031
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !32 ; 2 uses
  %i.acq = load double, ptr %i.acp, align 8, !tbaa !21
  %i.acr = fadd double %i.acn, %i.acq
  %i.acs = getelementptr inbounds [8 x i8], ptr %i.abx, i64 %.11037
  %i.act = load ptr, ptr %i.acs, align 8, !tbaa !32 ; 2 uses
  store double %i.acr, ptr %i.act, align 8, !tbaa !21
  br label %bb.au

bb.at:                                            ; preds = %.lr.ph1152
  %i.acu = getelementptr inbounds [8 x i8], ptr %i.acm, i64 %i.ws
  %i.acv = load double, ptr %i.acu, align 8, !tbaa !21
  %i.acw = getelementptr inbounds [8 x i8], ptr %i.ace, i64 %.11031
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !32 ; 2 uses
  %i.acy = getelementptr inbounds [8 x i8], ptr %i.acx, i64 %i.ws
  %i.acz = load double, ptr %i.acy, align 8, !tbaa !21
  %i.ada = fadd double %i.acv, %i.acz
  %i.adb = getelementptr inbounds [8 x i8], ptr %i.abx, i64 %.11037
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !32 ; 2 uses
  %i.add = getelementptr inbounds [8 x i8], ptr %i.adc, i64 %i.ws
  store double %i.ada, ptr %i.add, align 8, !tbaa !21
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ade = phi ptr [ %i.adc, %bb.at ], [ %i.act, %bb.as ] ; 4 uses
  %i.adf = phi ptr [ %i.acx, %bb.at ], [ %i.acp, %bb.as ] ; 5 uses
  br i1 %.not10791135, label %._crit_edge1148, label %.lr.ph1147.preheader

.lr.ph1147.preheader:                             ; preds = %bb.au
  br i1 %min.iters.check1535, label %.lr.ph1147.preheader1949, label %vector.memcheck1475

vector.memcheck1475:                              ; preds = %.lr.ph1147.preheader
  %scevgep1476 = getelementptr i8, ptr %i.acg, i64 8 ; 5 uses
  %scevgep1477 = getelementptr i8, ptr %i.acg, i64 %i.xm ; 5 uses
  %scevgep1478 = getelementptr i8, ptr %i.ack, i64 8 ; 5 uses
  %scevgep1479 = getelementptr i8, ptr %i.ack, i64 %i.xm ; 5 uses
  %scevgep1480 = getelementptr i8, ptr %i.ade, i64 %i.xi ; 5 uses
  %scevgep1481 = getelementptr i8, ptr %i.ade, i64 %i.xk ; 5 uses
  %scevgep1482 = getelementptr i8, ptr %i.abz, i64 %i.xi ; 3 uses
  %scevgep1483 = getelementptr i8, ptr %i.abz, i64 %i.xk ; 3 uses
  %scevgep1484 = getelementptr i8, ptr %i.acm, i64 8 ; 3 uses
  %scevgep1485 = getelementptr i8, ptr %i.acm, i64 %i.xm ; 3 uses
  %scevgep1486 = getelementptr i8, ptr %i.adf, i64 8 ; 3 uses
  %scevgep1487 = getelementptr i8, ptr %i.adf, i64 %i.xm ; 3 uses
  %bound01488 = icmp ult ptr %scevgep1476, %scevgep1479
  %bound11489 = icmp ult ptr %scevgep1478, %scevgep1477
  %found.conflict1490 = and i1 %bound01488, %bound11489
  %bound01491 = icmp ult ptr %scevgep1476, %scevgep1481
  %bound11492 = icmp ult ptr %scevgep1480, %scevgep1477
  %found.conflict1493 = and i1 %bound01491, %bound11492
  %conflict.rdx = or i1 %found.conflict1490, %found.conflict1493
  %bound01494 = icmp ult ptr %scevgep1476, %scevgep1483
  %bound11495 = icmp ult ptr %scevgep1482, %scevgep1477
  %found.conflict1496 = and i1 %bound01494, %bound11495
  %conflict.rdx1497 = or i1 %conflict.rdx, %found.conflict1496
  %bound01498 = icmp ult ptr %scevgep1476, %scevgep1485
  %bound11499 = icmp ult ptr %scevgep1484, %scevgep1477
  %found.conflict1500 = and i1 %bound01498, %bound11499
  %conflict.rdx1501 = or i1 %conflict.rdx1497, %found.conflict1500
  %bound01502 = icmp ult ptr %scevgep1476, %scevgep1487
  %bound11503 = icmp ult ptr %scevgep1486, %scevgep1477
  %found.conflict1504 = and i1 %bound01502, %bound11503
  %conflict.rdx1505 = or i1 %conflict.rdx1501, %found.conflict1504
  %bound01506 = icmp ult ptr %scevgep1478, %scevgep1481
  %bound11507 = icmp ult ptr %scevgep1480, %scevgep1479
  %found.conflict1508 = and i1 %bound01506, %bound11507
  %conflict.rdx1509 = or i1 %conflict.rdx1505, %found.conflict1508
  %bound01510 = icmp ult ptr %scevgep1478, %scevgep1483
  %bound11511 = icmp ult ptr %scevgep1482, %scevgep1479
  %found.conflict1512 = and i1 %bound01510, %bound11511
  %conflict.rdx1513 = or i1 %conflict.rdx1509, %found.conflict1512
  %bound01514 = icmp ult ptr %scevgep1478, %scevgep1485
  %bound11515 = icmp ult ptr %scevgep1484, %scevgep1479
  %found.conflict1516 = and i1 %bound01514, %bound11515
  %conflict.rdx1517 = or i1 %conflict.rdx1513, %found.conflict1516
  %bound01518 = icmp ult ptr %scevgep1478, %scevgep1487
  %bound11519 = icmp ult ptr %scevgep1486, %scevgep1479
  %found.conflict1520 = and i1 %bound01518, %bound11519
  %conflict.rdx1521 = or i1 %conflict.rdx1517, %found.conflict1520
  %bound01522 = icmp ult ptr %scevgep1480, %scevgep1483
  %bound11523 = icmp ult ptr %scevgep1482, %scevgep1481
  %found.conflict1524 = and i1 %bound01522, %bound11523
  %conflict.rdx1525 = or i1 %conflict.rdx1521, %found.conflict1524
  %bound01526 = icmp ult ptr %scevgep1480, %scevgep1485
  %bound11527 = icmp ult ptr %scevgep1484, %scevgep1481
  %found.conflict1528 = and i1 %bound01526, %bound11527
  %conflict.rdx1529 = or i1 %conflict.rdx1525, %found.conflict1528
  %bound01530 = icmp ult ptr %scevgep1480, %scevgep1487
  %bound11531 = icmp ult ptr %scevgep1486, %scevgep1481
  %found.conflict1532 = and i1 %bound01530, %bound11531
  %conflict.rdx1533 = or i1 %conflict.rdx1529, %found.conflict1532
  br i1 %conflict.rdx1533, label %.lr.ph1147.preheader1949, label %vector.body1539

vector.body1539:                                  ; preds = %vector.memcheck1475, %vector.body1539
  %index1540 = phi i64 [ %index.next1548, %vector.body1539 ], [ 0, %vector.memcheck1475 ] ; 2 uses
  %i.adg = or disjoint i64 %index1540, 1          ; 2 uses
  %i.adh = add nsw i64 %i.adg, %i.wn              ; 2 uses
  %i.adi = getelementptr inbounds [8 x i8], ptr %i.abz, i64 %i.adh
  %wide.load = load <2 x double>, ptr %i.adi, align 8, !tbaa !21, !alias.scope !157
  %i.adj = shl nuw nsw i64 %i.adg, 1
  %i.adk = add nsw i64 %i.adj, -1                 ; 4 uses
  %i.adl = getelementptr inbounds nuw [8 x i8], ptr %i.acg, i64 %i.adk
  %i.adm = shufflevector <2 x double> %wide.load, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %interleaved.vec = fmul <4 x double> %i.adm, splat (double 2.500000e-01) ; 2 uses
  store <4 x double> %interleaved.vec, ptr %i.adl, align 8, !tbaa !21, !alias.scope !160, !noalias !162
  %i.adn = getelementptr inbounds nuw [8 x i8], ptr %i.ack, i64 %i.adk
  store <4 x double> %interleaved.vec, ptr %i.adn, align 8, !tbaa !21, !alias.scope !167, !noalias !168
  %i.ado = getelementptr inbounds nuw [8 x i8], ptr %i.acm, i64 %i.adk
  %wide.vec1542 = load <4 x double>, ptr %i.ado, align 8, !tbaa !21, !alias.scope !169 ; 2 uses
  %strided.vec1543 = shufflevector <4 x double> %wide.vec1542, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec1544 = shufflevector <4 x double> %wide.vec1542, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.adp = fadd <2 x double> %strided.vec1543, %strided.vec1544
  %i.adq = getelementptr inbounds nuw [8 x i8], ptr %i.adf, i64 %i.adk
  %wide.vec1545 = load <4 x double>, ptr %i.adq, align 8, !tbaa !21, !alias.scope !170 ; 2 uses
  %strided.vec1546 = shufflevector <4 x double> %wide.vec1545, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec1547 = shufflevector <4 x double> %wide.vec1545, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.adr = fadd <2 x double> %i.adp, %strided.vec1546
  %i.ads = fadd <2 x double> %i.adr, %strided.vec1547
  %i.adt = getelementptr inbounds [8 x i8], ptr %i.ade, i64 %i.adh
  store <2 x double> %i.ads, ptr %i.adt, align 8, !tbaa !21, !alias.scope !171, !noalias !172
  %index.next1548 = add nuw i64 %index1540, 2     ; 2 uses
  %i.adu = icmp eq i64 %index.next1548, %n.vec1538
  br i1 %i.adu, label %middle.block1549, label %vector.body1539, !llvm.loop !173

middle.block1549:                                 ; preds = %vector.body1539
  br i1 %cmp.n1550, label %._crit_edge1148, label %.lr.ph1147.preheader1949

.lr.ph1147.preheader1949:                         ; preds = %vector.memcheck1475, %.lr.ph1147.preheader, %middle.block1549
  %indvars.iv1277.ph = phi i64 [ 1, %vector.memcheck1475 ], [ 1, %.lr.ph1147.preheader ], [ %i.yd, %middle.block1549 ]
  br label %.lr.ph1147

.lr.ph1147:                                       ; preds = %.lr.ph1147.preheader1949, %.lr.ph1147
  %indvars.iv1277 = phi i64 [ %indvars.iv.next1278, %.lr.ph1147 ], [ %indvars.iv1277.ph, %.lr.ph1147.preheader1949 ] ; 3 uses
  %i.adv = add nsw i64 %indvars.iv1277, %i.wn     ; 2 uses
  %i.adw = getelementptr inbounds [8 x i8], ptr %i.abz, i64 %i.adv
  %i.adx = load double, ptr %i.adw, align 8, !tbaa !21
  %i.ady = fmul double %i.adx, 2.500000e-01       ; 4 uses
  %i.adz = shl nuw nsw i64 %indvars.iv1277, 1     ; 5 uses
  %i.aea = getelementptr inbounds nuw [8 x i8], ptr %i.acg, i64 %i.adz
  store double %i.ady, ptr %i.aea, align 8, !tbaa !21
  %i.aeb = add nsw i64 %i.adz, -1                 ; 4 uses
  %i.aec = getelementptr inbounds [8 x i8], ptr %i.acg, i64 %i.aeb
  store double %i.ady, ptr %i.aec, align 8, !tbaa !21
  %i.aed = getelementptr inbounds nuw [8 x i8], ptr %i.ack, i64 %i.adz
  store double %i.ady, ptr %i.aed, align 8, !tbaa !21
  %i.aee = getelementptr inbounds [8 x i8], ptr %i.ack, i64 %i.aeb
  store double %i.ady, ptr %i.aee, align 8, !tbaa !21
  %i.aef = getelementptr inbounds [8 x i8], ptr %i.acm, i64 %i.aeb
  %i.aeg = load double, ptr %i.aef, align 8, !tbaa !21
  %i.aeh = getelementptr inbounds nuw [8 x i8], ptr %i.acm, i64 %i.adz
  %i.aei = load double, ptr %i.aeh, align 8, !tbaa !21
  %i.aej = fadd double %i.aeg, %i.aei
  %i.aek = getelementptr inbounds [8 x i8], ptr %i.adf, i64 %i.aeb
  %i.ael = load double, ptr %i.aek, align 8, !tbaa !21
  %i.aem = fadd double %i.aej, %i.ael
  %i.aen = getelementptr inbounds nuw [8 x i8], ptr %i.adf, i64 %i.adz
  %i.aeo = load double, ptr %i.aen, align 8, !tbaa !21
  %i.aep = fadd double %i.aem, %i.aeo
  %i.aeq = getelementptr inbounds [8 x i8], ptr %i.ade, i64 %i.adv
  store double %i.aep, ptr %i.aeq, align 8, !tbaa !21
  %indvars.iv.next1278 = add nuw nsw i64 %indvars.iv1277, 1 ; 2 uses
  %exitcond1281.not = icmp eq i64 %indvars.iv.next1278, %wide.trip.count1280
  br i1 %exitcond1281.not, label %._crit_edge1148, label %.lr.ph1147, !llvm.loop !174

._crit_edge1148:                                  ; preds = %.lr.ph1147, %middle.block1549, %bb.au
  %i.aer = getelementptr inbounds [8 x i8], ptr %i.abz, i64 %i.wr
  %i.aes = load double, ptr %i.aer, align 8, !tbaa !21
  %i.aet = fmul double %i.aes, 2.500000e-01       ; 2 uses
  %i.aeu = getelementptr inbounds [8 x i8], ptr %i.acg, i64 %i.ws
  store double %i.aet, ptr %i.aeu, align 8, !tbaa !21
  %i.aev = getelementptr inbounds [8 x i8], ptr %i.ack, i64 %i.ws
  store double %i.aet, ptr %i.aev, align 8, !tbaa !21
  %indvars.iv.next1283 = add nuw nsw i64 %indvars.iv1282, 1 ; 2 uses
  %exitcond1286.not = icmp eq i64 %indvars.iv.next1283, %wide.trip.count1285
  br i1 %exitcond1286.not, label %._crit_edge1153, label %.lr.ph1152, !llvm.loop !175

._crit_edge1153:                                  ; preds = %._crit_edge1148, %.loopexit1102
  %i.aew = getelementptr inbounds [8 x i8], ptr %i.yl, i64 %i.ww
  %i.aex = load ptr, ptr %i.aew, align 8, !tbaa !30
  %i.aey = getelementptr inbounds [8 x i8], ptr %i.aex, i64 %.11035
  %i.aez = load ptr, ptr %i.aey, align 8, !tbaa !32 ; 5 uses
  %i.afa = getelementptr inbounds [8 x i8], ptr %i.aez, i64 %i.wn
  %i.afb = load double, ptr %i.afa, align 8, !tbaa !21
  %i.afc = fmul double %i.afb, 2.500000e-01
  %i.afd = getelementptr inbounds [8 x i8], ptr %i.yu, i64 %i.wx
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !30 ; 2 uses
  %i.aff = getelementptr inbounds [8 x i8], ptr %i.afe, i64 %.11033
  %i.afg = load ptr, ptr %i.aff, align 8, !tbaa !32 ; 9 uses
  store double %i.afc, ptr %i.afg, align 8, !tbaa !21
  br i1 %.not10791135, label %._crit_edge1158, label %.lr.ph1157.preheader

.lr.ph1157.preheader:                             ; preds = %._crit_edge1153
  %invariant.gep1413 = getelementptr [8 x i8], ptr %i.aez, i64 %i.wn ; 5 uses
  br i1 %min.iters.check1463, label %.lr.ph1157.preheader1950, label %vector.memcheck1454

vector.memcheck1454:                              ; preds = %.lr.ph1157.preheader
  %scevgep1455 = getelementptr i8, ptr %i.afg, i64 8
  %scevgep1456 = getelementptr i8, ptr %i.afg, i64 %i.xf
  %scevgep1457 = getelementptr i8, ptr %i.aez, i64 %i.xi
  %scevgep1458 = getelementptr i8, ptr %i.aez, i64 %i.xk
  %bound01459 = icmp ult ptr %scevgep1455, %scevgep1458
  %bound11460 = icmp ult ptr %scevgep1457, %scevgep1456
  %found.conflict1461 = and i1 %bound01459, %bound11460
  br i1 %found.conflict1461, label %.lr.ph1157.preheader1950, label %vector.body1467

vector.body1467:                                  ; preds = %vector.memcheck1454, %vector.body1467
  %index1468 = phi i64 [ %index.next1471, %vector.body1467 ], [ 0, %vector.memcheck1454 ] ; 3 uses
  %i.afh = or disjoint i64 %index1468, 1          ; 2 uses
  %i.afi = add i64 %index1468, 2                  ; 2 uses
  %i.afj = getelementptr [8 x i8], ptr %invariant.gep1413, i64 %i.afh
  %i.afk = getelementptr [8 x i8], ptr %invariant.gep1413, i64 %i.afi
  %i.afl = load double, ptr %i.afj, align 8, !tbaa !21, !alias.scope !176
  %i.afm = load double, ptr %i.afk, align 8, !tbaa !21, !alias.scope !176
  %.scalar1941 = fmul double %i.afl, 2.500000e-01
  %i.afn = insertelement <2 x double> poison, double %.scalar1941, i64 0
  %i.afo = shufflevector <2 x double> %i.afn, <2 x double> poison, <2 x i32> zeroinitializer
  %.scalar1942 = fmul double %i.afm, 2.500000e-01
  %i.afp = insertelement <2 x double> poison, double %.scalar1942, i64 0
  %i.afq = shufflevector <2 x double> %i.afp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.afr = shl nuw nsw i64 %i.afh, 4
  %i.afs = shl nuw nsw i64 %i.afi, 4
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afg, i64 %i.afr
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afg, i64 %i.afs
  %i.afv = getelementptr i8, ptr %i.aft, i64 -8
  %i.afw = getelementptr i8, ptr %i.afu, i64 -8
  store <2 x double> %i.afo, ptr %i.afv, align 8
  store <2 x double> %i.afq, ptr %i.afw, align 8
  %index.next1471 = add nuw i64 %index1468, 2     ; 2 uses
  %i.afx = icmp eq i64 %index.next1471, %n.vec1466
  br i1 %i.afx, label %middle.block1472, label %vector.body1467, !llvm.loop !179

middle.block1472:                                 ; preds = %vector.body1467
  br i1 %cmp.n1473, label %._crit_edge1158, label %.lr.ph1157.preheader1950

.lr.ph1157.preheader1950:                         ; preds = %vector.memcheck1454, %.lr.ph1157.preheader, %middle.block1472
  %indvars.iv1287.ph = phi i64 [ 1, %vector.memcheck1454 ], [ 1, %.lr.ph1157.preheader ], [ %i.ye, %middle.block1472 ] ; 5 uses
  br i1 %lcmp.mod1976.not.not, label %.lr.ph1157.prol, label %.lr.ph1157.prol.loopexit

.lr.ph1157.prol:                                  ; preds = %.lr.ph1157.preheader1950
  %gep1414.prol = getelementptr [8 x i8], ptr %invariant.gep1413, i64 %indvars.iv1287.ph
  %i.afy = load double, ptr %gep1414.prol, align 8, !tbaa !21
  %i.afz = fmul double %i.afy, 2.500000e-01       ; 2 uses
  %.idx1384.prol = shl nuw nsw i64 %indvars.iv1287.ph, 4
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afg, i64 %.idx1384.prol ; 2 uses
  store double %i.afz, ptr %i.aga, align 8, !tbaa !21
  %i.agb = getelementptr i8, ptr %i.aga, i64 -8
  store double %i.afz, ptr %i.agb, align 8, !tbaa !21
  %indvars.iv.next1288.prol = add nuw nsw i64 %indvars.iv1287.ph, 1
  br label %.lr.ph1157.prol.loopexit

.lr.ph1157.prol.loopexit:                         ; preds = %.lr.ph1157.prol, %.lr.ph1157.preheader1950
  %indvars.iv1287.unr = phi i64 [ %indvars.iv1287.ph, %.lr.ph1157.preheader1950 ], [ %indvars.iv.next1288.prol, %.lr.ph1157.prol ]
  %i.agc = icmp eq i64 %indvars.iv1287.ph, %i.yg
  br i1 %i.agc, label %._crit_edge1158, label %.lr.ph1157

.lr.ph1157:                                       ; preds = %.lr.ph1157.prol.loopexit, %.lr.ph1157
  %indvars.iv1287 = phi i64 [ %indvars.iv.next1288.1, %.lr.ph1157 ], [ %indvars.iv1287.unr, %.lr.ph1157.prol.loopexit ] ; 4 uses
  %gep1414 = getelementptr [8 x i8], ptr %invariant.gep1413, i64 %indvars.iv1287
  %i.agd = load double, ptr %gep1414, align 8, !tbaa !21
  %i.age = fmul double %i.agd, 2.500000e-01       ; 2 uses
  %.idx1384 = shl nuw nsw i64 %indvars.iv1287, 4
  %i.agf = getelementptr inbounds nuw i8, ptr %i.afg, i64 %.idx1384 ; 2 uses
  store double %i.age, ptr %i.agf, align 8, !tbaa !21
  %i.agg = getelementptr i8, ptr %i.agf, i64 -8
  store double %i.age, ptr %i.agg, align 8, !tbaa !21
  %indvars.iv.next1288 = add nuw nsw i64 %indvars.iv1287, 1 ; 2 uses
  %gep1414.1 = getelementptr [8 x i8], ptr %invariant.gep1413, i64 %indvars.iv.next1288
  %i.agh = load double, ptr %gep1414.1, align 8, !tbaa !21
  %i.agi = fmul double %i.agh, 2.500000e-01       ; 2 uses
  %.idx1384.1 = shl nuw nsw i64 %indvars.iv.next1288, 4
  %i.agj = getelementptr inbounds nuw i8, ptr %i.afg, i64 %.idx1384.1 ; 2 uses
  store double %i.agi, ptr %i.agj, align 8, !tbaa !21
  %i.agk = getelementptr i8, ptr %i.agj, i64 -8
  store double %i.agi, ptr %i.agk, align 8, !tbaa !21
  %indvars.iv.next1288.1 = add nuw nsw i64 %indvars.iv1287, 2 ; 2 uses
  %exitcond1291.not.1 = icmp eq i64 %indvars.iv.next1288.1, %wide.trip.count1290
  br i1 %exitcond1291.not.1, label %._crit_edge1158, label %.lr.ph1157, !llvm.loop !180

._crit_edge1158:                                  ; preds = %.lr.ph1157.prol.loopexit, %.lr.ph1157, %middle.block1472, %._crit_edge1153
  %i.agl = getelementptr inbounds [8 x i8], ptr %i.aez, i64 %i.wr
  %i.agm = load double, ptr %i.agl, align 8, !tbaa !21
  %i.agn = fmul double %i.agm, 2.500000e-01
  %i.ago = getelementptr inbounds [8 x i8], ptr %i.afg, i64 %i.ws
  store double %i.agn, ptr %i.ago, align 8, !tbaa !21
  br i1 %i.wy, label %bb.av, label %.loopexit1101

bb.av:                                            ; preds = %._crit_edge1158
  %i.agp = getelementptr inbounds [8 x i8], ptr %i.afe, i64 %.11031
  %i.agq = load ptr, ptr %i.agp, align 8, !tbaa !32 ; 9 uses
  br i1 %i.wu, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.agr = load double, ptr %i.agq, align 8, !tbaa !21
  %i.ags = getelementptr inbounds [8 x i8], ptr %i.yl, i64 %i.wx
  %i.agt = load ptr, ptr %i.ags, align 8, !tbaa !30
  %i.agu = getelementptr inbounds [8 x i8], ptr %i.agt, i64 %.11037
  %i.agv = load ptr, ptr %i.agu, align 8, !tbaa !32 ; 2 uses
  store double %i.agr, ptr %i.agv, align 8, !tbaa !21
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.agw = getelementptr inbounds [8 x i8], ptr %i.agq, i64 %i.ws
  %i.agx = load double, ptr %i.agw, align 8, !tbaa !21
  %i.agy = getelementptr inbounds [8 x i8], ptr %i.yl, i64 %i.wx
  %i.agz = load ptr, ptr %i.agy, align 8, !tbaa !30
  %i.aha = getelementptr inbounds [8 x i8], ptr %i.agz, i64 %.11037
  %i.ahb = load ptr, ptr %i.aha, align 8, !tbaa !32 ; 2 uses
  %i.ahc = getelementptr inbounds [8 x i8], ptr %i.ahb, i64 %i.ws
  store double %i.agx, ptr %i.ahc, align 8, !tbaa !21
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ahd = phi ptr [ %i.ahb, %bb.ax ], [ %i.agv, %bb.aw ] ; 3 uses
  br i1 %.not10791135, label %.loopexit1101, label %.lr.ph1162

.lr.ph1162:                                       ; preds = %bb.ay
  %invariant.gep1415 = getelementptr [8 x i8], ptr %i.ahd, i64 %i.wn ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph1162
  %i.ahe = getelementptr i8, ptr %i.ahd, i64 %i.xb
  %scevgep = getelementptr i8, ptr %i.ahe, i64 8
  %scevgep1447 = getelementptr i8, ptr %i.ahd, i64 %i.xd
  %scevgep1448 = getelementptr i8, ptr %i.agq, i64 8
  %scevgep1449 = getelementptr i8, ptr %i.agq, i64 %i.xf
  %bound0 = icmp ult ptr %scevgep, %scevgep1449
  %bound1 = icmp ult ptr %scevgep1448, %scevgep1447
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ahf = or disjoint i64 %index, 1              ; 2 uses
  %i.ahg = shl i64 %i.ahf, 4
  %i.ahh = shl i64 %index, 4
  %i.ahi = getelementptr i8, ptr %i.agq, i64 %i.ahg
  %i.ahj = getelementptr i8, ptr %i.agq, i64 %i.ahh
  %i.ahk = getelementptr i8, ptr %i.ahi, i64 -8
  %i.ahl = getelementptr i8, ptr %i.ahj, i64 40
  %wide.vec = load <4 x double>, ptr %i.ahk, align 8, !tbaa !21, !alias.scope !181 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec1450 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec1451 = load <4 x double>, ptr %i.ahl, align 8, !tbaa !21, !alias.scope !181 ; 2 uses
  %strided.vec1452 = shufflevector <4 x double> %wide.vec1451, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec1453 = shufflevector <4 x double> %wide.vec1451, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.ahm = fadd <2 x double> %strided.vec, %strided.vec1450
  %i.ahn = fadd <2 x double> %strided.vec1452, %strided.vec1453
  %i.aho = getelementptr [8 x i8], ptr %invariant.gep1415, i64 %i.ahf ; 2 uses
  %i.ahp = getelementptr i8, ptr %i.aho, i64 16
  store <2 x double> %i.ahm, ptr %i.aho, align 8, !tbaa !21, !alias.scope !184, !noalias !181
  store <2 x double> %i.ahn, ptr %i.ahp, align 8, !tbaa !21, !alias.scope !184, !noalias !181
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ahq = icmp eq i64 %index.next, %n.vec
  br i1 %i.ahq, label %middle.block, label %vector.body, !llvm.loop !186

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit1101, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph1162, %middle.block
  %indvars.iv1292.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph1162 ], [ %i.yh, %middle.block ] ; 5 uses
  br i1 %lcmp.mod1978.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %.idx1385.prol = shl nsw i64 %indvars.iv1292.ph, 4
  %i.ahr = getelementptr i8, ptr %i.agq, i64 %.idx1385.prol ; 2 uses
  %i.ahs = getelementptr i8, ptr %i.ahr, i64 -8
  %i.aht = load double, ptr %i.ahs, align 8, !tbaa !21
  %i.ahu = load double, ptr %i.ahr, align 8, !tbaa !21
  %i.ahv = fadd double %i.aht, %i.ahu
  %gep1416.prol = getelementptr [8 x i8], ptr %invariant.gep1415, i64 %indvars.iv1292.ph
  store double %i.ahv, ptr %gep1416.prol, align 8, !tbaa !21
  %indvars.iv.next1293.prol = add nuw nsw i64 %indvars.iv1292.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv1292.unr = phi i64 [ %indvars.iv1292.ph, %scalar.ph.preheader ], [ %indvars.iv.next1293.prol, %scalar.ph.prol ]
  %i.ahw = icmp eq i64 %indvars.iv1292.ph, %i.yj
  br i1 %i.ahw, label %.loopexit1101, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv1292 = phi i64 [ %indvars.iv.next1293.1, %scalar.ph ], [ %indvars.iv1292.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %.idx1385 = shl i64 %indvars.iv1292, 4
  %i.ahx = getelementptr i8, ptr %i.agq, i64 %.idx1385 ; 2 uses
  %i.ahy = getelementptr i8, ptr %i.ahx, i64 -8
  %i.ahz = load double, ptr %i.ahy, align 8, !tbaa !21
  %i.aia = load double, ptr %i.ahx, align 8, !tbaa !21
  %i.aib = fadd double %i.ahz, %i.aia
  %gep1416 = getelementptr [8 x i8], ptr %invariant.gep1415, i64 %indvars.iv1292
  store double %i.aib, ptr %gep1416, align 8, !tbaa !21
  %indvars.iv.next1293 = add nuw nsw i64 %indvars.iv1292, 1 ; 2 uses
  %.idx1385.1 = shl i64 %indvars.iv.next1293, 4
  %i.aic = getelementptr i8, ptr %i.agq, i64 %.idx1385.1 ; 2 uses
  %i.aid = getelementptr i8, ptr %i.aic, i64 -8
  %i.aie = load double, ptr %i.aid, align 8, !tbaa !21
  %i.aif = load double, ptr %i.aic, align 8, !tbaa !21
  %i.aig = fadd double %i.aie, %i.aif
  %gep1416.1 = getelementptr [8 x i8], ptr %invariant.gep1415, i64 %indvars.iv.next1293
  store double %i.aig, ptr %gep1416.1, align 8, !tbaa !21
  %indvars.iv.next1293.1 = add nuw nsw i64 %indvars.iv1292, 2 ; 2 uses
  %exitcond1296.not.1 = icmp eq i64 %indvars.iv.next1293.1, %wide.trip.count1295
  br i1 %exitcond1296.not.1, label %.loopexit1101, label %scalar.ph, !llvm.loop !187

.loopexit1101:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ay, %._crit_edge1158
  %indvars.iv.next1298 = add nsw i64 %indvars.iv1297, 1 ; 2 uses
  %i.aih = icmp slt i64 %indvars.iv.next1298, %i.xa
  br i1 %i.aih, label %bb.an, label %.loopexit, !llvm.loop !188

bb.az:                                            ; preds = %bb.ai
  %i.aii = icmp eq i32 %2, 4
  %i.aij = load i32, ptr @z_block_size, align 4, !tbaa !4 ; 3 uses
  %i.aik = add nsw i32 %i.aij, 1                  ; 2 uses
  br i1 %i.aii, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ail = sext i32 %i.aik to i64
  %i.aim = sext i32 %i.aij to i64
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.ain = sext i32 %i.aij to i64
  %i.aio = sext i32 %i.aik to i64
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.11029 = phi i64 [ 0, %bb.ba ], [ %i.aio, %bb.bb ] ; 10 uses
  %.11027 = phi i64 [ 1, %bb.ba ], [ %i.ain, %bb.bb ] ; 13 uses
  %.11025 = phi i64 [ %i.ail, %bb.ba ], [ 0, %bb.bb ] ; 24 uses
  %.11023 = phi i64 [ %i.aim, %bb.ba ], [ 1, %bb.bb ] ; 22 uses
  %i.aip = icmp sgt i32 %6, 0
  br i1 %i.aip, label %.lr.ph1134, label %.loopexit

.lr.ph1134:                                       ; preds = %bb.bc
  %i.aiq = add nsw i32 %6, %5
  %i.air = load i32, ptr @y_block_half, align 4, !tbaa !4 ; 3 uses
  %i.ais = mul nsw i32 %i.air, %3                 ; 2 uses
  %i.ait = load i32, ptr @x_block_half, align 4, !tbaa !4 ; 3 uses
  %i.aiu = mul nsw i32 %i.ait, %4                 ; 2 uses
  %i.aiv = add i32 %i.air, 1                      ; 3 uses
  %i.aiw = load i32, ptr @y_block_size, align 4, !tbaa !4
  %i.aix = add nsw i32 %i.aiw, 1
  %i.aiy = add i32 %i.ait, 1                      ; 2 uses
  %i.aiz = load i32, ptr @x_block_size, align 4, !tbaa !4
  %i.aja = add nsw i32 %i.aiz, 1
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !27
  %i.ajd = sext i32 %i.aiu to i64                 ; 2 uses
  %i.aje = sext i32 %i.ais to i64                 ; 8 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.ajg = load ptr, ptr %i.ajf, align 8, !tbaa !27
  %.not10731107 = icmp slt i32 %i.air, 1          ; 5 uses
  %i.ajh = add nsw i32 %i.aiv, %i.ais
  %i.aji = sext i32 %i.ajh to i64                 ; 3 uses
  %i.ajj = sext i32 %i.aix to i64                 ; 9 uses
  %i.ajk = icmp eq i32 %4, 0
  %i.ajl = icmp eq i32 %3, 0                      ; 5 uses
  %.not10751118 = icmp slt i32 %i.ait, 1
  %i.ajm = add nsw i32 %i.aiy, %i.aiu
  %i.ajn = sext i32 %i.ajm to i64
  %i.ajo = sext i32 %i.aja to i64                 ; 2 uses
  %i.ajp = icmp eq i32 %4, 1
  %i.ajq = sext i32 %5 to i64
  %i.ajr = sext i32 %i.aiq to i64
  %wide.trip.count = zext i32 %i.aiv to i64       ; 2 uses
  %wide.trip.count1252 = zext i32 %i.aiy to i64
  %wide.trip.count1247 = zext i32 %i.aiv to i64
  %i.ajs = add nsw i64 %wide.trip.count, -1       ; 12 uses
  %i.ajt = add nsw i64 %wide.trip.count, -2       ; 4 uses
  %xtraiter = and i64 %i.ajs, 1
  %i.aju = icmp eq i64 %i.ajt, 0
  %unroll_iter = and i64 %i.ajs, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1954 = trunc i64 %i.ajs to i1
  %.sink1434.in.idx = select i1 %i.ajl, i64 0, i64 %i.ajj
  %xtraiter1955 = and i64 %i.ajs, 1
  %i.ajv = icmp eq i64 %i.ajt, 0
  %unroll_iter1958 = and i64 %i.ajs, -2
  %lcmp.mod1956.not = icmp eq i64 %xtraiter1955, 0
  %lcmp.mod1957 = trunc i64 %i.ajs to i1
  %xtraiter1960 = and i64 %i.ajs, 1
  %i.ajw = icmp eq i64 %i.ajt, 0
  %unroll_iter1963 = and i64 %i.ajs, -2
  %lcmp.mod1961.not = icmp eq i64 %xtraiter1960, 0
  %lcmp.mod1962 = trunc i64 %i.ajs to i1
  %.sink1440.in.idx = select i1 %i.ajl, i64 0, i64 %i.ajj
  %xtraiter1966 = and i64 %i.ajs, 1
  %i.ajx = icmp eq i64 %i.ajt, 0
  %unroll_iter1969 = and i64 %i.ajs, -2
  %lcmp.mod1967.not = icmp eq i64 %xtraiter1966, 0
  %lcmp.mod1968 = trunc i64 %i.ajs to i1
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph1134, %.loopexit1104
  %indvars.iv1264 = phi i64 [ %i.ajq, %.lr.ph1134 ], [ %indvars.iv.next1265, %.loopexit1104 ] ; 3 uses
  %i.ajy = getelementptr inbounds [8 x i8], ptr %i.ajc, i64 %indvars.iv1264
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !28 ; 5 uses
  %i.aka = getelementptr inbounds [8 x i8], ptr %i.ajz, i64 %i.ajd
  %i.akb = load ptr, ptr %i.aka, align 8, !tbaa !30 ; 3 uses
  %i.akc = getelementptr inbounds [8 x i8], ptr %i.akb, i64 %i.aje
  %i.akd = load ptr, ptr %i.akc, align 8, !tbaa !32
  %i.ake = getelementptr inbounds [8 x i8], ptr %i.akd, i64 %.11027
  %i.akf = load double, ptr %i.ake, align 8, !tbaa !21
  %i.akg = fmul double %i.akf, 2.500000e-01
  %i.akh = getelementptr inbounds [8 x i8], ptr %i.ajg, i64 %indvars.iv1264
  %i.aki = load ptr, ptr %i.akh, align 8, !tbaa !28 ; 3 uses
  %i.akj = load ptr, ptr %i.aki, align 8, !tbaa !30 ; 8 uses
  %i.akk = load ptr, ptr %i.akj, align 8, !tbaa !32 ; 2 uses
  %i.akl = getelementptr inbounds [8 x i8], ptr %i.akk, i64 %.11025
  store double %i.akg, ptr %i.akl, align 8, !tbaa !21
  br i1 %.not10731107, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.bd
  %invariant.gep = getelementptr [8 x i8], ptr %i.akb, i64 %i.aje ; 3 uses
  br i1 %i.aju, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.akm = load ptr, ptr %gep, align 8, !tbaa !32
  %i.akn = getelementptr inbounds [8 x i8], ptr %i.akm, i64 %.11027
  %i.ako = load double, ptr %i.akn, align 8, !tbaa !21
  %i.akp = fmul double %i.ako, 2.500000e-01       ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akj, i64 %.idx ; 2 uses
  %i.akr = load ptr, ptr %i.akq, align 8, !tbaa !32
  %i.aks = getelementptr inbounds [8 x i8], ptr %i.akr, i64 %.11025
  store double %i.akp, ptr %i.aks, align 8, !tbaa !21
  %i.akt = getelementptr i8, ptr %i.akq, i64 -8
  %i.aku = load ptr, ptr %i.akt, align 8, !tbaa !32
  %i.akv = getelementptr inbounds [8 x i8], ptr %i.aku, i64 %.11025
  store double %i.akp, ptr %i.akv, align 8, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.akw = load ptr, ptr %gep.1, align 8, !tbaa !32
  %i.akx = getelementptr inbounds [8 x i8], ptr %i.akw, i64 %.11027
  %i.aky = load double, ptr %i.akx, align 8, !tbaa !21
  %i.akz = fmul double %i.aky, 2.500000e-01       ; 2 uses
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next, 4
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akj, i64 %.idx.1 ; 2 uses
  %i.alb = load ptr, ptr %i.ala, align 8, !tbaa !32
  %i.alc = getelementptr inbounds [8 x i8], ptr %i.alb, i64 %.11025
  store double %i.akz, ptr %i.alc, align 8, !tbaa !21
  %i.ald = getelementptr i8, ptr %i.ala, i64 -8
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !32
  %i.alf = getelementptr inbounds [8 x i8], ptr %i.ale, i64 %.11025
  store double %i.akz, ptr %i.alf, align 8, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !189

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1954)
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.alg = load ptr, ptr %gep.epil, align 8, !tbaa !32
  %i.alh = getelementptr inbounds [8 x i8], ptr %i.alg, i64 %.11027
  %i.ali = load double, ptr %i.alh, align 8, !tbaa !21
  %i.alj = fmul double %i.ali, 2.500000e-01       ; 2 uses
  %.idx.epil = shl nuw nsw i64 %indvars.iv.epil.init, 4
  %i.alk = getelementptr inbounds nuw i8, ptr %i.akj, i64 %.idx.epil ; 2 uses
  %i.all = load ptr, ptr %i.alk, align 8, !tbaa !32
  %i.alm = getelementptr inbounds [8 x i8], ptr %i.all, i64 %.11025
  store double %i.alj, ptr %i.alm, align 8, !tbaa !21
  %i.aln = getelementptr i8, ptr %i.alk, i64 -8
  %i.alo = load ptr, ptr %i.aln, align 8, !tbaa !32
  %i.alp = getelementptr inbounds [8 x i8], ptr %i.alo, i64 %.11025
  store double %i.alj, ptr %i.alp, align 8, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.bd
  %i.alq = getelementptr inbounds [8 x i8], ptr %i.akb, i64 %i.aji
  %i.alr = load ptr, ptr %i.alq, align 8, !tbaa !32
  %i.als = getelementptr inbounds [8 x i8], ptr %i.alr, i64 %.11027
  %i.alt = load double, ptr %i.als, align 8, !tbaa !21
  %i.alu = fmul double %i.alt, 2.500000e-01
  %i.alv = getelementptr inbounds [8 x i8], ptr %i.akj, i64 %i.ajj
  %i.alw = load ptr, ptr %i.alv, align 8, !tbaa !32 ; 2 uses
  %i.alx = getelementptr inbounds [8 x i8], ptr %i.alw, i64 %.11025
  store double %i.alu, ptr %i.alx, align 8, !tbaa !21
  br i1 %i.ajk, label %bb.be, label %.loopexit1105

bb.be:                                            ; preds = %._crit_edge
  %i.aly = load ptr, ptr %i.ajz, align 8, !tbaa !30 ; 2 uses
  %.sink1434.in = getelementptr inbounds [8 x i8], ptr %i.aly, i64 %.sink1434.in.idx
  %.pn = select i1 %i.ajl, ptr %i.akk, ptr %i.alw
  %.sink.in = getelementptr inbounds [8 x i8], ptr %.pn, i64 %.11023
  %.sink = load double, ptr %.sink.in, align 8, !tbaa !21
  %.sink1434 = load ptr, ptr %.sink1434.in, align 8, !tbaa !32
  %i.alz = getelementptr inbounds [8 x i8], ptr %.sink1434, i64 %.11029
  store double %.sink, ptr %i.alz, align 8, !tbaa !21
  br i1 %.not10731107, label %.loopexit1105, label %.lr.ph1112

.lr.ph1112:                                       ; preds = %bb.be
  %invariant.gep1397 = getelementptr [8 x i8], ptr %i.aly, i64 %i.aje ; 3 uses
  br i1 %i.ajv, label %.epil.preheader, label %.lr.ph1112.new

.lr.ph1112.new:                                   ; preds = %.lr.ph1112, %.lr.ph1112.new
  %indvars.iv1239 = phi i64 [ %indvars.iv.next1240.1, %.lr.ph1112.new ], [ 1, %.lr.ph1112 ] ; 4 uses
  %niter1959 = phi i64 [ %niter1959.next.1, %.lr.ph1112.new ], [ 0, %.lr.ph1112 ]
  %.idx1377 = shl i64 %indvars.iv1239, 4
  %i.ama = getelementptr i8, ptr %i.akj, i64 %.idx1377 ; 2 uses
  %i.amb = getelementptr i8, ptr %i.ama, i64 -8
  %i.amc = load ptr, ptr %i.amb, align 8, !tbaa !32
  %i.amd = getelementptr inbounds [8 x i8], ptr %i.amc, i64 %.11023
  %i.ame = load double, ptr %i.amd, align 8, !tbaa !21
  %i.amf = load ptr, ptr %i.ama, align 8, !tbaa !32
  %i.amg = getelementptr inbounds [8 x i8], ptr %i.amf, i64 %.11023
  %i.amh = load double, ptr %i.amg, align 8, !tbaa !21
  %i.ami = fadd double %i.ame, %i.amh
  %gep1398 = getelementptr [8 x i8], ptr %invariant.gep1397, i64 %indvars.iv1239
  %i.amj = load ptr, ptr %gep1398, align 8, !tbaa !32
  %i.amk = getelementptr inbounds [8 x i8], ptr %i.amj, i64 %.11029
  store double %i.ami, ptr %i.amk, align 8, !tbaa !21
  %indvars.iv.next1240 = add nuw nsw i64 %indvars.iv1239, 1 ; 2 uses
  %.idx1377.1 = shl i64 %indvars.iv.next1240, 4
  %i.aml = getelementptr i8, ptr %i.akj, i64 %.idx1377.1 ; 2 uses
  %i.amm = getelementptr i8, ptr %i.aml, i64 -8
  %i.amn = load ptr, ptr %i.amm, align 8, !tbaa !32
  %i.amo = getelementptr inbounds [8 x i8], ptr %i.amn, i64 %.11023
  %i.amp = load double, ptr %i.amo, align 8, !tbaa !21
  %i.amq = load ptr, ptr %i.aml, align 8, !tbaa !32
  %i.amr = getelementptr inbounds [8 x i8], ptr %i.amq, i64 %.11023
  %i.ams = load double, ptr %i.amr, align 8, !tbaa !21
  %i.amt = fadd double %i.amp, %i.ams
  %gep1398.1 = getelementptr [8 x i8], ptr %invariant.gep1397, i64 %indvars.iv.next1240
  %i.amu = load ptr, ptr %gep1398.1, align 8, !tbaa !32
  %i.amv = getelementptr inbounds [8 x i8], ptr %i.amu, i64 %.11029
  store double %i.amt, ptr %i.amv, align 8, !tbaa !21
  %indvars.iv.next1240.1 = add nuw nsw i64 %indvars.iv1239, 2 ; 2 uses
  %niter1959.next.1 = add i64 %niter1959, 2       ; 2 uses
  %niter1959.ncmp.1 = icmp eq i64 %niter1959.next.1, %unroll_iter1958
  br i1 %niter1959.ncmp.1, label %.loopexit1105.loopexit.unr-lcssa, label %.lr.ph1112.new, !llvm.loop !190

.loopexit1105.loopexit.unr-lcssa:                 ; preds = %.lr.ph1112.new
  br i1 %lcmp.mod1956.not, label %.loopexit1105, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit1105.loopexit.unr-lcssa, %.lr.ph1112
  %indvars.iv1239.epil.init = phi i64 [ 1, %.lr.ph1112 ], [ %indvars.iv.next1240.1, %.loopexit1105.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1957)
  %.idx1377.epil = shl i64 %indvars.iv1239.epil.init, 4
  %i.amw = getelementptr i8, ptr %i.akj, i64 %.idx1377.epil ; 2 uses
  %i.amx = getelementptr i8, ptr %i.amw, i64 -8
  %i.amy = load ptr, ptr %i.amx, align 8, !tbaa !32
  %i.amz = getelementptr inbounds [8 x i8], ptr %i.amy, i64 %.11023
  %i.ana = load double, ptr %i.amz, align 8, !tbaa !21
  %i.anb = load ptr, ptr %i.amw, align 8, !tbaa !32
  %i.anc = getelementptr inbounds [8 x i8], ptr %i.anb, i64 %.11023
  %i.and = load double, ptr %i.anc, align 8, !tbaa !21
  %i.ane = fadd double %i.ana, %i.and
  %gep1398.epil = getelementptr [8 x i8], ptr %invariant.gep1397, i64 %indvars.iv1239.epil.init
  %i.anf = load ptr, ptr %gep1398.epil, align 8, !tbaa !32
  %i.ang = getelementptr inbounds [8 x i8], ptr %i.anf, i64 %.11029
  store double %i.ane, ptr %i.ang, align 8, !tbaa !21
  br label %.loopexit1105

.loopexit1105:                                    ; preds = %.epil.preheader, %.loopexit1105.loopexit.unr-lcssa, %bb.be, %._crit_edge
  br i1 %.not10751118, label %._crit_edge1122, label %.lr.ph1121.preheader

.lr.ph1121.preheader:                             ; preds = %.loopexit1105
  %invariant.gep1401 = getelementptr [8 x i8], ptr %i.ajz, i64 %i.ajd
  br label %.lr.ph1121

.lr.ph1121:                                       ; preds = %.lr.ph1121.preheader, %._crit_edge1117
  %indvars.iv1249 = phi i64 [ 1, %.lr.ph1121.preheader ], [ %indvars.iv.next1250, %._crit_edge1117 ] ; 3 uses
  %gep1402 = getelementptr [8 x i8], ptr %invariant.gep1401, i64 %indvars.iv1249
  %i.anh = load ptr, ptr %gep1402, align 8, !tbaa !30 ; 5 uses
  %i.ani = getelementptr inbounds [8 x i8], ptr %i.anh, i64 %i.aje
  %i.anj = load ptr, ptr %i.ani, align 8, !tbaa !32
  %i.ank = getelementptr inbounds [8 x i8], ptr %i.anj, i64 %.11027
  %i.anl = load double, ptr %i.ank, align 8, !tbaa !21
  %i.anm = fmul double %i.anl, 2.500000e-01       ; 2 uses
  %.idx1378 = shl i64 %indvars.iv1249, 4
  %i.ann = getelementptr i8, ptr %i.aki, i64 %.idx1378 ; 2 uses
  %i.ano = load ptr, ptr %i.ann, align 8, !tbaa !30 ; 5 uses
  %i.anp = load ptr, ptr %i.ano, align 8, !tbaa !32 ; 2 uses
  %i.anq = getelementptr inbounds [8 x i8], ptr %i.anp, i64 %.11025
  store double %i.anm, ptr %i.anq, align 8, !tbaa !21
  %i.anr = getelementptr i8, ptr %i.ann, i64 -8
  %i.ans = load ptr, ptr %i.anr, align 8, !tbaa !30 ; 5 uses
  %i.ant = load ptr, ptr %i.ans, align 8, !tbaa !32 ; 2 uses
  %i.anu = getelementptr inbounds [8 x i8], ptr %i.ant, i64 %.11025
  store double %i.anm, ptr %i.anu, align 8, !tbaa !21
  br i1 %i.ajl, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.lr.ph1121
  %i.anv = getelementptr inbounds [8 x i8], ptr %i.ant, i64 %.11023
  %i.anw = load double, ptr %i.anv, align 8, !tbaa !21
  %i.anx = getelementptr inbounds [8 x i8], ptr %i.anp, i64 %.11023
  %i.any = load double, ptr %i.anx, align 8, !tbaa !21
  %i.anz = fadd double %i.anw, %i.any
  br label %bb.bh

bb.bg:                                            ; preds = %.lr.ph1121
  %i.aoa = getelementptr inbounds [8 x i8], ptr %i.ans, i64 %i.ajj
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !32
  %i.aoc = getelementptr inbounds [8 x i8], ptr %i.aob, i64 %.11023
  %i.aod = load double, ptr %i.aoc, align 8, !tbaa !21
  %i.aoe = getelementptr inbounds [8 x i8], ptr %i.ano, i64 %i.ajj
  %i.aof = load ptr, ptr %i.aoe, align 8, !tbaa !32
  %i.aog = getelementptr inbounds [8 x i8], ptr %i.aof, i64 %.11023
  %i.aoh = load double, ptr %i.aog, align 8, !tbaa !21
  %i.aoi = fadd double %i.aod, %i.aoh
  %i.aoj = getelementptr inbounds [8 x i8], ptr %i.anh, i64 %i.ajj
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.sink1437.in = phi ptr [ %i.aoj, %bb.bg ], [ %i.anh, %bb.bf ]
  %.sink1435 = phi double [ %i.aoi, %bb.bg ], [ %i.anz, %bb.bf ]
  %.sink1437 = load ptr, ptr %.sink1437.in, align 8, !tbaa !32
  %i.aok = getelementptr inbounds [8 x i8], ptr %.sink1437, i64 %.11029
  store double %.sink1435, ptr %i.aok, align 8, !tbaa !21
  br i1 %.not10731107, label %._crit_edge1117, label %.lr.ph1116.preheader

.lr.ph1116.preheader:                             ; preds = %bb.bh
  %invariant.gep1399 = getelementptr [8 x i8], ptr %i.anh, i64 %i.aje
  br label %.lr.ph1116

.lr.ph1116:                                       ; preds = %.lr.ph1116.preheader, %.lr.ph1116
  %indvars.iv1244 = phi i64 [ 1, %.lr.ph1116.preheader ], [ %indvars.iv.next1245, %.lr.ph1116 ] ; 3 uses
  %gep1400 = getelementptr [8 x i8], ptr %invariant.gep1399, i64 %indvars.iv1244
  %i.aol = load ptr, ptr %gep1400, align 8, !tbaa !32 ; 2 uses
  %i.aom = getelementptr inbounds [8 x i8], ptr %i.aol, i64 %.11027
  %i.aon = load double, ptr %i.aom, align 8, !tbaa !21
  %i.aoo = fmul double %i.aon, 2.500000e-01       ; 4 uses
  %i.aop = shl nuw nsw i64 %indvars.iv1244, 1     ; 3 uses
  %i.aoq = getelementptr inbounds nuw [8 x i8], ptr %i.ano, i64 %i.aop
  %i.aor = load ptr, ptr %i.aoq, align 8, !tbaa !32 ; 2 uses
  %i.aos = getelementptr inbounds [8 x i8], ptr %i.aor, i64 %.11025
  store double %i.aoo, ptr %i.aos, align 8, !tbaa !21
  %i.aot = add nsw i64 %i.aop, -1                 ; 2 uses
  %i.aou = getelementptr inbounds [8 x i8], ptr %i.ano, i64 %i.aot
  %i.aov = load ptr, ptr %i.aou, align 8, !tbaa !32 ; 2 uses
  %i.aow = getelementptr inbounds [8 x i8], ptr %i.aov, i64 %.11025
  store double %i.aoo, ptr %i.aow, align 8, !tbaa !21
  %i.aox = getelementptr inbounds nuw [8 x i8], ptr %i.ans, i64 %i.aop
  %i.aoy = load ptr, ptr %i.aox, align 8, !tbaa !32 ; 2 uses
  %i.aoz = getelementptr inbounds [8 x i8], ptr %i.aoy, i64 %.11025
  store double %i.aoo, ptr %i.aoz, align 8, !tbaa !21
  %i.apa = getelementptr inbounds [8 x i8], ptr %i.ans, i64 %i.aot
  %i.apb = load ptr, ptr %i.apa, align 8, !tbaa !32 ; 2 uses
  %i.apc = getelementptr inbounds [8 x i8], ptr %i.apb, i64 %.11025
  store double %i.aoo, ptr %i.apc, align 8, !tbaa !21
  %i.apd = getelementptr inbounds [8 x i8], ptr %i.apb, i64 %.11023
  %i.ape = load double, ptr %i.apd, align 8, !tbaa !21
  %i.apf = getelementptr inbounds [8 x i8], ptr %i.aoy, i64 %.11023
  %i.apg = load double, ptr %i.apf, align 8, !tbaa !21
  %i.aph = fadd double %i.ape, %i.apg
  %i.api = getelementptr inbounds [8 x i8], ptr %i.aov, i64 %.11023
  %i.apj = load double, ptr %i.api, align 8, !tbaa !21
  %i.apk = fadd double %i.aph, %i.apj
  %i.apl = getelementptr inbounds [8 x i8], ptr %i.aor, i64 %.11023
  %i.apm = load double, ptr %i.apl, align 8, !tbaa !21
  %i.apn = fadd double %i.apk, %i.apm
  %i.apo = getelementptr inbounds [8 x i8], ptr %i.aol, i64 %.11029
  store double %i.apn, ptr %i.apo, align 8, !tbaa !21
  %indvars.iv.next1245 = add nuw nsw i64 %indvars.iv1244, 1 ; 2 uses
  %exitcond1248.not = icmp eq i64 %indvars.iv.next1245, %wide.trip.count1247
  br i1 %exitcond1248.not, label %._crit_edge1117, label %.lr.ph1116, !llvm.loop !191

._crit_edge1117:                                  ; preds = %.lr.ph1116, %bb.bh
  %i.app = getelementptr inbounds [8 x i8], ptr %i.anh, i64 %i.aji
  %i.apq = load ptr, ptr %i.app, align 8, !tbaa !32
  %i.apr = getelementptr inbounds [8 x i8], ptr %i.apq, i64 %.11027
  %i.aps = load double, ptr %i.apr, align 8, !tbaa !21
  %i.apt = fmul double %i.aps, 2.500000e-01       ; 2 uses
  %i.apu = getelementptr inbounds [8 x i8], ptr %i.ano, i64 %i.ajj
  %i.apv = load ptr, ptr %i.apu, align 8, !tbaa !32
  %i.apw = getelementptr inbounds [8 x i8], ptr %i.apv, i64 %.11025
  store double %i.apt, ptr %i.apw, align 8, !tbaa !21
  %i.apx = getelementptr inbounds [8 x i8], ptr %i.ans, i64 %i.ajj
  %i.apy = load ptr, ptr %i.apx, align 8, !tbaa !32
  %i.apz = getelementptr inbounds [8 x i8], ptr %i.apy, i64 %.11025
  store double %i.apt, ptr %i.apz, align 8, !tbaa !21
  %indvars.iv.next1250 = add nuw nsw i64 %indvars.iv1249, 1 ; 2 uses
  %exitcond1253.not = icmp eq i64 %indvars.iv.next1250, %wide.trip.count1252
  br i1 %exitcond1253.not, label %._crit_edge1122, label %.lr.ph1121, !llvm.loop !192

._crit_edge1122:                                  ; preds = %._crit_edge1117, %.loopexit1105
  %i.aqa = getelementptr inbounds [8 x i8], ptr %i.ajz, i64 %i.ajn
  %i.aqb = load ptr, ptr %i.aqa, align 8, !tbaa !30 ; 3 uses
  %i.aqc = getelementptr inbounds [8 x i8], ptr %i.aqb, i64 %i.aje
  %i.aqd = load ptr, ptr %i.aqc, align 8, !tbaa !32
  %i.aqe = getelementptr inbounds [8 x i8], ptr %i.aqd, i64 %.11027
  %i.aqf = load double, ptr %i.aqe, align 8, !tbaa !21
  %i.aqg = fmul double %i.aqf, 2.500000e-01
  %i.aqh = getelementptr inbounds [8 x i8], ptr %i.aki, i64 %i.ajo
  %i.aqi = load ptr, ptr %i.aqh, align 8, !tbaa !30 ; 8 uses
  %i.aqj = load ptr, ptr %i.aqi, align 8, !tbaa !32 ; 2 uses
  %i.aqk = getelementptr inbounds [8 x i8], ptr %i.aqj, i64 %.11025
  store double %i.aqg, ptr %i.aqk, align 8, !tbaa !21
  br i1 %.not10731107, label %._crit_edge1127, label %.lr.ph1126.preheader

.lr.ph1126.preheader:                             ; preds = %._crit_edge1122
  %invariant.gep1403 = getelementptr [8 x i8], ptr %i.aqb, i64 %i.aje ; 3 uses
  br i1 %i.ajw, label %.lr.ph1126.epil.preheader, label %.lr.ph1126

.lr.ph1126:                                       ; preds = %.lr.ph1126.preheader, %.lr.ph1126
  %indvars.iv1254 = phi i64 [ %indvars.iv.next1255.1, %.lr.ph1126 ], [ 1, %.lr.ph1126.preheader ] ; 4 uses
  %niter1964 = phi i64 [ %niter1964.next.1, %.lr.ph1126 ], [ 0, %.lr.ph1126.preheader ]
  %gep1404 = getelementptr [8 x i8], ptr %invariant.gep1403, i64 %indvars.iv1254
  %i.aql = load ptr, ptr %gep1404, align 8, !tbaa !32
  %i.aqm = getelementptr inbounds [8 x i8], ptr %i.aql, i64 %.11027
  %i.aqn = load double, ptr %i.aqm, align 8, !tbaa !21
  %i.aqo = fmul double %i.aqn, 2.500000e-01       ; 2 uses
  %.idx1379 = shl nuw nsw i64 %indvars.iv1254, 4
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqi, i64 %.idx1379 ; 2 uses
  %i.aqq = load ptr, ptr %i.aqp, align 8, !tbaa !32
  %i.aqr = getelementptr inbounds [8 x i8], ptr %i.aqq, i64 %.11025
  store double %i.aqo, ptr %i.aqr, align 8, !tbaa !21
  %i.aqs = getelementptr i8, ptr %i.aqp, i64 -8
  %i.aqt = load ptr, ptr %i.aqs, align 8, !tbaa !32
  %i.aqu = getelementptr inbounds [8 x i8], ptr %i.aqt, i64 %.11025
  store double %i.aqo, ptr %i.aqu, align 8, !tbaa !21
  %indvars.iv.next1255 = add nuw nsw i64 %indvars.iv1254, 1 ; 2 uses
  %gep1404.1 = getelementptr [8 x i8], ptr %invariant.gep1403, i64 %indvars.iv.next1255
  %i.aqv = load ptr, ptr %gep1404.1, align 8, !tbaa !32
  %i.aqw = getelementptr inbounds [8 x i8], ptr %i.aqv, i64 %.11027
  %i.aqx = load double, ptr %i.aqw, align 8, !tbaa !21
  %i.aqy = fmul double %i.aqx, 2.500000e-01       ; 2 uses
  %.idx1379.1 = shl nuw nsw i64 %indvars.iv.next1255, 4
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqi, i64 %.idx1379.1 ; 2 uses
  %i.ara = load ptr, ptr %i.aqz, align 8, !tbaa !32
  %i.arb = getelementptr inbounds [8 x i8], ptr %i.ara, i64 %.11025
  store double %i.aqy, ptr %i.arb, align 8, !tbaa !21
  %i.arc = getelementptr i8, ptr %i.aqz, i64 -8
  %i.ard = load ptr, ptr %i.arc, align 8, !tbaa !32
  %i.are = getelementptr inbounds [8 x i8], ptr %i.ard, i64 %.11025
  store double %i.aqy, ptr %i.are, align 8, !tbaa !21
  %indvars.iv.next1255.1 = add nuw nsw i64 %indvars.iv1254, 2 ; 2 uses
  %niter1964.next.1 = add i64 %niter1964, 2       ; 2 uses
  %niter1964.ncmp.1 = icmp eq i64 %niter1964.next.1, %unroll_iter1963
  br i1 %niter1964.ncmp.1, label %._crit_edge1127.loopexit.unr-lcssa, label %.lr.ph1126, !llvm.loop !193

._crit_edge1127.loopexit.unr-lcssa:               ; preds = %.lr.ph1126
  br i1 %lcmp.mod1961.not, label %._crit_edge1127, label %.lr.ph1126.epil.preheader

.lr.ph1126.epil.preheader:                        ; preds = %._crit_edge1127.loopexit.unr-lcssa, %.lr.ph1126.preheader
  %indvars.iv1254.epil.init = phi i64 [ 1, %.lr.ph1126.preheader ], [ %indvars.iv.next1255.1, %._crit_edge1127.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1962)
  %gep1404.epil = getelementptr [8 x i8], ptr %invariant.gep1403, i64 %indvars.iv1254.epil.init
  %i.arf = load ptr, ptr %gep1404.epil, align 8, !tbaa !32
  %i.arg = getelementptr inbounds [8 x i8], ptr %i.arf, i64 %.11027
  %i.arh = load double, ptr %i.arg, align 8, !tbaa !21
  %i.ari = fmul double %i.arh, 2.500000e-01       ; 2 uses
  %.idx1379.epil = shl nuw nsw i64 %indvars.iv1254.epil.init, 4
  %i.arj = getelementptr inbounds nuw i8, ptr %i.aqi, i64 %.idx1379.epil ; 2 uses
  %i.ark = load ptr, ptr %i.arj, align 8, !tbaa !32
  %i.arl = getelementptr inbounds [8 x i8], ptr %i.ark, i64 %.11025
  store double %i.ari, ptr %i.arl, align 8, !tbaa !21
  %i.arm = getelementptr i8, ptr %i.arj, i64 -8
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !32
  %i.aro = getelementptr inbounds [8 x i8], ptr %i.arn, i64 %.11025
  store double %i.ari, ptr %i.aro, align 8, !tbaa !21
  br label %._crit_edge1127

._crit_edge1127:                                  ; preds = %.lr.ph1126.epil.preheader, %._crit_edge1127.loopexit.unr-lcssa, %._crit_edge1122
  %i.arp = getelementptr inbounds [8 x i8], ptr %i.aqb, i64 %i.aji
  %i.arq = load ptr, ptr %i.arp, align 8, !tbaa !32
  %i.arr = getelementptr inbounds [8 x i8], ptr %i.arq, i64 %.11027
  %i.ars = load double, ptr %i.arr, align 8, !tbaa !21
  %i.art = fmul double %i.ars, 2.500000e-01
  %i.aru = getelementptr inbounds [8 x i8], ptr %i.aqi, i64 %i.ajj
  %i.arv = load ptr, ptr %i.aru, align 8, !tbaa !32 ; 2 uses
  %i.arw = getelementptr inbounds [8 x i8], ptr %i.arv, i64 %.11025
  store double %i.art, ptr %i.arw, align 8, !tbaa !21
  br i1 %i.ajp, label %bb.bi, label %.loopexit1104

bb.bi:                                            ; preds = %._crit_edge1127
  %i.arx = getelementptr inbounds [8 x i8], ptr %i.ajz, i64 %i.ajo
  %i.ary = load ptr, ptr %i.arx, align 8, !tbaa !30 ; 2 uses
  %.sink1440.in = getelementptr inbounds [8 x i8], ptr %i.ary, i64 %.sink1440.in.idx
  %.pn1441 = select i1 %i.ajl, ptr %i.aqj, ptr %i.arv
  %.sink1438.in = getelementptr inbounds [8 x i8], ptr %.pn1441, i64 %.11023
  %.sink1438 = load double, ptr %.sink1438.in, align 8, !tbaa !21
  %.sink1440 = load ptr, ptr %.sink1440.in, align 8, !tbaa !32
  %i.arz = getelementptr inbounds [8 x i8], ptr %.sink1440, i64 %.11029
  store double %.sink1438, ptr %i.arz, align 8, !tbaa !21
  br i1 %.not10731107, label %.loopexit1104, label %.lr.ph1131

.lr.ph1131:                                       ; preds = %bb.bi
  %invariant.gep1405 = getelementptr [8 x i8], ptr %i.ary, i64 %i.aje ; 3 uses
  br i1 %i.ajx, label %.epil.preheader1965, label %.lr.ph1131.new

.lr.ph1131.new:                                   ; preds = %.lr.ph1131, %.lr.ph1131.new
  %indvars.iv1259 = phi i64 [ %indvars.iv.next1260.1, %.lr.ph1131.new ], [ 1, %.lr.ph1131 ] ; 4 uses
  %niter1970 = phi i64 [ %niter1970.next.1, %.lr.ph1131.new ], [ 0, %.lr.ph1131 ]
  %.idx1380 = shl i64 %indvars.iv1259, 4
  %i.asa = getelementptr i8, ptr %i.aqi, i64 %.idx1380 ; 2 uses
  %i.asb = getelementptr i8, ptr %i.asa, i64 -8
  %i.asc = load ptr, ptr %i.asb, align 8, !tbaa !32
  %i.asd = getelementptr inbounds [8 x i8], ptr %i.asc, i64 %.11023
  %i.ase = load double, ptr %i.asd, align 8, !tbaa !21
  %i.asf = load ptr, ptr %i.asa, align 8, !tbaa !32
  %i.asg = getelementptr inbounds [8 x i8], ptr %i.asf, i64 %.11023
  %i.ash = load double, ptr %i.asg, align 8, !tbaa !21
  %i.asi = fadd double %i.ase, %i.ash
  %gep1406 = getelementptr [8 x i8], ptr %invariant.gep1405, i64 %indvars.iv1259
  %i.asj = load ptr, ptr %gep1406, align 8, !tbaa !32
  %i.ask = getelementptr inbounds [8 x i8], ptr %i.asj, i64 %.11029
  store double %i.asi, ptr %i.ask, align 8, !tbaa !21
  %indvars.iv.next1260 = add nuw nsw i64 %indvars.iv1259, 1 ; 2 uses
  %.idx1380.1 = shl i64 %indvars.iv.next1260, 4
  %i.asl = getelementptr i8, ptr %i.aqi, i64 %.idx1380.1 ; 2 uses
  %i.asm = getelementptr i8, ptr %i.asl, i64 -8
  %i.asn = load ptr, ptr %i.asm, align 8, !tbaa !32
  %i.aso = getelementptr inbounds [8 x i8], ptr %i.asn, i64 %.11023
  %i.asp = load double, ptr %i.aso, align 8, !tbaa !21
  %i.asq = load ptr, ptr %i.asl, align 8, !tbaa !32
  %i.asr = getelementptr inbounds [8 x i8], ptr %i.asq, i64 %.11023
  %i.ass = load double, ptr %i.asr, align 8, !tbaa !21
  %i.ast = fadd double %i.asp, %i.ass
  %gep1406.1 = getelementptr [8 x i8], ptr %invariant.gep1405, i64 %indvars.iv.next1260
  %i.asu = load ptr, ptr %gep1406.1, align 8, !tbaa !32
  %i.asv = getelementptr inbounds [8 x i8], ptr %i.asu, i64 %.11029
  store double %i.ast, ptr %i.asv, align 8, !tbaa !21
  %indvars.iv.next1260.1 = add nuw nsw i64 %indvars.iv1259, 2 ; 2 uses
  %niter1970.next.1 = add i64 %niter1970, 2       ; 2 uses
  %niter1970.ncmp.1 = icmp eq i64 %niter1970.next.1, %unroll_iter1969
  br i1 %niter1970.ncmp.1, label %.loopexit1104.loopexit.unr-lcssa, label %.lr.ph1131.new, !llvm.loop !194

.loopexit1104.loopexit.unr-lcssa:                 ; preds = %.lr.ph1131.new
  br i1 %lcmp.mod1967.not, label %.loopexit1104, label %.epil.preheader1965

.epil.preheader1965:                              ; preds = %.loopexit1104.loopexit.unr-lcssa, %.lr.ph1131
  %indvars.iv1259.epil.init = phi i64 [ 1, %.lr.ph1131 ], [ %indvars.iv.next1260.1, %.loopexit1104.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1968)
  %.idx1380.epil = shl i64 %indvars.iv1259.epil.init, 4
  %i.asw = getelementptr i8, ptr %i.aqi, i64 %.idx1380.epil ; 2 uses
  %i.asx = getelementptr i8, ptr %i.asw, i64 -8
  %i.asy = load ptr, ptr %i.asx, align 8, !tbaa !32
  %i.asz = getelementptr inbounds [8 x i8], ptr %i.asy, i64 %.11023
  %i.ata = load double, ptr %i.asz, align 8, !tbaa !21
  %i.atb = load ptr, ptr %i.asw, align 8, !tbaa !32
  %i.atc = getelementptr inbounds [8 x i8], ptr %i.atb, i64 %.11023
  %i.atd = load double, ptr %i.atc, align 8, !tbaa !21
  %i.ate = fadd double %i.ata, %i.atd
  %gep1406.epil = getelementptr [8 x i8], ptr %invariant.gep1405, i64 %indvars.iv1259.epil.init
  %i.atf = load ptr, ptr %gep1406.epil, align 8, !tbaa !32
  %i.atg = getelementptr inbounds [8 x i8], ptr %i.atf, i64 %.11029
  store double %i.ate, ptr %i.atg, align 8, !tbaa !21
  br label %.loopexit1104

.loopexit1104:                                    ; preds = %.epil.preheader1965, %.loopexit1104.loopexit.unr-lcssa, %bb.bi, %._crit_edge1127
  %indvars.iv.next1265 = add nsw i64 %indvars.iv1264, 1 ; 2 uses
  %i.ath = icmp slt i64 %indvars.iv.next1265, %i.ajr
  br i1 %i.ath, label %bb.bd, label %.loopexit, !llvm.loop !195

.loopexit:                                        ; preds = %.loopexit1104, %.loopexit1101, %.loopexit1098, %._crit_edge1203.split, %._crit_edge1213.split, %._crit_edge1223.split, %.preheader1096.lr.ph, %.preheader1093.lr.ph, %.preheader1091.lr.ph, %bb.bc, %bb.am, %bb.u, %bb.o, %bb.k, %bb.f, %bb.ai, %bb.g
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @apply_bc(i32 noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @code, align 4, !tbaa !4
  %i.b = icmp eq i32 %i.a, 0
  %i.c = load i32, ptr @stencil, align 4
  %i.d = icmp eq i32 %i.c, 7
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  switch i32 %0, label %.loopexit [
    i32 1, label %bb.c
    i32 0, label %bb.d
    i32 3, label %bb.e
    i32 2, label %bb.f
    i32 5, label %bb.g
    i32 4, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr @x_block_size, align 4, !tbaa !4 ; 2 uses
  %i.f = add nsw i32 %i.e, 1
  %i.g = sext i32 %i.e to i64
  %i.h = sext i32 %i.f to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0116 = phi i64 [ %i.g, %bb.c ], [ 1, %bb.b ]
  %.0 = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ]
  %i.i = add nsw i32 %3, %2
  %i.j = icmp sgt i32 %3, 0
  br i1 %i.j, label %.preheader151.lr.ph, label %.loopexit

.preheader151.lr.ph:                              ; preds = %bb.d
  %i.k = load i32, ptr @y_block_size, align 4, !tbaa !4 ; 2 uses
  %.not149214 = icmp slt i32 %i.k, 1
  %i.l = load i32, ptr @z_block_size, align 4     ; 5 uses
  %.not150211 = icmp slt i32 %i.l, 1
  %or.cond330 = select i1 %.not149214, i1 true, i1 %.not150211
  br i1 %or.cond330, label %.loopexit, label %.preheader151.lr.ph.split.split

.preheader151.lr.ph.split.split:                  ; preds = %.preheader151.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.o = add nuw i32 %i.l, 1
  %i.p = add nuw i32 %i.k, 1
  %i.q = sext i32 %2 to i64
  %i.r = sext i32 %i.i to i64
  %wide.trip.count308 = zext i32 %i.p to i64
  %wide.trip.count303 = zext i32 %i.o to i64      ; 2 uses
  %i.s = zext nneg i32 %i.l to i64                ; 2 uses
  %i.t = zext nneg i32 %i.l to i64
  %min.iters.check375 = icmp ult i32 %i.l, 4
  %n.vec378 = and i64 %i.s, 2147483644            ; 3 uses
  %i.u = or disjoint i64 %n.vec378, 1
  %cmp.n385 = icmp eq i64 %n.vec378, %i.s
  br label %.preheader151

.preheader151:                                    ; preds = %.preheader151.lr.ph.split.split, %._crit_edge216.split
  %indvars.iv310 = phi i64 [ %i.q, %.preheader151.lr.ph.split.split ], [ %indvars.iv.next311, %._crit_edge216.split ] ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv310
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28   ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %.0116
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30
  %i.z = getelementptr inbounds [8 x i8], ptr %i.w, i64 %.0
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30
  br label %.preheader

.preheader:                                       ; preds = %.preheader151, %._crit_edge213
  %indvars.iv305 = phi i64 [ 1, %.preheader151 ], [ %indvars.iv.next306, %._crit_edge213 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv305
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !32 ; 7 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv305
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !32 ; 7 uses
  %i.af = ptrtoaddr ptr %i.ae to i64
  %i.ag = ptrtoaddr ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  %diff.check373 = icmp ult i64 %i.ah, 32
  %or.cond389 = select i1 %min.iters.check375, i1 true, i1 %diff.check373
  br i1 %or.cond389, label %scalar.ph374.preheader, label %vector.body379

vector.body379:                                   ; preds = %.preheader, %vector.body379
  %index380 = phi i64 [ %index.next383, %vector.body379 ], [ 0, %.preheader ] ; 2 uses
  %i.ai = or disjoint i64 %index380, 1            ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load381 = load <2 x double>, ptr %i.aj, align 8, !tbaa !21
  %wide.load382 = load <2 x double>, ptr %i.ak, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ai ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x double> %wide.load381, ptr %i.al, align 8, !tbaa !21
  store <2 x double> %wide.load382, ptr %i.am, align 8, !tbaa !21
  %index.next383 = add nuw i64 %index380, 4       ; 2 uses
  %i.an = icmp eq i64 %index.next383, %n.vec378
  br i1 %i.an, label %middle.block384, label %vector.body379, !llvm.loop !196

middle.block384:                                  ; preds = %vector.body379
  br i1 %cmp.n385, label %._crit_edge213, label %scalar.ph374.preheader

scalar.ph374.preheader:                           ; preds = %.preheader, %middle.block384
  %indvars.iv300.ph = phi i64 [ 1, %.preheader ], [ %i.u, %middle.block384 ] ; 4 uses
  %i.ao = sub nsw i64 %wide.trip.count303, %indvars.iv300.ph
  %i.ap = sub nsw i64 %i.t, %indvars.iv300.ph
  %xtraiter420 = and i64 %i.ao, 3                 ; 2 uses
  %lcmp.mod421.not = icmp eq i64 %xtraiter420, 0
  br i1 %lcmp.mod421.not, label %scalar.ph374.prol.loopexit, label %scalar.ph374.prol

scalar.ph374.prol:                                ; preds = %scalar.ph374.preheader, %scalar.ph374.prol
  %indvars.iv300.prol = phi i64 [ %indvars.iv.next301.prol, %scalar.ph374.prol ], [ %indvars.iv300.ph, %scalar.ph374.preheader ] ; 3 uses
  %prol.iter422 = phi i64 [ %prol.iter422.next, %scalar.ph374.prol ], [ 0, %scalar.ph374.preheader ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv300.prol
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv300.prol
  store double %i.ar, ptr %i.as, align 8, !tbaa !21
  %indvars.iv.next301.prol = add nuw nsw i64 %indvars.iv300.prol, 1 ; 2 uses
  %prol.iter422.next = add i64 %prol.iter422, 1   ; 2 uses
  %prol.iter422.cmp.not = icmp eq i64 %prol.iter422.next, %xtraiter420
  br i1 %prol.iter422.cmp.not, label %scalar.ph374.prol.loopexit, label %scalar.ph374.prol, !llvm.loop !197

scalar.ph374.prol.loopexit:                       ; preds = %scalar.ph374.prol, %scalar.ph374.preheader
  %indvars.iv300.unr = phi i64 [ %indvars.iv300.ph, %scalar.ph374.preheader ], [ %indvars.iv.next301.prol, %scalar.ph374.prol ]
  %i.at = icmp ult i64 %i.ap, 3
  br i1 %i.at, label %._crit_edge213, label %scalar.ph374

scalar.ph374:                                     ; preds = %scalar.ph374.prol.loopexit, %scalar.ph374
  %indvars.iv300 = phi i64 [ %indvars.iv.next301.3, %scalar.ph374 ], [ %indvars.iv300.unr, %scalar.ph374.prol.loopexit ] ; 6 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv300
  %i.av = load double, ptr %i.au, align 8, !tbaa !21
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv300
  store double %i.av, ptr %i.aw, align 8, !tbaa !21
  %indvars.iv.next301 = add nuw nsw i64 %indvars.iv300, 1 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next301
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next301
  store double %i.ay, ptr %i.az, align 8, !tbaa !21
  %indvars.iv.next301.1 = add nuw nsw i64 %indvars.iv300, 2 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next301.1
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !21
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next301.1
  store double %i.bb, ptr %i.bc, align 8, !tbaa !21
  %indvars.iv.next301.2 = add nuw nsw i64 %indvars.iv300, 3 ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next301.2
  %i.be = load double, ptr %i.bd, align 8, !tbaa !21
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next301.2
  store double %i.be, ptr %i.bf, align 8, !tbaa !21
  %indvars.iv.next301.3 = add nuw nsw i64 %indvars.iv300, 4 ; 2 uses
  %exitcond304.not.3 = icmp eq i64 %indvars.iv.next301.3, %wide.trip.count303
  br i1 %exitcond304.not.3, label %._crit_edge213, label %scalar.ph374, !llvm.loop !199

._crit_edge213:                                   ; preds = %scalar.ph374.prol.loopexit, %scalar.ph374, %middle.block384
  %indvars.iv.next306 = add nuw nsw i64 %indvars.iv305, 1 ; 2 uses
  %exitcond309.not = icmp eq i64 %indvars.iv.next306, %wide.trip.count308
  br i1 %exitcond309.not, label %._crit_edge216.split, label %.preheader, !llvm.loop !200

._crit_edge216.split:                             ; preds = %._crit_edge213
  %indvars.iv.next311 = add nsw i64 %indvars.iv310, 1 ; 2 uses
  %i.bg = icmp slt i64 %indvars.iv.next311, %i.r
  br i1 %i.bg, label %.preheader151, label %.loopexit, !llvm.loop !201

bb.e:                                             ; preds = %bb.b
  %i.bh = load i32, ptr @y_block_size, align 4, !tbaa !4 ; 2 uses
  %i.bi = add nsw i32 %i.bh, 1
  %i.bj = sext i32 %i.bh to i64
  %i.bk = sext i32 %i.bi to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.1117 = phi i64 [ %i.bj, %bb.e ], [ 1, %bb.b ]
  %.1 = phi i64 [ %i.bk, %bb.e ], [ 0, %bb.b ]
  %i.bl = add nsw i32 %3, %2
  %i.bm = icmp sgt i32 %3, 0
  br i1 %i.bm, label %.preheader153.lr.ph, label %.loopexit

.preheader153.lr.ph:                              ; preds = %bb.f
  %i.bn = load i32, ptr @x_block_size, align 4, !tbaa !4 ; 2 uses
  %.not147205 = icmp slt i32 %i.bn, 1
  %i.bo = load i32, ptr @z_block_size, align 4    ; 5 uses
  %.not148202 = icmp slt i32 %i.bo, 1
  %or.cond331 = select i1 %.not147205, i1 true, i1 %.not148202
  br i1 %or.cond331, label %.loopexit, label %.preheader153.lr.ph.split.split

.preheader153.lr.ph.split.split:                  ; preds = %.preheader153.lr.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !27
  %i.br = add nuw i32 %i.bo, 1
  %i.bs = add nuw i32 %i.bn, 1
  %i.bt = sext i32 %2 to i64
  %i.bu = sext i32 %i.bl to i64
  %wide.trip.count294 = zext i32 %i.bs to i64
  %wide.trip.count289 = zext i32 %i.br to i64     ; 2 uses
  %i.bv = zext nneg i32 %i.bo to i64              ; 2 uses
  %i.bw = zext nneg i32 %i.bo to i64
  %min.iters.check360 = icmp ult i32 %i.bo, 4
  %n.vec363 = and i64 %i.bv, 2147483644           ; 3 uses
  %i.bx = or disjoint i64 %n.vec363, 1
  %cmp.n370 = icmp eq i64 %n.vec363, %i.bv
  br label %.preheader153

.preheader153:                                    ; preds = %.preheader153.lr.ph.split.split, %._crit_edge207.split
  %indvars.iv296 = phi i64 [ %i.bt, %.preheader153.lr.ph.split.split ], [ %indvars.iv.next297, %._crit_edge207.split ] ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %indvars.iv296
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !28
  br label %.preheader152

.preheader152:                                    ; preds = %.preheader153, %._crit_edge204
  %indvars.iv291 = phi i64 [ 1, %.preheader153 ], [ %indvars.iv.next292, %._crit_edge204 ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv291
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !30 ; 2 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %.1117
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !32 ; 7 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %.1
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !32 ; 7 uses
  %i.cg = ptrtoaddr ptr %i.cf to i64
  %i.ch = ptrtoaddr ptr %i.cd to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %diff.check358 = icmp ult i64 %i.ci, 32
  %or.cond392 = select i1 %min.iters.check360, i1 true, i1 %diff.check358
  br i1 %or.cond392, label %scalar.ph359.preheader, label %vector.body364

vector.body364:                                   ; preds = %.preheader152, %vector.body364
  %index365 = phi i64 [ %index.next368, %vector.body364 ], [ 0, %.preheader152 ] ; 2 uses
  %i.cj = or disjoint i64 %index365, 1            ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %wide.load366 = load <2 x double>, ptr %i.ck, align 8, !tbaa !21
  %wide.load367 = load <2 x double>, ptr %i.cl, align 8, !tbaa !21
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cj ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store <2 x double> %wide.load366, ptr %i.cm, align 8, !tbaa !21
  store <2 x double> %wide.load367, ptr %i.cn, align 8, !tbaa !21
  %index.next368 = add nuw i64 %index365, 4       ; 2 uses
  %i.co = icmp eq i64 %index.next368, %n.vec363
  br i1 %i.co, label %middle.block369, label %vector.body364, !llvm.loop !202

middle.block369:                                  ; preds = %vector.body364
  br i1 %cmp.n370, label %._crit_edge204, label %scalar.ph359.preheader

scalar.ph359.preheader:                           ; preds = %.preheader152, %middle.block369
  %indvars.iv286.ph = phi i64 [ 1, %.preheader152 ], [ %i.bx, %middle.block369 ] ; 4 uses
  %i.cp = sub nsw i64 %wide.trip.count289, %indvars.iv286.ph
  %i.cq = sub nsw i64 %i.bw, %indvars.iv286.ph
  %xtraiter417 = and i64 %i.cp, 3                 ; 2 uses
  %lcmp.mod418.not = icmp eq i64 %xtraiter417, 0
  br i1 %lcmp.mod418.not, label %scalar.ph359.prol.loopexit, label %scalar.ph359.prol

scalar.ph359.prol:                                ; preds = %scalar.ph359.preheader, %scalar.ph359.prol
  %indvars.iv286.prol = phi i64 [ %indvars.iv.next287.prol, %scalar.ph359.prol ], [ %indvars.iv286.ph, %scalar.ph359.preheader ] ; 3 uses
  %prol.iter419 = phi i64 [ %prol.iter419.next, %scalar.ph359.prol ], [ 0, %scalar.ph359.preheader ]
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv286.prol
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !21
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv286.prol
  store double %i.cs, ptr %i.ct, align 8, !tbaa !21
  %indvars.iv.next287.prol = add nuw nsw i64 %indvars.iv286.prol, 1 ; 2 uses
  %prol.iter419.next = add i64 %prol.iter419, 1   ; 2 uses
  %prol.iter419.cmp.not = icmp eq i64 %prol.iter419.next, %xtraiter417
  br i1 %prol.iter419.cmp.not, label %scalar.ph359.prol.loopexit, label %scalar.ph359.prol, !llvm.loop !203

scalar.ph359.prol.loopexit:                       ; preds = %scalar.ph359.prol, %scalar.ph359.preheader
  %indvars.iv286.unr = phi i64 [ %indvars.iv286.ph, %scalar.ph359.preheader ], [ %indvars.iv.next287.prol, %scalar.ph359.prol ]
  %i.cu = icmp ult i64 %i.cq, 3
  br i1 %i.cu, label %._crit_edge204, label %scalar.ph359

scalar.ph359:                                     ; preds = %scalar.ph359.prol.loopexit, %scalar.ph359
  %indvars.iv286 = phi i64 [ %indvars.iv.next287.3, %scalar.ph359 ], [ %indvars.iv286.unr, %scalar.ph359.prol.loopexit ] ; 6 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv286
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !21
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv286
  store double %i.cw, ptr %i.cx, align 8, !tbaa !21
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next287
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !21
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next287
  store double %i.cz, ptr %i.da, align 8, !tbaa !21
  %indvars.iv.next287.1 = add nuw nsw i64 %indvars.iv286, 2 ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next287.1
  %i.dc = load double, ptr %i.db, align 8, !tbaa !21
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next287.1
  store double %i.dc, ptr %i.dd, align 8, !tbaa !21
  %indvars.iv.next287.2 = add nuw nsw i64 %indvars.iv286, 3 ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next287.2
  %i.df = load double, ptr %i.de, align 8, !tbaa !21
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next287.2
  store double %i.df, ptr %i.dg, align 8, !tbaa !21
  %indvars.iv.next287.3 = add nuw nsw i64 %indvars.iv286, 4 ; 2 uses
  %exitcond290.not.3 = icmp eq i64 %indvars.iv.next287.3, %wide.trip.count289
  br i1 %exitcond290.not.3, label %._crit_edge204, label %scalar.ph359, !llvm.loop !204

._crit_edge204:                                   ; preds = %scalar.ph359.prol.loopexit, %scalar.ph359, %middle.block369
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %exitcond295.not = icmp eq i64 %indvars.iv.next292, %wide.trip.count294
  br i1 %exitcond295.not, label %._crit_edge207.split, label %.preheader152, !llvm.loop !205

._crit_edge207.split:                             ; preds = %._crit_edge204
  %indvars.iv.next297 = add nsw i64 %indvars.iv296, 1 ; 2 uses
  %i.dh = icmp slt i64 %indvars.iv.next297, %i.bu
  br i1 %i.dh, label %.preheader153, label %.loopexit, !llvm.loop !206

bb.g:                                             ; preds = %bb.b
  %i.di = load i32, ptr @z_block_size, align 4, !tbaa !4 ; 2 uses
  %i.dj = add nsw i32 %i.di, 1
  %i.dk = sext i32 %i.di to i64
  %i.dl = sext i32 %i.dj to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.2118 = phi i64 [ %i.dk, %bb.g ], [ 1, %bb.b ] ; 5 uses
  %.2 = phi i64 [ %i.dl, %bb.g ], [ 0, %bb.b ]    ; 5 uses
  %i.dm = add nsw i32 %3, %2
  %i.dn = icmp sgt i32 %3, 0
  br i1 %i.dn, label %.preheader156.lr.ph, label %.loopexit

.preheader156.lr.ph:                              ; preds = %bb.h
  %i.do = load i32, ptr @x_block_size, align 4, !tbaa !4 ; 2 uses
  %.not145196 = icmp slt i32 %i.do, 1
  %i.dp = load i32, ptr @y_block_size, align 4    ; 3 uses
  %.not146193 = icmp slt i32 %i.dp, 1
  %or.cond332 = select i1 %.not145196, i1 true, i1 %.not146193
  br i1 %or.cond332, label %.loopexit, label %.preheader156.lr.ph.split.split

.preheader156.lr.ph.split.split:                  ; preds = %.preheader156.lr.ph
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !27
  %i.ds = add nuw i32 %i.do, 1
  %i.dt = sext i32 %2 to i64
  %i.du = sext i32 %i.dm to i64
  %wide.trip.count280 = zext i32 %i.ds to i64
  %i.dv = zext nneg i32 %i.dp to i64              ; 2 uses
  %xtraiter411 = and i64 %i.dv, 3                 ; 3 uses
  %i.dw = add nsw i32 %i.dp, -1
  %i.dx = icmp ult i32 %i.dw, 3
  %unroll_iter415 = and i64 %i.dv, 2147483644
  %lcmp.mod413.not = icmp eq i64 %xtraiter411, 0
  %lcmp.mod414 = icmp ne i64 %xtraiter411, 0
  br label %.preheader156

.preheader156:                                    ; preds = %.preheader156.lr.ph.split.split, %._crit_edge198.split
  %indvars.iv282 = phi i64 [ %i.dt, %.preheader156.lr.ph.split.split ], [ %indvars.iv.next283, %._crit_edge198.split ] ; 2 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %indvars.iv282
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !28
  br label %.preheader155

.preheader155:                                    ; preds = %.preheader156, %._crit_edge195
  %indvars.iv277 = phi i64 [ 1, %.preheader156 ], [ %indvars.iv.next278, %._crit_edge195 ] ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv277
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !30 ; 5 uses
  br i1 %i.dx, label %.epil.preheader410, label %.preheader155.new

.preheader155.new:                                ; preds = %.preheader155, %.preheader155.new
  %indvars.iv272 = phi i64 [ %indvars.iv.next273.3, %.preheader155.new ], [ 1, %.preheader155 ] ; 5 uses
  %niter416 = phi i64 [ %niter416.next.3, %.preheader155.new ], [ 0, %.preheader155 ]
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv272
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !32 ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %.2118
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !21
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %.2
  store double %i.ef, ptr %i.eg, align 8, !tbaa !21
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv272
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !32 ; 2 uses
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %.2118
  %i.el = load double, ptr %i.ek, align 8, !tbaa !21
  %i.em = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %.2
  store double %i.el, ptr %i.em, align 8, !tbaa !21
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv272
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !32 ; 2 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %.2118
  %i.er = load double, ptr %i.eq, align 8, !tbaa !21
  %i.es = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %.2
  store double %i.er, ptr %i.es, align 8, !tbaa !21
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv272
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !32 ; 2 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %.2118
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !21
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %.2
  store double %i.ex, ptr %i.ey, align 8, !tbaa !21
  %indvars.iv.next273.3 = add nuw nsw i64 %indvars.iv272, 4 ; 2 uses
  %niter416.next.3 = add i64 %niter416, 4         ; 2 uses
  %niter416.ncmp.3 = icmp eq i64 %niter416.next.3, %unroll_iter415
  br i1 %niter416.ncmp.3, label %._crit_edge195.unr-lcssa, label %.preheader155.new, !llvm.loop !207

._crit_edge195.unr-lcssa:                         ; preds = %.preheader155.new
  br i1 %lcmp.mod413.not, label %._crit_edge195, label %.epil.preheader410

.epil.preheader410:                               ; preds = %._crit_edge195.unr-lcssa, %.preheader155
  %indvars.iv272.epil.init = phi i64 [ 1, %.preheader155 ], [ %indvars.iv.next273.3, %._crit_edge195.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod414)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader410
  %indvars.iv272.epil = phi i64 [ %indvars.iv272.epil.init, %.epil.preheader410 ], [ %indvars.iv.next273.epil, %bb.i ] ; 2 uses
  %epil.iter412 = phi i64 [ 0, %.epil.preheader410 ], [ %epil.iter412.next, %bb.i ]
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv272.epil
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !32 ; 2 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %.2118
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !21
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %.2
  store double %i.fc, ptr %i.fd, align 8, !tbaa !21
  %indvars.iv.next273.epil = add nuw nsw i64 %indvars.iv272.epil, 1
  %epil.iter412.next = add i64 %epil.iter412, 1   ; 2 uses
  %epil.iter412.cmp.not = icmp eq i64 %epil.iter412.next, %xtraiter411
  br i1 %epil.iter412.cmp.not, label %._crit_edge195, label %bb.i, !llvm.loop !208

._crit_edge195:                                   ; preds = %bb.i, %._crit_edge195.unr-lcssa
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %exitcond281.not = icmp eq i64 %indvars.iv.next278, %wide.trip.count280
  br i1 %exitcond281.not, label %._crit_edge198.split, label %.preheader155, !llvm.loop !209

._crit_edge198.split:                             ; preds = %._crit_edge195
  %indvars.iv.next283 = add nsw i64 %indvars.iv282, 1 ; 2 uses
  %i.fe = icmp slt i64 %indvars.iv.next283, %i.du
  br i1 %i.fe, label %.preheader156, label %.loopexit, !llvm.loop !210

bb.j:                                             ; preds = %bb.a
  switch i32 %0, label %.loopexit [
    i32 1, label %bb.k
    i32 0, label %bb.l
    i32 3, label %bb.m
    i32 2, label %bb.n
    i32 5, label %bb.o
    i32 4, label %bb.p
  ]

bb.k:                                             ; preds = %bb.j
  %i.ff = load i32, ptr @x_block_size, align 4, !tbaa !4 ; 2 uses
  %i.fg = add nsw i32 %i.ff, 1
  %i.fh = sext i32 %i.ff to i64
  %i.fi = sext i32 %i.fg to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.3119 = phi i64 [ %i.fh, %bb.k ], [ 1, %bb.j ]
  %.3 = phi i64 [ %i.fi, %bb.k ], [ 0, %bb.j ]
  %i.fj = add nsw i32 %3, %2
  %i.fk = icmp sgt i32 %3, 0
  br i1 %i.fk, label %.preheader159.lr.ph, label %.loopexit

.preheader159.lr.ph:                              ; preds = %bb.l
  %i.fl = load i32, ptr @y_block_size, align 4, !tbaa !4 ; 2 uses
  %.not143187 = icmp slt i32 %i.fl, -1
  %i.fm = load i32, ptr @z_block_size, align 4    ; 2 uses
  %.not144184 = icmp slt i32 %i.fm, -1
  %or.cond333 = select i1 %.not143187, i1 true, i1 %.not144184
  br i1 %or.cond333, label %.loopexit, label %.preheader159.lr.ph.split.split

.preheader159.lr.ph.split.split:                  ; preds = %.preheader159.lr.ph
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !27
  %i.fp = add i32 %i.fm, 2                        ; 2 uses
  %i.fq = add i32 %i.fl, 2
  %i.fr = sext i32 %2 to i64
  %i.fs = sext i32 %i.fj to i64
  %wide.trip.count267 = zext i32 %i.fq to i64
  %wide.trip.count262 = zext i32 %i.fp to i64     ; 5 uses
  %min.iters.check345 = icmp ult i32 %i.fp, 4
  %n.vec348 = and i64 %wide.trip.count262, 4294967292 ; 3 uses
  %cmp.n355 = icmp eq i64 %n.vec348, %wide.trip.count262
  %xtraiter407 = and i64 %wide.trip.count262, 3   ; 2 uses
  %lcmp.mod408.not = icmp eq i64 %xtraiter407, 0
  br label %.preheader159

.preheader159:                                    ; preds = %.preheader159.lr.ph.split.split, %._crit_edge189.split
  %indvars.iv269 = phi i64 [ %i.fr, %.preheader159.lr.ph.split.split ], [ %indvars.iv.next270, %._crit_edge189.split ] ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %indvars.iv269
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !28 ; 2 uses
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %.3119
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !30
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %.3
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !30
  br label %.preheader158

.preheader158:                                    ; preds = %.preheader159, %._crit_edge186
  %indvars.iv264 = phi i64 [ 0, %.preheader159 ], [ %indvars.iv.next265, %._crit_edge186 ] ; 3 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %indvars.iv264
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !32 ; 7 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv264
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !32 ; 7 uses
  %i.gd = ptrtoaddr ptr %i.gc to i64
  %i.ge = ptrtoaddr ptr %i.ga to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %diff.check343 = icmp ult i64 %i.gf, 32
  %or.cond395 = select i1 %min.iters.check345, i1 true, i1 %diff.check343
  br i1 %or.cond395, label %scalar.ph344.preheader, label %vector.body349

vector.body349:                                   ; preds = %.preheader158, %vector.body349
  %index350 = phi i64 [ %index.next353, %vector.body349 ], [ 0, %.preheader158 ] ; 3 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %index350 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %wide.load351 = load <2 x double>, ptr %i.gg, align 8, !tbaa !21
  %wide.load352 = load <2 x double>, ptr %i.gh, align 8, !tbaa !21
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %index350 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store <2 x double> %wide.load351, ptr %i.gi, align 8, !tbaa !21
  store <2 x double> %wide.load352, ptr %i.gj, align 8, !tbaa !21
  %index.next353 = add nuw i64 %index350, 4       ; 2 uses
  %i.gk = icmp eq i64 %index.next353, %n.vec348
  br i1 %i.gk, label %middle.block354, label %vector.body349, !llvm.loop !211

middle.block354:                                  ; preds = %vector.body349
  br i1 %cmp.n355, label %._crit_edge186, label %scalar.ph344.preheader

scalar.ph344.preheader:                           ; preds = %.preheader158, %middle.block354
  %indvars.iv259.ph = phi i64 [ 0, %.preheader158 ], [ %n.vec348, %middle.block354 ] ; 3 uses
  br i1 %lcmp.mod408.not, label %scalar.ph344.prol.loopexit, label %scalar.ph344.prol

scalar.ph344.prol:                                ; preds = %scalar.ph344.preheader, %scalar.ph344.prol
  %indvars.iv259.prol = phi i64 [ %indvars.iv.next260.prol, %scalar.ph344.prol ], [ %indvars.iv259.ph, %scalar.ph344.preheader ] ; 3 uses
  %prol.iter409 = phi i64 [ %prol.iter409.next, %scalar.ph344.prol ], [ 0, %scalar.ph344.preheader ]
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv259.prol
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !21
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv259.prol
  store double %i.gm, ptr %i.gn, align 8, !tbaa !21
  %indvars.iv.next260.prol = add nuw nsw i64 %indvars.iv259.prol, 1 ; 2 uses
  %prol.iter409.next = add i64 %prol.iter409, 1   ; 2 uses
  %prol.iter409.cmp.not = icmp eq i64 %prol.iter409.next, %xtraiter407
  br i1 %prol.iter409.cmp.not, label %scalar.ph344.prol.loopexit, label %scalar.ph344.prol, !llvm.loop !212

scalar.ph344.prol.loopexit:                       ; preds = %scalar.ph344.prol, %scalar.ph344.preheader
  %indvars.iv259.unr = phi i64 [ %indvars.iv259.ph, %scalar.ph344.preheader ], [ %indvars.iv.next260.prol, %scalar.ph344.prol ]
  %i.go = sub nsw i64 %indvars.iv259.ph, %wide.trip.count262
  %i.gp = icmp ugt i64 %i.go, -4
  br i1 %i.gp, label %._crit_edge186, label %scalar.ph344

scalar.ph344:                                     ; preds = %scalar.ph344.prol.loopexit, %scalar.ph344
  %indvars.iv259 = phi i64 [ %indvars.iv.next260.3, %scalar.ph344 ], [ %indvars.iv259.unr, %scalar.ph344.prol.loopexit ] ; 6 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv259
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !21
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv259
  store double %i.gr, ptr %i.gs, align 8, !tbaa !21
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv.next260
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !21
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv.next260
  store double %i.gu, ptr %i.gv, align 8, !tbaa !21
  %indvars.iv.next260.1 = add nuw nsw i64 %indvars.iv259, 2 ; 2 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv.next260.1
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !21
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv.next260.1
  store double %i.gx, ptr %i.gy, align 8, !tbaa !21
  %indvars.iv.next260.2 = add nuw nsw i64 %indvars.iv259, 3 ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv.next260.2
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !21
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv.next260.2
  store double %i.ha, ptr %i.hb, align 8, !tbaa !21
  %indvars.iv.next260.3 = add nuw nsw i64 %indvars.iv259, 4 ; 2 uses
  %exitcond263.3 = icmp eq i64 %indvars.iv.next260.3, %wide.trip.count262
  br i1 %exitcond263.3, label %._crit_edge186, label %scalar.ph344, !llvm.loop !213

._crit_edge186:                                   ; preds = %scalar.ph344.prol.loopexit, %scalar.ph344, %middle.block354
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1 ; 2 uses
  %exitcond268 = icmp eq i64 %indvars.iv.next265, %wide.trip.count267
  br i1 %exitcond268, label %._crit_edge189.split, label %.preheader158, !llvm.loop !214

._crit_edge189.split:                             ; preds = %._crit_edge186
  %indvars.iv.next270 = add nsw i64 %indvars.iv269, 1 ; 2 uses
  %i.hc = icmp slt i64 %indvars.iv.next270, %i.fs
  br i1 %i.hc, label %.preheader159, label %.loopexit, !llvm.loop !215

bb.m:                                             ; preds = %bb.j
  %i.hd = load i32, ptr @y_block_size, align 4, !tbaa !4 ; 2 uses
  %i.he = add nsw i32 %i.hd, 1
  %i.hf = sext i32 %i.hd to i64
  %i.hg = sext i32 %i.he to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.4120 = phi i64 [ %i.hf, %bb.m ], [ 1, %bb.j ]
  %.4 = phi i64 [ %i.hg, %bb.m ], [ 0, %bb.j ]
  %i.hh = add nsw i32 %3, %2
  %i.hi = icmp sgt i32 %3, 0
  br i1 %i.hi, label %.preheader162.lr.ph, label %.loopexit

.preheader162.lr.ph:                              ; preds = %bb.n
  %i.hj = load i32, ptr @x_block_size, align 4, !tbaa !4 ; 2 uses
  %.not141178 = icmp slt i32 %i.hj, -1
  %i.hk = load i32, ptr @z_block_size, align 4    ; 2 uses
  %.not142175 = icmp slt i32 %i.hk, -1
  %or.cond334 = select i1 %.not141178, i1 true, i1 %.not142175
  br i1 %or.cond334, label %.loopexit, label %.preheader162.lr.ph.split.split

.preheader162.lr.ph.split.split:                  ; preds = %.preheader162.lr.ph
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !27
  %i.hn = add i32 %i.hk, 2                        ; 2 uses
  %i.ho = add i32 %i.hj, 2
  %i.hp = sext i32 %2 to i64
  %i.hq = sext i32 %i.hh to i64
  %wide.trip.count254 = zext i32 %i.ho to i64
  %wide.trip.count249 = zext i32 %i.hn to i64     ; 5 uses
  %min.iters.check = icmp ult i32 %i.hn, 4
  %n.vec = and i64 %wide.trip.count249, 4294967292 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count249
  %xtraiter405 = and i64 %wide.trip.count249, 3   ; 2 uses
  %lcmp.mod406.not = icmp eq i64 %xtraiter405, 0
  br label %.preheader162

.preheader162:                                    ; preds = %.preheader162.lr.ph.split.split, %._crit_edge180.split
  %indvars.iv256 = phi i64 [ %i.hp, %.preheader162.lr.ph.split.split ], [ %indvars.iv.next257, %._crit_edge180.split ] ; 2 uses
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %indvars.iv256
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !28
  br label %.preheader161

.preheader161:                                    ; preds = %.preheader162, %._crit_edge177
  %indvars.iv251 = phi i64 [ 0, %.preheader162 ], [ %indvars.iv.next252, %._crit_edge177 ] ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv251
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !30 ; 2 uses
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %.4120
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !32 ; 7 uses
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %.4
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !32 ; 7 uses
  %i.hz = ptrtoaddr ptr %i.hy to i64
  %i.ia = ptrtoaddr ptr %i.hw to i64
  %i.ib = sub i64 %i.hz, %i.ia
  %diff.check = icmp ult i64 %i.ib, 32
  %or.cond398 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond398, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader161, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader161 ] ; 3 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %index ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %wide.load = load <2 x double>, ptr %i.ic, align 8, !tbaa !21
  %wide.load341 = load <2 x double>, ptr %i.id, align 8, !tbaa !21
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %index ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  store <2 x double> %wide.load, ptr %i.ie, align 8, !tbaa !21
  store <2 x double> %wide.load341, ptr %i.if, align 8, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ig = icmp eq i64 %index.next, %n.vec
  br i1 %i.ig, label %middle.block, label %vector.body, !llvm.loop !216

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge177, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader161, %middle.block
  %indvars.iv246.ph = phi i64 [ 0, %.preheader161 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod406.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv246.prol = phi i64 [ %indvars.iv.next247.prol, %scalar.ph.prol ], [ %indvars.iv246.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv246.prol
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !21
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %indvars.iv246.prol
  store double %i.ii, ptr %i.ij, align 8, !tbaa !21
  %indvars.iv.next247.prol = add nuw nsw i64 %indvars.iv246.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter405
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !217

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv246.unr = phi i64 [ %indvars.iv246.ph, %scalar.ph.preheader ], [ %indvars.iv.next247.prol, %scalar.ph.prol ]
  %i.ik = sub nsw i64 %indvars.iv246.ph, %wide.trip.count249
  %i.il = icmp ugt i64 %i.ik, -4
  br i1 %i.il, label %._crit_edge177, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv246 = phi i64 [ %indvars.iv.next247.3, %scalar.ph ], [ %indvars.iv246.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv246
  %i.in = load double, ptr %i.im, align 8, !tbaa !21
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %indvars.iv246
  store double %i.in, ptr %i.io, align 8, !tbaa !21
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 2 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv.next247
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !21
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %indvars.iv.next247
  store double %i.iq, ptr %i.ir, align 8, !tbaa !21
  %indvars.iv.next247.1 = add nuw nsw i64 %indvars.iv246, 2 ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv.next247.1
  %i.it = load double, ptr %i.is, align 8, !tbaa !21
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %indvars.iv.next247.1
  store double %i.it, ptr %i.iu, align 8, !tbaa !21
  %indvars.iv.next247.2 = add nuw nsw i64 %indvars.iv246, 3 ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv.next247.2
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !21
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %indvars.iv.next247.2
  store double %i.iw, ptr %i.ix, align 8, !tbaa !21
  %indvars.iv.next247.3 = add nuw nsw i64 %indvars.iv246, 4 ; 2 uses
  %exitcond250.3 = icmp eq i64 %indvars.iv.next247.3, %wide.trip.count249
  br i1 %exitcond250.3, label %._crit_edge177, label %scalar.ph, !llvm.loop !218

._crit_edge177:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next252 = add nuw nsw i64 %indvars.iv251, 1 ; 2 uses
  %exitcond255 = icmp eq i64 %indvars.iv.next252, %wide.trip.count254
  br i1 %exitcond255, label %._crit_edge180.split, label %.preheader161, !llvm.loop !219

._crit_edge180.split:                             ; preds = %._crit_edge177
  %indvars.iv.next257 = add nsw i64 %indvars.iv256, 1 ; 2 uses
  %i.iy = icmp slt i64 %indvars.iv.next257, %i.hq
  br i1 %i.iy, label %.preheader162, label %.loopexit, !llvm.loop !220

bb.o:                                             ; preds = %bb.j
  %i.iz = load i32, ptr @z_block_size, align 4, !tbaa !4 ; 2 uses
  %i.ja = add nsw i32 %i.iz, 1
  %i.jb = sext i32 %i.iz to i64
  %i.jc = sext i32 %i.ja to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %.5121 = phi i64 [ %i.jb, %bb.o ], [ 1, %bb.j ] ; 5 uses
  %.5 = phi i64 [ %i.jc, %bb.o ], [ 0, %bb.j ]    ; 5 uses
  %i.jd = add nsw i32 %3, %2
  %i.je = icmp sgt i32 %3, 0
  br i1 %i.je, label %.preheader165.lr.ph, label %.loopexit

.preheader165.lr.ph:                              ; preds = %bb.p
  %i.jf = load i32, ptr @x_block_size, align 4, !tbaa !4 ; 2 uses
  %.not169 = icmp slt i32 %i.jf, -1
  %i.jg = load i32, ptr @y_block_size, align 4    ; 3 uses
  %.not140167 = icmp slt i32 %i.jg, -1
  %or.cond335 = select i1 %.not169, i1 true, i1 %.not140167
  br i1 %or.cond335, label %.loopexit, label %.preheader165.lr.ph.split.split

.preheader165.lr.ph.split.split:                  ; preds = %.preheader165.lr.ph
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !27
  %i.jj = add i32 %i.jg, 2
  %i.jk = add i32 %i.jf, 2
  %i.jl = sext i32 %2 to i64
  %i.jm = sext i32 %i.jd to i64
  %wide.trip.count241 = zext i32 %i.jk to i64
  %wide.trip.count = zext i32 %i.jj to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.jn = add i32 %i.jg, 1
  %i.jo = icmp ult i32 %i.jn, 3
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod404 = icmp ne i64 %xtraiter, 0
  br label %.preheader165

.preheader165:                                    ; preds = %.preheader165.lr.ph.split.split, %._crit_edge171.split
  %indvars.iv243 = phi i64 [ %i.jl, %.preheader165.lr.ph.split.split ], [ %indvars.iv.next244, %._crit_edge171.split ] ; 2 uses
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.ji, i64 %indvars.iv243
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !28
  br label %.preheader164

.preheader164:                                    ; preds = %.preheader165, %._crit_edge
  %indvars.iv238 = phi i64 [ 0, %.preheader165 ], [ %indvars.iv.next239, %._crit_edge ] ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %indvars.iv238
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !30 ; 5 uses
  br i1 %i.jo, label %.epil.preheader, label %.preheader164.new

.preheader164.new:                                ; preds = %.preheader164, %.preheader164.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader164.new ], [ 0, %.preheader164 ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader164.new ], [ 0, %.preheader164 ]
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !32 ; 2 uses
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.ju, i64 %.5121
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !21
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.ju, i64 %.5
  store double %i.jw, ptr %i.jx, align 8, !tbaa !21
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !32 ; 2 uses
  %i.kb = getelementptr inbounds [8 x i8], ptr %i.ka, i64 %.5121
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !21
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.ka, i64 %.5
  store double %i.kc, ptr %i.kd, align 8, !tbaa !21
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !32 ; 2 uses
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.kg, i64 %.5121
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !21
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.kg, i64 %.5
  store double %i.ki, ptr %i.kj, align 8, !tbaa !21
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !32 ; 2 uses
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.km, i64 %.5121
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !21
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.km, i64 %.5
  store double %i.ko, ptr %i.kp, align 8, !tbaa !21
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader164.new, !llvm.loop !221

._crit_edge.unr-lcssa:                            ; preds = %.preheader164.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader164
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader164 ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod404)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.q ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.q ]
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv.epil
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !32 ; 2 uses
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %.5121
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !21
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %.5
  store double %i.kt, ptr %i.ku, align 8, !tbaa !21
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.q, !llvm.loop !222

._crit_edge:                                      ; preds = %bb.q, %._crit_edge.unr-lcssa
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 2 uses
  %exitcond242 = icmp eq i64 %indvars.iv.next239, %wide.trip.count241
  br i1 %exitcond242, label %._crit_edge171.split, label %.preheader164, !llvm.loop !223

._crit_edge171.split:                             ; preds = %._crit_edge
  %indvars.iv.next244 = add nsw i64 %indvars.iv243, 1 ; 2 uses
  %i.kv = icmp slt i64 %indvars.iv.next244, %i.jm
  br i1 %i.kv, label %.preheader165, label %.loopexit, !llvm.loop !224

.loopexit:                                        ; preds = %._crit_edge171.split, %._crit_edge180.split, %._crit_edge189.split, %._crit_edge198.split, %._crit_edge207.split, %._crit_edge216.split, %.preheader165.lr.ph, %.preheader162.lr.ph, %.preheader159.lr.ph, %.preheader156.lr.ph, %.preheader153.lr.ph, %.preheader151.lr.ph, %bb.p, %bb.n, %bb.l, %bb.h, %bb.f, %bb.d, %bb.j, %bb.b
  ret void
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }
attributes #7 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 int", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!13, !5, i64 4}
!13 = !{!"", !5, i64 0, !5, i64 4}
!14 = !{!15, !5, i64 0}
!15 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !6, i64 28, !6, i64 52, !6, i64 76, !6, i64 172, !16, i64 184}
!16 = !{!"p4 double", !17, i64 0}
!17 = !{!"any p4 pointer", !18, i64 0}
!18 = !{!"any p3 pointer", !19, i64 0}
!19 = !{!"any p2 pointer", !10, i64 0}
!20 = !{!15, !5, i64 4}
!21 = !{!22, !22, i64 0}
!22 = !{!"double", !6, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = distinct !{!25, !24}
!26 = distinct !{!26, !24}
!27 = !{!15, !16, i64 184}
!28 = !{!29, !29, i64 0}
!29 = !{!"p3 double", !18, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"p2 double", !19, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 double", !10, i64 0}
!34 = distinct !{!34, !24, !35, !36}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = distinct !{!37, !24, !35}
!38 = distinct !{!38, !24}
!39 = distinct !{!39, !24}
!40 = distinct !{!40, !24, !35, !36}
!41 = distinct !{!41, !24, !35}
!42 = distinct !{!42, !24}
!43 = distinct !{!43, !24}
!44 = distinct !{!44, !24}
!45 = distinct !{!45, !24}
!46 = distinct !{!46, !24}
!47 = distinct !{!47, !24, !35, !36}
!48 = distinct !{!48, !24, !35}
!49 = distinct !{!49, !24}
!50 = distinct !{!50, !24}
!51 = distinct !{!51, !24, !35, !36}
!52 = distinct !{!52, !24, !35}
!53 = distinct !{!53, !24}
!54 = distinct !{!54, !24}
!55 = distinct !{!55, !24}
!56 = distinct !{!56, !24}
!57 = distinct !{!57, !24}
!58 = !{!59}
!59 = distinct !{!59, !60}
!60 = distinct !{!60, !"LVerDomain"}
!61 = !{!62}
!62 = distinct !{!62, !60}
!63 = !{!64, !65, !59, !66, !67}
!64 = distinct !{!64, !60}
!65 = distinct !{!65, !60}
!66 = distinct !{!66, !60}
!67 = distinct !{!67, !60}
!68 = !{!64}
!69 = !{!65, !59, !66, !67}
!70 = !{!66}
!71 = !{!67}
!72 = !{!65}
!73 = !{!59, !66, !67}
!74 = distinct !{!74, !24, !35, !36}
!75 = distinct !{!75, !24, !35}
!76 = distinct !{!76, !24}
!77 = distinct !{!77, !24}
!78 = !{!79}
!79 = distinct !{!79, !80}
!80 = distinct !{!80, !"LVerDomain"}
!81 = !{!82}
!82 = distinct !{!82, !80}
!83 = !{!84, !85, !79, !86, !87}
!84 = distinct !{!84, !80}
!85 = distinct !{!85, !80}
!86 = distinct !{!86, !80}
!87 = distinct !{!87, !80}
!88 = !{!84}
!89 = !{!85, !79, !86, !87}
!90 = !{!86}
!91 = !{!87}
!92 = !{!85}
!93 = !{!79, !86, !87}
!94 = distinct !{!94, !24, !35, !36}
!95 = distinct !{!95, !24, !35}
!96 = distinct !{!96, !24}
!97 = distinct !{!97, !24}
!98 = distinct !{!98, !24}
!99 = distinct !{!99, !24}
!100 = distinct !{!100, !24}
!101 = !{!102}
!102 = distinct !{!102, !103}
!103 = distinct !{!103, !"LVerDomain"}
!104 = distinct !{!104, !24, !35, !36}
!105 = distinct !{!105, !24, !35}
!106 = !{!107}
!107 = distinct !{!107, !108}
!108 = distinct !{!108, !"LVerDomain"}
!109 = !{!110}
!110 = distinct !{!110, !108}
!111 = distinct !{!111, !24, !35, !36}
!112 = distinct !{!112, !24, !35}
!113 = !{!114}
!114 = distinct !{!114, !115}
!115 = distinct !{!115, !"LVerDomain"}
!116 = !{!117}
!117 = distinct !{!117, !115}
!118 = !{!119, !120, !114, !121, !122}
!119 = distinct !{!119, !115}
!120 = distinct !{!120, !115}
!121 = distinct !{!121, !115}
!122 = distinct !{!122, !115}
!123 = !{!119}
!124 = !{!120, !114, !121, !122}
!125 = !{!121}
!126 = !{!122}
!127 = !{!120}
!128 = !{!114, !121, !122}
!129 = distinct !{!129, !24, !35, !36}
!130 = distinct !{!130, !24, !35}
!131 = distinct !{!131, !24}
!132 = !{!133}
!133 = distinct !{!133, !134}
!134 = distinct !{!134, !"LVerDomain"}
!135 = distinct !{!135, !24, !35, !36}
!136 = distinct !{!136, !24, !35}
!137 = !{!138}
!138 = distinct !{!138, !139}
!139 = distinct !{!139, !"LVerDomain"}
!140 = !{!141}
!141 = distinct !{!141, !139}
!142 = distinct !{!142, !24, !35, !36}
!143 = distinct !{!143, !24, !35}
!144 = distinct !{!144, !24}
!145 = !{!146}
!146 = distinct !{!146, !147}
!147 = distinct !{!147, !"LVerDomain"}
!148 = distinct !{!148, !24, !35, !36}
!149 = distinct !{!149, !24, !35}
!150 = !{!151}
!151 = distinct !{!151, !152}
!152 = distinct !{!152, !"LVerDomain"}
!153 = !{!154}
!154 = distinct !{!154, !152}
!155 = distinct !{!155, !24, !35, !36}
!156 = distinct !{!156, !24, !35}
!157 = !{!158}
!158 = distinct !{!158, !159}
!159 = distinct !{!159, !"LVerDomain"}
!160 = !{!161}
!161 = distinct !{!161, !159}
!162 = !{!163, !164, !158, !165, !166}
!163 = distinct !{!163, !159}
!164 = distinct !{!164, !159}
!165 = distinct !{!165, !159}
!166 = distinct !{!166, !159}
!167 = !{!163}
!168 = !{!164, !158, !165, !166}
!169 = !{!165}
!170 = !{!166}
!171 = !{!164}
!172 = !{!158, !165, !166}
!173 = distinct !{!173, !24, !35, !36}
!174 = distinct !{!174, !24, !35}
!175 = distinct !{!175, !24}
!176 = !{!177}
!177 = distinct !{!177, !178}
!178 = distinct !{!178, !"LVerDomain"}
!179 = distinct !{!179, !24, !35, !36}
!180 = distinct !{!180, !24, !35}
!181 = !{!182}
!182 = distinct !{!182, !183}
!183 = distinct !{!183, !"LVerDomain"}
!184 = !{!185}
!185 = distinct !{!185, !183}
!186 = distinct !{!186, !24, !35, !36}
!187 = distinct !{!187, !24, !35}
!188 = distinct !{!188, !24}
!189 = distinct !{!189, !24}
!190 = distinct !{!190, !24}
!191 = distinct !{!191, !24}
!192 = distinct !{!192, !24}
!193 = distinct !{!193, !24}
!194 = distinct !{!194, !24}
!195 = distinct !{!195, !24}
!196 = distinct !{!196, !24, !35, !36}
!197 = distinct !{!197, !198}
!198 = !{!"llvm.loop.unroll.disable"}
!199 = distinct !{!199, !24, !35}
!200 = distinct !{!200, !24}
!201 = distinct !{!201, !24}
!202 = distinct !{!202, !24, !35, !36}
!203 = distinct !{!203, !198}
!204 = distinct !{!204, !24, !35}
!205 = distinct !{!205, !24}
!206 = distinct !{!206, !24}
!207 = distinct !{!207, !24}
!208 = distinct !{!208, !198}
!209 = distinct !{!209, !24}
!210 = distinct !{!210, !24}
!211 = distinct !{!211, !24, !35, !36}
!212 = distinct !{!212, !198}
!213 = distinct !{!213, !24, !35}
!214 = distinct !{!214, !24}
!215 = distinct !{!215, !24}
!216 = distinct !{!216, !24, !35, !36}
!217 = distinct !{!217, !198}
!218 = distinct !{!218, !24, !35}
!219 = distinct !{!219, !24}
!220 = distinct !{!220, !24}
!221 = distinct !{!221, !24}
!222 = distinct !{!222, !198}
!223 = distinct !{!223, !24}
!224 = distinct !{!224, !24}
end_hunk_0
