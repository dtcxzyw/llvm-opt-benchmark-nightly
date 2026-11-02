Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/lodepng?download=true
inline.NumInlined: 863
inline.NumDeleted: 192
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 142
begin_hunk_0_@_ZL19preProcessScanlinesPPhPmPKhjjPK11LodePNGInfoPK22LodePNGEncoderSettings:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hz, ptr align 1 %i.hy, i64 %i.ho, i1 false), !tbaa !29
  %i.ia = trunc i64 %indvars.iv131.i to i32
  %i.ib = or disjoint i32 %i.ia, 1                ; 2 uses
  %reass.add.1 = add i32 %i.hq, %i.ib
  %reass.mul.1 = shl i32 %reass.add.1, 3
  %i.ic = zext i32 %reass.mul.1 to i64
  %i.id = mul nuw nsw i64 %i.ic, %i.ho
  %i.ie = add i32 %i.hr, %i.ib
  %i.if = zext i32 %i.ie to i64
  %i.ig = mul nuw nsw i64 %i.if, %i.ho
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 %i.id
  %i.ii = getelementptr i8, ptr %i.xs, i64 %i.ig
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ii, ptr align 1 %i.ih, i64 %i.ho, i1 false), !tbaa !29
  %i.ij = trunc i64 %indvars.iv131.i to i32
  %i.ik = or disjoint i32 %i.ij, 2                ; 2 uses
  %reass.add.2 = add i32 %i.hq, %i.ik
  %reass.mul.2 = shl i32 %reass.add.2, 3
  %i.il = zext i32 %reass.mul.2 to i64
  %i.im = mul nuw nsw i64 %i.il, %i.ho
  %i.in = add i32 %i.hr, %i.ik
  %i.io = zext i32 %i.in to i64
  %i.ip = mul nuw nsw i64 %i.io, %i.ho
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 %i.im
  %i.ir = getelementptr i8, ptr %i.xs, i64 %i.ip
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ir, ptr align 1 %i.iq, i64 %i.ho, i1 false), !tbaa !29
  %i.is = trunc i64 %indvars.iv131.i to i32
  %i.it = or disjoint i32 %i.is, 3                ; 2 uses
  %reass.add.3 = add i32 %i.hq, %i.it
  %reass.mul.3 = shl i32 %reass.add.3, 3
  %i.iu = zext i32 %reass.mul.3 to i64
  %i.iv = mul nuw nsw i64 %i.iu, %i.ho
  %i.iw = add i32 %i.hr, %i.it
  %i.ix = zext i32 %i.iw to i64
  %i.iy = mul nuw nsw i64 %i.ix, %i.ho
  %i.iz = getelementptr inbounds nuw i8, ptr %2, i64 %i.iv
  %i.ja = getelementptr i8, ptr %i.xs, i64 %i.iy
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ja, ptr align 1 %i.iz, i64 %i.ho, i1 false), !tbaa !29
  %indvars.iv.next132.i.3 = add nuw nsw i64 %indvars.iv131.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge99.us.i.unr-lcssa, label %.lr.ph.us104.i, !llvm.loop !653

._crit_edge101.split.us.i:                        ; preds = %._crit_edge99.us.i, %.preheader.lr.ph.us.i, %.preheader82.split.us.preheader.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !30 ; 2 uses
  %.not112.1.i = icmp eq i32 %i.jc, 0
  br i1 %.not112.1.i, label %._crit_edge101.split.us.1.i, label %.preheader.lr.ph.us.1.i

.preheader.lr.ph.us.1.i:                          ; preds = %._crit_edge101.split.us.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !30 ; 4 uses
  %.not113.1.i = icmp eq i32 %i.je, 0
  br i1 %.not113.1.i, label %._crit_edge101.split.us.1.i, label %.preheader.lr.ph.split.us.1.i

.preheader.lr.ph.split.us.1.i:                    ; preds = %.preheader.lr.ph.us.1.i
  %i.jf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !25
  %i.jh = getelementptr i8, ptr %i.ao, i64 %i.jg  ; 5 uses
  %wide.trip.count134.1.i = zext i32 %i.je to i64 ; 2 uses
  %xtraiter196 = and i64 %wide.trip.count134.1.i, 3 ; 3 uses
  %i.ji = icmp ult i32 %i.je, 4
  %unroll_iter200 = and i64 %wide.trip.count134.1.i, 4294967292
  %lcmp.mod198.not = icmp eq i64 %xtraiter196, 0
  %lcmp.mod199 = icmp ne i64 %xtraiter196, 0
  br label %.preheader.us.1.i

.preheader.us.1.i:                                ; preds = %._crit_edge99.us.1.i, %.preheader.lr.ph.split.us.1.i
  %.069100.us.1.i = phi i32 [ 0, %.preheader.lr.ph.split.us.1.i ], [ %i.lh, %._crit_edge99.us.1.i ] ; 3 uses
  %i.jj = mul i32 %.069100.us.1.i, %3             ; 5 uses
  %i.jk = mul i32 %.069100.us.1.i, %i.je          ; 5 uses
  br i1 %i.ji, label %.lr.ph.us104.1.i.epil.preheader, label %.lr.ph.us104.1.i

