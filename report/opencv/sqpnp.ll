Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/sqpnp?download=true
inline.NumInlined: 1194
inline.NumDeleted: 157
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZN2cv5sqpnp10PoseSolver25nearestRotationMatrixFOAMERKNS_4MatxIdLi9ELi1EEERS3_:bb.a
  %i.hk = fmul <2 x double> %i.hj, %i.ft          ; 2 uses
  %i.hl = extractelement <2 x double> %i.hk, i64 0
  store double %i.hl, ptr %1, align 8, !tbaa !43
  %i.hm = load double, ptr %i.h, align 8, !tbaa !43
  %i.hn = extractelement <2 x double> %i.hk, i64 1
  %i.ho = tail call double @llvm.fmuladd.f64(double %i.hg, double %i.hm, double %i.hn)
  %i.hp = fmul double %i.fa, %i.ho
  store double %i.hp, ptr %i.fu, align 8, !tbaa !43
  %i.hq = load double, ptr %i.j, align 8, !tbaa !43
  %i.hr = tail call double @llvm.fmuladd.f64(double %i.hg, double %i.hq, double %i.gg)
  %i.hs = fmul double %i.fa, %i.hr
  store double %i.hs, ptr %i.fv, align 8, !tbaa !43
  %i.ht = load double, ptr %i.i, align 8, !tbaa !43
  %i.hu = insertelement <2 x double> poison, double %i.ht, i64 0
  %i.hv = insertelement <2 x double> %i.hu, double %i.bf, i64 1
  %i.hw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hi, <2 x double> %i.hv, <2 x double> %i.go)
  %i.hx = fmul <2 x double> %i.ft, %i.hw          ; 2 uses
  %i.hy = extractelement <2 x double> %i.hx, i64 0
  store double %i.hy, ptr %i.gl, align 8, !tbaa !43
  %i.hz = load double, ptr %i.a, align 8, !tbaa !43
  %i.ia = extractelement <2 x double> %i.hx, i64 1
  %i.ib = tail call double @llvm.fmuladd.f64(double %i.hg, double %i.hz, double %i.ia)
  %i.ic = fmul double %i.fa, %i.ib
  store double %i.ic, ptr %i.gp, align 8, !tbaa !43
  %i.id = load double, ptr %i.c, align 8, !tbaa !43
  %i.ie = tail call double @llvm.fmuladd.f64(double %i.hg, double %i.id, double %i.gt)
  %i.if = fmul double %i.fa, %i.ie
  store double %i.if, ptr %i.gu, align 8, !tbaa !43
  %i.ig = load double, ptr %i.q, align 8, !tbaa !43
  %i.ih = insertelement <2 x double> poison, double %i.ig, i64 0
  %i.ii = insertelement <2 x double> %i.ih, double %i.bi, i64 1
  %i.ij = insertelement <2 x double> %i.hc, double %i.hf, i64 0
  %i.ik = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hi, <2 x double> %i.ii, <2 x double> %i.ij)
  %i.il = fmul <2 x double> %i.ft, %i.ik          ; 2 uses
  %i.im = extractelement <2 x double> %i.il, i64 0
  store double %i.im, ptr %i.gw, align 8, !tbaa !43
  %i.in = load double, ptr %i.d, align 8, !tbaa !43
  %i.io = extractelement <2 x double> %i.il, i64 1
  %i.ip = tail call double @llvm.fmuladd.f64(double %i.hg, double %i.in, double %i.io)
  %i.iq = fmul double %i.fa, %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 56
  store double %i.iq, ptr %i.ir, align 8, !tbaa !43
  %i.is = load double, ptr %i.b, align 8, !tbaa !43
  %i.it = fneg double %i.ew
  %i.iu = tail call double @llvm.fmuladd.f64(double %.1.lcssa, double %i.bq, double %i.it)
  %i.iv = fmul double %i.iu, 2.000000e+00
  %i.iw = tail call double @llvm.fmuladd.f64(double %i.hg, double %i.is, double %i.iv)
  %i.ix = fmul double %i.fa, %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 64
  store double %i.ix, ptr %i.iy, align 8, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv5sqpnp10PoseSolver6runSQPERKNS_4MatxIdLi9ELi1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.cv::sqpnp::PoseSolver::SQPSolution") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(3492) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.cv::Matx.0", align 16       ; 14 uses
  %4 = alloca %"class.cv::Matx.0", align 16       ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false), !tbaa.struct !58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.069 = phi i32 [ 0, %bb.a ], [ %i.m, %bb.b ]   ; 2 uses
  %i.m = add nuw nsw i32 %.069, 1
  call void @_ZN2cv5sqpnp10PoseSolver14solveSQPSystemERKNS_4MatxIdLi9ELi1EEERS3_(ptr noundef nonnull align 8 dereferenceable(3492) %1, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %4)
  %i.n = load double, ptr %i.b, align 16, !tbaa !43
  %i.o = load double, ptr %i.c, align 16, !tbaa !43 ; 3 uses
  %i.p = load double, ptr %i.k, align 16, !tbaa !43
  %i.q = load double, ptr %i.l, align 16, !tbaa !43 ; 3 uses
  %i.r = load <2 x double>, ptr %3, align 16, !tbaa !43 ; 2 uses
  %i.s = load <2 x double>, ptr %4, align 16, !tbaa !43 ; 3 uses
  %i.t = load double, ptr %i.a, align 8, !tbaa !43 ; 2 uses
  %i.u = load <2 x double>, ptr %i.h, align 16, !tbaa !43 ; 2 uses
  %i.v = load <2 x double>, ptr %i.i, align 16, !tbaa !43 ; 3 uses
  %i.w = load double, ptr %i.j, align 8, !tbaa !43 ; 2 uses
  %i.x = shufflevector <2 x double> %i.u, <2 x double> %i.r, <2 x i32> <i32 0, i32 2>
  %i.y = shufflevector <2 x double> %i.v, <2 x double> %i.s, <2 x i32> <i32 0, i32 2>
  %i.z = fadd <2 x double> %i.x, %i.y             ; 4 uses
  %i.aa = shufflevector <2 x double> %i.r, <2 x double> %i.u, <2 x i32> <i32 1, i32 3>
  %i.ab = shufflevector <2 x double> %i.s, <2 x double> %i.v, <2 x i32> <i32 1, i32 3>
  %i.ac = fadd <2 x double> %i.aa, %i.ab          ; 4 uses
  %i.ad = shufflevector <2 x double> %i.z, <2 x double> %i.ac, <2 x i32> <i32 1, i32 2> ; 2 uses
  store <2 x double> %i.ad, ptr %3, align 16, !tbaa !43
  %i.ae = insertelement <2 x double> poison, double %i.p, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.n, i64 1
  %i.ag = insertelement <2 x double> poison, double %i.q, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %i.o, i64 1
  %i.ai = fadd <2 x double> %i.af, %i.ah          ; 4 uses
  %i.aj = load <3 x double>, ptr %i.d, align 8, !tbaa !43
  %i.ak = load <3 x double>, ptr %i.e, align 8, !tbaa !43 ; 3 uses
  %i.al = load double, ptr %i.g, align 16, !tbaa !43 ; 2 uses
  %i.am = fadd <3 x double> %i.aj, %i.ak          ; 5 uses
  %i.an = shufflevector <2 x double> %i.ai, <2 x double> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.ao = shufflevector <3 x double> %i.an, <3 x double> %i.am, <2 x i32> <i32 1, i32 3> ; 2 uses
  store <2 x double> %i.ao, ptr %i.b, align 16, !tbaa !43
  %i.ap = shufflevector <3 x double> %i.am, <3 x double> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  store <2 x double> %i.ap, ptr %i.f, align 16, !tbaa !43
  %i.aq = shufflevector <2 x double> %i.z, <2 x double> %i.ac, <2 x i32> <i32 0, i32 3> ; 2 uses
  store <2 x double> %i.aq, ptr %i.h, align 16, !tbaa !43
  %i.ar = extractelement <2 x double> %i.ai, i64 0 ; 2 uses
  store double %i.ar, ptr %i.k, align 16, !tbaa !43
  %i.as = extractelement <2 x double> %i.s, i64 0 ; 2 uses
  %i.at = call double @llvm.fmuladd.f64(double %i.as, double %i.as, double 0.000000e+00)
  %i.au = call double @llvm.fmuladd.f64(double %i.t, double %i.t, double %i.at)
  %i.av = call double @llvm.fmuladd.f64(double %i.o, double %i.o, double %i.au)
  %i.aw = extractelement <3 x double> %i.ak, i64 0 ; 2 uses
  %i.ax = call double @llvm.fmuladd.f64(double %i.aw, double %i.aw, double %i.av)
  %i.ay = call double @llvm.fmuladd.f64(double %i.al, double %i.al, double %i.ax)
  %i.az = extractelement <3 x double> %i.ak, i64 2 ; 2 uses
  %i.ba = call double @llvm.fmuladd.f64(double %i.az, double %i.az, double %i.ay)
  %i.bb = extractelement <2 x double> %i.v, i64 0 ; 2 uses
  %i.bc = call double @llvm.fmuladd.f64(double %i.bb, double %i.bb, double %i.ba)
  %i.bd = call double @llvm.fmuladd.f64(double %i.w, double %i.w, double %i.bc)
  %i.be = call noundef double @llvm.fmuladd.f64(double %i.q, double %i.q, double %i.bd)
  %i.bf = fcmp ogt double %i.be, 1.000000e-10
  %i.bg = icmp samesign ult i32 %.069, 14
  %or.cond = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond, label %bb.b, label %.critedge, !llvm.loop !141

