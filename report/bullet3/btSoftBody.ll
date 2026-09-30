Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBody?download=true
inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 249
begin_hunk_0_@_Z26singularValueDecompositionRK11btMatrix3x3RS_R9btVector3S2_f:bb.a
  %i.eq = load <2 x float>, ptr %17, align 8, !tbaa !253 ; 5 uses
  %i.er = extractelement <2 x float> %i.eq, i64 1 ; 4 uses
  %i.es = extractelement <2 x float> %i.eq, i64 0 ; 4 uses
  %i.et = load float, ptr %i.r, align 8, !tbaa !253 ; 4 uses
  %i.eu = add nuw nsw i32 %.0112305346, 1         ; 3 uses
  %i.ev = load <2 x float>, ptr %i.q, align 4, !tbaa !253 ; 3 uses
  %i.ew = load float, ptr %i.t, align 8, !tbaa !253 ; 4 uses
  %i.ex = shufflevector <2 x float> %i.eq, <2 x float> %i.ev, <4 x i32> <i32 3, i32 1, i32 0, i32 2>
  %i.ey = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ex) ; 3 uses
  %i.ez = fcmp ogt <4 x float> %i.ey, %i.al
  %i.fa = freeze <4 x i1> %i.ez
  %i.fb = bitcast <4 x i1> %i.fa to i4
  %i.fc = icmp eq i4 %i.fb, -1
  br i1 %i.fc, label %bb.d, label %..critedge.loopexit_crit_edge354, !llvm.loop !798

..critedge.loopexit_crit_edge354:                 ; preds = %bb.g
  %i.fd = extractelement <4 x float> %i.ey, i64 0
  %i.fe = extractelement <2 x float> %i.ev, i64 0
  br label %.critedge, !llvm.loop !798