.lr.ph.us104.1.i:                                 ; preds = %.preheader.us.1.i, %.lr.ph.us104.1.i
  %indvars.iv131.1.i = phi i64 [ %indvars.iv.next132.1.i.3, %.lr.ph.us104.1.i ], [ 0, %.preheader.us.1.i ] ; 5 uses
  %niter201 = phi i64 [ %niter201.next.3, %.lr.ph.us104.1.i ], [ 0, %.preheader.us.1.i ]
  %i.jl = trunc nuw i64 %indvars.iv131.1.i to i32 ; 2 uses
  %reass.add127 = add i32 %i.jj, %i.jl
  %reass.mul128 = shl i32 %reass.add127, 3
  %i.jm = or disjoint i32 %reass.mul128, 4
  %i.jn = zext i32 %i.jm to i64
  %i.jo = mul nuw nsw i64 %i.jn, %i.ho
  %i.jp = add i32 %i.jk, %i.jl
  %i.jq = zext i32 %i.jp to i64
  %i.jr = mul nuw nsw i64 %i.jq, %i.ho
  %i.js = getelementptr inbounds nuw i8, ptr %2, i64 %i.jo
  %i.jt = getelementptr i8, ptr %i.jh, i64 %i.jr
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jt, ptr align 1 %i.js, i64 %i.ho, i1 false), !tbaa !29
  %i.ju = trunc i64 %indvars.iv131.1.i to i32
  %i.jv = or disjoint i32 %i.ju, 1                ; 2 uses
  %reass.add127.1 = add i32 %i.jj, %i.jv
  %reass.mul128.1 = shl i32 %reass.add127.1, 3
  %i.jw = or disjoint i32 %reass.mul128.1, 4
  %i.jx = zext i32 %i.jw to i64
  %i.jy = mul nuw nsw i64 %i.jx, %i.ho
  %i.jz = add i32 %i.jk, %i.jv
  %i.ka = zext i32 %i.jz to i64
  %i.kb = mul nuw nsw i64 %i.ka, %i.ho
  %i.kc = getelementptr inbounds nuw i8, ptr %2, i64 %i.jy
  %i.kd = getelementptr i8, ptr %i.jh, i64 %i.kb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kd, ptr align 1 %i.kc, i64 %i.ho, i1 false), !tbaa !29
  %i.ke = trunc i64 %indvars.iv131.1.i to i32
  %i.kf = or disjoint i32 %i.ke, 2                ; 2 uses
  %reass.add127.2 = add i32 %i.jj, %i.kf
  %reass.mul128.2 = shl i32 %reass.add127.2, 3
  %i.kg = or disjoint i32 %reass.mul128.2, 4
  %i.kh = zext i32 %i.kg to i64
  %i.ki = mul nuw nsw i64 %i.kh, %i.ho
  %i.kj = add i32 %i.jk, %i.kf
  %i.kk = zext i32 %i.kj to i64
  %i.kl = mul nuw nsw i64 %i.kk, %i.ho
  %i.km = getelementptr inbounds nuw i8, ptr %2, i64 %i.ki
  %i.kn = getelementptr i8, ptr %i.jh, i64 %i.kl
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kn, ptr align 1 %i.km, i64 %i.ho, i1 false), !tbaa !29
  %i.ko = trunc i64 %indvars.iv131.1.i to i32
  %i.kp = or disjoint i32 %i.ko, 3                ; 2 uses
  %reass.add127.3 = add i32 %i.jj, %i.kp
  %reass.mul128.3 = shl i32 %reass.add127.3, 3
  %i.kq = or disjoint i32 %reass.mul128.3, 4
  %i.kr = zext i32 %i.kq to i64
  %i.ks = mul nuw nsw i64 %i.kr, %i.ho
  %i.kt = add i32 %i.jk, %i.kp
  %i.ku = zext i32 %i.kt to i64
  %i.kv = mul nuw nsw i64 %i.ku, %i.ho
  %i.kw = getelementptr inbounds nuw i8, ptr %2, i64 %i.ks
  %i.kx = getelementptr i8, ptr %i.jh, i64 %i.kv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kx, ptr align 1 %i.kw, i64 %i.ho, i1 false), !tbaa !29
  %indvars.iv.next132.1.i.3 = add nuw nsw i64 %indvars.iv131.1.i, 4 ; 2 uses
  %niter201.next.3 = add i64 %niter201, 4         ; 2 uses
  %niter201.ncmp.3 = icmp eq i64 %niter201.next.3, %unroll_iter200
  br i1 %niter201.ncmp.3, label %._crit_edge99.us.1.i.unr-lcssa, label %.lr.ph.us104.1.i, !llvm.loop !653

._crit_edge99.us.1.i.unr-lcssa:                   ; preds = %.lr.ph.us104.1.i
  br i1 %lcmp.mod198.not, label %._crit_edge99.us.1.i, label %.lr.ph.us104.1.i.epil.preheader

.lr.ph.us104.1.i.epil.preheader:                  ; preds = %._crit_edge99.us.1.i.unr-lcssa, %.preheader.us.1.i
  %indvars.iv131.1.i.epil.init = phi i64 [ 0, %.preheader.us.1.i ], [ %indvars.iv.next132.1.i.3, %._crit_edge99.us.1.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod199)
  br label %.lr.ph.us104.1.i.epil

.lr.ph.us104.1.i.epil:                            ; preds = %.lr.ph.us104.1.i.epil, %.lr.ph.us104.1.i.epil.preheader
  %indvars.iv131.1.i.epil = phi i64 [ %indvars.iv.next132.1.i.epil, %.lr.ph.us104.1.i.epil ], [ %indvars.iv131.1.i.epil.init, %.lr.ph.us104.1.i.epil.preheader ] ; 2 uses
  %epil.iter197 = phi i64 [ %epil.iter197.next, %.lr.ph.us104.1.i.epil ], [ 0, %.lr.ph.us104.1.i.epil.preheader ]
  %i.ky = trunc nuw i64 %indvars.iv131.1.i.epil to i32 ; 2 uses
  %reass.add127.epil = add i32 %i.jj, %i.ky
  %reass.mul128.epil = shl i32 %reass.add127.epil, 3
  %i.kz = or disjoint i32 %reass.mul128.epil, 4
  %i.la = zext i32 %i.kz to i64
  %i.lb = mul nuw nsw i64 %i.la, %i.ho
  %i.lc = add i32 %i.jk, %i.ky
  %i.ld = zext i32 %i.lc to i64
  %i.le = mul nuw nsw i64 %i.ld, %i.ho
  %i.lf = getelementptr inbounds nuw i8, ptr %2, i64 %i.lb
  %i.lg = getelementptr i8, ptr %i.jh, i64 %i.le
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lg, ptr align 1 %i.lf, i64 %i.ho, i1 false), !tbaa !29
  %indvars.iv.next132.1.i.epil = add nuw nsw i64 %indvars.iv131.1.i.epil, 1
  %epil.iter197.next = add i64 %epil.iter197, 1   ; 2 uses
  %epil.iter197.cmp.not = icmp eq i64 %epil.iter197.next, %xtraiter196
  br i1 %epil.iter197.cmp.not, label %._crit_edge99.us.1.i, label %.lr.ph.us104.1.i.epil, !llvm.loop !654

._crit_edge99.us.1.i:                             ; preds = %.lr.ph.us104.1.i.epil, %._crit_edge99.us.1.i.unr-lcssa
  %i.lh = add nuw i32 %.069100.us.1.i, 1          ; 2 uses
  %exitcond136.1.not.i = icmp eq i32 %i.lh, %i.jc
  br i1 %exitcond136.1.not.i, label %._crit_edge101.split.us.1.i, label %.preheader.us.1.i, !llvm.loop !655

._crit_edge101.split.us.1.i:                      ; preds = %._crit_edge99.us.1.i, %.preheader.lr.ph.us.1.i, %._crit_edge101.split.us.i
  %i.li = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !30 ; 2 uses
  %.not112.2.i = icmp eq i32 %i.lj, 0
  br i1 %.not112.2.i, label %._crit_edge101.split.us.2.i, label %.preheader.lr.ph.us.2.i

.preheader.lr.ph.us.2.i:                          ; preds = %._crit_edge101.split.us.1.i
  %i.lk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !30 ; 4 uses
  %.not113.2.i = icmp eq i32 %i.ll, 0
  br i1 %.not113.2.i, label %._crit_edge101.split.us.2.i, label %.preheader.lr.ph.split.us.2.i

