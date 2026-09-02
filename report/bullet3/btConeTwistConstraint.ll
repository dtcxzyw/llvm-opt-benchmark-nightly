Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btConeTwistConstraint?download=true
inline.NumInlined: 920
inline.NumDeleted: 130
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN21btConeTwistConstraint14calcAngleInfo2ERK11btTransformS2_RK11btMatrix3x3S5_:bb.a
  %i.aov = shufflevector <4 x float> %i.aot, <4 x float> %i.aou, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aow = shufflevector <2 x float> %i.amx, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 1, i32 1>
  %i.aox = insertelement <4 x float> %i.aow, float 1.000000e+00, i64 0
  %i.aoy = fmul <4 x float> %i.aov, %i.aox
  %i.aoz = insertelement <4 x float> poison, float %i.anb, i64 0
  %i.apa = insertelement <4 x float> %i.aoz, float %i.aog, i64 1
  %i.apb = shufflevector <2 x float> %i.aoq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.apc = shufflevector <4 x float> %i.apa, <4 x float> %i.apb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.apd = shufflevector <2 x float> %i.amx, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>
  %i.ape = insertelement <4 x float> %i.apd, float %i.aoe, i64 0
  %i.apf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apc, <4 x float> %i.ape, <4 x float> %i.aoy) ; 4 uses
  %i.apg = extractelement <4 x float> %i.apf, i64 1
  %i.aph = call noundef float @llvm.fmuladd.f32(float %i.aok, float %i.anb, float %i.apg)
  %i.api = extractelement <4 x float> %i.apf, i64 2
  %i.apj = call noundef float @llvm.fmuladd.f32(float %i.aoo, float %i.anb, float %i.api)
  %i.apk = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.apl = load float, ptr %i.apk, align 4, !tbaa !28
  %i.apm = extractelement <4 x float> %i.apf, i64 3
  %i.apn = call noundef float @llvm.fmuladd.f32(float %i.apl, float %i.anb, float %i.apm)
  %i.apo = fmul float %i.ang, %i.apj
  %i.app = call float @llvm.fmuladd.f32(float %i.ani, float %i.aph, float %i.apo)
  %i.apq = call noundef float @llvm.fmuladd.f32(float %i.anb, float %i.apn, float %i.app)
  %i.apr = extractelement <4 x float> %i.apf, i64 0
  %i.aps = fadd float %i.apr, %i.apq
  %i.apt = fdiv float 1.000000e+00, %i.aps
  %i.apu = getelementptr inbounds nuw i8, ptr %0, i64 520
  store float %i.apt, ptr %i.apu, align 8, !tbaa !52
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge543, %_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3.exit
  %i.apv = load i8, ptr %i.d, align 2, !tbaa !33, !range !35, !noundef !36
  %i.apw = trunc nuw i8 %i.apv to i1
  br i1 %i.apw, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.apx = shufflevector <2 x float> %i.alh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.apy = insertelement <2 x float> %i.apx, float %.sroa.10.0, i64 0
  %i.apz = fneg <2 x float> %i.apy                ; 2 uses
  %i.aqa = extractelement <2 x float> %i.alh, i64 1
  %i.aqb = fneg float %i.aqa                      ; 2 uses
  %i.aqc = fneg float %i.pk                       ; 2 uses
  %i.aqd = fneg float %i.pg                       ; 2 uses
  %i.aqe = extractelement <2 x float> %i.alh, i64 0
  %i.aqf = shufflevector <2 x float> %i.oj, <2 x float> %i.px, <4 x i32> <i32 0, i32 0, i32 3, i32 1>
  %i.aqg = shufflevector <2 x float> %i.alh, <2 x float> %i.apz, <4 x i32> <i32 1, i32 2, i32 poison, i32 3>
  %i.aqh = insertelement <4 x float> %i.aqg, float %i.aqb, i64 2
  %i.aqi = fmul <4 x float> %i.aqf, %i.aqh        ; 3 uses
  %i.aqj = extractelement <4 x float> %i.aqi, i64 0
  %i.aqk = call float @llvm.fmuladd.f32(float %i.qk, float %i.aqe, float %i.aqj)
  %i.aql = call float @llvm.fmuladd.f32(float %i.pk, float %.sroa.10.0, float %i.aqk) ; 2 uses
  %i.aqm = shufflevector <4 x float> %i.aqi, <4 x float> poison, <2 x i32> <i32 2, i32 1>
  %i.aqn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qf, <2 x float> %i.apz, <2 x float> %i.aqm)
  %i.aqo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oj, <2 x float> %i.alh, <2 x float> %i.aqn) ; 4 uses
  %i.aqp = extractelement <2 x float> %i.aqo, i64 0
  %i.aqq = extractelement <2 x float> %i.aqo, i64 1
  %i.aqr = extractelement <4 x float> %i.aqi, i64 3
  %i.aqs = call float @llvm.fmuladd.f32(float %i.ps, float %i.aqb, float %i.aqr)
  %i.aqt = call float @llvm.fmuladd.f32(float %i.qk, float %.sroa.10.0, float %i.aqs) ; 3 uses
  %i.aqu = shufflevector <2 x float> %i.aqo, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aqv = insertelement <2 x float> %i.aqu, float %i.aqt, i64 1
  %i.aqw = fmul <2 x float> %i.qf, %i.aqv
  %i.aqx = insertelement <2 x float> poison, float %i.aql, i64 0
  %i.aqy = shufflevector <2 x float> %i.aqx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aqz = insertelement <2 x float> poison, float %i.qo, i64 0
  %i.ara = insertelement <2 x float> %i.aqz, float %i.aqd, i64 1
  %i.arb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqy, <2 x float> %i.ara, <2 x float> %i.aqw)
  %i.arc = insertelement <2 x float> %i.aqu, float %i.aqt, i64 0
  %i.ard = insertelement <2 x float> poison, float %i.aqc, i64 0
  %i.are = insertelement <2 x float> %i.ard, float %i.qo, i64 1
  %i.arf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.arc, <2 x float> %i.are, <2 x float> %i.arb)
  %i.arg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqo, <2 x float> %i.oj, <2 x float> %i.arf)
  %i.arh = fmul float %i.ps, %i.aqp
  %i.ari = call float @llvm.fmuladd.f32(float %i.aql, float %i.aqc, float %i.arh)
  %i.arj = call float @llvm.fmuladd.f32(float %i.aqq, float %i.aqd, float %i.ari)
  %i.ark = call float @llvm.fmuladd.f32(float %i.aqt, float %i.qk, float %i.arj)
  %.sroa.3.12.vec.insert.i263 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ark, i64 0
  %i.arl = getelementptr inbounds nuw i8, ptr %0, i64 560
  store <2 x float> %i.arg, ptr %i.arl, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 568
  store <2 x float> %.sroa.3.12.vec.insert.i263, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !11
  br label %bb.am