.critedge.loopexit:                               ; preds = %bb.d
  %i.ff = extractelement <4 x float> %i.ey, i64 0
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph, %..critedge.loopexit_crit_edge354, %bb.c
  %i.fg = phi float [ %i.v, %bb.c ], [ %i.ew, %..critedge.loopexit_crit_edge354 ], [ %i.v, %.lr.ph ], [ %i.ew, %.critedge.loopexit ] ; 12 uses
  %.0112.lcssa = phi i32 [ 0, %bb.c ], [ %i.eu, %..critedge.loopexit_crit_edge354 ], [ 0, %.lr.ph ], [ %i.eu, %.critedge.loopexit ]
  %i.fh = phi float [ %i.p, %bb.c ], [ %i.es, %..critedge.loopexit_crit_edge354 ], [ %i.p, %.lr.ph ], [ %i.es, %.critedge.loopexit ] ; 7 uses
  %i.fi = phi float [ %i.o, %bb.c ], [ %i.er, %..critedge.loopexit_crit_edge354 ], [ %i.o, %.lr.ph ], [ %i.er, %.critedge.loopexit ] ; 8 uses
  %i.fj = phi float [ %i.x, %bb.c ], [ %i.fe, %..critedge.loopexit_crit_edge354 ], [ %i.x, %.lr.ph ], [ %i.ay, %.critedge.loopexit ] ; 12 uses
  %i.fk = phi float [ %i.s, %bb.c ], [ %i.et, %..critedge.loopexit_crit_edge354 ], [ %i.s, %.lr.ph ], [ %i.et, %.critedge.loopexit ] ; 14 uses
  %.lcssa = phi float [ %i.aq, %bb.c ], [ %i.fd, %..critedge.loopexit_crit_edge354 ], [ %i.aq, %.lr.ph ], [ %i.ff, %.critedge.loopexit ]
  %i.fl = phi <2 x float> [ %i.n, %bb.c ], [ %i.eq, %..critedge.loopexit_crit_edge354 ], [ %i.n, %.lr.ph ], [ %i.eq, %.critedge.loopexit ] ; 2 uses
  %i.fm = fcmp ugt float %.lcssa, %.0113
  br i1 %i.fm, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39
  store i32 0, ptr %13, align 4, !tbaa !397
  %i.fn = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  store i32 1, ptr %i.fn, align 4, !tbaa !398
  %i.fo = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %13, i64 12
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.fo, align 4, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39
  store i32 0, ptr %14, align 4, !tbaa !397
  %i.fq = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 2 uses
  store i32 1, ptr %i.fq, align 4, !tbaa !398
  %i.fr = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %14, i64 12
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.fr, align 4, !tbaa !253
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.fk, ptr %i.ft, align 4, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #39
  %i.fu = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i64 0, ptr %i.fu, align 4
  store float %i.fh, ptr %15, align 8, !tbaa !400
  %i.fv = load float, ptr %i.b, align 8, !tbaa !253
  %i.fw = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store float %i.fv, ptr %i.fw, align 8, !tbaa !799
  %i.fx = getelementptr inbounds nuw i8, ptr %15, i64 4
  store float %i.fi, ptr %i.fx, align 4, !tbaa !800
  %i.fy = getelementptr inbounds nuw i8, ptr %15, i64 12
  store float %i.fj, ptr %i.fy, align 4, !tbaa !401
  %i.fz = load float, ptr %2, align 4, !tbaa !253
  store float %i.fz, ptr %16, align 16, !tbaa !400
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !253
  %i.gc = getelementptr inbounds nuw i8, ptr %16, i64 12
  store float %i.gb, ptr %i.gc, align 4, !tbaa !401
  call void @_Z26singularValueDecompositionRK11btMatrix2x2R14GivensRotationS1_S3_f(ptr noundef nonnull align 4 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr noundef nonnull align 4 dereferenceable(16) %14, float noundef f0x37000000)
  %i.gd = load <2 x float>, ptr %15, align 8, !tbaa !253
  store <2 x float> %i.gd, ptr %17, align 8, !tbaa !253
  %i.ge = load <2 x float>, ptr %i.fw, align 8, !tbaa !253
  store <2 x float> %i.ge, ptr %i.b, align 8, !tbaa !253
  %i.gf = load <4 x float>, ptr %16, align 16, !tbaa !253
  %i.gg = shufflevector <4 x float> %i.gf, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.gg, ptr %2, align 4, !tbaa !253
  %i.gh = load i32, ptr %13, align 4, !tbaa !397
  %i.gi = sext i32 %i.gh to i64                   ; 3 uses
  %i.gj = load i32, ptr %i.fn, align 4, !tbaa !398
  %i.gk = sext i32 %i.gj to i64                   ; 3 uses
  %i.gl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gi ; 2 uses
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !253 ; 2 uses
  %i.gn = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gk ; 2 uses
  %i.go = load float, ptr %i.gn, align 4, !tbaa !253 ; 2 uses
  %i.gp = load float, ptr %i.fo, align 4, !tbaa !402 ; 6 uses
  %i.gq = load float, ptr %i.fp, align 4, !tbaa !403 ; 6 uses
  %i.gr = fneg float %i.go
  %i.gs = fmul float %i.gq, %i.gr
  %i.gt = call float @llvm.fmuladd.f32(float %i.gp, float %i.gm, float %i.gs)
  store float %i.gt, ptr %i.gl, align 4, !tbaa !253
  %i.gu = fmul float %i.go, %i.gp
  %i.gv = call float @llvm.fmuladd.f32(float %i.gq, float %i.gm, float %i.gu)
  store float %i.gv, ptr %i.gn, align 4, !tbaa !253
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.gw, i64 %i.gi ; 2 uses
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !253 ; 2 uses
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.gw, i64 %i.gk ; 2 uses
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !253 ; 2 uses
  %i.hb = fneg float %i.ha
  %i.hc = fmul float %i.gq, %i.hb
  %i.hd = call float @llvm.fmuladd.f32(float %i.gp, float %i.gy, float %i.hc)
  store float %i.hd, ptr %i.gx, align 4, !tbaa !253
  %i.he = fmul float %i.gp, %i.ha
  %i.hf = call float @llvm.fmuladd.f32(float %i.gq, float %i.gy, float %i.he)
  store float %i.hf, ptr %i.gz, align 4, !tbaa !253
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.gi ; 2 uses
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !253 ; 2 uses
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.gk ; 2 uses
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !253 ; 2 uses
  %i.hl = fneg float %i.hk
  %i.hm = fmul float %i.gq, %i.hl
  %i.hn = call float @llvm.fmuladd.f32(float %i.gp, float %i.hi, float %i.hm)
  store float %i.hn, ptr %i.hh, align 4, !tbaa !253
  %i.ho = fmul float %i.gp, %i.hk
  %i.hp = call float @llvm.fmuladd.f32(float %i.gq, float %i.hi, float %i.ho)
  store float %i.hp, ptr %i.hj, align 4, !tbaa !253
  %i.hq = load i32, ptr %14, align 4, !tbaa !397
  %i.hr = sext i32 %i.hq to i64                   ; 3 uses
  %i.hs = load i32, ptr %i.fq, align 4, !tbaa !398
  %i.ht = sext i32 %i.hs to i64                   ; 3 uses
  %i.hu = getelementptr inbounds [4 x i8], ptr %3, i64 %i.hr ; 2 uses
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !253 ; 2 uses
  %i.hw = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ht ; 2 uses
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !253 ; 2 uses
  %i.hy = load float, ptr %i.fr, align 4, !tbaa !402 ; 6 uses
  %i.hz = load float, ptr %i.fs, align 4, !tbaa !403 ; 6 uses
  %i.ia = fneg float %i.hx
  %i.ib = fmul float %i.hz, %i.ia
  %i.ic = call float @llvm.fmuladd.f32(float %i.hy, float %i.hv, float %i.ib)
  store float %i.ic, ptr %i.hu, align 4, !tbaa !253
  %i.id = fmul float %i.hx, %i.hy
  %i.ie = call float @llvm.fmuladd.f32(float %i.hz, float %i.hv, float %i.id)
  store float %i.ie, ptr %i.hw, align 4, !tbaa !253
  %i.if = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.if, i64 %i.hr ; 2 uses
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !253 ; 2 uses
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.if, i64 %i.ht ; 2 uses
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !253 ; 2 uses
  %i.ik = fneg float %i.ij
  %i.il = fmul float %i.hz, %i.ik
  %i.im = call float @llvm.fmuladd.f32(float %i.hy, float %i.ih, float %i.il)
  store float %i.im, ptr %i.ig, align 4, !tbaa !253
  %i.in = fmul float %i.hy, %i.ij
  %i.io = call float @llvm.fmuladd.f32(float %i.hz, float %i.ih, float %i.in)
  store float %i.io, ptr %i.ii, align 4, !tbaa !253
  %i.ip = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.hr ; 2 uses
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !253 ; 2 uses
  %i.is = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.ht ; 2 uses
  %i.it = load float, ptr %i.is, align 4, !tbaa !253 ; 2 uses
  %i.iu = fneg float %i.it
  %i.iv = fmul float %i.hz, %i.iu
  %i.iw = call float @llvm.fmuladd.f32(float %i.hy, float %i.ir, float %i.iv)
  store float %i.iw, ptr %i.iq, align 4, !tbaa !253
  %i.ix = fmul float %i.hy, %i.it
  %i.iy = call float @llvm.fmuladd.f32(float %i.hz, float %i.ir, float %i.ix)
  store float %i.iy, ptr %i.is, align 4, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39
  br label %.sink.split