.preheader.lr.ph.split.us.2.i:                    ; preds = %.preheader.lr.ph.us.2.i
  %i.lm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ln = load i64, ptr %i.lm, align 16, !tbaa !25
  %i.lo = getelementptr i8, ptr %i.ao, i64 %i.ln  ; 5 uses
  %wide.trip.count134.2.i = zext i32 %i.ll to i64 ; 2 uses
  %xtraiter202 = and i64 %wide.trip.count134.2.i, 3 ; 3 uses
  %i.lp = icmp ult i32 %i.ll, 4
  %unroll_iter206 = and i64 %wide.trip.count134.2.i, 4294967292
  %lcmp.mod204.not = icmp eq i64 %xtraiter202, 0
  %lcmp.mod205 = icmp ne i64 %xtraiter202, 0
  br label %.preheader.us.2.i

.preheader.us.2.i:                                ; preds = %._crit_edge99.us.2.i, %.preheader.lr.ph.split.us.2.i
  %.069100.us.2.i = phi i32 [ 0, %.preheader.lr.ph.split.us.2.i ], [ %i.nv, %._crit_edge99.us.2.i ] ; 3 uses
  %i.lq = shl i32 %.069100.us.2.i, 3
  %i.lr = or disjoint i32 %i.lq, 4
  %i.ls = mul i32 %i.lr, %3                       ; 5 uses
  %i.lt = mul i32 %.069100.us.2.i, %i.ll          ; 5 uses
  br i1 %i.lp, label %.lr.ph.us104.2.i.epil.preheader, label %.lr.ph.us104.2.i

.lr.ph.us104.2.i:                                 ; preds = %.preheader.us.2.i, %.lr.ph.us104.2.i
  %indvars.iv131.2.i = phi i64 [ %indvars.iv.next132.2.i.3, %.lr.ph.us104.2.i ], [ 0, %.preheader.us.2.i ] ; 5 uses
  %niter207 = phi i64 [ %niter207.next.3, %.lr.ph.us104.2.i ], [ 0, %.preheader.us.2.i ]
  %i.lu = trunc nuw i64 %indvars.iv131.2.i to i32 ; 2 uses
  %i.lv = shl nsw i32 %i.lu, 2
  %i.lw = add i32 %i.lv, %i.ls
  %i.lx = zext i32 %i.lw to i64
  %i.ly = mul nuw nsw i64 %i.lx, %i.ho
  %i.lz = add i32 %i.lt, %i.lu
  %i.ma = zext i32 %i.lz to i64
  %i.mb = mul nuw nsw i64 %i.ma, %i.ho
  %i.mc = getelementptr inbounds nuw i8, ptr %2, i64 %i.ly
  %i.md = getelementptr i8, ptr %i.lo, i64 %i.mb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.md, ptr align 1 %i.mc, i64 %i.ho, i1 false), !tbaa !29
  %i.me = trunc i64 %indvars.iv131.2.i to i32
  %i.mf = or disjoint i32 %i.me, 1                ; 2 uses
  %i.mg = shl nsw i32 %i.mf, 2
  %i.mh = add i32 %i.mg, %i.ls
  %i.mi = zext i32 %i.mh to i64
  %i.mj = mul nuw nsw i64 %i.mi, %i.ho
  %i.mk = add i32 %i.lt, %i.mf
  %i.ml = zext i32 %i.mk to i64
  %i.mm = mul nuw nsw i64 %i.ml, %i.ho
  %i.mn = getelementptr inbounds nuw i8, ptr %2, i64 %i.mj
  %i.mo = getelementptr i8, ptr %i.lo, i64 %i.mm
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mo, ptr align 1 %i.mn, i64 %i.ho, i1 false), !tbaa !29
  %i.mp = trunc i64 %indvars.iv131.2.i to i32
  %i.mq = or disjoint i32 %i.mp, 2                ; 2 uses
  %i.mr = shl nsw i32 %i.mq, 2
  %i.ms = add i32 %i.mr, %i.ls
  %i.mt = zext i32 %i.ms to i64
  %i.mu = mul nuw nsw i64 %i.mt, %i.ho
  %i.mv = add i32 %i.lt, %i.mq
  %i.mw = zext i32 %i.mv to i64
  %i.mx = mul nuw nsw i64 %i.mw, %i.ho
  %i.my = getelementptr inbounds nuw i8, ptr %2, i64 %i.mu
  %i.mz = getelementptr i8, ptr %i.lo, i64 %i.mx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mz, ptr align 1 %i.my, i64 %i.ho, i1 false), !tbaa !29
  %i.na = trunc i64 %indvars.iv131.2.i to i32
  %i.nb = or disjoint i32 %i.na, 3                ; 2 uses
  %i.nc = shl nsw i32 %i.nb, 2
  %i.nd = add i32 %i.nc, %i.ls
  %i.ne = zext i32 %i.nd to i64
  %i.nf = mul nuw nsw i64 %i.ne, %i.ho
  %i.ng = add i32 %i.lt, %i.nb
  %i.nh = zext i32 %i.ng to i64
  %i.ni = mul nuw nsw i64 %i.nh, %i.ho
  %i.nj = getelementptr inbounds nuw i8, ptr %2, i64 %i.nf
  %i.nk = getelementptr i8, ptr %i.lo, i64 %i.ni
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nk, ptr align 1 %i.nj, i64 %i.ho, i1 false), !tbaa !29
  %indvars.iv.next132.2.i.3 = add nuw nsw i64 %indvars.iv131.2.i, 4 ; 2 uses
  %niter207.next.3 = add i64 %niter207, 4         ; 2 uses
  %niter207.ncmp.3 = icmp eq i64 %niter207.next.3, %unroll_iter206
  br i1 %niter207.ncmp.3, label %._crit_edge99.us.2.i.unr-lcssa, label %.lr.ph.us104.2.i, !llvm.loop !653

._crit_edge99.us.2.i.unr-lcssa:                   ; preds = %.lr.ph.us104.2.i
  br i1 %lcmp.mod204.not, label %._crit_edge99.us.2.i, label %.lr.ph.us104.2.i.epil.preheader

.lr.ph.us104.2.i.epil.preheader:                  ; preds = %._crit_edge99.us.2.i.unr-lcssa, %.preheader.us.2.i
  %indvars.iv131.2.i.epil.init = phi i64 [ 0, %.preheader.us.2.i ], [ %indvars.iv.next132.2.i.3, %._crit_edge99.us.2.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod205)
  br label %.lr.ph.us104.2.i.epil

