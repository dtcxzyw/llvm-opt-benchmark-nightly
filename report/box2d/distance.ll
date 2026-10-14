Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/distance?download=true
inline.NumInlined: 184
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 12
begin_hunk_0_@b2ShapeDistance:bb.a
  br label %b2SolveSimplex2.exit.thread

bb.x:                                             ; preds = %bb.v
  %i.ig = fcmp ogt float %i.gh, 0.000000e+00
  %i.ih = fcmp olt float %i.ge, 0.000000e+00
  %or.cond15.i = select i1 %i.ig, i1 %i.ih, i1 false
  %i.ii = extractelement <3 x float> %i.gs, i64 0 ; 2 uses
  %i.ij = fcmp ole float %i.ii, 0.000000e+00
  %or.cond17.i = select i1 %or.cond15.i, i1 %i.ij, i1 false
  br i1 %or.cond17.i, label %bb.y, label %.lr.ph.i95

bb.y:                                             ; preds = %bb.x
  %i.ik = fsub float %i.gh, %i.ge
  %i.il = fdiv float 1.000000e+00, %i.ik          ; 2 uses
  %i.im = fmul float %i.gh, %i.il
  store float %i.im, ptr %i.cy, align 4, !tbaa !51
  %i.in = fmul float %i.il, %i.gi
  store float %i.in, ptr %i.cz, align 8, !tbaa !53
  store i32 2, ptr %i.ak, align 4, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(36) %i.ao, i64 36, i1 false), !tbaa.struct !52
  %i.io = fadd <2 x float> %.sroa.093.0.copyload.i, %.sroa.084.0.copyload.i
  %i.ip = fmul <2 x float> %i.io, %i.fz           ; 2 uses
  %shift355 = shufflevector <2 x float> %i.ip, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop356 = fsub <2 x float> %i.ip, %shift355 ; 2 uses
  %i.iq = extractelement <2 x float> %foldExtExtBinop356, i64 0
  %i.ir = fneg float %i.iq
  %i.is = insertelement <2 x float> poison, float %i.ir, i64 0
  %i.it = shufflevector <2 x float> %i.is, <2 x float> %foldExtExtBinop356, <2 x i32> <i32 0, i32 2>
  %i.iu = fmul <2 x float> %i.fz, %i.it
  br label %b2SolveSimplex2.exit.thread

.lr.ph.i95:                                       ; preds = %bb.x
  %i.iv = fadd float %i.ii, %i.hn
  %i.iw = fadd float %i.gy, %i.iv
  %i.ix = fdiv float 1.000000e+00, %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !46
  %i.ja = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !47
  %i.jc = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !46
  %i.je = getelementptr inbounds nuw i8, ptr %9, i64 68
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !47
  %i.jg = getelementptr inbounds nuw i8, ptr %9, i64 100
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !46
  %i.ji = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !47
  %i.jk = and i32 %i.jj, 255
  %.sroa.10.0.insert.ext = zext nneg i32 %i.jk to i64
  %.sroa.10.0.insert.shift = shl nuw i64 %.sroa.10.0.insert.ext, 56
  %i.jl = and i32 %i.jf, 255
  %.sroa.9.0.insert.ext = zext nneg i32 %i.jl to i64
  %.sroa.9.0.insert.shift = shl nuw nsw i64 %.sroa.9.0.insert.ext, 48
  %.sroa.9.0.insert.insert = or disjoint i64 %.sroa.10.0.insert.shift, %.sroa.9.0.insert.shift
  %i.jm = and i32 %i.jb, 255
  %.sroa.8.0.insert.ext = zext nneg i32 %i.jm to i64
  %.sroa.8.0.insert.shift = shl nuw nsw i64 %.sroa.8.0.insert.ext, 40
  %.sroa.8.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.insert, %.sroa.8.0.insert.shift
  %i.jn = and i32 %i.jh, 255
  %.sroa.7.0.insert.ext = zext nneg i32 %i.jn to i64
  %.sroa.7.0.insert.shift = shl nuw nsw i64 %.sroa.7.0.insert.ext, 32
  %.sroa.7.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.insert, %.sroa.7.0.insert.shift
  %i.jo = shl i32 %i.jd, 24
  %.sroa.6285.0.insert.shift = zext i32 %i.jo to i64
  %.sroa.6285.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.insert, %.sroa.6285.0.insert.shift
  %i.jp = shl i32 %i.iz, 16
  %i.jq = and i32 %i.jp, 16711680
  %.sroa.5.0.insert.shift.masked = zext nneg i32 %i.jq to i64
  %.sroa.0284.0.insert.mask = or disjoint i64 %.sroa.6285.0.insert.insert, %.sroa.5.0.insert.shift.masked
  %.sroa.0284.0.insert.insert = or i64 %.sroa.0284.0.insert.mask, 3
  store i64 %.sroa.0284.0.insert.insert, ptr %2, align 2
  %i.jr = load <2 x float>, ptr %9, align 8
  %i.js = load <2 x float>, ptr %i.am, align 4
  %i.jt = load <2 x float>, ptr %i.ao, align 8
  %i.ju = insertelement <3 x float> poison, float %i.ix, i64 0
  %i.jv = shufflevector <3 x float> %i.ju, <3 x float> poison, <3 x i32> zeroinitializer
  %i.jw = fmul <3 x float> %i.gs, %i.jv           ; 3 uses
  %i.jx = shufflevector <3 x float> %i.jw, <3 x float> poison, <2 x i32> zeroinitializer
  %i.jy = fmul <2 x float> %i.jx, %i.jr
  %i.jz = shufflevector <3 x float> %i.jw, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ka = fmul <2 x float> %i.jz, %i.js
  %i.kb = fadd <2 x float> %i.jy, %i.ka
  %i.kc = shufflevector <3 x float> %i.jw, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.kd = fmul <2 x float> %i.kc, %i.jt
  %i.ke = fadd <2 x float> %i.kb, %i.kd           ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float 0.000000e+00, ptr %i.kf, align 4, !tbaa !22
  store <2 x float> %i.ke, ptr %0, align 4, !tbaa !10
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.ke, ptr %i.kg, align 4, !tbaa !10
  br label %.thread