bb.al:                                            ; preds = %bb.ae
  store float 0.000000e+00, ptr %i.akk, align 8, !tbaa !53
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN21btConeTwistConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(632) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #2 align 2 {
bb.a:
  store i32 6, ptr %1, align 4, !tbaa !38
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21btConeTwistConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E(ptr noundef nonnull align 8 dereferenceable(632) initializes((524, 532), (549, 551)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !36, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42, !nonnull !36, !align !41 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 372
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 372
  tail call void @_ZN21btConeTwistConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK11btMatrix3x3S8_(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(48) %i.g, ptr noundef nonnull align 4 dereferenceable(48) %i.h)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21btConeTwistConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK11btMatrix3x3S8_(ptr noundef nonnull align 8 dereferenceable(632) initializes((524, 532), (549, 551)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %5) local_unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN21btConeTwistConstraint14calcAngleInfo2ERK11btTransformS2_RK11btMatrix3x3S5_(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(48) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 3 uses
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !99   ; 6 uses
  %i.e = sext i32 %i.d to i64                     ; 13 uses
  %i.f = getelementptr [4 x i8], ptr %i.b, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 4
  store float 1.000000e+00, ptr %i.g, align 4, !tbaa !28
  %i.h = shl nsw i32 %i.d, 1
  %i.i = sext i32 %i.h to i64                     ; 4 uses
  %i.j = getelementptr [4 x i8], ptr %i.b, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 8
  store float 1.000000e+00, ptr %i.k, align 4, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.m = load float, ptr %2, align 4, !tbaa !28
  %i.n = load float, ptr %i.l, align 4, !tbaa !28 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.r = load float, ptr %i.q, align 8, !tbaa !28 ; 3 uses
  %i.s = fmul float %i.p, %i.r
  %i.t = tail call float @llvm.fmuladd.f32(float %i.m, float %i.n, float %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !28
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.x = load float, ptr %i.w, align 4, !tbaa !28 ; 3 uses
  %i.y = tail call noundef float @llvm.fmuladd.f32(float %i.v, float %i.x, float %i.t) ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !28
  %i.ad = fmul float %i.r, %i.ac
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.n, float %i.ad)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !28
  %i.ah = tail call noundef float @llvm.fmuladd.f32(float %i.ag, float %i.x, float %i.ae) ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.al = load float, ptr %i.ak, align 4, !tbaa !28
  %i.am = fmul float %i.r, %i.al
  %i.an = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.n, float %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !28
  %i.aq = tail call noundef float @llvm.fmuladd.f32(float %i.ap, float %i.x, float %i.an) ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !100 ; 17 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.e ; 4 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.i ; 3 uses
  %i.av = fneg float %i.y
  %i.aw = fneg float %i.ah
  %i.ax = fneg float %i.aq
  store float 0.000000e+00, ptr %i.as, align 4, !tbaa !28
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store float %i.aq, ptr %i.ay, align 4, !tbaa !28
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store float %i.aw, ptr %i.az, align 4, !tbaa !28
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store float 0.000000e+00, ptr %i.ba, align 4, !tbaa !28
  store float %i.ax, ptr %i.at, align 4, !tbaa !28
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store float 0.000000e+00, ptr %i.bb, align 4, !tbaa !28
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store float %i.y, ptr %i.bc, align 4, !tbaa !28
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store float 0.000000e+00, ptr %i.bd, align 4, !tbaa !28
  store float %i.ah, ptr %i.au, align 4, !tbaa !28
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store float %i.av, ptr %i.be, align 4, !tbaa !28
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store <2 x float> zeroinitializer, ptr %i.bf, align 4, !tbaa !28
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !101 ; 3 uses
  store float -1.000000e+00, ptr %i.bh, align 4, !tbaa !28
  %i.bi = getelementptr [4 x i8], ptr %i.bh, i64 %i.e
  %i.bj = getelementptr i8, ptr %i.bi, i64 4
  store float -1.000000e+00, ptr %i.bj, align 4, !tbaa !28
  %i.bk = getelementptr [4 x i8], ptr %i.bh, i64 %i.i
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  store float -1.000000e+00, ptr %i.bl, align 4, !tbaa !28
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !28
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !28
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !28
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !28
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bz = load float, ptr %i.by, align 4, !tbaa !28
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !102 ; 17 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.e ; 4 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.i ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.ck = load <2 x float>, ptr %3, align 4, !tbaa !28 ; 2 uses
  %i.cl = load float, ptr %i.bn, align 8, !tbaa !28 ; 2 uses
  %i.cm = load float, ptr %i.bm, align 4, !tbaa !28 ; 2 uses
  %i.cn = load float, ptr %i.bq, align 4, !tbaa !28 ; 2 uses
  %6 = load <2 x float>, ptr %i.br, align 4, !tbaa !28 ; 2 uses
  %7 = insertelement <2 x float> poison, float %i.cl, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %9 = shufflevector <2 x float> %i.ck, <2 x float> %6, <2 x i32> <i32 1, i32 3>
  %10 = fmul <2 x float> %8, %9
  %i.co = shufflevector <2 x float> %i.ck, <2 x float> %6, <2 x i32> <i32 0, i32 2>
  %i.cp = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.co, <2 x float> %i.cq, <2 x float> %10)
  %i.cs = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %i.bt, i64 1
  %i.cu = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.cv, <2 x float> %i.cr) ; 3 uses
  %i.cx = fmul float %i.cl, %i.bx
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.cm, float %i.cx)
  %i.cz = tail call noundef float @llvm.fmuladd.f32(float %i.bz, float %i.cn, float %i.cy) ; 4 uses
  %i.da = fneg float %i.cz
  store float 0.000000e+00, ptr %i.cb, align 4, !tbaa !28
  store float %i.da, ptr %i.ce, align 4, !tbaa !28
  %i.db = extractelement <2 x float> %i.cw, i64 1 ; 3 uses
  store float %i.db, ptr %i.cf, align 4, !tbaa !28
  store float 0.000000e+00, ptr %i.cg, align 4, !tbaa !28
  store float %i.cz, ptr %i.cc, align 4, !tbaa !28
  store float 0.000000e+00, ptr %i.ch, align 4, !tbaa !28
  %i.dc = fneg <2 x float> %i.cw                  ; 2 uses
  %i.dd = extractelement <2 x float> %i.dc, i64 0
  store float %i.dd, ptr %i.ci, align 4, !tbaa !28
  store float 0.000000e+00, ptr %i.cj, align 4, !tbaa !28
  %i.de = extractelement <2 x float> %i.dc, i64 1
  store float %i.de, ptr %i.cd, align 4, !tbaa !28
  %i.df = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.dg = extractelement <2 x float> %i.cw, i64 0 ; 3 uses
  store float %i.dg, ptr %i.df, align 4, !tbaa !28
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store <2 x float> zeroinitializer, ptr %i.dh, align 4, !tbaa !28
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !29 ; 4 uses
  %i.dk = and i32 %i.dj, 2
  %.not = icmp eq i32 %i.dk, 0
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.in = select i1 %.not, ptr %i.dm, ptr %i.dl
  %i.dn = load float, ptr %.in, align 4, !tbaa !28
  %i.do = load float, ptr %1, align 8, !tbaa !103
  %i.dp = fmul float %i.dn, %i.do                 ; 6 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !104 ; 9 uses
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !105 ; 9 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !106 ; 9 uses
  %i.dy = and i32 %i.dj, 1
  %.not169 = icmp eq i32 %i.dy, 0
  br i1 %.not169, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  %i.dz = load float, ptr %i.dq, align 4, !tbaa !28
  %i.ea = fadd float %i.dg, %i.dz
  %i.eb = fsub float %i.ea, %i.y
  %i.ec = load float, ptr %i.dr, align 4, !tbaa !28
  %i.ed = fsub float %i.eb, %i.ec
  %i.ee = fmul float %i.dp, %i.ed
  store float %i.ee, ptr %i.dt, align 4, !tbaa !28
  store float f0xFF7FFFFF, ptr %i.dv, align 4, !tbaa !28
  store float f0x7F7FFFFF, ptr %i.dx, align 4, !tbaa !28
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !28
  %i.eh = fadd float %i.db, %i.eg
  %i.ei = fsub float %i.eh, %i.ah
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !28
  %i.el = fsub float %i.ei, %i.ek
  %i.em = fmul float %i.dp, %i.el
  %i.en = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.e
  store float %i.em, ptr %i.en, align 4, !tbaa !28
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.e
  store float f0xFF7FFFFF, ptr %i.eo, align 4, !tbaa !28
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.e
  store float f0x7F7FFFFF, ptr %i.ep, align 4, !tbaa !28
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.er = load float, ptr %i.eq, align 4, !tbaa !28
  %i.es = fadd float %i.cz, %i.er
  %i.et = fsub float %i.es, %i.aq
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !28
  %i.ew = fsub float %i.et, %i.ev
  %i.ex = fmul float %i.dp, %i.ew
  %i.ey = shl nsw i64 %i.e, 1                     ; 3 uses
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.ey
  store float %i.ex, ptr %i.ez, align 4, !tbaa !28
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.ey
  store float f0xFF7FFFFF, ptr %i.fa, align 4, !tbaa !28
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.ey
  store float f0x7F7FFFFF, ptr %i.fb, align 4, !tbaa !28
  br label %.split271.us

.split:                                           ; preds = %bb.a
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 620 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !107 ; 3 uses
  %i.ff = load float, ptr %i.dq, align 4, !tbaa !28
  %i.fg = fadd float %i.dg, %i.ff
  %i.fh = fsub float %i.fg, %i.y
  %i.fi = load float, ptr %i.dr, align 4, !tbaa !28
  %i.fj = fsub float %i.fh, %i.fi
  %i.fk = fmul float %i.dp, %i.fj
  store float %i.fk, ptr %i.dt, align 4, !tbaa !28
  store float f0xFF7FFFFF, ptr %i.dv, align 4, !tbaa !28
  store float f0x7F7FFFFF, ptr %i.dx, align 4, !tbaa !28
  %i.fl = load float, ptr %i.fc, align 4, !tbaa !54
  store float %i.fl, ptr %i.fe, align 4, !tbaa !28
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !28
  %i.fo = fadd float %i.db, %i.fn
  %i.fp = fsub float %i.fo, %i.ah
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !28
  %i.fs = fsub float %i.fp, %i.fr
  %i.ft = fmul float %i.dp, %i.fs
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.e
  store float %i.ft, ptr %i.fu, align 4, !tbaa !28
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.e
  store float f0xFF7FFFFF, ptr %i.fv, align 4, !tbaa !28
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.e
  store float f0x7F7FFFFF, ptr %i.fw, align 4, !tbaa !28
  %i.fx = load float, ptr %i.fc, align 4, !tbaa !54
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.e
  store float %i.fx, ptr %i.fy, align 4, !tbaa !28
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !28
  %i.gb = fadd float %i.cz, %i.ga
  %i.gc = fsub float %i.gb, %i.aq
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !28
  %i.gf = fsub float %i.gc, %i.ge
  %i.gg = fmul float %i.dp, %i.gf
  %i.gh = shl nsw i64 %i.e, 1                     ; 4 uses
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.gh
  store float %i.gg, ptr %i.gi, align 4, !tbaa !28
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.gh
  store float f0xFF7FFFFF, ptr %i.gj, align 4, !tbaa !28
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.gh
  store float f0x7F7FFFFF, ptr %i.gk, align 4, !tbaa !28
  %i.gl = load float, ptr %i.fc, align 4, !tbaa !54
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.gh
  store float %i.gl, ptr %i.gm, align 4, !tbaa !28
  br label %.split271.us

.split271.us:                                     ; preds = %.split, %.split.us.preheader
  %i.gn = mul nsw i32 %i.d, 3                     ; 7 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 550
  %i.gp = load i8, ptr %i.go, align 2, !tbaa !33, !range !35, !noundef !36
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.b, label %bb.k

bb.b:                                             ; preds = %.split271.us
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !43
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.gu = load float, ptr %i.gt, align 8, !tbaa !44 ; 2 uses
  %i.gv = fcmp olt float %i.gs, %i.gu
  br i1 %i.gv, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.gx = load float, ptr %i.gw, align 8, !tbaa !45
  %i.gy = fcmp olt float %i.gx, %i.gu
  br i1 %i.gy, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.gz = load float, ptr %i.u, align 4, !tbaa !28, !noalias !108 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.hd = load float, ptr %i.af, align 4, !tbaa !28, !noalias !108 ; 2 uses
  %i.he = load float, ptr %i.ao, align 4, !tbaa !28, !noalias !108
  %i.hf = shl nsw i32 %i.d, 2                     ; 2 uses
  %i.hg = sext i32 %i.gn to i64                   ; 5 uses
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.hg
  %i.hi = add nsw i32 %i.gn, 1
  %i.hj = sext i32 %i.hi to i64                   ; 2 uses
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.hj
  %i.hl = add nsw i32 %i.gn, 2
  %i.hm = sext i32 %i.hl to i64                   ; 2 uses
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.hm
  %i.ho = sext i32 %i.hf to i64                   ; 5 uses
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.ho
  %i.hq = load <2 x float>, ptr %2, align 4, !tbaa !28, !noalias !108 ; 3 uses
  %i.hr = load float, ptr %i.o, align 4, !tbaa !28, !noalias !108
  %i.hs = load <2 x float>, ptr %i.z, align 4, !tbaa !28, !noalias !108 ; 3 uses
  %i.ht = load float, ptr %i.ab, align 4, !tbaa !28, !noalias !108
  %i.hu = load <2 x float>, ptr %i.ha, align 8, !tbaa !28, !noalias !108 ; 2 uses
  %i.hv = shufflevector <2 x float> %i.hu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.hw = load <2 x float>, ptr %i.hb, align 8, !tbaa !28, !noalias !108 ; 2 uses
  %i.hx = shufflevector <2 x float> %i.hw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.hy = load <2 x float>, ptr %i.ai, align 4, !tbaa !28, !noalias !108 ; 2 uses
  %i.hz = shufflevector <2 x float> %i.hy, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ia = insertelement <4 x float> %i.hz, float %i.hr, i64 1
  %i.ib = insertelement <4 x float> %i.ia, float %i.ht, i64 2
  %i.ic = shufflevector <4 x float> %i.ib, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  %i.id = fmul <4 x float> %i.hx, %i.ic
  %i.ie = shufflevector <2 x float> %i.hq, <2 x float> %i.hs, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.if = shufflevector <2 x float> %i.hy, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.ig = shufflevector <4 x float> %i.if, <4 x float> %i.ie, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ih = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hv, <4 x float> %i.ig, <4 x float> %i.id)
  %i.ii = shufflevector <2 x float> %i.hw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ij = shufflevector <2 x float> %i.hq, <2 x float> %i.hs, <2 x i32> <i32 1, i32 3>
  %i.ik = fmul <2 x float> %i.ii, %i.ij
  %i.il = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.im = shufflevector <2 x float> %i.hq, <2 x float> %i.hs, <2 x i32> <i32 0, i32 2>
  %i.in = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.il, <2 x float> %i.im, <2 x float> %i.ik)
  %i.io = insertelement <2 x float> poison, float %i.gz, i64 0
  %i.ip = insertelement <2 x float> %i.io, float %i.hd, i64 1
  %i.iq = or disjoint i32 %i.hf, 2