.lr.ph.us104.2.i.epil:                            ; preds = %.lr.ph.us104.2.i.epil, %.lr.ph.us104.2.i.epil.preheader
  %indvars.iv131.2.i.epil = phi i64 [ %indvars.iv.next132.2.i.epil, %.lr.ph.us104.2.i.epil ], [ %indvars.iv131.2.i.epil.init, %.lr.ph.us104.2.i.epil.preheader ] ; 2 uses
  %epil.iter203 = phi i64 [ %epil.iter203.next, %.lr.ph.us104.2.i.epil ], [ 0, %.lr.ph.us104.2.i.epil.preheader ]
  %i.nl = trunc nuw i64 %indvars.iv131.2.i.epil to i32 ; 2 uses
  %i.nm = shl i32 %i.nl, 2
  %i.nn = add i32 %i.nm, %i.ls
  %i.no = zext i32 %i.nn to i64
  %i.np = mul nuw nsw i64 %i.no, %i.ho
  %i.nq = add i32 %i.lt, %i.nl
  %i.nr = zext i32 %i.nq to i64
  %i.ns = mul nuw nsw i64 %i.nr, %i.ho
  %i.nt = getelementptr inbounds nuw i8, ptr %2, i64 %i.np
  %i.nu = getelementptr i8, ptr %i.lo, i64 %i.ns
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nu, ptr align 1 %i.nt, i64 %i.ho, i1 false), !tbaa !29
  %indvars.iv.next132.2.i.epil = add nuw nsw i64 %indvars.iv131.2.i.epil, 1
  %epil.iter203.next = add i64 %epil.iter203, 1   ; 2 uses
  %epil.iter203.cmp.not = icmp eq i64 %epil.iter203.next, %xtraiter202
  br i1 %epil.iter203.cmp.not, label %._crit_edge99.us.2.i, label %.lr.ph.us104.2.i.epil, !llvm.loop !656

._crit_edge99.us.2.i:                             ; preds = %.lr.ph.us104.2.i.epil, %._crit_edge99.us.2.i.unr-lcssa
  %i.nv = add nuw i32 %.069100.us.2.i, 1          ; 2 uses
  %exitcond136.2.not.i = icmp eq i32 %i.nv, %i.lj
  br i1 %exitcond136.2.not.i, label %._crit_edge101.split.us.2.i, label %.preheader.us.2.i, !llvm.loop !655

._crit_edge101.split.us.2.i:                      ; preds = %._crit_edge99.us.2.i, %.preheader.lr.ph.us.2.i, %._crit_edge101.split.us.1.i
  %i.nw = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !30 ; 2 uses
  %.not112.3.i = icmp eq i32 %i.nx, 0
  br i1 %.not112.3.i, label %._crit_edge101.split.us.3.i, label %.preheader.lr.ph.us.3.i

.preheader.lr.ph.us.3.i:                          ; preds = %._crit_edge101.split.us.2.i
  %i.ny = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !30 ; 4 uses
  %.not113.3.i = icmp eq i32 %i.nz, 0
  br i1 %.not113.3.i, label %._crit_edge101.split.us.3.i, label %.preheader.lr.ph.split.us.3.i

.preheader.lr.ph.split.us.3.i:                    ; preds = %.preheader.lr.ph.us.3.i
  %i.oa = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !25
  %i.oc = getelementptr i8, ptr %i.ao, i64 %i.ob  ; 5 uses
  %wide.trip.count134.3.i = zext i32 %i.nz to i64 ; 2 uses
  %xtraiter208 = and i64 %wide.trip.count134.3.i, 3 ; 3 uses
  %i.od = icmp ult i32 %i.nz, 4
  %unroll_iter212 = and i64 %wide.trip.count134.3.i, 4294967292
  %lcmp.mod210.not = icmp eq i64 %xtraiter208, 0
  %lcmp.mod211 = icmp ne i64 %xtraiter208, 0
  br label %.preheader.us.3.i

.preheader.us.3.i:                                ; preds = %._crit_edge99.us.3.i, %.preheader.lr.ph.split.us.3.i
  %.069100.us.3.i = phi i32 [ 0, %.preheader.lr.ph.split.us.3.i ], [ %i.qc, %._crit_edge99.us.3.i ] ; 3 uses
  %i.oe = mul i32 %.069100.us.3.i, %3             ; 5 uses
  %i.of = mul i32 %.069100.us.3.i, %i.nz          ; 5 uses
  br i1 %i.od, label %.lr.ph.us104.3.i.epil.preheader, label %.lr.ph.us104.3.i

.lr.ph.us104.3.i:                                 ; preds = %.preheader.us.3.i, %.lr.ph.us104.3.i
  %indvars.iv131.3.i = phi i64 [ %indvars.iv.next132.3.i.3, %.lr.ph.us104.3.i ], [ 0, %.preheader.us.3.i ] ; 5 uses
  %niter213 = phi i64 [ %niter213.next.3, %.lr.ph.us104.3.i ], [ 0, %.preheader.us.3.i ]
  %i.og = trunc nuw i64 %indvars.iv131.3.i to i32 ; 2 uses
  %reass.add129 = add i32 %i.oe, %i.og
  %reass.mul130 = shl i32 %reass.add129, 2
  %i.oh = or disjoint i32 %reass.mul130, 2
  %i.oi = zext i32 %i.oh to i64
  %i.oj = mul nuw nsw i64 %i.oi, %i.ho
  %i.ok = add i32 %i.of, %i.og
  %i.ol = zext i32 %i.ok to i64
  %i.om = mul nuw nsw i64 %i.ol, %i.ho
  %i.on = getelementptr inbounds nuw i8, ptr %2, i64 %i.oj
  %i.oo = getelementptr i8, ptr %i.oc, i64 %i.om
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oo, ptr align 1 %i.on, i64 %i.ho, i1 false), !tbaa !29
  %i.op = trunc i64 %indvars.iv131.3.i to i32
  %i.oq = or disjoint i32 %i.op, 1                ; 2 uses
  %reass.add129.1 = add i32 %i.oe, %i.oq
  %reass.mul130.1 = shl i32 %reass.add129.1, 2
  %i.or = or disjoint i32 %reass.mul130.1, 2
  %i.os = zext i32 %i.or to i64
  %i.ot = mul nuw nsw i64 %i.os, %i.ho
  %i.ou = add i32 %i.of, %i.oq
  %i.ov = zext i32 %i.ou to i64
  %i.ow = mul nuw nsw i64 %i.ov, %i.ho
  %i.ox = getelementptr inbounds nuw i8, ptr %2, i64 %i.ot
  %i.oy = getelementptr i8, ptr %i.oc, i64 %i.ow
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oy, ptr align 1 %i.ox, i64 %i.ho, i1 false), !tbaa !29
  %i.oz = trunc i64 %indvars.iv131.3.i to i32
  %i.pa = or disjoint i32 %i.oz, 2                ; 2 uses
  %reass.add129.2 = add i32 %i.oe, %i.pa
  %reass.mul130.2 = shl i32 %reass.add129.2, 2
  %i.pb = or disjoint i32 %reass.mul130.2, 2
  %i.pc = zext i32 %i.pb to i64
  %i.pd = mul nuw nsw i64 %i.pc, %i.ho
  %i.pe = add i32 %i.of, %i.pa
  %i.pf = zext i32 %i.pe to i64
  %i.pg = mul nuw nsw i64 %i.pf, %i.ho
  %i.ph = getelementptr inbounds nuw i8, ptr %2, i64 %i.pd
  %i.pi = getelementptr i8, ptr %i.oc, i64 %i.pg
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pi, ptr align 1 %i.ph, i64 %i.ho, i1 false), !tbaa !29
  %i.pj = trunc i64 %indvars.iv131.3.i to i32
  %i.pk = or disjoint i32 %i.pj, 3                ; 2 uses
  %reass.add129.3 = add i32 %i.oe, %i.pk
  %reass.mul130.3 = shl i32 %reass.add129.3, 2
  %i.pl = or disjoint i32 %reass.mul130.3, 2
  %i.pm = zext i32 %i.pl to i64
  %i.pn = mul nuw nsw i64 %i.pm, %i.ho
  %i.po = add i32 %i.of, %i.pk
  %i.pp = zext i32 %i.po to i64
  %i.pq = mul nuw nsw i64 %i.pp, %i.ho
  %i.pr = getelementptr inbounds nuw i8, ptr %2, i64 %i.pn
  %i.ps = getelementptr i8, ptr %i.oc, i64 %i.pq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ps, ptr align 1 %i.pr, i64 %i.ho, i1 false), !tbaa !29
  %indvars.iv.next132.3.i.3 = add nuw nsw i64 %indvars.iv131.3.i, 4 ; 2 uses
  %niter213.next.3 = add i64 %niter213, 4         ; 2 uses
  %niter213.ncmp.3 = icmp eq i64 %niter213.next.3, %unroll_iter212
  br i1 %niter213.ncmp.3, label %._crit_edge99.us.3.i.unr-lcssa, label %.lr.ph.us104.3.i, !llvm.loop !653