b2SolveSimplex2.exit.thread:                      ; preds = %bb.h, %._crit_edge256, %bb.l, %bb.m, %bb.q, %bb.s, %bb.u, %bb.w, %bb.y, %bb.j, %bb.o
  %.sroa.031.0227 = phi <2 x float> [ %i.eq, %bb.j ], [ %i.gv, %bb.o ], [ %i.iu, %bb.y ], [ %i.if, %bb.w ], [ %i.ic, %bb.u ], [ %i.hz, %bb.s ], [ %i.hk, %bb.q ], [ %i.eu, %bb.l ], [ %i.ff, %bb.m ], [ %i.ej, %bb.h ], [ zeroinitializer, %._crit_edge256 ] ; 10 uses
  %i.kh = phi i32 [ 1, %bb.j ], [ 1, %bb.o ], [ 2, %bb.y ], [ 1, %bb.w ], [ 1, %bb.u ], [ 2, %bb.s ], [ 2, %bb.q ], [ 1, %bb.l ], [ 2, %bb.m ], [ 1, %bb.h ], [ %i.dh, %._crit_edge256 ] ; 9 uses
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %.sroa.031.0227, i64 1
  %i.ki = fmul <2 x float> %.sroa.031.0227, %.sroa.031.0227
  %i.kj = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ki) ; 3 uses
  %i.kk = fcmp olt float %i.kj, f0x057A0000
  br i1 %i.kk, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %b2SolveSimplex2.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %6, align 8
  %i.kl = trunc i32 %i.kh to i16
  store i16 %i.kl, ptr %6, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr %9, ptr %i.b, align 16, !tbaa !45
  %i.km = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.am, ptr %i.km, align 8, !tbaa !45
  %i.kn = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.ao, ptr %i.kn, align 16, !tbaa !45
  %i.ko = icmp sgt i32 %i.kh, 0
  br i1 %i.ko, label %.lr.ph.i104, label %b2MakeSimplexCache.exit109

.lr.ph.i104:                                      ; preds = %bb.z
  %i.kp = getelementptr inbounds nuw i8, ptr %6, i64 2 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %6, i64 5 ; 3 uses
  %wide.trip.count.i105 = zext nneg i32 %i.kh to i64 ; 2 uses
  %xtraiter410 = and i64 %wide.trip.count.i105, 1
  %i.kr = icmp eq i32 %i.kh, 1
  br i1 %i.kr, label %.epil.preheader409, label %.lr.ph.i104.new

.lr.ph.i104.new:                                  ; preds = %.lr.ph.i104
  %unroll_iter413 = and i64 %wide.trip.count.i105, 2147483646
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i104.new
  %indvars.iv.i106 = phi i64 [ 0, %.lr.ph.i104.new ], [ %indvars.iv.next.i107.1, %bb.aa ] ; 5 uses
  %niter414 = phi i64 [ 0, %.lr.ph.i104.new ], [ %niter414.next.1, %bb.aa ]
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i106
  %i.kt = load ptr, ptr %i.ks, align 16, !tbaa !45 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 28
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !46
  %i.kw = trunc i32 %i.kv to i8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kp, i64 %indvars.iv.i106
  store i8 %i.kw, ptr %i.kx, align 2, !tbaa !18
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kt, i64 32
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !47
  %i.la = trunc i32 %i.kz to i8
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kq, i64 %indvars.iv.i106
  store i8 %i.la, ptr %i.lb, align 1, !tbaa !18
  %indvars.iv.next.i107 = or disjoint i64 %indvars.iv.i106, 1 ; 3 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i107
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !45 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 28
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !46
  %i.lg = trunc i32 %i.lf to i8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kp, i64 %indvars.iv.next.i107
  store i8 %i.lg, ptr %i.lh, align 1, !tbaa !18
  %i.li = getelementptr inbounds nuw i8, ptr %i.ld, i64 32
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !47
  %i.lk = trunc i32 %i.lj to i8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kq, i64 %indvars.iv.next.i107
  store i8 %i.lk, ptr %i.ll, align 2, !tbaa !18
  %indvars.iv.next.i107.1 = add nuw nsw i64 %indvars.iv.i106, 2 ; 2 uses
  %niter414.next.1 = add i64 %niter414, 2         ; 2 uses
  %niter414.ncmp.1 = icmp eq i64 %niter414.next.1, %unroll_iter413
  br i1 %niter414.ncmp.1, label %b2MakeSimplexCache.exit109.loopexit.unr-lcssa, label %bb.aa, !llvm.loop !34

b2MakeSimplexCache.exit109.loopexit.unr-lcssa:    ; preds = %bb.aa
  %lcmp.mod411.not = icmp eq i64 %xtraiter410, 0
  br i1 %lcmp.mod411.not, label %b2MakeSimplexCache.exit109, label %.epil.preheader409