end_hunk_0
begin_hunk_1_@_ZN21btConeTwistConstraint23solveConstraintObsoleteER12btSolverBodyS1_f:bb.a
  %.sroa.speculated468 = select i1 %i.azh, float %i.azg, float 0.000000e+00 ; 2 uses
  store float %.sroa.speculated468, ptr %i.aze, align 4, !tbaa !145
  %i.azi = fsub float %.sroa.speculated468, %i.azf
  %i.azj = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.azk = getelementptr inbounds nuw i8, ptr %0, i64 564
  %i.azl = insertelement <3 x float> poison, float %i.azi, i64 0
  %i.azm = shufflevector <3 x float> %i.azl, <3 x float> poison, <3 x i32> zeroinitializer
  %i.azn = fmul <3 x float> %i.ayo, %i.azm        ; 4 uses
  %i.azo = load float, ptr %i.azk, align 4, !tbaa !28
  %i.azp = load <3 x float>, ptr %i.azj, align 8, !tbaa !28 ; 3 uses
  %i.azq = extractelement <3 x float> %i.azn, i64 1
  %i.azr = fmul float %i.azo, %i.azq
  %i.azs = extractelement <3 x float> %i.azn, i64 0
  %i.azt = extractelement <3 x float> %i.azp, i64 0
  %i.azu = call float @llvm.fmuladd.f32(float %i.azs, float %i.azt, float %i.azr)
  %i.azv = extractelement <3 x float> %i.azn, i64 2
  %i.azw = extractelement <3 x float> %i.azp, i64 2
  %i.azx = call noundef float @llvm.fmuladd.f32(float %i.azv, float %i.azw, float %i.azu)
  %i.azy = insertelement <3 x float> poison, float %i.azx, i64 0
  %i.azz = shufflevector <3 x float> %i.azy, <3 x float> poison, <3 x i32> zeroinitializer
  %i.baa = fmul <3 x float> %i.azp, %i.azz
  %i.bab = fsub <3 x float> %i.azn, %i.baa        ; 5 uses
  %foldExtExtBinop882 = fmul <3 x float> %i.bab, %i.bab
  %i.bac = extractelement <3 x float> %foldExtExtBinop882, i64 1
  %i.bad = extractelement <3 x float> %i.bab, i64 0 ; 2 uses
  %i.bae = call float @llvm.fmuladd.f32(float %i.bad, float %i.bad, float %i.bac)
  %i.baf = extractelement <3 x float> %i.bab, i64 2 ; 2 uses
  %i.bag = call noundef float @llvm.fmuladd.f32(float %i.baf, float %i.baf, float %i.bae)
  %sqrt.i365 = call noundef float @llvm.sqrt.f32(float %i.bag) ; 6 uses
  %i.bah = fdiv float 1.000000e+00, %sqrt.i365
  %i.bai = insertelement <3 x float> poison, float %i.bah, i64 0
  %i.baj = shufflevector <3 x float> %i.bai, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bak = fmul <3 x float> %i.bab, %i.baj        ; 12 uses
  %i.bal = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bam = load ptr, ptr %i.bal, align 8, !tbaa !134
  %.not.i376 = icmp eq ptr %i.bam, null
  br i1 %.not.i376, label %_ZN12btSolverBody20internalApplyImpulseERK9btVector3S2_f.exit377, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ban = load ptr, ptr %i.f, align 8, !tbaa !40, !nonnull !36, !align !41 ; 7 uses
  %i.bao = getelementptr inbounds nuw i8, ptr %i.ban, i64 412
  %i.bap = load float, ptr %i.bao, align 4, !tbaa !28
  %i.baq = getelementptr inbounds nuw i8, ptr %i.ban, i64 404
  %i.bar = load float, ptr %i.baq, align 4, !tbaa !28
  %i.bas = getelementptr inbounds nuw i8, ptr %i.ban, i64 408
  %i.bat = load float, ptr %i.bas, align 8, !tbaa !28
  %i.bau = extractelement <3 x float> %i.bak, i64 1
  %i.bav = fmul float %i.bau, %i.bat
  %i.baw = extractelement <3 x float> %i.bak, i64 0
  %i.bax = call float @llvm.fmuladd.f32(float %i.bar, float %i.baw, float %i.bav)
  %i.bay = extractelement <3 x float> %i.bak, i64 2
  %i.baz = call noundef float @llvm.fmuladd.f32(float %i.bap, float %i.bay, float %i.bax)
  %i.bba = getelementptr inbounds nuw i8, ptr %i.ban, i64 372
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.ban, i64 396
  %i.bbc = load float, ptr %i.bbb, align 4, !tbaa !28
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.ban, i64 388
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.ban, i64 380
  %i.bbf = load float, ptr %i.bbe, align 4, !tbaa !28
  %i.bbg = fmul float %sqrt.i365, 0.000000e+00    ; 2 uses
  %i.bbh = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bbi = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bbj = load float, ptr %i.bbi, align 8, !tbaa !28
  %i.bbk = fmul float %i.bbg, %i.bbj
  %i.bbl = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bbm = load <2 x float>, ptr %i.bbh, align 8, !tbaa !28
  %i.bbn = insertelement <2 x float> poison, float %i.bbg, i64 0
  %i.bbo = shufflevector <2 x float> %i.bbn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bbp = fmul <2 x float> %i.bbo, %i.bbm
  %i.bbq = load <2 x float>, ptr %i.bbl, align 8, !tbaa !28
  %i.bbr = fadd <2 x float> %i.bbp, %i.bbq
  %i.bbs = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bbt = load float, ptr %i.bbs, align 8, !tbaa !28
  %i.bbu = fadd float %i.bbk, %i.bbt
  %i.bbv = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bbw = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bbx = load float, ptr %i.bbw, align 8, !tbaa !28
  %i.bby = fmul float %sqrt.i365, %i.bbx
  %i.bbz = fmul float %i.baz, %i.bby
  %i.bca = load <2 x float>, ptr %i.bbd, align 4, !tbaa !28 ; 2 uses
  %i.bcb = load <2 x float>, ptr %i.bba, align 4, !tbaa !28 ; 2 uses
  %i.bcc = shufflevector <3 x float> %i.bak, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bcd = shufflevector <2 x float> %i.bcb, <2 x float> %i.bca, <2 x i32> <i32 1, i32 3>
  %i.bce = fmul <2 x float> %i.bcc, %i.bcd
  %i.bcf = shufflevector <2 x float> %i.bcb, <2 x float> %i.bca, <2 x i32> <i32 0, i32 2>
  %i.bcg = shufflevector <3 x float> %i.bak, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bch = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bcf, <2 x float> %i.bcg, <2 x float> %i.bce)
  %i.bci = insertelement <2 x float> poison, float %i.bbf, i64 0
  %i.bcj = insertelement <2 x float> %i.bci, float %i.bbc, i64 1
  %i.bck = shufflevector <3 x float> %i.bak, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bcl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bcj, <2 x float> %i.bck, <2 x float> %i.bch)
  store <2 x float> %i.bbr, ptr %i.bbl, align 8, !tbaa !28
  store float %i.bbu, ptr %i.bbs, align 8, !tbaa !28
  %i.bcm = load <2 x float>, ptr %i.bbv, align 8, !tbaa !28
  %i.bcn = insertelement <2 x float> poison, float %sqrt.i365, i64 0
  %i.bco = shufflevector <2 x float> %i.bcn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bcp = fmul <2 x float> %i.bco, %i.bcm
  %i.bcq = fmul <2 x float> %i.bcl, %i.bcp
  %i.bcr = load <2 x float>, ptr %i.axc, align 8, !tbaa !28
  %i.bcs = fadd <2 x float> %i.bcq, %i.bcr
  store <2 x float> %i.bcs, ptr %i.axc, align 8, !tbaa !28
  %i.bct = load float, ptr %i.axi, align 8, !tbaa !28
  %i.bcu = fadd float %i.bbz, %i.bct
  store float %i.bcu, ptr %i.axi, align 8, !tbaa !28
  br label %_ZN12btSolverBody20internalApplyImpulseERK9btVector3S2_f.exit377