._crit_edge99.us.3.i.unr-lcssa:                   ; preds = %.lr.ph.us104.3.i
  br i1 %lcmp.mod210.not, label %._crit_edge99.us.3.i, label %.lr.ph.us104.3.i.epil.preheader

.lr.ph.us104.3.i.epil.preheader:                  ; preds = %._crit_edge99.us.3.i.unr-lcssa, %.preheader.us.3.i
  %indvars.iv131.3.i.epil.init = phi i64 [ 0, %.preheader.us.3.i ], [ %indvars.iv.next132.3.i.3, %._crit_edge99.us.3.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod211)
  br label %.lr.ph.us104.3.i.epil

.lr.ph.us104.3.i.epil:                            ; preds = %.lr.ph.us104.3.i.epil, %.lr.ph.us104.3.i.epil.preheader
  %indvars.iv131.3.i.epil = phi i64 [ %indvars.iv.next132.3.i.epil, %.lr.ph.us104.3.i.epil ], [ %indvars.iv131.3.i.epil.init, %.lr.ph.us104.3.i.epil.preheader ] ; 2 uses
  %epil.iter209 = phi i64 [ %epil.iter209.next, %.lr.ph.us104.3.i.epil ], [ 0, %.lr.ph.us104.3.i.epil.preheader ]
  %i.pt = trunc nuw i64 %indvars.iv131.3.i.epil to i32 ; 2 uses
  %reass.add129.epil = add i32 %i.oe, %i.pt
  %reass.mul130.epil = shl i32 %reass.add129.epil, 2
  %i.pu = or disjoint i32 %reass.mul130.epil, 2
  %i.pv = zext i32 %i.pu to i64
  %i.pw = mul nuw nsw i64 %i.pv, %i.ho
  %i.px = add i32 %i.of, %i.pt
  %i.py = zext i32 %i.px to i64
  %i.pz = mul nuw nsw i64 %i.py, %i.ho
  %i.qa = getelementptr inbounds nuw i8, ptr %2, i64 %i.pw
  %i.qb = getelementptr i8, ptr %i.oc, i64 %i.pz
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qb, ptr align 1 %i.qa, i64 %i.ho, i1 false), !tbaa !29
  %indvars.iv.next132.3.i.epil = add nuw nsw i64 %indvars.iv131.3.i.epil, 1
  %epil.iter209.next = add i64 %epil.iter209, 1   ; 2 uses
  %epil.iter209.cmp.not = icmp eq i64 %epil.iter209.next, %xtraiter208
  br i1 %epil.iter209.cmp.not, label %._crit_edge99.us.3.i, label %.lr.ph.us104.3.i.epil, !llvm.loop !657

._crit_edge99.us.3.i:                             ; preds = %.lr.ph.us104.3.i.epil, %._crit_edge99.us.3.i.unr-lcssa
  %i.qc = add nuw i32 %.069100.us.3.i, 1          ; 2 uses
  %exitcond136.3.not.i = icmp eq i32 %i.qc, %i.nx
  br i1 %exitcond136.3.not.i, label %._crit_edge101.split.us.3.i, label %.preheader.us.3.i, !llvm.loop !655

._crit_edge101.split.us.3.i:                      ; preds = %._crit_edge99.us.3.i, %.preheader.lr.ph.us.3.i, %._crit_edge101.split.us.2.i
  %i.qd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.qe = load i32, ptr %i.qd, align 16, !tbaa !30 ; 2 uses
  %.not112.4.i = icmp eq i32 %i.qe, 0
  br i1 %.not112.4.i, label %._crit_edge101.split.us.4.i, label %.preheader.lr.ph.us.4.i

.preheader.lr.ph.us.4.i:                          ; preds = %._crit_edge101.split.us.3.i
  %i.qf = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.qg = load i32, ptr %i.qf, align 16, !tbaa !30 ; 4 uses
  %.not113.4.i = icmp eq i32 %i.qg, 0
  br i1 %.not113.4.i, label %._crit_edge101.split.us.4.i, label %.preheader.lr.ph.split.us.4.i

.preheader.lr.ph.split.us.4.i:                    ; preds = %.preheader.lr.ph.us.4.i
  %i.qh = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.qi = load i64, ptr %i.qh, align 16, !tbaa !25
  %i.qj = getelementptr i8, ptr %i.ao, i64 %i.qi  ; 5 uses
  %wide.trip.count134.4.i = zext i32 %i.qg to i64 ; 2 uses
  %xtraiter214 = and i64 %wide.trip.count134.4.i, 3 ; 3 uses
  %i.qk = icmp ult i32 %i.qg, 4
  %unroll_iter218 = and i64 %wide.trip.count134.4.i, 4294967292
  %lcmp.mod216.not = icmp eq i64 %xtraiter214, 0
  %lcmp.mod217 = icmp ne i64 %xtraiter214, 0
  br label %.preheader.us.4.i