.epil.preheader409:                               ; preds = %b2MakeSimplexCache.exit109.loopexit.unr-lcssa, %.lr.ph.i104
  %indvars.iv.i106.epil.init = phi i64 [ 0, %.lr.ph.i104 ], [ %indvars.iv.next.i107.1, %b2MakeSimplexCache.exit109.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod412 = trunc i32 %i.kh to i1
  call void @llvm.assume(i1 %lcmp.mod412)
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i106.epil.init
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !45 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 28
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !46
  %i.lq = trunc i32 %i.lp to i8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kp, i64 %indvars.iv.i106.epil.init
  store i8 %i.lq, ptr %i.lr, align 1, !tbaa !18
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ln, i64 32
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !47
  %i.lu = trunc i32 %i.lt to i8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kq, i64 %indvars.iv.i106.epil.init
  store i8 %i.lu, ptr %i.lv, align 1, !tbaa !18
  br label %b2MakeSimplexCache.exit109

b2MakeSimplexCache.exit109:                       ; preds = %.epil.preheader409, %b2MakeSimplexCache.exit109.loopexit.unr-lcssa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.lw = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store i64 %i.lw, ptr %2, align 2
  switch i32 %i.kh, label %b2ComputeWitnessPoints.exit130 [
    i32 1, label %bb.ab
    i32 2, label %bb.ac
    i32 3, label %bb.ad
  ]

bb.ab:                                            ; preds = %b2MakeSimplexCache.exit109
  %i.lx = load <2 x float>, ptr %9, align 8, !tbaa !10
  %i.ly = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.lz = load <2 x float>, ptr %i.ly, align 8, !tbaa !10
  br label %b2ComputeWitnessPoints.exit130

bb.ac:                                            ; preds = %b2MakeSimplexCache.exit109
  %10 = load <4 x float>, ptr %i.da, align 8
  %11 = load <4 x float>, ptr %i.cy, align 4
  %i.ma = load <2 x float>, ptr %9, align 8
  %i.mb = load <2 x float>, ptr %i.am, align 4
  %i.mc = shufflevector <4 x float> %10, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.md = fmul <2 x float> %i.mc, %i.ma
  %i.me = shufflevector <4 x float> %11, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mf = fmul <2 x float> %i.me, %i.mb
  %i.mg = fadd <2 x float> %i.md, %i.mf
  %i.mh = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.mi = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.mj = load <2 x float>, ptr %i.mh, align 8
  %i.mk = load <2 x float>, ptr %i.mi, align 4
  %i.ml = fmul <2 x float> %i.mc, %i.mj
  %i.mm = fmul <2 x float> %i.me, %i.mk
  %i.mn = fadd <2 x float> %i.ml, %i.mm
  br label %b2ComputeWitnessPoints.exit130

bb.ad:                                            ; preds = %b2MakeSimplexCache.exit109
  %12 = load <4 x float>, ptr %i.da, align 8
  %13 = load <4 x float>, ptr %i.cy, align 4
  %14 = load <4 x float>, ptr %i.cz, align 8
  %i.mo = load <2 x float>, ptr %9, align 8
  %i.mp = load <2 x float>, ptr %i.am, align 4
  %i.mq = load <2 x float>, ptr %i.ao, align 8
  %i.mr = shufflevector <4 x float> %12, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ms = fmul <2 x float> %i.mr, %i.mo
  %i.mt = shufflevector <4 x float> %13, <4 x float> poison, <2 x i32> zeroinitializer
  %i.mu = fmul <2 x float> %i.mt, %i.mp
  %i.mv = fadd <2 x float> %i.ms, %i.mu
  %i.mw = shufflevector <4 x float> %14, <4 x float> poison, <2 x i32> zeroinitializer
  %i.mx = fmul <2 x float> %i.mw, %i.mq
  %i.my = fadd <2 x float> %i.mv, %i.mx           ; 2 uses
  br label %b2ComputeWitnessPoints.exit130

b2ComputeWitnessPoints.exit130:                   ; preds = %b2MakeSimplexCache.exit109, %bb.ab, %bb.ac, %bb.ad
  %.sroa.0216.0 = phi <2 x float> [ %i.my, %bb.ad ], [ %i.lx, %bb.ab ], [ %i.mg, %bb.ac ], [ zeroinitializer, %b2MakeSimplexCache.exit109 ]
  %.sroa.0213.0 = phi <2 x float> [ %i.my, %bb.ad ], [ %i.lz, %bb.ab ], [ %i.mn, %bb.ac ], [ zeroinitializer, %b2MakeSimplexCache.exit109 ]
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float 0.000000e+00, ptr %i.mz, align 4, !tbaa !22
  store <2 x float> %.sroa.0216.0, ptr %0, align 4, !tbaa !10
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %.sroa.0213.0, ptr %i.na, align 4, !tbaa !10
  br label %.thread

bb.ae:                                            ; preds = %b2SolveSimplex2.exit.thread
  %i.nb = sext i32 %i.kh to i64
  %i.nc = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.nb
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !45 ; 5 uses
  %i.ne = load i32, ptr %i.db, align 4, !tbaa !13 ; 3 uses
  %i.nf = icmp sgt i32 %i.ne, 1
  br i1 %i.nf, label %.lr.ph.preheader.i, label %b2FindSupport.exit

.lr.ph.preheader.i:                               ; preds = %bb.ae
  %i.ng = load <2 x float>, ptr %1, align 4
  %i.nh = fmul <2 x float> %.sroa.031.0227, %i.ng ; 2 uses
  %shift358 = shufflevector <2 x float> %i.nh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop359 = fadd <2 x float> %i.nh, %shift358
  %i.ni = extractelement <2 x float> %foldExtExtBinop359, i64 0 ; 2 uses
  %wide.trip.count.i135 = zext nneg i32 %i.ne to i64
  %i.nj = add nsw i64 %wide.trip.count.i135, -1   ; 3 uses
  %xtraiter391 = and i64 %i.nj, 1
  %i.nk = icmp eq i32 %i.ne, 2
  br i1 %i.nk, label %.lr.ph.i136.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter395 = and i64 %i.nj, -2
  br label %.lr.ph.i136

.lr.ph.i136:                                      ; preds = %.lr.ph.i136, %.lr.ph.preheader.i.new
  %indvars.iv.i137 = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i138.1, %.lr.ph.i136 ] ; 4 uses
  %.01322.i = phi float [ %i.ni, %.lr.ph.preheader.i.new ], [ %.1.i.1, %.lr.ph.i136 ] ; 2 uses
  %.01421.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %.115.i.1, %.lr.ph.i136 ]
  %niter396 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter396.next.1, %.lr.ph.i136 ]
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i137
  %i.nm = load <2 x float>, ptr %i.nl, align 4
  %i.nn = fmul <2 x float> %.sroa.031.0227, %i.nm
  %i.no = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.nn) ; 2 uses
  %i.np = fcmp ogt float %i.no, %.01322.i         ; 2 uses
  %i.nq = trunc nuw nsw i64 %indvars.iv.i137 to i32
  %.115.i = select i1 %i.np, i32 %i.nq, i32 %.01421.i
  %.1.i = select i1 %i.np, float %i.no, float %.01322.i ; 2 uses
  %indvars.iv.next.i138 = add nuw nsw i64 %indvars.iv.i137, 1 ; 2 uses
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i138
  %i.ns = load <2 x float>, ptr %i.nr, align 4
  %i.nt = fmul <2 x float> %.sroa.031.0227, %i.ns
  %i.nu = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.nt) ; 2 uses
  %i.nv = fcmp ogt float %i.nu, %.1.i             ; 2 uses
  %i.nw = trunc nuw nsw i64 %indvars.iv.next.i138 to i32
  %.115.i.1 = select i1 %i.nv, i32 %i.nw, i32 %.115.i ; 3 uses
  %.1.i.1 = select i1 %i.nv, float %i.nu, float %.1.i ; 2 uses
  %indvars.iv.next.i138.1 = add nuw nsw i64 %indvars.iv.i137, 2 ; 2 uses
  %niter396.next.1 = add nuw i64 %niter396, 2     ; 2 uses
  %niter396.ncmp.1 = icmp eq i64 %niter396.next.1, %unroll_iter395
  br i1 %niter396.ncmp.1, label %b2FindSupport.exit.loopexit.unr-lcssa, label %.lr.ph.i136, !llvm.loop !0