bb.i:                                             ; preds = %.critedge
  %i.iz = call noundef float @llvm.fabs.f32(float %i.fi)
  %i.ja = fcmp ugt float %i.iz, %.0113
  br i1 %i.ja, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_Z7processILi1EEvR11btMatrix3x3S1_R9btVector3S1_(ptr noundef nonnull align 4 dereferenceable(48) %17, ptr noundef nonnull align 4 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(48) %3)
  br label %.sink.split

bb.k:                                             ; preds = %bb.i
  %i.jb = call noundef float @llvm.fabs.f32(float %i.fj)
  %i.jc = fcmp ugt float %i.jb, %.0113
  br i1 %i.jc, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.jd = fmul float %i.fk, %i.fk
  %i.je = call float @llvm.fmuladd.f32(float %i.fg, float %i.fg, float %i.jd) ; 2 uses
  %i.jf = fcmp ogt float %i.je, f0x34000000
  br i1 %i.jf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %sqrt.i121 = call nnan float @llvm.sqrt.f32(float %i.je)
  %i.jg = fdiv nnan float 1.000000e+00, %sqrt.i121
  %i.jh = insertelement <2 x float> poison, float %i.jg, i64 0
  %i.ji = shufflevector <2 x float> %i.jh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jj = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.jk = insertelement <2 x float> %i.jj, float %i.fk, i64 1
  %i.jl = fmul <2 x float> %i.jk, %i.ji
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.jm = phi <2 x float> [ %i.jl, %bb.m ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.l ] ; 9 uses
  %i.jn = load float, ptr %i.b, align 8, !tbaa !253
  %18 = shufflevector <2 x float> %i.jm, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %19 = extractelement <2 x float> %i.jm, i64 0   ; 2 uses
  %20 = extractelement <2 x float> %i.jm, i64 1   ; 2 uses
  %i.jo = load <2 x float>, ptr %i.d, align 8, !tbaa !253 ; 2 uses
  %i.jp = fneg <2 x float> %i.jo
  %i.jq = shufflevector <2 x float> %i.jm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jr = fmul <2 x float> %i.jq, %i.jp
  %i.js = shufflevector <2 x float> %i.jm, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.jt = insertelement <2 x float> poison, float %i.jn, i64 0
  %i.ju = insertelement <2 x float> %i.jt, float %i.fj, i64 1 ; 2 uses
  %i.jv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.js, <2 x float> %i.ju, <2 x float> %i.jr) ; 2 uses
  store <2 x float> %i.jv, ptr %i.b, align 8, !tbaa !253
  %i.jw = fmul <2 x float> %i.js, %i.jo
  %i.jx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jq, <2 x float> %i.ju, <2 x float> %i.jw)
  store <2 x float> %i.jx, ptr %i.d, align 8, !tbaa !253
  %i.jy = fneg float %i.fk
  %i.jz = fmul float %19, %i.jy
  %i.ka = call float @llvm.fmuladd.f32(float %20, float %i.fg, float %i.jz)
  store float %i.ka, ptr %i.t, align 8, !tbaa !253
  %i.kb = fmul float %i.fk, %20
  %i.kc = call float @llvm.fmuladd.f32(float %19, float %i.fg, float %i.kb) ; 2 uses
  store float %i.kc, ptr %i.r, align 8, !tbaa !253
  %i.kd = load float, ptr %i.e, align 4, !tbaa !253
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !253 ; 2 uses
  %i.kg = fneg float %i.kf
  %i.kh = insertelement <2 x float> poison, float %i.kg, i64 0
  %i.ki = insertelement <2 x float> %i.kh, float %i.kf, i64 1
  %i.kj = fmul <2 x float> %i.jm, %i.ki
  %i.kk = shufflevector <2 x float> %i.kj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.kl = insertelement <2 x float> poison, float %i.kd, i64 0
  %i.km = shufflevector <2 x float> %i.kl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jm, <2 x float> %i.km, <2 x float> %i.kk)
  %i.ko = shufflevector <2 x float> %i.kn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ko, ptr %i.e, align 4, !tbaa !253
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.kq = load float, ptr %i.f, align 4, !tbaa !253
  %i.kr = load float, ptr %i.g, align 4, !tbaa !253 ; 2 uses
  %i.ks = fneg float %i.kr
  %i.kt = insertelement <2 x float> poison, float %i.ks, i64 0
  %i.ku = insertelement <2 x float> %i.kt, float %i.kr, i64 1
  %i.kv = fmul <2 x float> %i.jm, %i.ku
  %i.kw = insertelement <2 x float> poison, float %i.kq, i64 0
  %i.kx = shufflevector <2 x float> %i.kw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ky = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %18, <2 x float> %i.kx, <2 x float> %i.kv)
  store <2 x float> %i.ky, ptr %i.f, align 4, !tbaa !253
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.lb = load float, ptr %i.la, align 4, !tbaa !253
  %i.lc = load float, ptr %i.h, align 4, !tbaa !253 ; 2 uses
  %i.ld = fneg float %i.lc
  %i.le = insertelement <2 x float> poison, float %i.ld, i64 0
  %i.lf = insertelement <2 x float> %i.le, float %i.lc, i64 1
  %i.lg = fmul <2 x float> %i.jm, %i.lf
  %i.lh = insertelement <2 x float> poison, float %i.lb, i64 0
  %i.li = shufflevector <2 x float> %i.lh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %18, <2 x float> %i.li, <2 x float> %i.lg)
  store <2 x float> %i.lj, ptr %i.la, align 4, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  store i32 0, ptr %9, align 4, !tbaa !397
  %i.lk = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  store i32 1, ptr %i.lk, align 4, !tbaa !398
  %i.ll = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %9, i64 12
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.ll, align 4, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  store i32 0, ptr %10, align 4, !tbaa !397
  %i.ln = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  store i32 1, ptr %i.ln, align 4, !tbaa !398
  %i.lo = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.lo, align 4, !tbaa !253
  %i.lp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.kc, ptr %i.lp, align 4, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #39
  %i.lq = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i64 0, ptr %i.lq, align 4
  store float %i.fh, ptr %11, align 8, !tbaa !400
  %i.lr = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %11, i64 4
  store float %i.fi, ptr %i.ls, align 4, !tbaa !800
  store <2 x float> %i.jv, ptr %i.lr, align 8, !tbaa !253
  %i.lt = load float, ptr %2, align 4, !tbaa !253
  store float %i.lt, ptr %12, align 16, !tbaa !400
  %i.lu = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !253
  %i.lw = getelementptr inbounds nuw i8, ptr %12, i64 12
  store float %i.lv, ptr %i.lw, align 4, !tbaa !401
  call void @_Z26singularValueDecompositionRK11btMatrix2x2R14GivensRotationS1_S3_f(ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %10, float noundef f0x37000000)
  %i.lx = load <2 x float>, ptr %11, align 8, !tbaa !253
  store <2 x float> %i.lx, ptr %17, align 8, !tbaa !253
  %i.ly = load <2 x float>, ptr %i.lr, align 8, !tbaa !253
  store <2 x float> %i.ly, ptr %i.b, align 8, !tbaa !253
  %i.lz = load <4 x float>, ptr %12, align 16, !tbaa !253
  %i.ma = shufflevector <4 x float> %i.lz, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.ma, ptr %2, align 4, !tbaa !253
  %i.mb = load i32, ptr %9, align 4, !tbaa !397
  %i.mc = sext i32 %i.mb to i64                   ; 3 uses
  %i.md = load i32, ptr %i.lk, align 4, !tbaa !398
  %i.me = sext i32 %i.md to i64                   ; 3 uses
  %i.mf = getelementptr inbounds [4 x i8], ptr %1, i64 %i.mc ; 2 uses
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !253 ; 2 uses
  %i.mh = getelementptr inbounds [4 x i8], ptr %1, i64 %i.me ; 2 uses
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !253 ; 2 uses
  %i.mj = load float, ptr %i.ll, align 4, !tbaa !402 ; 6 uses
  %i.mk = load float, ptr %i.lm, align 4, !tbaa !403 ; 6 uses
  %i.ml = fneg float %i.mi
  %i.mm = fmul float %i.mk, %i.ml
  %i.mn = call float @llvm.fmuladd.f32(float %i.mj, float %i.mg, float %i.mm)
  store float %i.mn, ptr %i.mf, align 4, !tbaa !253
  %i.mo = fmul float %i.mi, %i.mj
  %i.mp = call float @llvm.fmuladd.f32(float %i.mk, float %i.mg, float %i.mo)
  store float %i.mp, ptr %i.mh, align 4, !tbaa !253
  %i.mq = getelementptr inbounds [4 x i8], ptr %i.kp, i64 %i.mc ; 2 uses
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !253 ; 2 uses
  %i.ms = getelementptr inbounds [4 x i8], ptr %i.kp, i64 %i.me ; 2 uses
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !253 ; 2 uses
  %i.mu = fneg float %i.mt
  %i.mv = fmul float %i.mk, %i.mu
  %i.mw = call float @llvm.fmuladd.f32(float %i.mj, float %i.mr, float %i.mv)
  store float %i.mw, ptr %i.mq, align 4, !tbaa !253
  %i.mx = fmul float %i.mj, %i.mt
  %i.my = call float @llvm.fmuladd.f32(float %i.mk, float %i.mr, float %i.mx)
  store float %i.my, ptr %i.ms, align 4, !tbaa !253
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.mc ; 2 uses
  %i.na = load float, ptr %i.mz, align 4, !tbaa !253 ; 2 uses
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.me ; 2 uses
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !253 ; 2 uses
  %i.nd = fneg float %i.nc
  %i.ne = fmul float %i.mk, %i.nd
  %i.nf = call float @llvm.fmuladd.f32(float %i.mj, float %i.na, float %i.ne)
  store float %i.nf, ptr %i.mz, align 4, !tbaa !253
  %i.ng = fmul float %i.mj, %i.nc
  %i.nh = call float @llvm.fmuladd.f32(float %i.mk, float %i.na, float %i.ng)
  store float %i.nh, ptr %i.nb, align 4, !tbaa !253
  %i.ni = load i32, ptr %10, align 4, !tbaa !397
  %i.nj = sext i32 %i.ni to i64                   ; 3 uses
  %i.nk = load i32, ptr %i.ln, align 4, !tbaa !398
  %i.nl = sext i32 %i.nk to i64                   ; 3 uses
  %i.nm = getelementptr inbounds [4 x i8], ptr %3, i64 %i.nj ; 2 uses
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !253 ; 2 uses
  %i.no = getelementptr inbounds [4 x i8], ptr %3, i64 %i.nl ; 2 uses
  %i.np = load float, ptr %i.no, align 4, !tbaa !253 ; 2 uses
  %i.nq = fneg float %i.np
  %i.nr = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ns = getelementptr inbounds [4 x i8], ptr %i.nr, i64 %i.nj ; 2 uses
  %i.nt = getelementptr inbounds [4 x i8], ptr %i.nr, i64 %i.nl ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.nv = getelementptr inbounds [4 x i8], ptr %i.nu, i64 %i.nj ; 2 uses
  %i.nw = getelementptr inbounds [4 x i8], ptr %i.nu, i64 %i.nl ; 2 uses
  %i.nx = load <2 x float>, ptr %i.lo, align 4, !tbaa !253 ; 4 uses
  %i.ny = extractelement <2 x float> %i.nx, i64 1 ; 4 uses
  %i.nz = fmul float %i.ny, %i.nq
  %i.oa = extractelement <2 x float> %i.nx, i64 0 ; 4 uses
  %i.ob = call float @llvm.fmuladd.f32(float %i.oa, float %i.nn, float %i.nz)
  store float %i.ob, ptr %i.nm, align 4, !tbaa !253
  %i.oc = fmul float %i.np, %i.oa
  %i.od = call float @llvm.fmuladd.f32(float %i.ny, float %i.nn, float %i.oc)
  store float %i.od, ptr %i.no, align 4, !tbaa !253
  %i.oe = load float, ptr %i.ns, align 4, !tbaa !253 ; 2 uses
  %i.of = load float, ptr %i.nt, align 4, !tbaa !253 ; 2 uses
  %i.og = fneg float %i.of
  %i.oh = fmul float %i.ny, %i.og
  %i.oi = call float @llvm.fmuladd.f32(float %i.oa, float %i.oe, float %i.oh)
  store float %i.oi, ptr %i.ns, align 4, !tbaa !253
  %i.oj = fmul float %i.oa, %i.of
  %i.ok = call float @llvm.fmuladd.f32(float %i.ny, float %i.oe, float %i.oj)
  store float %i.ok, ptr %i.nt, align 4, !tbaa !253
  %i.ol = load float, ptr %i.nv, align 4, !tbaa !253
  %i.om = load float, ptr %i.nw, align 4, !tbaa !253 ; 2 uses
  %i.on = fneg float %i.om
  %i.oo = insertelement <2 x float> poison, float %i.om, i64 0
  %i.op = insertelement <2 x float> %i.oo, float %i.on, i64 1
  %i.oq = fmul <2 x float> %i.nx, %i.op
  %i.or = shufflevector <2 x float> %i.oq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.os = insertelement <2 x float> poison, float %i.ol, i64 0
  %i.ot = shufflevector <2 x float> %i.os, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ou = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nx, <2 x float> %i.ot, <2 x float> %i.or) ; 2 uses
  %i.ov = extractelement <2 x float> %i.ou, i64 0
  store float %i.ov, ptr %i.nv, align 4, !tbaa !253
  %i.ow = extractelement <2 x float> %i.ou, i64 1
  store float %i.ow, ptr %i.nw, align 4, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %.sink.split