.preheader.us.4.i:                                ; preds = %._crit_edge99.us.4.i, %.preheader.lr.ph.split.us.4.i
  %.069100.us.4.i = phi i32 [ 0, %.preheader.lr.ph.split.us.4.i ], [ %i.sq, %._crit_edge99.us.4.i ] ; 3 uses
  %i.ql = shl i32 %.069100.us.4.i, 2
  %i.qm = or disjoint i32 %i.ql, 2
  %i.qn = mul i32 %i.qm, %3                       ; 5 uses
  %i.qo = mul i32 %.069100.us.4.i, %i.qg          ; 5 uses
  br i1 %i.qk, label %.lr.ph.us104.4.i.epil.preheader, label %.lr.ph.us104.4.i

.lr.ph.us104.4.i:                                 ; preds = %.preheader.us.4.i, %.lr.ph.us104.4.i
  %indvars.iv131.4.i = phi i64 [ %indvars.iv.next132.4.i.3, %.lr.ph.us104.4.i ], [ 0, %.preheader.us.4.i ] ; 5 uses
  %niter219 = phi i64 [ %niter219.next.3, %.lr.ph.us104.4.i ], [ 0, %.preheader.us.4.i ]
  %i.qp = trunc nuw i64 %indvars.iv131.4.i to i32 ; 2 uses
  %i.qq = shl nsw i32 %i.qp, 1
  %i.qr = add i32 %i.qq, %i.qn
  %i.qs = zext i32 %i.qr to i64
  %i.qt = mul nuw nsw i64 %i.qs, %i.ho
  %i.qu = add i32 %i.qo, %i.qp
  %i.qv = zext i32 %i.qu to i64
  %i.qw = mul nuw nsw i64 %i.qv, %i.ho
  %i.qx = getelementptr inbounds nuw i8, ptr %2, i64 %i.qt
  %i.qy = getelementptr i8, ptr %i.qj, i64 %i.qw
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qy, ptr align 1 %i.qx, i64 %i.ho, i1 false), !tbaa !29
  %i.qz = trunc i64 %indvars.iv131.4.i to i32
  %i.ra = or disjoint i32 %i.qz, 1                ; 2 uses
  %i.rb = shl nsw i32 %i.ra, 1
  %i.rc = add i32 %i.rb, %i.qn
  %i.rd = zext i32 %i.rc to i64
  %i.re = mul nuw nsw i64 %i.rd, %i.ho
  %i.rf = add i32 %i.qo, %i.ra
  %i.rg = zext i32 %i.rf to i64
  %i.rh = mul nuw nsw i64 %i.rg, %i.ho
  %i.ri = getelementptr inbounds nuw i8, ptr %2, i64 %i.re
  %i.rj = getelementptr i8, ptr %i.qj, i64 %i.rh
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rj, ptr align 1 %i.ri, i64 %i.ho, i1 false), !tbaa !29
  %i.rk = trunc i64 %indvars.iv131.4.i to i32
  %i.rl = or disjoint i32 %i.rk, 2                ; 2 uses
  %i.rm = shl nsw i32 %i.rl, 1
  %i.rn = add i32 %i.rm, %i.qn
  %i.ro = zext i32 %i.rn to i64
  %i.rp = mul nuw nsw i64 %i.ro, %i.ho
  %i.rq = add i32 %i.qo, %i.rl
  %i.rr = zext i32 %i.rq to i64
  %i.rs = mul nuw nsw i64 %i.rr, %i.ho
  %i.rt = getelementptr inbounds nuw i8, ptr %2, i64 %i.rp
  %i.ru = getelementptr i8, ptr %i.qj, i64 %i.rs
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ru, ptr align 1 %i.rt, i64 %i.ho, i1 false), !tbaa !29
  %i.rv = trunc i64 %indvars.iv131.4.i to i32
  %i.rw = or disjoint i32 %i.rv, 3                ; 2 uses
  %i.rx = shl nsw i32 %i.rw, 1
  %i.ry = add i32 %i.rx, %i.qn
  %i.rz = zext i32 %i.ry to i64
  %i.sa = mul nuw nsw i64 %i.rz, %i.ho
  %i.sb = add i32 %i.qo, %i.rw
  %i.sc = zext i32 %i.sb to i64
  %i.sd = mul nuw nsw i64 %i.sc, %i.ho
  %i.se = getelementptr inbounds nuw i8, ptr %2, i64 %i.sa
  %i.sf = getelementptr i8, ptr %i.qj, i64 %i.sd
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sf, ptr align 1 %i.se, i64 %i.ho, i1 false), !tbaa !29
  %indvars.iv.next132.4.i.3 = add nuw nsw i64 %indvars.iv131.4.i, 4 ; 2 uses
  %niter219.next.3 = add i64 %niter219, 4         ; 2 uses
  %niter219.ncmp.3 = icmp eq i64 %niter219.next.3, %unroll_iter218
  br i1 %niter219.ncmp.3, label %._crit_edge99.us.4.i.unr-lcssa, label %.lr.ph.us104.4.i, !llvm.loop !653

._crit_edge99.us.4.i.unr-lcssa:                   ; preds = %.lr.ph.us104.4.i
  br i1 %lcmp.mod216.not, label %._crit_edge99.us.4.i, label %.lr.ph.us104.4.i.epil.preheader

.lr.ph.us104.4.i.epil.preheader:                  ; preds = %._crit_edge99.us.4.i.unr-lcssa, %.preheader.us.4.i
  %indvars.iv131.4.i.epil.init = phi i64 [ 0, %.preheader.us.4.i ], [ %indvars.iv.next132.4.i.3, %._crit_edge99.us.4.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod217)
  br label %.lr.ph.us104.4.i.epil

.lr.ph.us104.4.i.epil:                            ; preds = %.lr.ph.us104.4.i.epil, %.lr.ph.us104.4.i.epil.preheader
  %indvars.iv131.4.i.epil = phi i64 [ %indvars.iv.next132.4.i.epil, %.lr.ph.us104.4.i.epil ], [ %indvars.iv131.4.i.epil.init, %.lr.ph.us104.4.i.epil.preheader ] ; 2 uses
  %epil.iter215 = phi i64 [ %epil.iter215.next, %.lr.ph.us104.4.i.epil ], [ 0, %.lr.ph.us104.4.i.epil.preheader ]
  %i.sg = trunc nuw i64 %indvars.iv131.4.i.epil to i32 ; 2 uses
  %i.sh = shl i32 %i.sg, 1
  %i.si = add i32 %i.sh, %i.qn
  %i.sj = zext i32 %i.si to i64
  %i.sk = mul nuw nsw i64 %i.sj, %i.ho
  %i.sl = add i32 %i.qo, %i.sg
  %i.sm = zext i32 %i.sl to i64
  %i.sn = mul nuw nsw i64 %i.sm, %i.ho
  %i.so = getelementptr inbounds nuw i8, ptr %2, i64 %i.sk
  %i.sp = getelementptr i8, ptr %i.qj, i64 %i.sn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sp, ptr align 1 %i.so, i64 %i.ho, i1 false), !tbaa !29
  %indvars.iv.next132.4.i.epil = add nuw nsw i64 %indvars.iv131.4.i.epil, 1
  %epil.iter215.next = add i64 %epil.iter215, 1   ; 2 uses
  %epil.iter215.cmp.not = icmp eq i64 %epil.iter215.next, %xtraiter214
  br i1 %epil.iter215.cmp.not, label %._crit_edge99.us.4.i, label %.lr.ph.us104.4.i.epil, !llvm.loop !658