b2FindSupport.exit.loopexit.unr-lcssa:            ; preds = %.lr.ph.i136
  %lcmp.mod392.not = icmp eq i64 %xtraiter391, 0
  br i1 %lcmp.mod392.not, label %b2FindSupport.exit, label %.lr.ph.i136.epil.preheader

.lr.ph.i136.epil.preheader:                       ; preds = %b2FindSupport.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i137.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i138.1, %b2FindSupport.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01322.i.epil.init = phi float [ %i.ni, %.lr.ph.preheader.i ], [ %.1.i.1, %b2FindSupport.exit.loopexit.unr-lcssa ]
  %.01421.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.115.i.1, %b2FindSupport.exit.loopexit.unr-lcssa ]
  %lcmp.mod394 = trunc i64 %i.nj to i1
  call void @llvm.assume(i1 %lcmp.mod394)
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i137.epil.init
  %i.ny = load <2 x float>, ptr %i.nx, align 4
  %i.nz = fmul <2 x float> %.sroa.031.0227, %i.ny
  %i.oa = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.nz)
  %i.ob = fcmp ogt float %i.oa, %.01322.i.epil.init
  %i.oc = trunc nuw nsw i64 %indvars.iv.i137.epil.init to i32
  %.115.i.epil = select i1 %i.ob, i32 %i.oc, i32 %.01421.i.epil.init
  br label %b2FindSupport.exit

b2FindSupport.exit:                               ; preds = %.lr.ph.i136.epil.preheader, %b2FindSupport.exit.loopexit.unr-lcssa, %bb.ae
  %.014.lcssa.i = phi i32 [ 0, %bb.ae ], [ %.115.i.1, %b2FindSupport.exit.loopexit.unr-lcssa ], [ %.115.i.epil, %.lr.ph.i136.epil.preheader ] ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.nd, i64 28
  store i32 %.014.lcssa.i, ptr %i.od, align 4, !tbaa !46
  %i.oe = sext i32 %.014.lcssa.i to i64
  %i.of = getelementptr inbounds [8 x i8], ptr %1, i64 %i.oe
  %i.og = load i64, ptr %i.of, align 4, !tbaa !10 ; 2 uses
  store i64 %i.og, ptr %i.nd, align 4, !tbaa !10
  %i.oh = bitcast i64 %i.og to <2 x float>
  br i1 %i.dd, label %.lr.ph.preheader.i147, label %b2FindSupport.exit161