.critedge:                                        ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, i8 0, i64 104, i1 false)
  %i.bh = shufflevector <3 x double> %i.am, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bi = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bj = fmul <2 x double> %i.bh, %i.bi
  %i.bk = shufflevector <3 x double> %i.am, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.bl = fmul <2 x double> %i.bk, %i.ac
  %i.bm = shufflevector <3 x double> %i.am, <3 x double> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x double> %i.ai, %i.bm
  %i.bo = fmul <2 x double> %i.bl, %i.z
  %i.bp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.ai, <2 x double> %i.bo)
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.br = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.ac, <2 x double> %i.bq) ; 2 uses
  %shift = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %shift, %i.br
  %i.bs = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.bt = fcmp olt double %i.bs, 0.000000e+00
  br i1 %i.bt, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  %i.bu = fneg double %i.ar
  %i.bv = fneg <2 x double> %i.ad
  store <2 x double> %i.bv, ptr %3, align 16
  %i.bw = fneg <2 x double> %i.ao
  store <2 x double> %i.bw, ptr %i.b, align 16
  %i.bx = fneg <2 x double> %i.ap
  store <2 x double> %i.bx, ptr %i.f, align 16
  %i.by = fneg <2 x double> %i.aq
  store <2 x double> %i.by, ptr %i.h, align 16
  store double %i.bu, ptr %i.k, align 16, !tbaa !32
  %i.bz = fneg double %i.bs
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  %.0 = phi double [ %i.bz, %bb.c ], [ %i.bs, %.critedge ]
  %i.ca = fcmp ogt double %.0, 1.001000e+00
  br i1 %i.ca, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN2cv5sqpnp10PoseSolver25nearestRotationMatrixFOAMERKNS_4MatxIdLi9ELi1EEERS3_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 16 dereferenceable(72) %3, i64 72, i1 false), !tbaa.struct !58
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv5sqpnp10PoseSolver14solveSQPSystemERKNS_4MatxIdLi9ELi1EEERS3_(ptr noundef nonnull align 8 dereferenceable(3492) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) initializes((0, 72)) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %4 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %5 = alloca %"struct.cv::Matx_MatMulOp", align 1 ; 3 uses
  %6 = alloca %"class.cv::Matx.5", align 16       ; 33 uses
  %7 = alloca %"class.cv::Matx.8", align 8        ; 18 uses
  %8 = alloca %"class.cv::Matx.9", align 16       ; 18 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %9 = alloca %"class.cv::Matx.1", align 16       ; 28 uses
  %10 = alloca %"class.cv::Matx.1", align 8       ; 30 uses
  %11 = alloca %"class.cv::Matx.4", align 16      ; 10 uses
  %12 = alloca %"class.cv::Matx.4", align 8       ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !43 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) %6, i8 0, i64 216, i1 false), !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %7, i8 0, i64 432, i1 false), !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.i, i8 0, i64 280, i1 false), !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store double 1.000000e-01, ptr %i.a, align 8, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 152
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 168
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 200
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 208
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 216
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 224
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 240
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 256
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 272
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 280
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 160
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 192
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 256
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 288
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 352
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 384
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 392
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 400
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 408
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 416
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 424
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.aj = load <4 x double>, ptr %1, align 8, !tbaa !43 ; 6 uses
  %i.ak = load double, ptr %i.b, align 8, !tbaa !43 ; 2 uses
  %i.al = load <2 x double>, ptr %1, align 8
  %i.am = load <2 x double>, ptr %i.c, align 8, !tbaa !43 ; 3 uses
  %i.an = load double, ptr %i.d, align 8, !tbaa !43
  %i.ao = shufflevector <2 x double> %i.am, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ap = shufflevector <4 x double> %i.aj, <4 x double> %i.ao, <2 x i32> <i32 1, i32 4> ; 2 uses
  %i.aq = fmul <2 x double> %i.ap, %i.ap
  %i.ar = shufflevector <4 x double> %i.aj, <4 x double> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.ar, <2 x double> %i.aq)
  %i.at = shufflevector <4 x double> %i.aj, <4 x double> %i.ao, <2 x i32> <i32 2, i32 5> ; 2 uses
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.at, <2 x double> %i.as)
  %i.av = extractelement <2 x double> %i.am, i64 0
  %i.aw = extractelement <4 x double> %i.aj, i64 2
  %i.ax = load <2 x double>, ptr %i.e, align 8, !tbaa !43 ; 3 uses
  %i.ay = load double, ptr %i.f, align 8, !tbaa !43 ; 3 uses
  %i.az = fmul double %i.ay, %i.ay
  %i.ba = extractelement <2 x double> %i.ax, i64 0 ; 3 uses
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.ba, double %i.az)
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.h, double %i.h, double %i.bb)
  %i.bd = fsub double 1.000000e+00, %i.bc
  %i.be = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bf = shufflevector <2 x double> %i.am, <2 x double> %i.ax, <2 x i32> <i32 0, i32 3>
  %i.bg = fmul <2 x double> %i.be, %i.bf
  %i.bh = shufflevector <4 x double> %i.aj, <4 x double> poison, <2 x i32> zeroinitializer
  %i.bi = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bj = insertelement <2 x double> %i.bi, double %i.ak, i64 0
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.bj, <2 x double> %i.bg) ; 2 uses
  %i.bl = extractelement <2 x double> %i.bk, i64 1
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.h, double %i.bl)
  %i.bn = fmul double %i.av, %i.ay
  call void @_ZN2cv5sqpnp10PoseSolver22computeRowAndNullspaceERKNS_4MatxIdLi9ELi1EEERNS2_IdLi9ELi6EEERNS2_IdLi9ELi3EEERNS2_IdLi6ELi6EEERKd(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(432) %7, ptr noundef nonnull align 8 dereferenceable(216) %6, ptr noundef nonnull align 8 dereferenceable(288) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.bo = fsub <2 x double> splat (double 1.000000e+00), %i.au
  %i.bp = fneg double %i.bm
  %i.bq = load <2 x double>, ptr %8, align 16
  %i.br = load double, ptr %i.j, align 8, !tbaa !43
  %i.bs = load double, ptr %i.k, align 16, !tbaa !43
  %i.bt = load <2 x double>, ptr %i.l, align 16
  %i.bu = load double, ptr %i.m, align 8, !tbaa !43
  %i.bv = fneg double %i.bu
  %i.bw = load double, ptr %i.n, align 8, !tbaa !43
  %i.bx = load double, ptr %i.o, align 8, !tbaa !43
  %i.by = load double, ptr %i.p, align 16, !tbaa !43
  %i.bz = fneg double %i.by
  %i.ca = load double, ptr %i.q, align 8, !tbaa !43
  %i.cb = fneg double %i.ca
  %i.cc = load double, ptr %i.r, align 16, !tbaa !43
  %i.cd = load double, ptr %i.s, align 16, !tbaa !43
  %i.ce = fneg double %i.cd
  %i.cf = load <2 x double>, ptr %i.t, align 16, !tbaa !43
  %i.cg = fneg <2 x double> %i.cf                 ; 2 uses
  %i.ch = load double, ptr %i.u, align 16, !tbaa !43
  %i.ci = fneg double %i.ch
  %i.cj = load double, ptr %i.v, align 8, !tbaa !43
  %i.ck = load double, ptr %i.ad, align 8, !tbaa !43
  %i.cl = load double, ptr %i.ae, align 8, !tbaa !43
  %i.cm = load double, ptr %i.af, align 8, !tbaa !43
  %i.cn = load double, ptr %i.ag, align 8, !tbaa !43
  %i.co = load double, ptr %i.ah, align 8, !tbaa !43
  %i.cp = load double, ptr %i.ai, align 8, !tbaa !43
  %i.cq = load <8 x double>, ptr %7, align 8, !tbaa !43 ; 6 uses
  %i.cr = shufflevector <8 x double> %i.cq, <8 x double> poison, <2 x i32> <i32 0, i32 6>
  %i.cs = shufflevector <8 x double> %i.cq, <8 x double> poison, <2 x i32> <i32 1, i32 7>
  %i.ct = load <4 x double>, ptr %i.w, align 8, !tbaa !43
  %i.cu = shufflevector <4 x double> %i.ct, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison> ; 4 uses
  %i.cv = shufflevector <8 x double> %i.cq, <8 x double> %i.cu, <2 x i32> <i32 2, i32 8>
  %i.cw = shufflevector <8 x double> %i.cq, <8 x double> %i.cu, <2 x i32> <i32 3, i32 9>
  %i.cx = shufflevector <8 x double> %i.cq, <8 x double> %i.cu, <2 x i32> <i32 4, i32 10>
  %i.cy = shufflevector <8 x double> %i.cq, <8 x double> %i.cu, <2 x i32> <i32 5, i32 11>
  %i.cz = load <8 x double>, ptr %i.x, align 8, !tbaa !43 ; 6 uses
  %i.da = load <4 x double>, ptr %i.y, align 8, !tbaa !43
  %i.db = shufflevector <8 x double> %i.cz, <8 x double> poison, <2 x i32> <i32 0, i32 6>
  %i.dc = shufflevector <8 x double> %i.cz, <8 x double> poison, <2 x i32> <i32 1, i32 7>
  %i.dd = shufflevector <4 x double> %i.da, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison> ; 4 uses
  %i.de = shufflevector <8 x double> %i.cz, <8 x double> %i.dd, <2 x i32> <i32 2, i32 8>
  %i.df = shufflevector <8 x double> %i.cz, <8 x double> %i.dd, <2 x i32> <i32 3, i32 9>
  %i.dg = shufflevector <8 x double> %i.cz, <8 x double> %i.dd, <2 x i32> <i32 4, i32 10>
  %i.dh = shufflevector <8 x double> %i.cz, <8 x double> %i.dd, <2 x i32> <i32 5, i32 11>
  %i.di = load <8 x double>, ptr %i.z, align 8, !tbaa !43 ; 6 uses
  %i.dj = load <4 x double>, ptr %i.aa, align 8, !tbaa !43
  %i.dk = shufflevector <8 x double> %i.di, <8 x double> poison, <2 x i32> <i32 0, i32 6>
  %i.dl = shufflevector <8 x double> %i.di, <8 x double> poison, <2 x i32> <i32 1, i32 7>
  %i.dm = shufflevector <4 x double> %i.dj, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison> ; 4 uses
  %i.dn = shufflevector <8 x double> %i.di, <8 x double> %i.dm, <2 x i32> <i32 2, i32 8>
  %i.do = shufflevector <8 x double> %i.di, <8 x double> %i.dm, <2 x i32> <i32 3, i32 9>
  %i.dp = shufflevector <8 x double> %i.di, <8 x double> %i.dm, <2 x i32> <i32 4, i32 10>
  %i.dq = shufflevector <8 x double> %i.di, <8 x double> %i.dm, <2 x i32> <i32 5, i32 11>
  %i.dr = load <8 x double>, ptr %i.ab, align 8, !tbaa !43 ; 6 uses
  %i.ds = load <4 x double>, ptr %i.ac, align 8, !tbaa !43
  %i.dt = insertelement <2 x double> %i.bq, double %i.br, i64 1
  %i.du = fdiv <2 x double> %i.bo, %i.dt          ; 5 uses
  %i.dv = fdiv double %i.bd, %i.bs                ; 4 uses
  %i.dw = extractelement <2 x double> %i.du, i64 0 ; 2 uses
  %i.dx = extractelement <2 x double> %i.du, i64 1 ; 2 uses
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.ba, double %i.bn)
  %i.dz = shufflevector <4 x double> %i.aj, <4 x double> poison, <2 x i32> <i32 2, i32 poison>
  %i.ea = insertelement <2 x double> %i.dz, double %i.h, i64 1
  %i.eb = insertelement <2 x double> poison, double %i.an, i64 0
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = insertelement <2 x double> %i.bk, double %i.dy, i64 1
  %i.ee = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ea, <2 x double> %i.ec, <2 x double> %i.ed)
  %i.ef = fneg <2 x double> %i.ee
  %i.eg = insertelement <2 x double> %i.bt, double %i.bx, i64 1
  %i.eh = fneg <2 x double> %i.eg
  %i.ei = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eh, <2 x double> %i.du, <2 x double> %i.ef) ; 2 uses
  %i.ej = extractelement <2 x double> %i.ei, i64 0
  %i.ek = call double @llvm.fmuladd.f64(double %i.bv, double %i.dx, double %i.ej)
  %i.el = fdiv double %i.ek, %i.bw                ; 4 uses
  %i.em = extractelement <2 x double> %i.ei, i64 1
  %i.en = call double @llvm.fmuladd.f64(double %i.bz, double %i.dv, double %i.em)
  %i.eo = call double @llvm.fmuladd.f64(double %i.cb, double %i.el, double %i.en)
  %i.ep = fdiv double %i.eo, %i.cc                ; 3 uses
  %i.eq = call double @llvm.fmuladd.f64(double %i.ce, double %i.dw, double %i.bp)
  %i.er = extractelement <2 x double> %i.cg, i64 0
  %i.es = call double @llvm.fmuladd.f64(double %i.er, double %i.dv, double %i.eq)
  %i.et = extractelement <2 x double> %i.cg, i64 1
  %i.eu = call double @llvm.fmuladd.f64(double %i.et, double %i.el, double %i.es)
  %i.ev = call double @llvm.fmuladd.f64(double %i.ci, double %i.ep, double %i.eu)
  %i.ew = fdiv double %i.ev, %i.cj                ; 2 uses
  %i.ex = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ey = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> %i.ex, <2 x double> zeroinitializer)
  %i.ez = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.fa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.ez, <2 x double> %i.ey)
  %i.fb = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.fc = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.fd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cv, <2 x double> %i.fc, <2 x double> %i.fa)
  %i.fe = insertelement <2 x double> poison, double %i.el, i64 0
  %i.ff = shufflevector <2 x double> %i.fe, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.fg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> %i.ff, <2 x double> %i.fd)
  %i.fh = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.fi = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.fj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.fi, <2 x double> %i.fg)
  %i.fk = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.fm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.fl, <2 x double> %i.fj)
  %i.fn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.db, <2 x double> %i.ex, <2 x double> zeroinitializer)
  %i.fo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> %i.ez, <2 x double> %i.fn)
  %i.fp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.fc, <2 x double> %i.fo)
  %i.fq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.ff, <2 x double> %i.fp)
  %i.fr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> %i.fi, <2 x double> %i.fq)
  %i.fs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dh, <2 x double> %i.fl, <2 x double> %i.fr)
  %i.ft = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.ex, <2 x double> zeroinitializer)
  %i.fu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> %i.ez, <2 x double> %i.ft)
  %i.fv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dn, <2 x double> %i.fc, <2 x double> %i.fu)
  %i.fw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> %i.ff, <2 x double> %i.fv)
  %i.fx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> %i.fi, <2 x double> %i.fw)
  %i.fy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dq, <2 x double> %i.fl, <2 x double> %i.fx)
  %i.fz = shufflevector <8 x double> %i.dr, <8 x double> poison, <2 x i32> <i32 0, i32 6>
  %i.ga = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.ex, <2 x double> zeroinitializer)
  %i.gb = shufflevector <8 x double> %i.dr, <8 x double> poison, <2 x i32> <i32 1, i32 7>
  %i.gc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> %i.ez, <2 x double> %i.ga)
  %i.gd = shufflevector <4 x double> %i.ds, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison> ; 4 uses
  %i.ge = shufflevector <8 x double> %i.dr, <8 x double> %i.gd, <2 x i32> <i32 2, i32 8>
  %i.gf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ge, <2 x double> %i.fc, <2 x double> %i.gc)
  %i.gg = shufflevector <8 x double> %i.dr, <8 x double> %i.gd, <2 x i32> <i32 3, i32 9>
  %i.gh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gg, <2 x double> %i.ff, <2 x double> %i.gf)
  %i.gi = shufflevector <8 x double> %i.dr, <8 x double> %i.gd, <2 x i32> <i32 4, i32 10>
  %i.gj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gi, <2 x double> %i.fi, <2 x double> %i.gh)
  %i.gk = shufflevector <8 x double> %i.dr, <8 x double> %i.gd, <2 x i32> <i32 5, i32 11>
  %i.gl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gk, <2 x double> %i.fl, <2 x double> %i.gj)
  %i.gm = call double @llvm.fmuladd.f64(double %i.ck, double %i.dw, double 0.000000e+00)
  %i.gn = call double @llvm.fmuladd.f64(double %i.cl, double %i.dx, double %i.gm)
  %i.go = call double @llvm.fmuladd.f64(double %i.cm, double %i.dv, double %i.gn)
  %i.gp = call double @llvm.fmuladd.f64(double %i.cn, double %i.el, double %i.go)
  %i.gq = call double @llvm.fmuladd.f64(double %i.co, double %i.ep, double %i.gp)
  %i.gr = call double @llvm.fmuladd.f64(double %i.cp, double %i.ew, double %i.gq)
  store <2 x double> %i.fm, ptr %2, align 8
  store <2 x double> %i.fs, ptr %.sroa.5.0..sroa_idx, align 8
  store <2 x double> %i.fy, ptr %.sroa.7.0..sroa_idx, align 8
  store <2 x double> %i.gl, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  store double %i.gr, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.gs = load double, ptr %6, align 16, !tbaa !43, !noalias !150
  store double %i.gs, ptr %10, align 8, !tbaa !43, !alias.scope !150
  %i.gt = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !43, !noalias !150
  %i.gv = getelementptr inbounds nuw i8, ptr %10, i64 8
  store double %i.gu, ptr %i.gv, align 8, !tbaa !43, !alias.scope !150
  %i.gw = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.gx = load double, ptr %i.gw, align 16, !tbaa !43, !noalias !150
  %i.gy = getelementptr inbounds nuw i8, ptr %10, i64 16
  store double %i.gx, ptr %i.gy, align 8, !tbaa !43, !alias.scope !150
  %i.gz = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !43, !noalias !150
  %i.hb = getelementptr inbounds nuw i8, ptr %10, i64 24
  store double %i.ha, ptr %i.hb, align 8, !tbaa !43, !alias.scope !150
  %i.hc = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 3 uses
  %i.hd = load double, ptr %i.hc, align 16, !tbaa !43, !noalias !150
  %i.he = getelementptr inbounds nuw i8, ptr %10, i64 32
  store double %i.hd, ptr %i.he, align 8, !tbaa !43, !alias.scope !150
  %i.hf = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !43, !noalias !150
  %i.hh = getelementptr inbounds nuw i8, ptr %10, i64 40
  store double %i.hg, ptr %i.hh, align 8, !tbaa !43, !alias.scope !150
  %i.hi = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 2 uses
  %i.hj = load double, ptr %i.hi, align 16, !tbaa !43, !noalias !150
  %i.hk = getelementptr inbounds nuw i8, ptr %10, i64 48
  store double %i.hj, ptr %i.hk, align 8, !tbaa !43, !alias.scope !150
  %i.hl = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 2 uses
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !43, !noalias !150
  %i.hn = getelementptr inbounds nuw i8, ptr %10, i64 56
  store double %i.hm, ptr %i.hn, align 8, !tbaa !43, !alias.scope !150
  %i.ho = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  %i.hp = load double, ptr %i.ho, align 16, !tbaa !43, !noalias !150
  %i.hq = getelementptr inbounds nuw i8, ptr %10, i64 64
  store double %i.hp, ptr %i.hq, align 8, !tbaa !43, !alias.scope !150
  %i.hr = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !43, !noalias !150
  %i.ht = getelementptr inbounds nuw i8, ptr %10, i64 72
  store double %i.hs, ptr %i.ht, align 8, !tbaa !43, !alias.scope !150
  %i.hu = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.hv = load double, ptr %i.hu, align 16, !tbaa !43, !noalias !150
  %i.hw = getelementptr inbounds nuw i8, ptr %10, i64 80
  store double %i.hv, ptr %i.hw, align 8, !tbaa !43, !alias.scope !150
  %i.hx = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !43, !noalias !150
  %i.hz = getelementptr inbounds nuw i8, ptr %10, i64 88
  store double %i.hy, ptr %i.hz, align 8, !tbaa !43, !alias.scope !150
  %i.ia = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.ib = load double, ptr %i.ia, align 16, !tbaa !43, !noalias !150
  %i.ic = getelementptr inbounds nuw i8, ptr %10, i64 96
  store double %i.ib, ptr %i.ic, align 8, !tbaa !43, !alias.scope !150
  %i.id = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.ie = load double, ptr %i.id, align 8, !tbaa !43, !noalias !150
  %i.if = getelementptr inbounds nuw i8, ptr %10, i64 104
  store double %i.ie, ptr %i.if, align 8, !tbaa !43, !alias.scope !150
  %i.ig = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 3 uses
  %i.ih = load double, ptr %i.ig, align 16, !tbaa !43, !noalias !150
  %i.ii = getelementptr inbounds nuw i8, ptr %10, i64 112
  store double %i.ih, ptr %i.ii, align 8, !tbaa !43, !alias.scope !150
  %i.ij = getelementptr inbounds nuw i8, ptr %6, i64 152 ; 2 uses
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !43, !noalias !150
  %i.il = getelementptr inbounds nuw i8, ptr %10, i64 120
  store double %i.ik, ptr %i.il, align 8, !tbaa !43, !alias.scope !150
  %i.im = getelementptr inbounds nuw i8, ptr %6, i64 176 ; 3 uses
  %i.in = load double, ptr %i.im, align 16, !tbaa !43, !noalias !150
  %i.io = getelementptr inbounds nuw i8, ptr %10, i64 128
  store double %i.in, ptr %i.io, align 8, !tbaa !43, !alias.scope !150
  %i.ip = getelementptr inbounds nuw i8, ptr %6, i64 200 ; 3 uses
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !43, !noalias !150
  %i.ir = getelementptr inbounds nuw i8, ptr %10, i64 136
  store double %i.iq, ptr %i.ir, align 8, !tbaa !43, !alias.scope !150
  %i.is = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.it = load double, ptr %i.is, align 16, !tbaa !43, !noalias !150
  %i.iu = getelementptr inbounds nuw i8, ptr %10, i64 144
  store double %i.it, ptr %i.iu, align 8, !tbaa !43, !alias.scope !150
  %i.iv = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !43, !noalias !150
  %i.ix = getelementptr inbounds nuw i8, ptr %10, i64 152
  store double %i.iw, ptr %i.ix, align 8, !tbaa !43, !alias.scope !150
  %i.iy = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.iz = load double, ptr %i.iy, align 16, !tbaa !43, !noalias !150
  %i.ja = getelementptr inbounds nuw i8, ptr %10, i64 160
  store double %i.iz, ptr %i.ja, align 8, !tbaa !43, !alias.scope !150
  %i.jb = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !43, !noalias !150
  %i.jd = getelementptr inbounds nuw i8, ptr %10, i64 168
  store double %i.jc, ptr %i.jd, align 8, !tbaa !43, !alias.scope !150
  %i.je = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.jf = load double, ptr %i.je, align 16, !tbaa !43, !noalias !150
  %i.jg = getelementptr inbounds nuw i8, ptr %10, i64 176
  store double %i.jf, ptr %i.jg, align 8, !tbaa !43, !alias.scope !150
  %i.jh = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !43, !noalias !150
  %i.jj = getelementptr inbounds nuw i8, ptr %10, i64 184
  store double %i.ji, ptr %i.jj, align 8, !tbaa !43, !alias.scope !150
  %i.jk = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.jl = load double, ptr %i.jk, align 16, !tbaa !43, !noalias !150
  %i.jm = getelementptr inbounds nuw i8, ptr %10, i64 192
  store double %i.jl, ptr %i.jm, align 8, !tbaa !43, !alias.scope !150
  %i.jn = getelementptr inbounds nuw i8, ptr %6, i64 184
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !43, !noalias !150
  %i.jp = getelementptr inbounds nuw i8, ptr %10, i64 200
  store double %i.jo, ptr %i.jp, align 8, !tbaa !43, !alias.scope !150
  %i.jq = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 2 uses
  %i.jr = load double, ptr %i.jq, align 16, !tbaa !43, !noalias !150
  %i.js = getelementptr inbounds nuw i8, ptr %10, i64 208
  store double %i.jr, ptr %i.js, align 8, !tbaa !43, !alias.scope !150
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZN2cv4MatxIdLi3ELi9EEC2ILi9EEERKNS0_IdLi3EXT_EEERKNS0_IdXT_ELi9EEENS_13Matx_MatMulOpE(ptr noundef nonnull align 8 dereferenceable(216) %9, ptr noundef nonnull align 8 dereferenceable(216) %10, ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull align 1 dead_on_return %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.jt = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %13 = load double, ptr %i.hl, align 8, !tbaa !43 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %14 = load double, ptr %i.ho, align 16, !tbaa !43 ; 2 uses
  %i.kb = load double, ptr %i.is, align 16, !tbaa !43 ; 3 uses
  %i.kc = load double, ptr %i.iv, align 8, !tbaa !43 ; 3 uses
  %i.kd = load double, ptr %i.iy, align 16, !tbaa !43 ; 3 uses
  %i.ke = load double, ptr %i.jb, align 8, !tbaa !43 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.kg = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %9, i64 120 ; 2 uses
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !43 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.kn = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ko = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.kp = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.kq = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %9, i64 152
  %i.ks = getelementptr inbounds nuw i8, ptr %9, i64 160
  %i.kt = getelementptr inbounds nuw i8, ptr %9, i64 168
  %i.ku = getelementptr inbounds nuw i8, ptr %9, i64 184
  %i.kv = getelementptr inbounds nuw i8, ptr %9, i64 200
  %i.kw = load <2 x double>, ptr %i.kl, align 16, !tbaa !43 ; 3 uses
  %i.kx = load <2 x double>, ptr %i.kr, align 8, !tbaa !43 ; 3 uses
  %i.ky = load double, ptr %i.ks, align 16, !tbaa !43 ; 2 uses
  %i.kz = load <2 x double>, ptr %i.kt, align 8, !tbaa !43 ; 5 uses
  %i.la = load <2 x double>, ptr %i.ku, align 8, !tbaa !43 ; 5 uses
  %i.lb = load <2 x double>, ptr %i.kv, align 8, !tbaa !43 ; 5 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %11, i64 56
  %15 = load <2 x double>, ptr %i.ig, align 16, !tbaa !43 ; 2 uses
  %16 = load <2 x double>, ptr %i.ij, align 8, !tbaa !43 ; 4 uses
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 1>
  %18 = load <2 x double>, ptr %i.im, align 16, !tbaa !43 ; 3 uses
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 1>
  %i.ld = load <2 x double>, ptr %i.ip, align 8, !tbaa !43 ; 4 uses
  %20 = shufflevector <2 x double> %i.ld, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 1>
  %21 = extractelement <2 x double> %16, i64 1
  %22 = extractelement <2 x double> %18, i64 1
  %23 = extractelement <2 x double> %i.ld, i64 1
  %i.le = load <2 x double>, ptr %6, align 16, !tbaa !43 ; 3 uses
  %i.lf = load <2 x double>, ptr %i.gt, align 8, !tbaa !43 ; 3 uses
  %i.lg = load <2 x double>, ptr %i.gw, align 16, !tbaa !43 ; 3 uses
  %i.lh = load <2 x double>, ptr %i.gz, align 8, !tbaa !43 ; 3 uses
  %i.li = load <2 x double>, ptr %i.hc, align 16, !tbaa !43 ; 4 uses
  %i.lj = insertelement <2 x double> poison, double %i.kk, i64 0
  %i.lk = shufflevector <2 x double> %i.lj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ll = shufflevector <2 x double> %i.kw, <2 x double> poison, <2 x i32> zeroinitializer
  %24 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %25 = insertelement <2 x double> %24, double %13, i64 0 ; 2 uses
  %26 = shufflevector <2 x double> %i.ld, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %27 = insertelement <2 x double> %26, double %14, i64 0 ; 2 uses
  %i.lm = load double, ptr %9, align 16, !tbaa !43 ; 2 uses
  %i.ln = load double, ptr %i.jt, align 8, !tbaa !43 ; 2 uses
  %i.lo = load double, ptr %i.ju, align 16, !tbaa !43 ; 2 uses
  %i.lp = load double, ptr %i.jv, align 8, !tbaa !43 ; 2 uses
  %i.lq = load double, ptr %i.jw, align 16, !tbaa !43 ; 2 uses
  %i.lr = load double, ptr %i.jx, align 8, !tbaa !43 ; 2 uses
  %i.ls = load double, ptr %i.jy, align 16, !tbaa !43 ; 2 uses
  %i.lt = load double, ptr %i.jz, align 8, !tbaa !43 ; 2 uses
  %28 = load double, ptr %i.ka, align 16, !tbaa !43 ; 2 uses
  %29 = call double @llvm.fmuladd.f64(double %i.lm, double %i.kb, double 0.000000e+00)
  %30 = call double @llvm.fmuladd.f64(double %i.ln, double %i.kc, double %29)
  %31 = call double @llvm.fmuladd.f64(double %i.lo, double %i.kd, double %30)
  %i.lu = call double @llvm.fmuladd.f64(double %i.lp, double %i.ke, double %31)
  %i.lv = insertelement <2 x double> poison, double %i.lm, i64 0
  %i.lw = shufflevector <2 x double> %i.lv, <2 x double> poison, <2 x i32> zeroinitializer
  %32 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lw, <2 x double> %i.le, <2 x double> zeroinitializer)
  %i.lx = insertelement <2 x double> poison, double %i.ln, i64 0
  %i.ly = shufflevector <2 x double> %i.lx, <2 x double> poison, <2 x i32> zeroinitializer
  %33 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ly, <2 x double> %i.lf, <2 x double> %32)
  %i.lz = insertelement <2 x double> poison, double %i.lo, i64 0
  %i.ma = shufflevector <2 x double> %i.lz, <2 x double> poison, <2 x i32> zeroinitializer
  %34 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ma, <2 x double> %i.lg, <2 x double> %33)
  %i.mb = insertelement <2 x double> poison, double %i.lp, i64 0
  %i.mc = shufflevector <2 x double> %i.mb, <2 x double> poison, <2 x i32> zeroinitializer
  %35 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mc, <2 x double> %i.lh, <2 x double> %34)
  %i.md = insertelement <2 x double> poison, double %i.lq, i64 0
  %i.me = shufflevector <2 x double> %i.md, <2 x double> poison, <2 x i32> zeroinitializer
  %36 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.me, <2 x double> %i.li, <2 x double> %35)
  %i.mf = insertelement <2 x double> poison, double %i.lr, i64 0
  %i.mg = shufflevector <2 x double> %i.mf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mh = insertelement <2 x double> poison, double %i.ls, i64 0
  %i.mi = shufflevector <2 x double> %i.mh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mj = insertelement <2 x double> poison, double %i.lt, i64 0
  %i.mk = shufflevector <2 x double> %i.mj, <2 x double> poison, <2 x i32> zeroinitializer
  %37 = insertelement <2 x double> poison, double %28, i64 0
  %38 = shufflevector <2 x double> %37, <2 x double> poison, <2 x i32> zeroinitializer
  %39 = shufflevector <2 x double> %i.la, <2 x double> poison, <3 x i32> zeroinitializer
  %40 = shufflevector <2 x double> %15, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 1>
  %41 = shufflevector <2 x double> %i.la, <2 x double> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %42 = shufflevector <2 x double> %i.lb, <2 x double> poison, <3 x i32> zeroinitializer
  %43 = shufflevector <2 x double> %i.lb, <2 x double> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %44 = getelementptr inbounds nuw i8, ptr %11, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %12, i8 0, i64 72, i1 false), !tbaa !43
  %45 = load <2 x double>, ptr %i.je, align 16, !tbaa !43 ; 5 uses
  %46 = load <2 x double>, ptr %i.kg, align 8, !tbaa !43 ; 4 uses
  %47 = load <2 x double>, ptr %i.kh, align 8, !tbaa !43 ; 4 uses
  %48 = load <2 x double>, ptr %i.ki, align 8, !tbaa !43 ; 4 uses
  %49 = load <2 x double>, ptr %i.km, align 8, !tbaa !43 ; 3 uses
  %50 = load double, ptr %i.kq, align 16, !tbaa !43 ; 2 uses
  %51 = extractelement <2 x double> %45, i64 0
  %52 = load <2 x double>, ptr %i.jh, align 8, !tbaa !43 ; 4 uses
  %53 = shufflevector <2 x double> %46, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ml = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %53, <2 x double> %i.le, <2 x double> zeroinitializer)
  %54 = shufflevector <2 x double> %46, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.mm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %54, <2 x double> %i.lf, <2 x double> %i.ml)
  %55 = shufflevector <2 x double> %47, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %55, <2 x double> %i.lg, <2 x double> %i.mm)
  %56 = shufflevector <2 x double> %47, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %57 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %56, <2 x double> %i.lh, <2 x double> %i.mn)
  %58 = shufflevector <2 x double> %48, <2 x double> poison, <2 x i32> zeroinitializer
  %59 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %58, <2 x double> %i.li, <2 x double> %57)
  %60 = shufflevector <2 x double> %48, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.mo = shufflevector <2 x double> %45, <2 x double> %15, <2 x i32> <i32 1, i32 2> ; 2 uses
  %61 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %60, <2 x double> %i.mo, <2 x double> %59)
  %62 = shufflevector <2 x double> %52, <2 x double> %16, <2 x i32> <i32 1, i32 2> ; 2 uses
  %63 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lk, <2 x double> %62, <2 x double> %61)
  %64 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ll, <2 x double> %25, <2 x double> %63)
  %65 = shufflevector <2 x double> %49, <2 x double> poison, <2 x i32> zeroinitializer
  %66 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %65, <2 x double> %27, <2 x double> %64) ; 6 uses
  %i.mp = insertelement <2 x double> poison, double %50, i64 0
  %67 = shufflevector <2 x double> %i.mp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mq = shufflevector <2 x double> %i.le, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.mr = insertelement <2 x double> %i.mq, double %i.kb, i64 1
  %68 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %67, <2 x double> %i.mr, <2 x double> zeroinitializer)
  %i.ms = shufflevector <2 x double> %i.kx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mt = shufflevector <2 x double> %i.lf, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.mu = insertelement <2 x double> %i.mt, double %i.kc, i64 1
  %69 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ms, <2 x double> %i.mu, <2 x double> %68)
  %i.mv = insertelement <2 x double> poison, double %i.ky, i64 0
  %70 = shufflevector <2 x double> %i.mv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mw = shufflevector <2 x double> %i.lg, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.mx = insertelement <2 x double> %i.mw, double %i.kd, i64 1
  %71 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %70, <2 x double> %i.mx, <2 x double> %69)
  %72 = shufflevector <2 x double> %i.kz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.my = shufflevector <2 x double> %i.lh, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.mz = insertelement <2 x double> %i.my, double %i.ke, i64 1
  %73 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %72, <2 x double> %i.mz, <2 x double> %71)
  %74 = shufflevector <2 x double> %i.kz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %75 = shufflevector <2 x double> %i.li, <2 x double> %45, <2 x i32> <i32 1, i32 2>
  %76 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %74, <2 x double> %75, <2 x double> %73)
  %i.na = call double @llvm.fmuladd.f64(double %i.lq, double %51, double %i.lu)
  %77 = extractelement <2 x double> %52, i64 0
  %i.nb = call double @llvm.fmuladd.f64(double %i.lr, double %77, double %i.na)
  %i.nc = call double @llvm.fmuladd.f64(double %i.ls, double %21, double %i.nb)
  %i.nd = call double @llvm.fmuladd.f64(double %i.lt, double %22, double %i.nc)
  %i.ne = call double @llvm.fmuladd.f64(double %28, double %23, double %i.nd)
  store double %i.ne, ptr %i.kf, align 16, !tbaa !43
  %i.nf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mg, <2 x double> %i.mo, <2 x double> %36)
  %i.ng = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mi, <2 x double> %62, <2 x double> %i.nf)
  %i.nh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mk, <2 x double> %25, <2 x double> %i.ng)
  %i.ni = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %38, <2 x double> %27, <2 x double> %i.nh) ; 3 uses
  store <2 x double> %i.ni, ptr %11, align 16, !tbaa !43
  %78 = extractelement <2 x double> %66, i64 1    ; 3 uses
  store double %78, ptr %i.ko, align 16, !tbaa !43
  %79 = shufflevector <2 x double> %76, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 1>
  %80 = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %39, <3 x double> %40, <3 x double> %79)
  %81 = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %41, <3 x double> %17, <3 x double> %80)
  %82 = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %42, <3 x double> %19, <3 x double> %81)
  %83 = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %43, <3 x double> %20, <3 x double> %82) ; 5 uses
  %84 = extractelement <3 x double> %83, i64 0    ; 4 uses
  store double %84, ptr %i.lc, align 8, !tbaa !43
  %85 = extractelement <3 x double> %83, i64 1    ; 3 uses
  store double %85, ptr %44, align 16, !tbaa !43
  %86 = fmul double %84, %84                      ; 2 uses
  %87 = extractelement <2 x double> %i.ni, i64 0  ; 2 uses
  %88 = fmul double %87, %78                      ; 2 uses
  %89 = extractelement <2 x double> %66, i64 0    ; 2 uses
  %90 = shufflevector <2 x double> %46, <2 x double> %49, <2 x i32> <i32 0, i32 3>
  %i.nj = insertelement <2 x double> %i.mq, double %i.kb, i64 0
  %i.nk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %90, <2 x double> %i.nj, <2 x double> zeroinitializer)
  store double %89, ptr %i.kn, align 8, !tbaa !43
  %91 = shufflevector <2 x double> %46, <2 x double> %i.kx, <2 x i32> <i32 1, i32 2>
  %92 = insertelement <2 x double> %i.mt, double %i.kc, i64 0
  %i.nl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %91, <2 x double> %92, <2 x double> %i.nk)
  %93 = insertelement <2 x double> %47, double %i.ky, i64 1
  %94 = insertelement <2 x double> %i.mw, double %i.kd, i64 0
  %i.nm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %93, <2 x double> %94, <2 x double> %i.nl)
  %95 = shufflevector <2 x double> %47, <2 x double> %i.kz, <2 x i32> <i32 1, i32 2>
  %i.nn = insertelement <2 x double> %i.my, double %i.ke, i64 0
  %i.no = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %95, <2 x double> %i.nn, <2 x double> %i.nm)
  %96 = shufflevector <2 x double> %48, <2 x double> %i.kz, <2 x i32> <i32 0, i32 3>
  %97 = shufflevector <2 x double> %45, <2 x double> %i.li, <2 x i32> <i32 0, i32 2>
  %i.np = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %96, <2 x double> %97, <2 x double> %i.no)
  %98 = shufflevector <2 x double> %48, <2 x double> %i.la, <2 x i32> <i32 1, i32 2>
  %99 = shufflevector <2 x double> %52, <2 x double> %45, <2 x i32> <i32 0, i32 3>
  %i.nq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %98, <2 x double> %99, <2 x double> %i.np)
  %100 = insertelement <2 x double> %52, double %i.kk, i64 0
  %101 = shufflevector <2 x double> %16, <2 x double> %i.la, <2 x i32> <i32 1, i32 3>
  %i.nr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %100, <2 x double> %101, <2 x double> %i.nq)
  %102 = shufflevector <2 x double> %i.kw, <2 x double> %i.lb, <2 x i32> <i32 0, i32 2>
  %103 = insertelement <2 x double> %24, double %13, i64 1
  %104 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %102, <2 x double> %103, <2 x double> %i.nr)
  %105 = insertelement <2 x double> %49, double %14, i64 1
  %106 = shufflevector <2 x double> %i.ld, <2 x double> %i.lb, <2 x i32> <i32 1, i32 3>
  %107 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %105, <2 x double> %106, <2 x double> %104) ; 3 uses
  store <2 x double> %107, ptr %i.kp, align 8, !tbaa !43
  %foldExtExtBinop.a = fmul <2 x double> %66, %66
  %i.ns = extractelement <2 x double> %foldExtExtBinop.a, i64 0 ; 2 uses
  %i.nt = extractelement <2 x double> %107, i64 1 ; 3 uses
  %i.nu = fmul double %i.nt, %i.nt                ; 2 uses
  %i.nv = fmul double %89, %i.nt                  ; 2 uses
  %i.nw = fneg double %88
  %108 = fmul double %87, %86
  %i.nx = call double @llvm.fmuladd.f64(double %i.nw, double %85, double %108)
  %i.ny = call double @llvm.fmuladd.f64(double %i.ns, double %85, double %i.nx)
  %i.nz = fmul double %i.nv, -2.000000e+00
  %i.oa = call double @llvm.fmuladd.f64(double %i.nz, double %84, double %i.ny)
  %i.ob = call double @llvm.fmuladd.f64(double %i.nu, double %78, double %i.oa) ; 2 uses
  %i.oc = call double @llvm.fabs.f64(double %i.ob)
  %i.od = fcmp uge double %i.oc, 1.000000e-08
  br i1 %i.od, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.oe = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 -1056833530, ptr %3, align 8, !tbaa !33
  %i.of = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %11, ptr %i.of, align 8, !tbaa !19
  store i64 12884901891, ptr %i.oe, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.og = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 -1040056314, ptr %4, align 8, !tbaa !33
  store ptr %12, ptr %i.og, align 8, !tbaa !19
  %i.oh = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 12884901891, ptr %i.oh, align 8
  %i.oi = call noundef double @_ZN2cv6invertERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.oj = load <8 x double>, ptr %12, align 8, !tbaa !43, !noalias !151 ; 3 uses
  %.phi.trans.insert154 = getelementptr inbounds nuw i8, ptr %12, i64 64
  %.pre155 = load double, ptr %.phi.trans.insert154, align 8, !tbaa !43, !noalias !151
  %.pre156 = load double, ptr %i.kq, align 16, !tbaa !43
  %i.ok = load <11 x double>, ptr %i.kl, align 16, !tbaa !43
  %i.ol = shufflevector <11 x double> %i.ok, <11 x double> poison, <10 x i32> <i32 0, i32 1, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10>
  %i.om = shufflevector <8 x double> %i.oj, <8 x double> poison, <3 x i32> <i32 poison, i32 5, i32 2>
  %i.on = insertelement <3 x double> %i.om, double %.pre155, i64 0
  %i.oo = shufflevector <8 x double> %i.oj, <8 x double> poison, <3 x i32> <i32 7, i32 4, i32 1>
  %i.op = shufflevector <8 x double> %i.oj, <8 x double> poison, <3 x i32> <i32 6, i32 3, i32 0>
  br label %_ZN2cv5sqpnp10PoseSolver24analyticalInverse3x3SymmERKNS_4MatxIdLi3ELi3EEERS3_RKd.exit