._crit_edge99.us.4.i:                             ; preds = %.lr.ph.us104.4.i.epil, %._crit_edge99.us.4.i.unr-lcssa
  %i.sq = add nuw i32 %.069100.us.4.i, 1          ; 2 uses
  %exitcond136.4.not.i = icmp eq i32 %i.sq, %i.qe
  br i1 %exitcond136.4.not.i, label %._crit_edge101.split.us.4.i, label %.preheader.us.4.i, !llvm.loop !655

._crit_edge101.split.us.4.i:                      ; preds = %._crit_edge99.us.4.i, %.preheader.lr.ph.us.4.i, %._crit_edge101.split.us.3.i
  %i.sr = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !30 ; 2 uses
  %.not112.5.i = icmp eq i32 %i.ss, 0
  br i1 %.not112.5.i, label %._crit_edge101.split.us.5.i, label %.preheader.lr.ph.us.5.i

.preheader.lr.ph.us.5.i:                          ; preds = %._crit_edge101.split.us.4.i
  %i.st = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.su = load i32, ptr %i.st, align 4, !tbaa !30 ; 4 uses
  %.not113.5.i = icmp eq i32 %i.su, 0
  br i1 %.not113.5.i, label %._crit_edge101.split.us.5.i, label %.preheader.lr.ph.split.us.5.i

.preheader.lr.ph.split.us.5.i:                    ; preds = %.preheader.lr.ph.us.5.i
  %i.sv = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.sw = load i64, ptr %i.sv, align 8, !tbaa !25
  %i.sx = getelementptr i8, ptr %i.ao, i64 %i.sw  ; 5 uses
  %wide.trip.count134.5.i = zext i32 %i.su to i64 ; 2 uses
  %xtraiter220 = and i64 %wide.trip.count134.5.i, 3 ; 3 uses
  %i.sy = icmp ult i32 %i.su, 4
  %unroll_iter224 = and i64 %wide.trip.count134.5.i, 4294967292
  %lcmp.mod222.not = icmp eq i64 %xtraiter220, 0
  %lcmp.mod223 = icmp ne i64 %xtraiter220, 0
  br label %.preheader.us.5.i

.preheader.us.5.i:                                ; preds = %._crit_edge99.us.5.i, %.preheader.lr.ph.split.us.5.i
  %.069100.us.5.i = phi i32 [ 0, %.preheader.lr.ph.split.us.5.i ], [ %i.ux, %._crit_edge99.us.5.i ] ; 3 uses
  %i.sz = mul i32 %.069100.us.5.i, %3             ; 5 uses
  %i.ta = mul i32 %.069100.us.5.i, %i.su          ; 5 uses
  br i1 %i.sy, label %.lr.ph.us104.5.i.epil.preheader, label %.lr.ph.us104.5.i

.lr.ph.us104.5.i:                                 ; preds = %.preheader.us.5.i, %.lr.ph.us104.5.i
  %indvars.iv131.5.i = phi i64 [ %indvars.iv.next132.5.i.3, %.lr.ph.us104.5.i ], [ 0, %.preheader.us.5.i ] ; 5 uses
  %niter225 = phi i64 [ %niter225.next.3, %.lr.ph.us104.5.i ], [ 0, %.preheader.us.5.i ]
  %i.tb = trunc nuw i64 %indvars.iv131.5.i to i32 ; 2 uses
  %reass.add131 = add i32 %i.sz, %i.tb
  %reass.mul132 = shl i32 %reass.add131, 1
  %i.tc = or disjoint i32 %reass.mul132, 1
  %i.td = zext i32 %i.tc to i64
  %i.te = mul nuw nsw i64 %i.td, %i.ho
  %i.tf = add i32 %i.ta, %i.tb
  %i.tg = zext i32 %i.tf to i64
  %i.th = mul nuw nsw i64 %i.tg, %i.ho
  %i.ti = getelementptr inbounds nuw i8, ptr %2, i64 %i.te
  %i.tj = getelementptr i8, ptr %i.sx, i64 %i.th
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tj, ptr align 1 %i.ti, i64 %i.ho, i1 false), !tbaa !29
  %i.tk = trunc i64 %indvars.iv131.5.i to i32
  %i.tl = or disjoint i32 %i.tk, 1                ; 2 uses
  %reass.add131.1 = add i32 %i.sz, %i.tl
  %reass.mul132.1 = shl i32 %reass.add131.1, 1
  %i.tm = or disjoint i32 %reass.mul132.1, 1
  %i.tn = zext i32 %i.tm to i64
  %i.to = mul nuw nsw i64 %i.tn, %i.ho
  %i.tp = add i32 %i.ta, %i.tl
  %i.tq = zext i32 %i.tp to i64
  %i.tr = mul nuw nsw i64 %i.tq, %i.ho
  %i.ts = getelementptr inbounds nuw i8, ptr %2, i64 %i.to
  %i.tt = getelementptr i8, ptr %i.sx, i64 %i.tr
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tt, ptr align 1 %i.ts, i64 %i.ho, i1 false), !tbaa !29
  %i.tu = trunc i64 %indvars.iv131.5.i to i32
  %i.tv = or disjoint i32 %i.tu, 2                ; 2 uses
  %reass.add131.2 = add i32 %i.sz, %i.tv
  %reass.mul132.2 = shl i32 %reass.add131.2, 1
  %i.tw = or disjoint i32 %reass.mul132.2, 1
  %i.tx = zext i32 %i.tw to i64
  %i.ty = mul nuw nsw i64 %i.tx, %i.ho
  %i.tz = add i32 %i.ta, %i.tv
  %i.ua = zext i32 %i.tz to i64
  %i.ub = mul nuw nsw i64 %i.ua, %i.ho
  %i.uc = getelementptr inbounds nuw i8, ptr %2, i64 %i.ty
  %i.ud = getelementptr i8, ptr %i.sx, i64 %i.ub
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ud, ptr align 1 %i.uc, i64 %i.ho, i1 false), !tbaa !29
  %i.ue = trunc i64 %indvars.iv131.5.i to i32
  %i.uf = or disjoint i32 %i.ue, 3                ; 2 uses
  %reass.add131.3 = add i32 %i.sz, %i.uf
  %reass.mul132.3 = shl i32 %reass.add131.3, 1
  %i.ug = or disjoint i32 %reass.mul132.3, 1
  %i.uh = zext i32 %i.ug to i64
  %i.ui = mul nuw nsw i64 %i.uh, %i.ho
  %i.uj = add i32 %i.ta, %i.uf
  %i.uk = zext i32 %i.uj to i64
  %i.ul = mul nuw nsw i64 %i.uk, %i.ho
  %i.um = getelementptr inbounds nuw i8, ptr %2, i64 %i.ui
  %i.un = getelementptr i8, ptr %i.sx, i64 %i.ul
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.un, ptr align 1 %i.um, i64 %i.ho, i1 false), !tbaa !29
  %indvars.iv.next132.5.i.3 = add nuw nsw i64 %indvars.iv131.5.i, 4 ; 2 uses
  %niter225.next.3 = add i64 %niter225, 4         ; 2 uses
  %niter225.ncmp.3 = icmp eq i64 %niter225.next.3, %unroll_iter224
  br i1 %niter225.ncmp.3, label %._crit_edge99.us.5.i.unr-lcssa, label %.lr.ph.us104.5.i, !llvm.loop !653