_ZN12btSolverBody20internalApplyImpulseERK9btVector3S2_f.exit377: ; preds = %bb.y, %bb.z
  %i.bcv = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.bcw = load ptr, ptr %i.bcv, align 8, !tbaa !134
  %.not.i383 = icmp eq ptr %i.bcw, null
  br i1 %.not.i383, label %_ZN12btSolverBody20internalApplyImpulseERK9btVector3S2_f.exit384, label %bb.aa

bb.aa:                                            ; preds = %_ZN12btSolverBody20internalApplyImpulseERK9btVector3S2_f.exit377
  %i.bcx = fneg float %sqrt.i365                  ; 2 uses
  %i.bcy = load ptr, ptr %i.n, align 8, !tbaa !42, !nonnull !36, !align !41 ; 7 uses
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bcy, i64 412
  %i.bda = load float, ptr %i.bcz, align 4, !tbaa !28
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bcy, i64 404
  %i.bdc = load float, ptr %i.bdb, align 4, !tbaa !28
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bcy, i64 408
  %i.bde = load float, ptr %i.bdd, align 8, !tbaa !28
  %i.bdf = extractelement <3 x float> %i.bak, i64 1
  %i.bdg = fmul float %i.bdf, %i.bde
  %i.bdh = extractelement <3 x float> %i.bak, i64 0
  %i.bdi = call float @llvm.fmuladd.f32(float %i.bdc, float %i.bdh, float %i.bdg)
  %i.bdj = extractelement <3 x float> %i.bak, i64 2
  %i.bdk = call noundef float @llvm.fmuladd.f32(float %i.bda, float %i.bdj, float %i.bdi)
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bcy, i64 372
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.bcy, i64 396
  %i.bdn = load float, ptr %i.bdm, align 4, !tbaa !28
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bcy, i64 388
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bcy, i64 380
  %i.bdq = load float, ptr %i.bdp, align 4, !tbaa !28
  %i.bdr = fmul float %sqrt.i365, -0.000000e+00   ; 2 uses
  %i.bds = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.bdt = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bdu = load float, ptr %i.bdt, align 8, !tbaa !28
  %i.bdv = fmul float %i.bdr, %i.bdu
  %i.bdw = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.bdx = load <2 x float>, ptr %i.bds, align 8, !tbaa !28
  %i.bdy = insertelement <2 x float> poison, float %i.bdr, i64 0
  %i.bdz = shufflevector <2 x float> %i.bdy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bea = fmul <2 x float> %i.bdz, %i.bdx
  %i.beb = load <2 x float>, ptr %i.bdw, align 8, !tbaa !28
  %i.bec = fadd <2 x float> %i.bea, %i.beb
  %i.bed = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.bee = load float, ptr %i.bed, align 8, !tbaa !28
  %i.bef = fadd float %i.bdv, %i.bee
  %i.beg = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.beh = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bei = load float, ptr %i.beh, align 8, !tbaa !28
  %i.bej = fmul float %i.bei, %i.bcx
  %i.bek = fmul float %i.bdk, %i.bej
  %i.bel = load <2 x float>, ptr %i.bdo, align 4, !tbaa !28 ; 2 uses
  %i.bem = load <2 x float>, ptr %i.bdl, align 4, !tbaa !28 ; 2 uses
  %i.ben = shufflevector <3 x float> %i.bak, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.beo = shufflevector <2 x float> %i.bem, <2 x float> %i.bel, <2 x i32> <i32 1, i32 3>
  %i.bep = fmul <2 x float> %i.ben, %i.beo
  %i.beq = shufflevector <2 x float> %i.bem, <2 x float> %i.bel, <2 x i32> <i32 0, i32 2>
  %i.ber = shufflevector <3 x float> %i.bak, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bes = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.beq, <2 x float> %i.ber, <2 x float> %i.bep)
  %i.bet = insertelement <2 x float> poison, float %i.bdq, i64 0
  %i.beu = insertelement <2 x float> %i.bet, float %i.bdn, i64 1
  %i.bev = shufflevector <3 x float> %i.bak, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bew = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.beu, <2 x float> %i.bev, <2 x float> %i.bes)
  store <2 x float> %i.bec, ptr %i.bdw, align 8, !tbaa !28
  store float %i.bef, ptr %i.bed, align 8, !tbaa !28
  %i.bex = load <2 x float>, ptr %i.beg, align 8, !tbaa !28
  %i.bey = insertelement <2 x float> poison, float %i.bcx, i64 0
  %i.bez = shufflevector <2 x float> %i.bey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bfa = fmul <2 x float> %i.bex, %i.bez
  %i.bfb = fmul <2 x float> %i.bew, %i.bfa
  %i.bfc = load <2 x float>, ptr %i.axk, align 8, !tbaa !28
  %i.bfd = fadd <2 x float> %i.bfb, %i.bfc
  store <2 x float> %i.bfd, ptr %i.axk, align 8, !tbaa !28
  %i.bfe = load float, ptr %i.axq, align 8, !tbaa !28
  %i.bff = fadd float %i.bek, %i.bfe
  store float %i.bff, ptr %i.axq, align 8, !tbaa !28
  br label %_ZN12btSolverBody20internalApplyImpulseERK9btVector3S2_f.exit384