.lr.ph.preheader.i147:                            ; preds = %b2FindSupport.exit
  %i.oi = fneg float %.sroa.01.4.vec.extract.i    ; 2 uses
  %i.oj = fmul float %.sroa.01.4.vec.extract.i.i149, %i.oi
  %foldExtExtBinop361 = fmul <2 x float> %.sroa.031.0227, %i.de
  %i.ok = extractelement <2 x float> %foldExtExtBinop361, i64 0
  %i.ol = fsub float %i.oj, %i.ok                 ; 2 uses
  %i.om = insertelement <2 x float> %.sroa.031.0227, float %i.oi, i64 1 ; 3 uses
  br i1 %i.dg, label %.lr.ph.i151.epil.preheader, label %.lr.ph.i151

.lr.ph.i151:                                      ; preds = %.lr.ph.preheader.i147, %.lr.ph.i151
  %indvars.iv.i152 = phi i64 [ %indvars.iv.next.i159.1, %.lr.ph.i151 ], [ 1, %.lr.ph.preheader.i147 ] ; 4 uses
  %.01322.i153 = phi float [ %.1.i158.1, %.lr.ph.i151 ], [ %i.ol, %.lr.ph.preheader.i147 ] ; 2 uses
  %.01421.i154 = phi i32 [ %.115.i157.1, %.lr.ph.i151 ], [ 0, %.lr.ph.preheader.i147 ]
  %niter402 = phi i64 [ %niter402.next.1, %.lr.ph.i151 ], [ 0, %.lr.ph.preheader.i147 ]
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv.i152
  %i.oo = load <2 x float>, ptr %i.on, align 8
  %i.op = fmul <2 x float> %i.oo, %i.om           ; 2 uses
  %shift363 = shufflevector <2 x float> %i.op, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop364 = fsub <2 x float> %shift363, %i.op
  %i.oq = extractelement <2 x float> %foldExtExtBinop364, i64 0 ; 2 uses
  %i.or = fcmp ogt float %i.oq, %.01322.i153      ; 2 uses
  %i.os = trunc nuw nsw i64 %indvars.iv.i152 to i32
  %.115.i157 = select i1 %i.or, i32 %i.os, i32 %.01421.i154
  %.1.i158 = select i1 %i.or, float %i.oq, float %.01322.i153 ; 2 uses
  %indvars.iv.next.i159 = add nuw nsw i64 %indvars.iv.i152, 1 ; 2 uses
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv.next.i159
  %i.ou = load <2 x float>, ptr %i.ot, align 8
  %i.ov = fmul <2 x float> %i.ou, %i.om           ; 2 uses
  %shift363.1 = shufflevector <2 x float> %i.ov, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop364.1 = fsub <2 x float> %shift363.1, %i.ov
  %i.ow = extractelement <2 x float> %foldExtExtBinop364.1, i64 0 ; 2 uses
  %i.ox = fcmp ogt float %i.ow, %.1.i158          ; 2 uses
  %i.oy = trunc nuw nsw i64 %indvars.iv.next.i159 to i32
  %.115.i157.1 = select i1 %i.ox, i32 %i.oy, i32 %.115.i157 ; 3 uses
  %.1.i158.1 = select i1 %i.ox, float %i.ow, float %.1.i158 ; 2 uses
  %indvars.iv.next.i159.1 = add nuw nsw i64 %indvars.iv.i152, 2 ; 2 uses
  %niter402.next.1 = add nuw i64 %niter402, 2     ; 2 uses
  %niter402.ncmp.1 = icmp eq i64 %niter402.next.1, %unroll_iter401
  br i1 %niter402.ncmp.1, label %b2FindSupport.exit161.loopexit.unr-lcssa, label %.lr.ph.i151, !llvm.loop !0

b2FindSupport.exit161.loopexit.unr-lcssa:         ; preds = %.lr.ph.i151
  br i1 %lcmp.mod398.not, label %b2FindSupport.exit161, label %.lr.ph.i151.epil.preheader

.lr.ph.i151.epil.preheader:                       ; preds = %b2FindSupport.exit161.loopexit.unr-lcssa, %.lr.ph.preheader.i147
  %indvars.iv.i152.epil.init = phi i64 [ 1, %.lr.ph.preheader.i147 ], [ %indvars.iv.next.i159.1, %b2FindSupport.exit161.loopexit.unr-lcssa ] ; 2 uses
  %.01322.i153.epil.init = phi float [ %i.ol, %.lr.ph.preheader.i147 ], [ %.1.i158.1, %b2FindSupport.exit161.loopexit.unr-lcssa ]
  %.01421.i154.epil.init = phi i32 [ 0, %.lr.ph.preheader.i147 ], [ %.115.i157.1, %b2FindSupport.exit161.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod400)
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv.i152.epil.init
  %i.pa = load <2 x float>, ptr %i.oz, align 8
  %i.pb = fmul <2 x float> %i.pa, %i.om           ; 2 uses
  %shift363.epil = shufflevector <2 x float> %i.pb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop364.epil = fsub <2 x float> %shift363.epil, %i.pb
  %i.pc = extractelement <2 x float> %foldExtExtBinop364.epil, i64 0
  %i.pd = fcmp ogt float %i.pc, %.01322.i153.epil.init
  %i.pe = trunc nuw nsw i64 %indvars.iv.i152.epil.init to i32
  %.115.i157.epil = select i1 %i.pd, i32 %i.pe, i32 %.01421.i154.epil.init
  br label %b2FindSupport.exit161