._crit_edge99.us.5.i.unr-lcssa:                   ; preds = %.lr.ph.us104.5.i
  br i1 %lcmp.mod222.not, label %._crit_edge99.us.5.i, label %.lr.ph.us104.5.i.epil.preheader

.lr.ph.us104.5.i.epil.preheader:                  ; preds = %._crit_edge99.us.5.i.unr-lcssa, %.preheader.us.5.i
  %indvars.iv131.5.i.epil.init = phi i64 [ 0, %.preheader.us.5.i ], [ %indvars.iv.next132.5.i.3, %._crit_edge99.us.5.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod223)
  br label %.lr.ph.us104.5.i.epil

.lr.ph.us104.5.i.epil:                            ; preds = %.lr.ph.us104.5.i.epil, %.lr.ph.us104.5.i.epil.preheader
  %indvars.iv131.5.i.epil = phi i64 [ %indvars.iv.next132.5.i.epil, %.lr.ph.us104.5.i.epil ], [ %indvars.iv131.5.i.epil.init, %.lr.ph.us104.5.i.epil.preheader ] ; 2 uses
  %epil.iter221 = phi i64 [ %epil.iter221.next, %.lr.ph.us104.5.i.epil ], [ 0, %.lr.ph.us104.5.i.epil.preheader ]
  %i.uo = trunc nuw i64 %indvars.iv131.5.i.epil to i32 ; 2 uses
  %reass.add131.epil = add i32 %i.sz, %i.uo
  %reass.mul132.epil = shl i32 %reass.add131.epil, 1
  %i.up = or disjoint i32 %reass.mul132.epil, 1
  %i.uq = zext i32 %i.up to i64
  %i.ur = mul nuw nsw i64 %i.uq, %i.ho
  %i.us = add i32 %i.ta, %i.uo
  %i.ut = zext i32 %i.us to i64
  %i.uu = mul nuw nsw i64 %i.ut, %i.ho
  %i.uv = getelementptr inbounds nuw i8, ptr %2, i64 %i.ur
  %i.uw = getelementptr i8, ptr %i.sx, i64 %i.uu
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uw, ptr align 1 %i.uv, i64 %i.ho, i1 false), !tbaa !29
  %indvars.iv.next132.5.i.epil = add nuw nsw i64 %indvars.iv131.5.i.epil, 1
  %epil.iter221.next = add i64 %epil.iter221, 1   ; 2 uses
  %epil.iter221.cmp.not = icmp eq i64 %epil.iter221.next, %xtraiter220
  br i1 %epil.iter221.cmp.not, label %._crit_edge99.us.5.i, label %.lr.ph.us104.5.i.epil, !llvm.loop !659

._crit_edge99.us.5.i:                             ; preds = %.lr.ph.us104.5.i.epil, %._crit_edge99.us.5.i.unr-lcssa
  %i.ux = add nuw i32 %.069100.us.5.i, 1          ; 2 uses
  %exitcond136.5.not.i = icmp eq i32 %i.ux, %i.ss
  br i1 %exitcond136.5.not.i, label %._crit_edge101.split.us.5.i, label %.preheader.us.5.i, !llvm.loop !655

._crit_edge101.split.us.5.i:                      ; preds = %._crit_edge99.us.5.i, %.preheader.lr.ph.us.5.i, %._crit_edge101.split.us.4.i
  %i.uy = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.uz = load i32, ptr %i.uy, align 8, !tbaa !30 ; 2 uses
  %.not112.6.i = icmp eq i32 %i.uz, 0
  br i1 %.not112.6.i, label %_ZL15Adam7_interlacePhPKhjjj.exit, label %.preheader.lr.ph.us.6.i

.preheader.lr.ph.us.6.i:                          ; preds = %._crit_edge101.split.us.5.i
  %i.va = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.vb = load i32, ptr %i.va, align 8, !tbaa !30 ; 4 uses
  %.not113.6.i = icmp eq i32 %i.vb, 0
  br i1 %.not113.6.i, label %_ZL15Adam7_interlacePhPKhjjj.exit, label %.preheader.lr.ph.split.us.6.i

.preheader.lr.ph.split.us.6.i:                    ; preds = %.preheader.lr.ph.us.6.i
  %i.vc = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.vd = load i64, ptr %i.vc, align 16, !tbaa !25
  %i.ve = getelementptr i8, ptr %i.ao, i64 %i.vd  ; 5 uses
  %wide.trip.count134.6.i = zext i32 %i.vb to i64 ; 2 uses
  %xtraiter226 = and i64 %wide.trip.count134.6.i, 3 ; 3 uses
  %i.vf = icmp ult i32 %i.vb, 4
  %unroll_iter230 = and i64 %wide.trip.count134.6.i, 4294967292
  %lcmp.mod228.not = icmp eq i64 %xtraiter226, 0
  %lcmp.mod229 = icmp ne i64 %xtraiter226, 0
  br label %.preheader.us.6.i

.preheader.us.6.i:                                ; preds = %._crit_edge99.us.6.i, %.preheader.lr.ph.split.us.6.i
  %.069100.us.6.i = phi i32 [ 0, %.preheader.lr.ph.split.us.6.i ], [ %i.xg, %._crit_edge99.us.6.i ] ; 3 uses
  %i.vg = shl i32 %.069100.us.6.i, 1
  %i.vh = or disjoint i32 %i.vg, 1
  %i.vi = mul i32 %i.vh, %3                       ; 5 uses
  %i.vj = mul i32 %.069100.us.6.i, %i.vb          ; 5 uses
  br i1 %i.vf, label %.lr.ph.us104.6.i.epil.preheader, label %.lr.ph.us104.6.i

end_hunk_0