_ZN12btSolverBody20internalApplyImpulseERK9btVector3S2_f.exit384: ; preds = %bb.aa, %_ZN12btSolverBody20internalApplyImpulseERK9btVector3S2_f.exit377, %_ZN12btSolverBody20internalApplyImpulseERK9btVector3S2_f.exit336
  %i.bfg = getelementptr inbounds nuw i8, ptr %0, i64 549
  %i.bfh = load i8, ptr %i.bfg, align 1, !tbaa !32, !range !35, !noundef !36
  %i.bfi = trunc nuw i8 %i.bfh to i1
  br i1 %i.bfi, label %bb.ab, label %_ZN12btSolverBody20internalApplyImpulseERK9btVector3S2_f.exit403

bb.ab:                                            ; preds = %_ZN12btSolverBody20internalApplyImpulseERK9btVector3S2_f.exit384
  %i.bfj = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.bfk = load float, ptr %i.bfj, align 4, !tbaa !50 ; 2 uses
  %i.bfl = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.bfm = load float, ptr %i.bfl, align 4, !tbaa !51
  %i.bfn = fmul float %i.bfk, %i.bfm
  %i.bfo = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.bfp = load float, ptr %i.bfo, align 8, !tbaa !56
  %i.bfq = fmul float %i.bfn, %i.bfp
  %i.bfr = fdiv float %i.bfq, %3                  ; 2 uses
  %i.bfs = fsub float %i.axn, %i.axf
  %i.bft = fsub <2 x float> %i.axw, %i.axt        ; 2 uses
  %i.bfu = getelementptr inbounds nuw i8, ptr %0, i64 500 ; 2 uses
  %i.bfv = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.bfw = getelementptr inbounds nuw i8, ptr %0, i64 508 ; 2 uses
  %i.bfx = load float, ptr %i.bfv, align 8, !tbaa !28 ; 3 uses
  %i.bfy = load float, ptr %i.bfu, align 4, !tbaa !28 ; 3 uses
  %i.bfz = load float, ptr %i.bfw, align 4, !tbaa !28 ; 3 uses
  %i.bga = extractelement <2 x float> %i.bft, i64 0
  %i.bgb = fmul float %i.bga, %i.bfx
  %i.bgc = call float @llvm.fmuladd.f32(float %i.bfs, float %i.bfy, float %i.bgb)
  %i.bgd = extractelement <2 x float> %i.bft, i64 1
  %i.bge = call noundef float @llvm.fmuladd.f32(float %i.bgd, float %i.bfz, float %i.bgc) ; 2 uses
  %i.bgf = fcmp ogt float %i.bge, 0.000000e+00
  br i1 %i.bgf, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bgg = fmul float %i.bfk, %i.bge
  %i.bgh = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.bgi = load float, ptr %i.bgh, align 4, !tbaa !55
  %i.bgj = call float @llvm.fmuladd.f32(float %i.bgg, float %i.bgi, float %i.bfr)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.066 = phi float [ %i.bgj, %bb.ac ], [ %i.bfr, %bb.ab ]
  %i.bgk = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.bgl = load float, ptr %i.bgk, align 8, !tbaa !52
  %i.bgm = fmul float %.066, %i.bgl
  %i.bgn = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.bgo = load float, ptr %i.bgn, align 8, !tbaa !146 ; 2 uses
  %i.bgp = fadd float %i.bgo, %i.bgm              ; 2 uses
  %i.bgq = fcmp ogt float %i.bgp, 0.000000e+00
  %.sroa.speculated = select i1 %i.bgq, float %i.bgp, float 0.000000e+00 ; 2 uses
  store float %.sroa.speculated, ptr %i.bgn, align 8, !tbaa !146
  %i.bgr = fsub float %.sroa.speculated, %i.bgo   ; 5 uses
  %i.bgs = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bgt = load ptr, ptr %i.bgs, align 8, !tbaa !134
  %.not.i395 = icmp eq ptr %i.bgt, null
  br i1 %.not.i395, label %_ZN12btSolverBody20internalApplyImpulseERK9btVector3S2_f.exit396, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bgu = load ptr, ptr %i.f, align 8, !tbaa !40, !nonnull !36, !align !41 ; 7 uses
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.bgu, i64 412
  %i.bgw = load float, ptr %i.bgv, align 4, !tbaa !28
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.bgu, i64 404
  %i.bgy = load float, ptr %i.bgx, align 4, !tbaa !28
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.bgu, i64 408
  %i.bha = load float, ptr %i.bgz, align 8, !tbaa !28
  %i.bhb = fmul float %i.bfx, %i.bha
  %i.bhc = call float @llvm.fmuladd.f32(float %i.bgy, float %i.bfy, float %i.bhb)
  %i.bhd = call noundef float @llvm.fmuladd.f32(float %i.bgw, float %i.bfz, float %i.bhc)
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bgu, i64 372
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bgu, i64 396
  %i.bhg = load float, ptr %i.bhf, align 4, !tbaa !28
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bgu, i64 388
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bgu, i64 380
  %i.bhj = load float, ptr %i.bhi, align 4, !tbaa !28
  %i.bhk = fmul float %i.bgr, 0.000000e+00        ; 2 uses
  %i.bhl = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bhm = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bhn = load float, ptr %i.bhm, align 8, !tbaa !28
  %i.bho = fmul float %i.bhk, %i.bhn
  %i.bhp = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bhq = load <2 x float>, ptr %i.bhl, align 8, !tbaa !28
  %i.bhr = insertelement <2 x float> poison, float %i.bhk, i64 0
  %i.bhs = shufflevector <2 x float> %i.bhr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bht = fmul <2 x float> %i.bhs, %i.bhq
  %i.bhu = load <2 x float>, ptr %i.bhp, align 8, !tbaa !28
  %i.bhv = fadd <2 x float> %i.bht, %i.bhu
  %i.bhw = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bhx = load float, ptr %i.bhw, align 8, !tbaa !28
  %i.bhy = fadd float %i.bho, %i.bhx
  %i.bhz = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bia = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bib = load float, ptr %i.bia, align 8, !tbaa !28
  %i.bic = fmul float %i.bgr, %i.bib
  %i.bid = fmul float %i.bhd, %i.bic
  %i.bie = load <2 x float>, ptr %i.bhh, align 4, !tbaa !28 ; 2 uses
  %15 = load <2 x float>, ptr %i.bhe, align 4, !tbaa !28 ; 2 uses
  %16 = insertelement <2 x float> poison, float %i.bfx, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %18 = shufflevector <2 x float> %15, <2 x float> %i.bie, <2 x i32> <i32 1, i32 3>
  %19 = fmul <2 x float> %17, %18
  %i.bif = shufflevector <2 x float> %15, <2 x float> %i.bie, <2 x i32> <i32 0, i32 2>
  %i.big = insertelement <2 x float> poison, float %i.bfy, i64 0
  %i.bih = shufflevector <2 x float> %i.big, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bii = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bif, <2 x float> %i.bih, <2 x float> %19)
  %i.bij = insertelement <2 x float> poison, float %i.bhj, i64 0
  %i.bik = insertelement <2 x float> %i.bij, float %i.bhg, i64 1
  %i.bil = insertelement <2 x float> poison, float %i.bfz, i64 0
  %i.bim = shufflevector <2 x float> %i.bil, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bin = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bik, <2 x float> %i.bim, <2 x float> %i.bii)
  store <2 x float> %i.bhv, ptr %i.bhp, align 8, !tbaa !28
  store float %i.bhy, ptr %i.bhw, align 8, !tbaa !28
  %i.bio = load <2 x float>, ptr %i.bhz, align 8, !tbaa !28
  %i.bip = insertelement <2 x float> poison, float %i.bgr, i64 0
  %i.biq = shufflevector <2 x float> %i.bip, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bir = fmul <2 x float> %i.biq, %i.bio
  %i.bis = fmul <2 x float> %i.bin, %i.bir
  %i.bit = load <2 x float>, ptr %i.axc, align 8, !tbaa !28
  %i.biu = fadd <2 x float> %i.bis, %i.bit
  store <2 x float> %i.biu, ptr %i.axc, align 8, !tbaa !28
  %i.biv = load float, ptr %i.axi, align 8, !tbaa !28
  %i.biw = fadd float %i.bid, %i.biv
  store float %i.biw, ptr %i.axi, align 8, !tbaa !28
  br label %_ZN12btSolverBody20internalApplyImpulseERK9btVector3S2_f.exit396