bb.o:                                             ; preds = %bb.k
  %i.ox = call noundef float @llvm.fabs.f32(float %i.fk)
  %i.oy = fcmp ugt float %i.ox, %.0113
  br i1 %i.oy, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.oz = fmul float %i.fg, %i.fg
  %i.pa = call float @llvm.fmuladd.f32(float %i.fj, float %i.fj, float %i.oz) ; 2 uses
  %i.pb = fcmp ogt float %i.pa, f0x34000000
  br i1 %i.pb, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %sqrt.i123 = call float @llvm.sqrt.f32(float %i.pa) ; 2 uses
  %i.pc = fcmp ogt float %sqrt.i123, f0x34000000
  br i1 %i.pc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.pd = fdiv float 1.000000e+00, %sqrt.i123     ; 2 uses
  %i.pe = fmul float %i.fj, %i.pd
  %i.pf = fneg float %i.fg
  %i.pg = fmul float %i.pd, %i.pf
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.sroa.24228.0 = phi float [ %i.pg, %bb.r ], [ 0.000000e+00, %bb.q ], [ 0.000000e+00, %bb.p ] ; 4 uses
  %.sroa.9216.0 = phi float [ %i.pe, %bb.r ], [ 1.000000e+00, %bb.q ], [ 1.000000e+00, %bb.p ] ; 4 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.pi = load float, ptr %i.ph, align 8, !tbaa !253 ; 2 uses
  %i.pj = insertelement <2 x float> poison, float %.sroa.9216.0, i64 0
end_hunk_0