b2FindSupport.exit161:                            ; preds = %.lr.ph.i151.epil.preheader, %b2FindSupport.exit161.loopexit.unr-lcssa, %b2FindSupport.exit
  %.014.lcssa.i146 = phi i32 [ 0, %b2FindSupport.exit ], [ %.115.i157.1, %b2FindSupport.exit161.loopexit.unr-lcssa ], [ %.115.i157.epil, %.lr.ph.i151.epil.preheader ] ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.nd, i64 32
  store i32 %.014.lcssa.i146, ptr %i.pf, align 4, !tbaa !47
  %i.pg = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.ph = sext i32 %.014.lcssa.i146 to i64
  %i.pi = getelementptr inbounds [8 x i8], ptr %8, i64 %i.ph
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !10 ; 2 uses
  store i64 %i.pj, ptr %i.pg, align 4, !tbaa !10
  %i.pk = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %.cast = bitcast i64 %i.pj to <2 x float>
  %i.pl = fsub <2 x float> %i.oh, %.cast
  store <2 x float> %i.pl, ptr %i.pk, align 4, !tbaa !10
  %i.pm = add nuw nsw i32 %.077260, 1             ; 3 uses
  br i1 %i.di, label %.lr.ph258.preheader, label %._crit_edge259

.lr.ph258.preheader:                              ; preds = %b2FindSupport.exit161
  %wide.trip.count281 = zext nneg i32 %i.dh to i64
  br label %.lr.ph258

.lr.ph258:                                        ; preds = %.lr.ph258.preheader, %bb.ag
  %indvars.iv278 = phi i64 [ 0, %.lr.ph258.preheader ], [ %indvars.iv.next279, %bb.ag ] ; 3 uses
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv278
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !20
  %i.pp = icmp eq i32 %.014.lcssa.i, %i.po
  br i1 %i.pp, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph258
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv278
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !20
  %i.ps = icmp eq i32 %.014.lcssa.i146, %i.pr
  br i1 %i.ps, label %.thread233, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph258, %bb.af
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 2 uses
  %exitcond282.not = icmp eq i64 %indvars.iv.next279, %wide.trip.count281
  br i1 %exitcond282.not, label %._crit_edge259, label %.lr.ph258, !llvm.loop !35

._crit_edge259:                                   ; preds = %bb.ag, %b2FindSupport.exit161
  %i.pt = add nsw i32 %i.kh, 1                    ; 3 uses
  store i32 %i.pt, ptr %i.ak, align 4, !tbaa !42
  %exitcond283.not = icmp eq i32 %i.pm, 20
  br i1 %exitcond283.not, label %.thread233, label %bb.g

.thread233:                                       ; preds = %._crit_edge259, %bb.af
  %i.pu = phi i32 [ %i.kh, %bb.af ], [ %i.pt, %._crit_edge259 ] ; 6 uses
  %i.pv = phi i32 [ %i.pm, %bb.af ], [ 20, %._crit_edge259 ]
  %i.pw = fcmp ogt float %i.kj, f0x057A0000
  br i1 %i.pw, label %bb.ah, label %b2Normalize.exit

bb.ah:                                            ; preds = %.thread233
  %sqrt.i = call nnan float @llvm.sqrt.f32(float %i.kj)
  %i.px = fdiv nnan float 1.000000e+00, %sqrt.i
  %i.py = insertelement <2 x float> poison, float %i.px, i64 0
  %i.pz = shufflevector <2 x float> %i.py, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qa = fmul <2 x float> %.sroa.031.0227, %i.pz
  br label %b2Normalize.exit

b2Normalize.exit:                                 ; preds = %.thread233, %bb.ah
  %.sroa.012.0.i = phi <2 x float> [ %i.qa, %bb.ah ], [ zeroinitializer, %.thread233 ] ; 3 uses
  switch i32 %i.pu, label %b2ComputeWitnessPoints.exit188 [
    i32 1, label %bb.ai
    i32 2, label %bb.aj
    i32 3, label %bb.ak
  ]

bb.ai:                                            ; preds = %b2Normalize.exit
  %i.qb = load <2 x float>, ptr %9, align 8, !tbaa !10
  %i.qc = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.qd = load <2 x float>, ptr %i.qc, align 8, !tbaa !10
  br label %b2ComputeWitnessPoints.exit188

bb.aj:                                            ; preds = %b2Normalize.exit
  %15 = load <4 x float>, ptr %i.da, align 8
  %16 = load <4 x float>, ptr %i.cy, align 4
  %i.qe = load <2 x float>, ptr %9, align 8
  %i.qf = load <2 x float>, ptr %i.am, align 4
  %i.qg = shufflevector <4 x float> %15, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qh = fmul <2 x float> %i.qg, %i.qe
  %i.qi = shufflevector <4 x float> %16, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qj = fmul <2 x float> %i.qi, %i.qf
  %i.qk = fadd <2 x float> %i.qh, %i.qj
  %i.ql = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.qm = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.qn = load <2 x float>, ptr %i.ql, align 8
  %i.qo = load <2 x float>, ptr %i.qm, align 4
  %i.qp = fmul <2 x float> %i.qg, %i.qn
  %i.qq = fmul <2 x float> %i.qi, %i.qo
  %i.qr = fadd <2 x float> %i.qp, %i.qq
  br label %b2ComputeWitnessPoints.exit188