_ZN12btSolverBody20internalApplyImpulseERK9btVector3S2_f.exit396: ; preds = %bb.ad, %bb.ae
  %i.bix = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.biy = load ptr, ptr %i.bix, align 8, !tbaa !134
  %.not.i402 = icmp eq ptr %i.biy, null
  br i1 %.not.i402, label %_ZN12btSolverBody20internalApplyImpulseERK9btVector3S2_f.exit403, label %bb.af

bb.af:                                            ; preds = %_ZN12btSolverBody20internalApplyImpulseERK9btVector3S2_f.exit396
  %i.biz = fneg float %i.bgr                      ; 2 uses
  %i.bja = load ptr, ptr %i.n, align 8, !tbaa !42, !nonnull !36, !align !41 ; 7 uses
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bja, i64 412
  %i.bjc = load float, ptr %i.bjb, align 4, !tbaa !28
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.bja, i64 404
  %i.bje = load float, ptr %i.bjd, align 4, !tbaa !28
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bja, i64 408
  %i.bjg = load float, ptr %i.bjf, align 8, !tbaa !28
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bja, i64 372
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bja, i64 396
  %i.bjj = load float, ptr %i.bji, align 4, !tbaa !28
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bja, i64 388
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bja, i64 380
  %i.bjm = load float, ptr %i.bjl, align 4, !tbaa !28
  %i.bjn = fmul float %i.bgr, -0.000000e+00       ; 2 uses
  %i.bjo = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.bjp = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bjq = load float, ptr %i.bjp, align 8, !tbaa !28
  %i.bjr = fmul float %i.bjn, %i.bjq
  %i.bjs = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.bjt = load <2 x float>, ptr %i.bjo, align 8, !tbaa !28
  %i.bju = insertelement <2 x float> poison, float %i.bjn, i64 0
  %i.bjv = shufflevector <2 x float> %i.bju, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bjw = fmul <2 x float> %i.bjv, %i.bjt
  %i.bjx = load <2 x float>, ptr %i.bjs, align 8, !tbaa !28
  %i.bjy = fadd <2 x float> %i.bjw, %i.bjx
  %i.bjz = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.bka = load float, ptr %i.bjz, align 8, !tbaa !28
  %i.bkb = fadd float %i.bjr, %i.bka
  %i.bkc = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bkd = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bke = load float, ptr %i.bkd, align 8, !tbaa !28
  %i.bkf = fmul float %i.bke, %i.biz
  %i.bkg = load float, ptr %i.bfv, align 8, !tbaa !28 ; 2 uses
  %i.bkh = load float, ptr %i.bfu, align 4, !tbaa !28 ; 2 uses
  %i.bki = load float, ptr %i.bfw, align 4, !tbaa !28 ; 2 uses
  %i.bkj = fmul float %i.bkg, %i.bjg
  %i.bkk = call float @llvm.fmuladd.f32(float %i.bje, float %i.bkh, float %i.bkj)
  %i.bkl = call noundef float @llvm.fmuladd.f32(float %i.bjc, float %i.bki, float %i.bkk)
  %i.bkm = load <2 x float>, ptr %i.bjk, align 4, !tbaa !28 ; 2 uses
  %20 = load <2 x float>, ptr %i.bjh, align 4, !tbaa !28 ; 2 uses
  %21 = insertelement <2 x float> poison, float %i.bkg, i64 0
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> zeroinitializer
  %23 = shufflevector <2 x float> %20, <2 x float> %i.bkm, <2 x i32> <i32 1, i32 3>
  %24 = fmul <2 x float> %22, %23
  %i.bkn = shufflevector <2 x float> %20, <2 x float> %i.bkm, <2 x i32> <i32 0, i32 2>
  %i.bko = insertelement <2 x float> poison, float %i.bkh, i64 0
  %i.bkp = shufflevector <2 x float> %i.bko, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bkq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bkn, <2 x float> %i.bkp, <2 x float> %24)
  %i.bkr = insertelement <2 x float> poison, float %i.bjm, i64 0
  %i.bks = insertelement <2 x float> %i.bkr, float %i.bjj, i64 1
  %i.bkt = insertelement <2 x float> poison, float %i.bki, i64 0
  %i.bku = shufflevector <2 x float> %i.bkt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bkv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bks, <2 x float> %i.bku, <2 x float> %i.bkq)
  store <2 x float> %i.bjy, ptr %i.bjs, align 8, !tbaa !28
  store float %i.bkb, ptr %i.bjz, align 8, !tbaa !28
  %i.bkw = load <2 x float>, ptr %i.bkc, align 8, !tbaa !28
  %i.bkx = insertelement <2 x float> poison, float %i.biz, i64 0
  %i.bky = shufflevector <2 x float> %i.bkx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bkz = fmul <2 x float> %i.bkw, %i.bky
  %i.bla = fmul <2 x float> %i.bkv, %i.bkz
  %i.blb = fmul float %i.bkl, %i.bkf
  %i.blc = load <2 x float>, ptr %i.axk, align 8, !tbaa !28
  %i.bld = fadd <2 x float> %i.bla, %i.blc
  store <2 x float> %i.bld, ptr %i.axk, align 8, !tbaa !28
  %i.ble = load float, ptr %i.axq, align 8, !tbaa !28
  %i.blf = fadd float %i.blb, %i.ble
  store float %i.blf, ptr %i.axq, align 8, !tbaa !28
  br label %_ZN12btSolverBody20internalApplyImpulseERK9btVector3S2_f.exit403