bb.c:                                             ; preds = %bb.a
  %i.oq = fdiv double 1.000000e+00, %i.ob         ; 2 uses
  %i.or = fneg <2 x double> %66                   ; 2 uses
  %i.os = shufflevector <2 x double> %107, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %109 = shufflevector <3 x double> %83, <3 x double> poison, <2 x i32> <i32 poison, i32 0>
  %110 = shufflevector <2 x double> %109, <2 x double> %i.or, <2 x i32> <i32 3, i32 1>
  %i.ot = fmul <2 x double> %i.os, %110
  %111 = insertelement <2 x double> poison, double %i.nv, i64 0
  %112 = insertelement <2 x double> %111, double %i.nu, i64 1
  %113 = fneg <2 x double> %112
  %114 = shufflevector <2 x double> %66, <2 x double> %i.or, <3 x i32> <i32 0, i32 2, i32 3>
  %115 = shufflevector <2 x double> %i.ot, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %116 = insertelement <3 x double> %115, double %86, i64 2
  %117 = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %114, <3 x double> %83, <3 x double> %116) ; 3 uses
  %118 = fneg double %i.oq
  %119 = insertelement <3 x double> poison, double %118, i64 0 ; 2 uses
  %120 = insertelement <3 x double> %119, double %i.oq, i64 2 ; 3 uses
  %121 = shufflevector <3 x double> %120, <3 x double> poison, <3 x i32> <i32 0, i32 0, i32 2>
  %122 = fmul <3 x double> %117, %121
  %123 = shufflevector <2 x double> %i.ni, <2 x double> poison, <2 x i32> zeroinitializer
  %124 = shufflevector <3 x double> %83, <3 x double> poison, <2 x i32> <i32 0, i32 1>
  %125 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %123, <2 x double> %124, <2 x double> %113) ; 3 uses
  %126 = shufflevector <2 x double> %125, <2 x double> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %127 = fneg <2 x double> %125
  %128 = shufflevector <2 x double> %125, <2 x double> %127, <3 x i32> <i32 0, i32 3, i32 poison>
  %129 = shufflevector <3 x double> %128, <3 x double> %117, <3 x i32> <i32 0, i32 1, i32 4>
  %130 = shufflevector <3 x double> %120, <3 x double> poison, <3 x i32> <i32 2, i32 2, i32 0>
  %i.ou = fmul <3 x double> %129, %130
  %131 = fsub double %88, %i.ns
  %132 = fneg double %131
  %133 = shufflevector <3 x double> %120, <3 x double> %117, <3 x i32> <i32 2, i32 2, i32 3>
  %134 = shufflevector <3 x double> %126, <3 x double> %119, <3 x i32> <i32 poison, i32 0, i32 3>
  %135 = insertelement <3 x double> %134, double %132, i64 0
  %136 = fmul <3 x double> %133, %135
  %i.ov = shufflevector <2 x double> %i.kw, <2 x double> %i.kx, <10 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ow = shufflevector <2 x double> %i.lb, <2 x double> poison, <10 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ox = shufflevector <10 x double> %i.ov, <10 x double> %i.ow, <10 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 10, i32 11>
  %i.oy = shufflevector <2 x double> %i.la, <2 x double> poison, <10 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.oz = shufflevector <10 x double> %i.ox, <10 x double> %i.oy, <10 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 10, i32 11, i32 8, i32 9>
  %i.pa = shufflevector <2 x double> %i.kz, <2 x double> poison, <10 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pb = shufflevector <10 x double> %i.oz, <10 x double> %i.pa, <10 x i32> <i32 0, i32 1, i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 8, i32 9>
  br label %_ZN2cv5sqpnp10PoseSolver24analyticalInverse3x3SymmERKNS_4MatxIdLi3ELi3EEERS3_RKd.exit