bb.ak:                                            ; preds = %b2Normalize.exit
  %17 = load <4 x float>, ptr %i.da, align 8
  %18 = load <4 x float>, ptr %i.cy, align 4
  %19 = load <4 x float>, ptr %i.cz, align 8
  %i.qs = load <2 x float>, ptr %9, align 8
  %i.qt = load <2 x float>, ptr %i.am, align 4
  %i.qu = load <2 x float>, ptr %i.ao, align 8
  %i.qv = shufflevector <4 x float> %17, <4 x float> poison, <2 x i32> zeroinitializer
  %i.qw = fmul <2 x float> %i.qv, %i.qs
  %i.qx = shufflevector <4 x float> %18, <4 x float> poison, <2 x i32> zeroinitializer
  %i.qy = fmul <2 x float> %i.qx, %i.qt
  %i.qz = fadd <2 x float> %i.qw, %i.qy
  %i.ra = shufflevector <4 x float> %19, <4 x float> poison, <2 x i32> zeroinitializer
  %i.rb = fmul <2 x float> %i.ra, %i.qu
  %i.rc = fadd <2 x float> %i.qz, %i.rb           ; 2 uses
  br label %b2ComputeWitnessPoints.exit188

b2ComputeWitnessPoints.exit188:                   ; preds = %b2Normalize.exit, %bb.ai, %bb.aj, %bb.ak
  %i.rd = phi <2 x float> [ %i.rc, %bb.ak ], [ %i.qb, %bb.ai ], [ %i.qk, %bb.aj ], [ zeroinitializer, %b2Normalize.exit ] ; 3 uses
  %i.re = phi <2 x float> [ %i.rc, %bb.ak ], [ %i.qd, %bb.ai ], [ %i.qr, %bb.aj ], [ zeroinitializer, %b2Normalize.exit ] ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %.sroa.012.0.i, ptr %i.rf, align 4, !tbaa !10
  %i.rg = fsub <2 x float> %i.re, %i.rd           ; 2 uses
  %i.rh = fmul <2 x float> %i.rg, %i.rg           ; 2 uses
  %shift366 = shufflevector <2 x float> %i.rh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop367 = fadd <2 x float> %i.rh, %shift366
  %i.ri = extractelement <2 x float> %foldExtExtBinop367, i64 0
  %sqrt.i191 = call float @llvm.sqrt.f32(float %i.ri) ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store float %sqrt.i191, ptr %i.rj, align 4, !tbaa !22
  store <2 x float> %i.rd, ptr %0, align 4, !tbaa !10
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store <2 x float> %i.re, ptr %i.rk, align 4, !tbaa !10
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.pv, ptr %i.rl, align 4, !tbaa !57
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.074, ptr %i.rm, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 0, ptr %5, align 8
  %i.rn = trunc i32 %i.pu to i16
  store i16 %i.rn, ptr %5, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr %9, ptr %i.a, align 16, !tbaa !45
  %i.ro = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.am, ptr %i.ro, align 8, !tbaa !45
  %i.rp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ao, ptr %i.rp, align 16, !tbaa !45
  %i.rq = icmp sgt i32 %i.pu, 0
  br i1 %i.rq, label %.lr.ph.i192, label %b2MakeSimplexCache.exit197

.lr.ph.i192:                                      ; preds = %b2ComputeWitnessPoints.exit188
  %i.rr = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %5, i64 5 ; 3 uses
  %wide.trip.count.i193 = zext nneg i32 %i.pu to i64 ; 2 uses
  %xtraiter404 = and i64 %wide.trip.count.i193, 1
  %i.rt = icmp eq i32 %i.pu, 1
  br i1 %i.rt, label %.epil.preheader403, label %.lr.ph.i192.new

.lr.ph.i192.new:                                  ; preds = %.lr.ph.i192
  %unroll_iter407 = and i64 %wide.trip.count.i193, 2147483646
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i192.new
  %indvars.iv.i194 = phi i64 [ 0, %.lr.ph.i192.new ], [ %indvars.iv.next.i195.1, %bb.al ] ; 5 uses
  %niter408 = phi i64 [ 0, %.lr.ph.i192.new ], [ %niter408.next.1, %bb.al ]
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i194
  %i.rv = load ptr, ptr %i.ru, align 16, !tbaa !45 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 28
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !46
  %i.ry = trunc i32 %i.rx to i8
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rr, i64 %indvars.iv.i194
  store i8 %i.ry, ptr %i.rz, align 2, !tbaa !18
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rv, i64 32
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !47
  %i.sc = trunc i32 %i.sb to i8
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rs, i64 %indvars.iv.i194
  store i8 %i.sc, ptr %i.sd, align 1, !tbaa !18
  %indvars.iv.next.i195 = or disjoint i64 %indvars.iv.i194, 1 ; 3 uses
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i195
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !45 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 28
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !46
  %i.si = trunc i32 %i.sh to i8
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rr, i64 %indvars.iv.next.i195
  store i8 %i.si, ptr %i.sj, align 1, !tbaa !18
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sf, i64 32
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !47
  %i.sm = trunc i32 %i.sl to i8
  %i.sn = getelementptr inbounds nuw i8, ptr %i.rs, i64 %indvars.iv.next.i195
  store i8 %i.sm, ptr %i.sn, align 2, !tbaa !18
  %indvars.iv.next.i195.1 = add nuw nsw i64 %indvars.iv.i194, 2 ; 2 uses
  %niter408.next.1 = add i64 %niter408, 2         ; 2 uses
  %niter408.ncmp.1 = icmp eq i64 %niter408.next.1, %unroll_iter407
  br i1 %niter408.ncmp.1, label %b2MakeSimplexCache.exit197.loopexit.unr-lcssa, label %bb.al, !llvm.loop !34