_ZN12btSolverBody20internalApplyImpulseERK9btVector3S2_f.exit403: ; preds = %_ZN12btSolverBody20internalApplyImpulseERK9btVector3S2_f.exit384, %_ZN12btSolverBody20internalApplyImpulseERK9btVector3S2_f.exit396, %bb.af, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %3, ptr noundef nonnull align 4 dereferenceable(64) %4) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %5 = alloca %class.btQuaternion, align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !28
  %i.d = fmul float %3, %i.c
  %i.e = load <2 x float>, ptr %1, align 4, !tbaa !28
  %i.f = insertelement <2 x float> poison, float %3, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x float> %i.g, %i.e
  %i.i = load <2 x float>, ptr %i.a, align 4, !tbaa !28
  %i.j = fadd <2 x float> %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load float, ptr %i.k, align 4, !tbaa !28
  %i.m = fadd float %i.d, %i.l
  %.sroa.3.12.vec.insert.i24 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.m, i64 0
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <2 x float> %i.j, ptr %i.n, align 4
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i24, ptr %.sroa.473.0..sroa_idx, align 4, !tbaa !11
  %i.o = load float, ptr %2, align 4, !tbaa !28   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load <2 x float>, ptr %i.p, align 4, !tbaa !28 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.q, %i.q
  %i.r = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.s = tail call float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.r)
  %i.t = extractelement <2 x float> %i.q, i64 1   ; 2 uses
  %i.u = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.s) ; 2 uses
  %i.v = fcmp ogt float %i.u, f0x34000000
  %sqrt = tail call float @llvm.sqrt.f32(float %i.u)
  %.0 = select i1 %i.v, float %sqrt, float 0.000000e+00 ; 2 uses
  %i.w = fmul float %3, %.0
  %i.x = fcmp ogt float %i.w, f0x3F490FDB
  %i.y = fdiv float f0x3F490FDB, %3
  %.1 = select i1 %i.x, float %i.y, float %.0     ; 6 uses
  %i.z = fcmp olt float %.1, 1.000000e-03
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = fmul float %3, %3
  %i.ab = fmul float %3, %i.aa
  %i.ac = fmul float %i.ab, f0x3CAAAAAB
  %i.ad = fmul float %i.ac, %.1
  %i.ae = fneg float %.1
  %i.af = fmul float %i.ad, %i.ae
  %i.ag = tail call float @llvm.fmuladd.f32(float %3, float 5.000000e-01, float %i.af)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ah = fmul float %.1, 5.000000e-01
  %i.ai = fmul float %3, %i.ah
  %i.aj = tail call noundef float @sinf(float noundef %i.ai) #21
  %i.ak = fdiv float %i.aj, %.1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink84 = phi float [ %i.ak, %bb.c ], [ %i.ag, %bb.b ] ; 2 uses
  %i.al = fmul float %i.o, %.sink84               ; 4 uses
  %i.am = insertelement <2 x float> poison, float %.sink84, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x float> %i.q, %i.an            ; 5 uses
  %i.ap = extractelement <2 x float> %i.ao, i64 1
  %i.aq = fmul float %3, %.1
  %i.ar = fmul float %i.aq, 5.000000e-01
  %i.as = tail call noundef float @cosf(float noundef %i.ar) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %.fca.0.load.i = load <2 x float>, ptr %5, align 8 ; 6 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.sroa.064.0.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 0
  %i.at = fneg <2 x float> %i.ao                  ; 2 uses
  %i.au = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.av = insertelement <2 x float> %i.au, float %i.al, i64 0
  %i.aw = shufflevector <2 x float> %.fca.1.load.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ax = fmul <2 x float> %i.av, %i.aw
  %i.ay = insertelement <2 x float> poison, float %i.as, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ba = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %.fca.0.load.i, <2 x float> %i.ax)
  %i.bb = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.fca.0.load.i, <2 x i32> <i32 0, i32 2>
  %i.bc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.bb, <2 x float> %i.ba)
  %i.bd = fneg float %i.al
  %i.be = fneg float %i.ap
  %i.bf = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bg = insertelement <2 x float> %i.bf, float %i.bd, i64 1
  %i.bh = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 1, i32 2>
  %i.bi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.bh, <2 x float> %i.bc) ; 5 uses
  %i.bj = fneg float %.sroa.064.0.vec.extract
  %i.bk = fmul float %i.al, %i.bj
  %foldExtExtBinop86 = fmul <2 x float> %i.ao, %.fca.1.load.i
  %i.bl = shufflevector <2 x float> %foldExtExtBinop86, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bm = insertelement <2 x float> %i.bl, float %i.bk, i64 1
  %i.bn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %.fca.1.load.i, <2 x float> %i.bm)
  %i.bo = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bp = insertelement <2 x float> %i.bo, float %i.al, i64 0
  %i.bq = shufflevector <2 x float> %.fca.0.load.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.br = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.bq, <2 x float> %i.bn)
  %i.bs = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 0, i32 2>
  %i.bt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.bs, <2 x float> %i.br) ; 4 uses
  %foldExtExtBinop88 = fmul <2 x float> %i.bi, %i.bi
  %i.bu = extractelement <2 x float> %foldExtExtBinop88, i64 1
  %i.bv = extractelement <2 x float> %i.bi, i64 0 ; 2 uses
  %i.bw = call float @llvm.fmuladd.f32(float %i.bv, float %i.bv, float %i.bu)
  %i.bx = extractelement <2 x float> %i.bt, i64 0 ; 2 uses
  %i.by = call float @llvm.fmuladd.f32(float %i.bx, float %i.bx, float %i.bw)
  %i.bz = extractelement <2 x float> %i.bt, i64 1 ; 2 uses
  %i.ca = call noundef float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %i.by) ; 2 uses
  %i.cb = fcmp ogt float %i.ca, f0x34000000
  br i1 %i.cb, label %bb.e, label %_ZN12btQuaternion13safeNormalizeEv.exit