_ZN2cv5sqpnp10PoseSolver24analyticalInverse3x3SymmERKNS_4MatxIdLi3ELi3EEERS3_RKd.exit: ; preds = %bb.b, %bb.c
  %i.pc = phi double [ %.pre156, %bb.b ], [ %50, %bb.c ]
  %i.pd = phi <3 x double> [ %i.on, %bb.b ], [ %136, %bb.c ]
  %i.pe = phi <3 x double> [ %i.oo, %bb.b ], [ %i.ou, %bb.c ]
  %i.pf = phi <3 x double> [ %i.op, %bb.b ], [ %122, %bb.c ]
  %i.pg = phi <10 x double> [ %i.ol, %bb.b ], [ %i.pb, %bb.c ] ; 10 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.pi = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.pj = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.pl = fneg <3 x double> %i.pf                 ; 9 uses
  %i.pm = fneg <3 x double> %i.pe                 ; 9 uses
  %i.pn = fneg <3 x double> %i.pd                 ; 9 uses
  %i.po = load <2 x double>, ptr %9, align 16
  %i.pp = load <2 x double>, ptr %i.kg, align 8
  %i.pq = load <2 x double>, ptr %i.jt, align 8
  %i.pr = load <2 x double>, ptr %i.pj, align 16
  %i.ps = load <2 x double>, ptr %i.ju, align 16
  %i.pt = load <2 x double>, ptr %i.kh, align 8
  %i.pu = load <2 x double>, ptr %i.jv, align 8
  %i.pv = load <2 x double>, ptr %i.pi, align 16
  %i.pw = load <2 x double>, ptr %i.jw, align 16
  %i.px = load <2 x double>, ptr %i.ki, align 8
  %i.py = load <2 x double>, ptr %i.jx, align 8
  %i.pz = load <2 x double>, ptr %i.ph, align 16
  %i.qa = load <2 x double>, ptr %i.jy, align 16
  %i.qb = load <2 x double>, ptr %i.kj, align 8
  %i.qc = load <2 x double>, ptr %i.jz, align 8
  %i.qd = load <2 x double>, ptr %i.ka, align 16
  %i.qe = load double, ptr %1, align 8, !tbaa !43, !noalias !152
  %i.qf = load double, ptr %i.f, align 8, !tbaa !43, !noalias !152
  %i.qg = load double, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !43, !noalias !152 ; 2 uses
  %i.qh = load double, ptr %i.g, align 8, !tbaa !43, !noalias !152
  %i.qi = fadd double %i.qg, %i.qh
  %i.qj = load double, ptr %i.ho, align 16, !tbaa !43, !noalias !153
  %i.qk = load double, ptr %i.ip, align 8, !tbaa !43, !noalias !153
  %i.ql = load double, ptr %i.jq, align 16, !tbaa !43, !noalias !153
  %i.qm = shufflevector <2 x double> %i.po, <2 x double> poison, <3 x i32> zeroinitializer
  %i.qn = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pl, <3 x double> %i.qm, <3 x double> zeroinitializer)
  %i.qo = shufflevector <2 x double> %i.pp, <2 x double> poison, <3 x i32> zeroinitializer
  %i.qp = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pm, <3 x double> %i.qo, <3 x double> %i.qn)
  %i.qq = insertelement <3 x double> poison, double %i.pc, i64 0
  %i.qr = shufflevector <3 x double> %i.qq, <3 x double> poison, <3 x i32> zeroinitializer
  %i.qs = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pn, <3 x double> %i.qr, <3 x double> %i.qp)
  %i.qt = shufflevector <2 x double> %i.pq, <2 x double> poison, <3 x i32> zeroinitializer
  %i.qu = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pl, <3 x double> %i.qt, <3 x double> zeroinitializer)
  %i.qv = shufflevector <2 x double> %i.pr, <2 x double> poison, <3 x i32> zeroinitializer
  %i.qw = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pm, <3 x double> %i.qv, <3 x double> %i.qu)
  %i.qx = shufflevector <10 x double> %i.pg, <10 x double> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.qy = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pn, <3 x double> %i.qx, <3 x double> %i.qw)
  %i.qz = shufflevector <2 x double> %i.ps, <2 x double> poison, <3 x i32> zeroinitializer
  %i.ra = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pl, <3 x double> %i.qz, <3 x double> zeroinitializer)
  %i.rb = shufflevector <2 x double> %i.pt, <2 x double> poison, <3 x i32> zeroinitializer
  %i.rc = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pm, <3 x double> %i.rb, <3 x double> %i.ra)
  %i.rd = shufflevector <10 x double> %i.pg, <10 x double> poison, <3 x i32> <i32 3, i32 3, i32 3>
  %i.re = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pn, <3 x double> %i.rd, <3 x double> %i.rc)
  %i.rf = shufflevector <2 x double> %i.pu, <2 x double> poison, <3 x i32> zeroinitializer
  %i.rg = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pl, <3 x double> %i.rf, <3 x double> zeroinitializer)
  %i.rh = shufflevector <2 x double> %i.pv, <2 x double> poison, <3 x i32> zeroinitializer
  %i.ri = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pm, <3 x double> %i.rh, <3 x double> %i.rg)
  %i.rj = shufflevector <10 x double> %i.pg, <10 x double> poison, <3 x i32> <i32 4, i32 4, i32 4>
  %i.rk = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pn, <3 x double> %i.rj, <3 x double> %i.ri)
  %i.rl = shufflevector <2 x double> %i.pw, <2 x double> poison, <3 x i32> zeroinitializer
  %i.rm = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pl, <3 x double> %i.rl, <3 x double> zeroinitializer)
  %i.rn = shufflevector <2 x double> %i.px, <2 x double> poison, <3 x i32> zeroinitializer
  %i.ro = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pm, <3 x double> %i.rn, <3 x double> %i.rm)
  %i.rp = shufflevector <10 x double> %i.pg, <10 x double> poison, <3 x i32> <i32 5, i32 5, i32 5>
  %i.rq = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pn, <3 x double> %i.rp, <3 x double> %i.ro)
  %i.rr = shufflevector <2 x double> %i.py, <2 x double> poison, <3 x i32> zeroinitializer
  %i.rs = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pl, <3 x double> %i.rr, <3 x double> zeroinitializer)
  %i.rt = shufflevector <2 x double> %i.pz, <2 x double> poison, <3 x i32> zeroinitializer
  %i.ru = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pm, <3 x double> %i.rt, <3 x double> %i.rs)
  %i.rv = shufflevector <10 x double> %i.pg, <10 x double> poison, <3 x i32> <i32 6, i32 6, i32 6>
  %i.rw = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pn, <3 x double> %i.rv, <3 x double> %i.ru)
  %i.rx = shufflevector <2 x double> %i.qa, <2 x double> poison, <3 x i32> zeroinitializer
  %i.ry = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pl, <3 x double> %i.rx, <3 x double> zeroinitializer)
  %i.rz = shufflevector <2 x double> %i.qb, <2 x double> poison, <3 x i32> zeroinitializer
  %i.sa = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pm, <3 x double> %i.rz, <3 x double> %i.ry)
  %i.sb = shufflevector <10 x double> %i.pg, <10 x double> poison, <3 x i32> <i32 7, i32 7, i32 7>
  %i.sc = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pn, <3 x double> %i.sb, <3 x double> %i.sa)
  %i.sd = shufflevector <2 x double> %i.qc, <2 x double> poison, <3 x i32> zeroinitializer
  %i.se = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pl, <3 x double> %i.sd, <3 x double> zeroinitializer)
  %i.sf = shufflevector <10 x double> %i.pg, <10 x double> poison, <3 x i32> zeroinitializer
  %i.sg = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pm, <3 x double> %i.sf, <3 x double> %i.se)
  %i.sh = shufflevector <10 x double> %i.pg, <10 x double> poison, <3 x i32> <i32 8, i32 8, i32 8>
  %i.si = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pn, <3 x double> %i.sh, <3 x double> %i.sg)
  %i.sj = shufflevector <2 x double> %i.qd, <2 x double> poison, <3 x i32> zeroinitializer
  %i.sk = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pl, <3 x double> %i.sj, <3 x double> zeroinitializer)
  %i.sl = shufflevector <10 x double> %i.pg, <10 x double> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.sm = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pm, <3 x double> %i.sl, <3 x double> %i.sk)
  %i.sn = shufflevector <10 x double> %i.pg, <10 x double> poison, <3 x i32> <i32 9, i32 9, i32 9>
  %i.so = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.pn, <3 x double> %i.sn, <3 x double> %i.sm)
  %i.sp = load <2 x double>, ptr %2, align 8, !tbaa !43, !noalias !152 ; 3 uses
  %i.sq = extractelement <2 x double> %i.sp, i64 0
  %i.sr = fadd double %i.sq, %i.qe
  %i.ss = insertelement <3 x double> poison, double %i.sr, i64 0
  %i.st = shufflevector <3 x double> %i.ss, <3 x double> poison, <3 x i32> zeroinitializer
  %i.su = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.qs, <3 x double> %i.st, <3 x double> zeroinitializer)
  %i.sv = insertelement <3 x double> poison, double %i.qi, i64 0
  %i.sw = shufflevector <3 x double> %i.sv, <3 x double> poison, <3 x i32> zeroinitializer
  %i.sx = load <4 x double>, ptr %6, align 16, !tbaa !43, !noalias !153 ; 3 uses
  %i.sy = shufflevector <4 x double> %i.sx, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.sz = load <2 x double>, ptr %i.hu, align 16, !tbaa !43, !noalias !153
  %i.ta = shufflevector <2 x double> %i.sz, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.tb = shufflevector <4 x double> %i.sx, <4 x double> %i.ta, <2 x i32> <i32 1, i32 4>
  %i.tc = shufflevector <4 x double> %i.sx, <4 x double> %i.ta, <2 x i32> <i32 2, i32 5>
  %i.td = load <2 x double>, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !43, !noalias !152 ; 3 uses
  %i.te = load <2 x double>, ptr %i.pk, align 8, !tbaa !43, !noalias !152
  %i.tf = shufflevector <2 x double> %i.sp, <2 x double> %i.td, <2 x i32> <i32 1, i32 2>
  %i.tg = fadd <2 x double> %i.tf, %i.te          ; 2 uses
  %i.th = shufflevector <2 x double> %i.tg, <2 x double> poison, <3 x i32> zeroinitializer
  %i.ti = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.qy, <3 x double> %i.th, <3 x double> %i.su)
  %i.tj = load <4 x double>, ptr %i.gw, align 16, !tbaa !43, !noalias !153 ; 3 uses
  %i.tk = load <2 x double>, ptr %i.ia, align 16, !tbaa !43, !noalias !153
  %i.tl = shufflevector <2 x double> %i.tg, <2 x double> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.tm = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.re, <3 x double> %i.tl, <3 x double> %i.ti)
  %i.tn = shufflevector <4 x double> %i.tj, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.to = shufflevector <2 x double> %i.tk, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.tp = shufflevector <4 x double> %i.tj, <4 x double> %i.to, <2 x i32> <i32 1, i32 4>
  %i.tq = shufflevector <4 x double> %i.tj, <4 x double> %i.to, <2 x i32> <i32 2, i32 5>
  %i.tr = load <2 x double>, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !43, !noalias !152 ; 3 uses
  %i.ts = load <2 x double>, ptr %i.b, align 8, !tbaa !43, !noalias !152
  %i.tt = shufflevector <2 x double> %i.td, <2 x double> %i.tr, <2 x i32> <i32 1, i32 2>
  %i.tu = fadd <2 x double> %i.tt, %i.ts          ; 2 uses
  %i.tv = shufflevector <2 x double> %i.tu, <2 x double> poison, <3 x i32> zeroinitializer
  %i.tw = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.rk, <3 x double> %i.tv, <3 x double> %i.tm)
  %i.tx = load <4 x double>, ptr %i.hc, align 16, !tbaa !43, !noalias !153 ; 3 uses
  %i.ty = load <2 x double>, ptr %i.ig, align 16, !tbaa !43, !noalias !153
  %i.tz = shufflevector <2 x double> %i.tu, <2 x double> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ua = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.rq, <3 x double> %i.tz, <3 x double> %i.tw)
  %i.ub = shufflevector <4 x double> %i.tx, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.uc = shufflevector <2 x double> %i.ty, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ud = shufflevector <4 x double> %i.tx, <4 x double> %i.uc, <2 x i32> <i32 1, i32 4>
  %i.ue = shufflevector <4 x double> %i.tx, <4 x double> %i.uc, <2 x i32> <i32 2, i32 5>
  %i.uf = load <2 x double>, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !43, !noalias !152 ; 3 uses
  %i.ug = load <2 x double>, ptr %i.d, align 8, !tbaa !43, !noalias !152
  %i.uh = shufflevector <2 x double> %i.tr, <2 x double> %i.uf, <2 x i32> <i32 1, i32 2>
  %i.ui = fadd <2 x double> %i.uh, %i.ug          ; 2 uses
  %i.uj = shufflevector <2 x double> %i.ui, <2 x double> poison, <3 x i32> zeroinitializer
  %i.uk = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.rw, <3 x double> %i.uj, <3 x double> %i.ua)
  %i.ul = extractelement <2 x double> %i.uf, i64 1
  %i.um = fadd double %i.ul, %i.qf
  %i.un = load <4 x double>, ptr %i.hi, align 16, !tbaa !43, !noalias !153 ; 3 uses
  %i.uo = load <2 x double>, ptr %i.im, align 16, !tbaa !43, !noalias !153
  %i.up = shufflevector <2 x double> %i.ui, <2 x double> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.uq = insertelement <3 x double> poison, double %i.um, i64 0
  %i.ur = shufflevector <3 x double> %i.uq, <3 x double> poison, <3 x i32> zeroinitializer
  %i.us = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.sc, <3 x double> %i.up, <3 x double> %i.uk)
  %i.ut = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.si, <3 x double> %i.ur, <3 x double> %i.us)
  %i.uu = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.so, <3 x double> %i.sw, <3 x double> %i.ut) ; 6 uses
  %i.uv = shufflevector <3 x double> %i.uu, <3 x double> poison, <2 x i32> <i32 2, i32 2> ; 4 uses
  %i.uw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sy, <2 x double> %i.uv, <2 x double> zeroinitializer)
  %i.ux = shufflevector <3 x double> %i.uu, <3 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.uy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tb, <2 x double> %i.ux, <2 x double> %i.uw)
  %i.uz = shufflevector <3 x double> %i.uu, <3 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.va = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tc, <2 x double> %i.uz, <2 x double> %i.uy)
  %i.vb = extractelement <3 x double> %i.uu, i64 2
  %i.vc = extractelement <3 x double> %i.uu, i64 1
  %i.vd = extractelement <3 x double> %i.uu, i64 0
  %i.ve = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tn, <2 x double> %i.uv, <2 x double> zeroinitializer)
  %i.vf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tp, <2 x double> %i.ux, <2 x double> %i.ve)
  %i.vg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tq, <2 x double> %i.uz, <2 x double> %i.vf)
  %i.vh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ub, <2 x double> %i.uv, <2 x double> zeroinitializer)
  %i.vi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ud, <2 x double> %i.ux, <2 x double> %i.vh)
  %i.vj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ue, <2 x double> %i.uz, <2 x double> %i.vi)
  %i.vk = shufflevector <4 x double> %i.un, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.vl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vk, <2 x double> %i.uv, <2 x double> zeroinitializer)
  %i.vm = shufflevector <2 x double> %i.uo, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.vn = shufflevector <4 x double> %i.un, <4 x double> %i.vm, <2 x i32> <i32 1, i32 4>
  %i.vo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vn, <2 x double> %i.ux, <2 x double> %i.vl)
  %i.vp = shufflevector <4 x double> %i.un, <4 x double> %i.vm, <2 x i32> <i32 2, i32 5>
  %i.vq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vp, <2 x double> %i.uz, <2 x double> %i.vo)
  %i.vr = call double @llvm.fmuladd.f64(double %i.qj, double %i.vb, double 0.000000e+00)
  %i.vs = call double @llvm.fmuladd.f64(double %i.qk, double %i.vc, double %i.vr)
  %i.vt = call double @llvm.fmuladd.f64(double %i.ql, double %i.vd, double %i.vs)
  %i.vu = fadd <2 x double> %i.sp, %i.va
  store <2 x double> %i.vu, ptr %2, align 8, !tbaa !43
  %i.vv = fadd <2 x double> %i.td, %i.vg
  store <2 x double> %i.vv, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !43
  %i.vw = fadd <2 x double> %i.tr, %i.vj
  store <2 x double> %i.vw, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !43
  %i.vx = fadd <2 x double> %i.uf, %i.vq
  store <2 x double> %i.vx, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !43
  %i.vy = fadd double %i.qg, %i.vt
  store double %i.vy, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv5sqpnp10PoseSolver22computeRowAndNullspaceERKNS_4MatxIdLi9ELi1EEERNS2_IdLi9ELi6EEERNS2_IdLi9ELi3EEERNS2_IdLi6ELi6EEERKd(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(432) initializes((0, 432)) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(216) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(288) initializes((0, 8), (48, 64), (96, 120), (144, 176), (192, 232), (240, 288)) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) local_unnamed_addr #1 align 2 {
vector.ph:
  %6 = alloca %"struct.cv::Matx_MatMulOp", align 1 ; 3 uses
  %7 = alloca %"class.cv::Matx", align 16         ; 49 uses
  %8 = alloca %"class.cv::Matx", align 16         ; 44 uses
  %9 = alloca %"class.cv::Matx.11", align 8       ; 57 uses
  %i.a = alloca [9 x double], align 16            ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %2, i8 0, i64 432, i1 false)
  %i.b = load double, ptr %1, align 8, !tbaa !43  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
end_hunk_0