b2MakeSimplexCache.exit197.loopexit.unr-lcssa:    ; preds = %bb.al
  %lcmp.mod405.not = icmp eq i64 %xtraiter404, 0
  br i1 %lcmp.mod405.not, label %b2MakeSimplexCache.exit197, label %.epil.preheader403

.epil.preheader403:                               ; preds = %b2MakeSimplexCache.exit197.loopexit.unr-lcssa, %.lr.ph.i192
  %indvars.iv.i194.epil.init = phi i64 [ 0, %.lr.ph.i192 ], [ %indvars.iv.next.i195.1, %b2MakeSimplexCache.exit197.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod406 = trunc i32 %i.pu to i1
  call void @llvm.assume(i1 %lcmp.mod406)
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i194.epil.init
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !45 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 28
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !46
  %i.ss = trunc i32 %i.sr to i8
  %i.st = getelementptr inbounds nuw i8, ptr %i.rr, i64 %indvars.iv.i194.epil.init
  store i8 %i.ss, ptr %i.st, align 1, !tbaa !18
  %i.su = getelementptr inbounds nuw i8, ptr %i.sp, i64 32
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !47
  %i.sw = trunc i32 %i.sv to i8
  %i.sx = getelementptr inbounds nuw i8, ptr %i.rs, i64 %indvars.iv.i194.epil.init
  store i8 %i.sw, ptr %i.sx, align 1, !tbaa !18
  br label %b2MakeSimplexCache.exit197

b2MakeSimplexCache.exit197:                       ; preds = %.epil.preheader403, %b2MakeSimplexCache.exit197.loopexit.unr-lcssa, %b2ComputeWitnessPoints.exit188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.sy = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store i64 %i.sy, ptr %2, align 2
  %i.sz = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ta = load i8, ptr %i.sz, align 4, !tbaa !59, !range !23, !noundef !24
  %i.tb = trunc nuw i8 %i.ta to i1
  br i1 %i.tb, label %bb.am, label %.thread

bb.am:                                            ; preds = %b2MakeSimplexCache.exit197
  %i.tc = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.td = load float, ptr %i.tc, align 4, !tbaa !60 ; 2 uses
  %i.te = load float, ptr %i.k, align 4, !tbaa !38 ; 2 uses
  %i.tf = fsub float %sqrt.i191, %i.td
  %i.tg = fsub float %i.tf, %i.te                 ; 2 uses
  %i.th = fcmp olt float %i.tg, 0.000000e+00
  %i.ti = select i1 %i.th, float 0.000000e+00, float %i.tg
  store float %i.ti, ptr %i.rj, align 4, !tbaa !22
  %i.tj = insertelement <2 x float> poison, float %i.td, i64 0
  %i.tk = shufflevector <2 x float> %i.tj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tl = fmul <2 x float> %.sroa.012.0.i, %i.tk
  %i.tm = fadd <2 x float> %i.tl, %i.rd
  store <2 x float> %i.tm, ptr %0, align 4, !tbaa !10
  %i.tn = insertelement <2 x float> poison, float %i.te, i64 0
  %i.to = shufflevector <2 x float> %i.tn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tp = fmul <2 x float> %.sroa.012.0.i, %i.to
  %i.tq = fsub <2 x float> %i.re, %i.tp
  store <2 x float> %i.tq, ptr %i.rk, align 4, !tbaa !10
  br label %.thread

.thread:                                          ; preds = %b2ComputeWitnessPoints.exit130, %.lr.ph.i95, %b2MakeSimplexCache.exit197, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  ret void
}

; Function Attrs: nounwind uwtable
define void @b2ShapeCast(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2CastOutput) align 4 captures(none) initializes((0, 28)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
.peel.begin:
  %2 = alloca %struct.b2SimplexCache, align 8     ; 5 uses
  %3 = alloca %struct.b2DistanceInput, align 4    ; 8 uses
  %4 = alloca %struct.b2DistanceOutput, align 8   ; 12 uses
  %i.a = tail call float @b2GetLengthUnitsPerMeter() #12
  %i.b = fmul float %i.a, 5.000000e-03            ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 3 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 140 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !64
  %i.h = fadd float %i.d, %i.g
  %i.i = fsub float %i.h, %i.b                    ; 2 uses
  %i.j = fcmp ogt float %i.b, %i.i
  %i.k = select i1 %i.j, float %i.b, float %i.i   ; 2 uses
  %i.l = fmul float %i.b, 2.500000e-01            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store i64 0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %3, ptr noundef nonnull align 4 dereferenceable(72) %1, i64 72, i1 false), !tbaa.struct !25
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i32 0, ptr %i.n, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.m, ptr noundef nonnull align 4 dereferenceable(72) %i.e, i64 72, i1 false), !tbaa.struct !25
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !65
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.09.0.copyload = load <2 x float>, ptr %i.q, align 4, !tbaa !10 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @b2ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b2DistanceOutput) align 4 %4, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef null, i32 noundef 0)
  %i.v = load float, ptr %i.s, align 8, !tbaa !22 ; 4 uses
  %i.w = fadd float %i.l, %i.k
  %i.x = fcmp olt float %i.v, %i.w
  br i1 %i.x, label %bb.a, label %bb.c

bb.a:                                             ; preds = %.peel.begin
  %i.y = fmul float %i.b, 2.000000e+00
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !66, !range !23, !noundef !24
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = fcmp ogt float %i.v, %i.y
  %or.cond.peel = and i1 %i.ac, %i.ab
  br i1 %or.cond.peel, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.ad = fsub float %i.v, %i.b
  br label %bb.c

end_hunk_0