bb.e:                                             ; preds = %bb.d
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.ca)
  %i.cc = fdiv float 1.000000e+00, %sqrt.i.i.i
  %i.cd = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cf = fmul <2 x float> %i.bi, %i.ce
  %i.cg = fmul <2 x float> %i.bt, %i.ce
  br label %_ZN12btQuaternion13safeNormalizeEv.exit

_ZN12btQuaternion13safeNormalizeEv.exit:          ; preds = %bb.d, %bb.e
  %.sroa.11.0 = phi <2 x float> [ %i.cg, %bb.e ], [ %i.bt, %bb.d ] ; 2 uses
  %.sroa.0.0 = phi <2 x float> [ %i.cf, %bb.e ], [ %i.bi, %bb.d ] ; 2 uses
  %.sroa.0.0.vec.extract46 = extractelement <2 x float> %.sroa.0.0, i64 0 ; 6 uses
  %.sroa.0.4.vec.extract51 = extractelement <2 x float> %.sroa.0.0, i64 1 ; 5 uses
  %i.ch = fmul float %.sroa.0.4.vec.extract51, %.sroa.0.4.vec.extract51
  %i.ci = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract46, float %.sroa.0.0.vec.extract46, float %i.ch)
  %.sroa.11.8.vec.extract56 = extractelement <2 x float> %.sroa.11.0, i64 0 ; 4 uses
  %i.cj = call float @llvm.fmuladd.f32(float %.sroa.11.8.vec.extract56, float %.sroa.11.8.vec.extract56, float %i.ci)
  %.sroa.11.12.vec.extract61 = extractelement <2 x float> %.sroa.11.0, i64 1 ; 5 uses
  %i.ck = call noundef float @llvm.fmuladd.f32(float %.sroa.11.12.vec.extract61, float %.sroa.11.12.vec.extract61, float %i.cj) ; 2 uses
  %i.cl = fcmp ogt float %i.ck, f0x34000000
  br i1 %i.cl, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN12btQuaternion13safeNormalizeEv.exit
  %i.cm = fdiv float 2.000000e+00, %i.ck          ; 3 uses
  %i.cn = fmul float %.sroa.0.0.vec.extract46, %i.cm ; 2 uses
  %i.co = fmul float %.sroa.0.4.vec.extract51, %i.cm ; 3 uses
  %i.cp = fmul float %.sroa.11.8.vec.extract56, %i.cm ; 4 uses
  %i.cq = fmul float %.sroa.11.12.vec.extract61, %i.cn ; 2 uses
  %i.cr = fmul float %.sroa.11.12.vec.extract61, %i.co ; 2 uses
  %i.cs = fmul float %.sroa.11.12.vec.extract61, %i.cp ; 2 uses
  %i.ct = fmul float %.sroa.0.0.vec.extract46, %i.cn ; 2 uses
  %i.cu = fmul float %.sroa.0.0.vec.extract46, %i.co ; 2 uses
  %i.cv = fmul float %.sroa.0.0.vec.extract46, %i.cp ; 2 uses
  %i.cw = fmul float %.sroa.0.4.vec.extract51, %i.co ; 2 uses
  %i.cx = fmul float %.sroa.0.4.vec.extract51, %i.cp ; 2 uses
  %i.cy = fmul float %.sroa.11.8.vec.extract56, %i.cp ; 2 uses
  %i.cz = fadd float %i.cw, %i.cy
  %i.da = fsub float 1.000000e+00, %i.cz
  %i.db = fsub float %i.cu, %i.cs
  %i.dc = fadd float %i.cv, %i.cr
  %i.dd = fadd float %i.cu, %i.cs
  %i.de = fadd float %i.ct, %i.cy
  %i.df = fsub float 1.000000e+00, %i.de
  %i.dg = fsub float %i.cx, %i.cq
  %i.dh = fsub float %i.cv, %i.cr
  %i.di = fadd float %i.cx, %i.cq
  %i.dj = fadd float %i.ct, %i.cw
  %i.dk = fsub float 1.000000e+00, %i.dj
  store float %i.da, ptr %4, align 4, !tbaa !28
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.db, ptr %i.dl, align 4, !tbaa !28
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.dc, ptr %i.dm, align 4, !tbaa !28
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 0.000000e+00, ptr %i.dn, align 4, !tbaa !28
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %i.dd, ptr %i.do, align 4, !tbaa !28
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 20
end_hunk_1
