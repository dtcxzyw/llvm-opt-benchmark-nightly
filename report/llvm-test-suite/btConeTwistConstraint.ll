Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btConeTwistConstraint?download=true
inline.NumInlined: 921
inline.NumDeleted: 125
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN21btConeTwistConstraint14calcAngleInfo2ERK11btTransformS2_RK11btMatrix3x3S5_:bb.a
  %i.anq = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.anr = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.ans = load float, ptr %i.anr, align 4, !tbaa !27
  %i.ant = call float @llvm.fmuladd.f32(float %i.amm, float %i.amq, float %i.anj)
  %i.anu = load <2 x float>, ptr %i.anp, align 4, !tbaa !27
  %i.anv = load <2 x float>, ptr %i.anq, align 4, !tbaa !27
  %i.anw = insertelement <4 x float> poison, float %i.ant, i64 0
  %i.anx = insertelement <4 x float> %i.anw, float %i.anm, i64 1
  %i.any = shufflevector <2 x float> %i.anv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.anz = shufflevector <4 x float> %i.anx, <4 x float> %i.any, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aoa = shufflevector <2 x float> %i.amb, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 1, i32 1>
  %i.aob = insertelement <4 x float> %i.aoa, float 1.000000e+00, i64 0
  %i.aoc = fmul <4 x float> %i.anz, %i.aob
  %i.aod = insertelement <4 x float> poison, float %i.amf, i64 0
  %i.aoe = insertelement <4 x float> %i.aod, float %i.ank, i64 1
  %i.aof = shufflevector <2 x float> %i.anu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aog = shufflevector <4 x float> %i.aoe, <4 x float> %i.aof, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aoh = shufflevector <2 x float> %i.amb, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>
  %i.aoi = insertelement <4 x float> %i.aoh, float %i.ani, i64 0
  %i.aoj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aog, <4 x float> %i.aoi, <4 x float> %i.aoc) ; 4 uses
  %i.aok = extractelement <4 x float> %i.aoj, i64 1
  %i.aol = call noundef float @llvm.fmuladd.f32(float %i.ano, float %i.amf, float %i.aok)
  %i.aom = extractelement <4 x float> %i.aoj, i64 2
  %i.aon = call noundef float @llvm.fmuladd.f32(float %i.ans, float %i.amf, float %i.aom)
  %i.aoo = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aop = load float, ptr %i.aoo, align 4, !tbaa !27
  %i.aoq = extractelement <4 x float> %i.aoj, i64 3
  %i.aor = call noundef float @llvm.fmuladd.f32(float %i.aop, float %i.amf, float %i.aoq)
  %i.aos = fmul float %i.amk, %i.aon
  %i.aot = call float @llvm.fmuladd.f32(float %i.amm, float %i.aol, float %i.aos)
  %i.aou = call noundef float @llvm.fmuladd.f32(float %i.amf, float %i.aor, float %i.aot)
  %i.aov = extractelement <4 x float> %i.aoj, i64 0
  %i.aow = fadd float %i.aov, %i.aou
  %i.aox = fdiv float 1.000000e+00, %i.aow
  %i.aoy = getelementptr inbounds nuw i8, ptr %0, i64 544
  store float %i.aox, ptr %i.aoy, align 8, !tbaa !48
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge540, %_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3.exit
  %i.aoz = load i8, ptr %i.d, align 2, !tbaa !30, !range !31, !noundef !32
  %i.apa = trunc nuw i8 %i.aoz to i1
  br i1 %i.apa, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.apb = shufflevector <2 x float> %i.akl, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.apc = insertelement <2 x float> %i.apb, float %.sroa.10.0, i64 0
  %i.apd = fneg <2 x float> %i.apc                ; 2 uses
  %i.ape = extractelement <2 x float> %i.akl, i64 1
  %i.apf = fneg float %i.ape                      ; 2 uses
  %i.apg = fneg float %i.pg                       ; 2 uses
  %i.aph = fneg float %i.pc                       ; 2 uses
  %i.api = extractelement <2 x float> %i.akl, i64 0
  %i.apj = shufflevector <2 x float> %i.of, <2 x float> %i.pt, <4 x i32> <i32 0, i32 0, i32 3, i32 1>
  %i.apk = shufflevector <2 x float> %i.akl, <2 x float> %i.apd, <4 x i32> <i32 1, i32 2, i32 poison, i32 3>
  %i.apl = insertelement <4 x float> %i.apk, float %i.apf, i64 2
  %i.apm = fmul <4 x float> %i.apj, %i.apl        ; 3 uses
  %i.apn = extractelement <4 x float> %i.apm, i64 0
  %i.apo = call float @llvm.fmuladd.f32(float %i.qg, float %i.api, float %i.apn)
  %i.app = call float @llvm.fmuladd.f32(float %i.pg, float %.sroa.10.0, float %i.apo) ; 2 uses
  %i.apq = shufflevector <4 x float> %i.apm, <4 x float> poison, <2 x i32> <i32 2, i32 1>
  %i.apr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qb, <2 x float> %i.apd, <2 x float> %i.apq)
  %i.aps = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.of, <2 x float> %i.akl, <2 x float> %i.apr) ; 4 uses
  %i.apt = extractelement <2 x float> %i.aps, i64 0
  %i.apu = extractelement <2 x float> %i.aps, i64 1
  %i.apv = extractelement <4 x float> %i.apm, i64 3
  %i.apw = call float @llvm.fmuladd.f32(float %i.po, float %i.apf, float %i.apv)
  %i.apx = call float @llvm.fmuladd.f32(float %i.qg, float %.sroa.10.0, float %i.apw) ; 3 uses
  %i.apy = shufflevector <2 x float> %i.aps, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.apz = insertelement <2 x float> %i.apy, float %i.apx, i64 1
  %i.aqa = fmul <2 x float> %i.qb, %i.apz
  %i.aqb = insertelement <2 x float> poison, float %i.app, i64 0
  %i.aqc = shufflevector <2 x float> %i.aqb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aqd = insertelement <2 x float> poison, float %i.qk, i64 0
  %i.aqe = insertelement <2 x float> %i.aqd, float %i.aph, i64 1
  %i.aqf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqc, <2 x float> %i.aqe, <2 x float> %i.aqa)
  %i.aqg = insertelement <2 x float> %i.apy, float %i.apx, i64 0
  %i.aqh = insertelement <2 x float> poison, float %i.apg, i64 0
  %i.aqi = insertelement <2 x float> %i.aqh, float %i.qk, i64 1
  %i.aqj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqg, <2 x float> %i.aqi, <2 x float> %i.aqf)
  %i.aqk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aps, <2 x float> %i.of, <2 x float> %i.aqj)
  %i.aql = fmul float %i.po, %i.apt
  %i.aqm = call float @llvm.fmuladd.f32(float %i.app, float %i.apg, float %i.aql)
  %i.aqn = call float @llvm.fmuladd.f32(float %i.apu, float %i.aph, float %i.aqm)
  %i.aqo = call float @llvm.fmuladd.f32(float %i.apx, float %i.qg, float %i.aqn)
  %.sroa.3.12.vec.insert.i263 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aqo, i64 0
  %i.aqp = getelementptr inbounds nuw i8, ptr %0, i64 584
  store <2 x float> %i.aqk, ptr %i.aqp, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 592
  store <2 x float> %.sroa.3.12.vec.insert.i263, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !23
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ac
  store float 0.000000e+00, ptr %i.ajs, align 8, !tbaa !49
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN21btConeTwistConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(640) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #2 align 2 {
bb.a:
  store i32 6, ptr %1, align 4, !tbaa !34
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !35
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN21btConeTwistConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E(ptr noundef nonnull align 8 dereferenceable(640) initializes((548, 556), (573, 575)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36, !nonnull !32, !align !37 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38, !nonnull !32, !align !37 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  tail call void @_ZN21btConeTwistConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK11btMatrix3x3S8_(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(48) %i.g, ptr noundef nonnull align 4 dereferenceable(48) %i.h)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN21btConeTwistConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK11btMatrix3x3S8_(ptr noundef nonnull align 8 dereferenceable(640) initializes((548, 556), (573, 575)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %5) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN21btConeTwistConstraint14calcAngleInfo2ERK11btTransformS2_RK11btMatrix3x3S5_(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(48) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 3 uses
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !90   ; 6 uses
  %i.e = sext i32 %i.d to i64                     ; 7 uses
  %i.f = getelementptr [4 x i8], ptr %i.b, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 4
  store float 1.000000e+00, ptr %i.g, align 4, !tbaa !27
  %i.h = shl nsw i32 %i.d, 1
  %i.i = sext i32 %i.h to i64                     ; 3 uses
  %i.j = getelementptr [4 x i8], ptr %i.b, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 8
  store float 1.000000e+00, ptr %i.k, align 4, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.m = load float, ptr %2, align 4, !tbaa !27
  %i.n = load float, ptr %i.l, align 4, !tbaa !27 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.r = load float, ptr %i.q, align 8, !tbaa !27 ; 3 uses
  %i.s = fmul float %i.p, %i.r
  %i.t = tail call float @llvm.fmuladd.f32(float %i.m, float %i.n, float %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.x = load float, ptr %i.w, align 4, !tbaa !27 ; 3 uses
  %i.y = tail call noundef float @llvm.fmuladd.f32(float %i.v, float %i.x, float %i.t) ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !27
  %i.ad = fmul float %i.r, %i.ac
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.n, float %i.ad)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !27
  %i.ah = tail call noundef float @llvm.fmuladd.f32(float %i.ag, float %i.x, float %i.ae) ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.al = load float, ptr %i.ak, align 4, !tbaa !27
  %i.am = fmul float %i.r, %i.al
  %i.an = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.n, float %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !27
  %i.aq = tail call noundef float @llvm.fmuladd.f32(float %i.ap, float %i.x, float %i.an) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !91 ; 17 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.e ; 4 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.i ; 3 uses
  %i.av = fneg float %i.y
  %i.aw = fneg float %i.ah
  %i.ax = fneg float %i.aq
  store float 0.000000e+00, ptr %i.as, align 4, !tbaa !27
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store float %i.aq, ptr %i.ay, align 4, !tbaa !27
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store float %i.aw, ptr %i.az, align 4, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store float 0.000000e+00, ptr %i.ba, align 4, !tbaa !27
  store float %i.ax, ptr %i.at, align 4, !tbaa !27
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store float 0.000000e+00, ptr %i.bb, align 4, !tbaa !27
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store float %i.y, ptr %i.bc, align 4, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store float 0.000000e+00, ptr %i.bd, align 4, !tbaa !27
  store float %i.ah, ptr %i.au, align 4, !tbaa !27
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store float %i.av, ptr %i.be, align 4, !tbaa !27
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store <2 x float> zeroinitializer, ptr %i.bf, align 4, !tbaa !27
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 460
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !27
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !27
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !27
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.br = load float, ptr %i.bq, align 4, !tbaa !27
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !27
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !92 ; 17 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.e ; 4 uses
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.i ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.ce = load <2 x float>, ptr %3, align 4, !tbaa !27
  %i.cf = load float, ptr %6, align 4, !tbaa !27
  %i.cg = load float, ptr %i.bh, align 8, !tbaa !27 ; 3 uses
  %i.ch = load float, ptr %i.bg, align 4, !tbaa !27 ; 2 uses
  %8 = load float, ptr %i.bk, align 4, !tbaa !27  ; 2 uses
  %9 = load <2 x float>, ptr %i.bl, align 4, !tbaa !27
  %10 = load float, ptr %7, align 4, !tbaa !27
  %11 = fmul float %i.cg, %10
  %12 = fmul float %i.cf, %i.cg
  %i.ci = shufflevector <2 x float> %i.ce, <2 x float> %9, <2 x i32> <i32 0, i32 2>
  %i.cj = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %13 = insertelement <2 x float> poison, float %12, i64 0
  %14 = insertelement <2 x float> %13, float %11, i64 1
  %i.cl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.ck, <2 x float> %14)
  %i.cm = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.cn = insertelement <2 x float> %i.cm, float %i.bn, i64 1
  %i.co = insertelement <2 x float> poison, float %8, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cn, <2 x float> %i.cp, <2 x float> %i.cl) ; 3 uses
  %i.cr = fmul float %i.cg, %i.br
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.ch, float %i.cr)
  %i.ct = tail call noundef float @llvm.fmuladd.f32(float %i.bt, float %8, float %i.cs) ; 3 uses
  %i.cu = fneg float %i.ct
  store float 0.000000e+00, ptr %i.bv, align 4, !tbaa !27
  store float %i.cu, ptr %i.by, align 4, !tbaa !27
  %i.cv = extractelement <2 x float> %i.cq, i64 1 ; 2 uses
  store float %i.cv, ptr %i.bz, align 4, !tbaa !27
  store float 0.000000e+00, ptr %i.ca, align 4, !tbaa !27
  store float %i.ct, ptr %i.bw, align 4, !tbaa !27
  store float 0.000000e+00, ptr %i.cb, align 4, !tbaa !27
  %i.cw = fneg <2 x float> %i.cq                  ; 2 uses
  %i.cx = extractelement <2 x float> %i.cw, i64 0
  store float %i.cx, ptr %i.cc, align 4, !tbaa !27
  store float 0.000000e+00, ptr %i.cd, align 4, !tbaa !27
  %i.cy = extractelement <2 x float> %i.cw, i64 1
  store float %i.cy, ptr %i.bx, align 4, !tbaa !27
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.da = extractelement <2 x float> %i.cq, i64 0 ; 2 uses
  store float %i.da, ptr %i.cz, align 4, !tbaa !27
  %i.db = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store <2 x float> zeroinitializer, ptr %i.db, align 4, !tbaa !27
  %i.dc = load float, ptr %1, align 8, !tbaa !93
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.de = load float, ptr %i.dd, align 4, !tbaa !94
  %i.df = fmul float %i.dc, %i.de                 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !95 ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !96 ; 6 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !97 ; 6 uses
  %i.do = load float, ptr %i.dg, align 4, !tbaa !27
  %i.dp = fadd float %i.da, %i.do
  %i.dq = fsub float %i.dp, %i.y
  %i.dr = load float, ptr %i.dh, align 4, !tbaa !27
  %i.ds = fsub float %i.dq, %i.dr
  %i.dt = fmul float %i.df, %i.ds
  store float %i.dt, ptr %i.dj, align 4, !tbaa !27
  store float f0xFF7FFFFF, ptr %i.dl, align 4, !tbaa !27
  store float f0x7F7FFFFF, ptr %i.dn, align 4, !tbaa !27
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.dv = load float, ptr %i.du, align 4, !tbaa !27
  %i.dw = fadd float %i.cv, %i.dv
  %i.dx = fsub float %i.dw, %i.ah
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !27
  %i.ea = fsub float %i.dx, %i.dz
  %i.eb = fmul float %i.df, %i.ea
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.e
  store float %i.eb, ptr %i.ec, align 4, !tbaa !27
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %i.e
  store float f0xFF7FFFFF, ptr %i.ed, align 4, !tbaa !27
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.e
  store float f0x7F7FFFFF, ptr %i.ee, align 4, !tbaa !27
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !27
  %i.eh = fadd float %i.ct, %i.eg
  %i.ei = fsub float %i.eh, %i.aq
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !27
  %i.el = fsub float %i.ei, %i.ek
  %i.em = fmul float %i.df, %i.el
  %i.en = shl nsw i64 %i.e, 1                     ; 3 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.en
  store float %i.em, ptr %i.eo, align 4, !tbaa !27
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %i.en
  store float f0xFF7FFFFF, ptr %i.ep, align 4, !tbaa !27
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.en
  store float f0x7F7FFFFF, ptr %i.eq, align 4, !tbaa !27
  %i.er = mul nsw i32 %i.d, 3                     ; 7 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 574
  %i.et = load i8, ptr %i.es, align 2, !tbaa !30, !range !31, !noundef !32
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !39
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ey = load float, ptr %i.ex, align 8, !tbaa !40 ; 2 uses
  %i.ez = fcmp olt float %i.ew, %i.ey
  br i1 %i.ez, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.fb = load float, ptr %i.fa, align 8, !tbaa !41
  %i.fc = fcmp olt float %i.fb, %i.ey
  br i1 %i.fc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.fd = load float, ptr %i.u, align 4, !tbaa !27, !noalias !98 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.fh = load float, ptr %i.af, align 4, !tbaa !27, !noalias !98 ; 2 uses
  %i.fi = load float, ptr %i.ao, align 4, !tbaa !27, !noalias !98
  %i.fj = shl nsw i32 %i.d, 2                     ; 2 uses
  %i.fk = sext i32 %i.er to i64                   ; 5 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.fk
  %i.fm = add nsw i32 %i.er, 1
  %i.fn = sext i32 %i.fm to i64                   ; 2 uses
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.fn
  %i.fp = add nsw i32 %i.er, 2
  %i.fq = sext i32 %i.fp to i64                   ; 2 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.fq
  %i.fs = sext i32 %i.fj to i64                   ; 5 uses
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.fs
  %i.fu = load <2 x float>, ptr %2, align 4, !tbaa !27, !noalias !98 ; 3 uses
  %i.fv = load float, ptr %i.o, align 4, !tbaa !27, !noalias !98
  %i.fw = load <2 x float>, ptr %i.z, align 4, !tbaa !27, !noalias !98 ; 3 uses
  %i.fx = load float, ptr %i.ab, align 4, !tbaa !27, !noalias !98
  %i.fy = load <2 x float>, ptr %i.fe, align 8, !tbaa !27, !noalias !98 ; 2 uses
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.ga = load <2 x float>, ptr %i.ff, align 8, !tbaa !27, !noalias !98 ; 2 uses
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.gc = load <2 x float>, ptr %i.ai, align 4, !tbaa !27, !noalias !98 ; 2 uses
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ge = insertelement <4 x float> %i.gd, float %i.fv, i64 1
  %i.gf = insertelement <4 x float> %i.ge, float %i.fx, i64 2
  %i.gg = shufflevector <4 x float> %i.gf, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  %i.gh = fmul <4 x float> %i.gb, %i.gg
  %i.gi = shufflevector <2 x float> %i.fu, <2 x float> %i.fw, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.gj = shufflevector <2 x float> %i.gc, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> %i.gi, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fz, <4 x float> %i.gk, <4 x float> %i.gh)
  %i.gm = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gn = shufflevector <2 x float> %i.fu, <2 x float> %i.fw, <2 x i32> <i32 1, i32 3>
  %i.go = fmul <2 x float> %i.gm, %i.gn
  %i.gp = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gq = shufflevector <2 x float> %i.fu, <2 x float> %i.fw, <2 x i32> <i32 0, i32 2>
  %i.gr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gp, <2 x float> %i.gq, <2 x float> %i.go)
  %i.gs = insertelement <2 x float> poison, float %i.fd, i64 0
  %i.gt = insertelement <2 x float> %i.gs, float %i.fh, i64 1
  %i.gu = or disjoint i32 %i.fj, 2
  %i.gv = sext i32 %i.gu to i64                   ; 2 uses
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.gv
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.fk
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.fn
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.fq
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.fs
  %i.hb = load <2 x float>, ptr %i.fg, align 8, !tbaa !27, !noalias !98 ; 2 uses
  %i.hc = shufflevector <2 x float> %i.hb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.hd = insertelement <4 x float> poison, float %i.fd, i64 0
  %i.he = insertelement <4 x float> %i.hd, float %i.fh, i64 1
  %i.hf = insertelement <4 x float> %i.he, float %i.fi, i64 2
  %i.hg = shufflevector <4 x float> %i.hf, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 0, i32 1>
  %i.hh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hc, <4 x float> %i.hg, <4 x float> %i.gl) ; 5 uses
  %i.hi = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hi, <2 x float> %i.gt, <2 x float> %i.gr) ; 4 uses
  %i.hk = extractelement <4 x float> %i.hh, i64 2 ; 2 uses
  store float %i.hk, ptr %i.fl, align 4, !tbaa !27
  %i.hl = extractelement <4 x float> %i.hh, i64 3 ; 2 uses
  store float %i.hl, ptr %i.fo, align 4, !tbaa !27
  %i.hm = extractelement <4 x float> %i.hh, i64 0 ; 2 uses
  store float %i.hm, ptr %i.fr, align 4, !tbaa !27
  store <2 x float> %i.hj, ptr %i.ft, align 4, !tbaa !27
  %i.hn = extractelement <4 x float> %i.hh, i64 1 ; 2 uses
  store float %i.hn, ptr %i.gw, align 4, !tbaa !27
  %i.ho = fneg <4 x float> %i.hh                  ; 4 uses
  %i.hp = extractelement <4 x float> %i.ho, i64 2
  store float %i.hp, ptr %i.gx, align 4, !tbaa !27
  %i.hq = extractelement <4 x float> %i.ho, i64 3
  store float %i.hq, ptr %i.gy, align 4, !tbaa !27
  %i.hr = extractelement <4 x float> %i.ho, i64 0
  store float %i.hr, ptr %i.gz, align 4, !tbaa !27
  %i.hs = extractelement <2 x float> %i.hj, i64 0
  %i.ht = extractelement <2 x float> %i.hj, i64 1
  %i.hu = fneg <2 x float> %i.hj
  store <2 x float> %i.hu, ptr %i.ha, align 4, !tbaa !27
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.gv
  %i.hw = extractelement <4 x float> %i.ho, i64 1
  store float %i.hw, ptr %i.hv, align 4, !tbaa !27
  %i.hx = load float, ptr %1, align 8, !tbaa !93
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !50
  %i.ia = fmul float %i.hx, %i.hz                 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 508 ; 2 uses
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !27
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.ie = load float, ptr %i.id, align 8, !tbaa !27
  %i.if = fmul float %i.hl, %i.ie
  %i.ig = tail call float @llvm.fmuladd.f32(float %i.ic, float %i.hk, float %i.if)
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 516 ; 2 uses
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !27
  %i.ij = tail call noundef float @llvm.fmuladd.f32(float %i.ii, float %i.hm, float %i.ig)
  %i.ik = fmul float %i.ia, %i.ij
  %i.il = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.fk
  store float %i.ik, ptr %i.il, align 4, !tbaa !27
  %i.im = load float, ptr %i.ib, align 4, !tbaa !27
  %i.in = load float, ptr %i.id, align 8, !tbaa !27
  %i.io = fmul float %i.ht, %i.in
  %i.ip = tail call float @llvm.fmuladd.f32(float %i.im, float %i.hs, float %i.io)
  %i.iq = load float, ptr %i.ih, align 4, !tbaa !27
  %i.ir = tail call noundef float @llvm.fmuladd.f32(float %i.iq, float %i.hn, float %i.ip)
  %i.is = fmul float %i.ia, %i.ir
  %i.it = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.fs
  store float %i.is, ptr %i.it, align 4, !tbaa !27
  %i.iu = load ptr, ptr %i.dk, align 8, !tbaa !96 ; 3 uses
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %i.fk
  store float f0xFF7FFFFF, ptr %i.iv, align 4, !tbaa !27
end_hunk_0
begin_hunk_1_@_ZN21btConeTwistConstraint13buildJacobianEv:bb.a

bb.h:                                             ; preds = %bb.f
  %i.dp = fmul float %i.cz, %i.cz
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.cy, float %i.dp) ; 2 uses
  %sqrt46.i = tail call float @llvm.sqrt.f32(float %i.dq)
  %i.dr = fdiv float 1.000000e+00, %sqrt46.i      ; 3 uses
  %i.ds = fneg float %i.cz
  %i.dt = fmul float %i.dr, %i.ds                 ; 2 uses
  %i.du = fmul float %i.cy, %i.dr                 ; 2 uses
  %i.dv = fneg float %i.da
  %i.dw = fmul float %i.du, %i.dv
  %i.dx = fmul float %i.da, %i.dt
  %i.dy = fmul float %i.dq, %i.dr
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit

_Z13btPlaneSpace1RK9btVector3RS_S2_.exit:         ; preds = %bb.g, %bb.h
  %.sink70 = phi float [ 0.000000e+00, %bb.g ], [ %i.dt, %bb.h ]
  %.sink69 = phi float [ %i.dj, %bb.g ], [ %i.du, %bb.h ]
  %.sink = phi float [ %i.dk, %bb.g ], [ 0.000000e+00, %bb.h ]
  %.sink48.i = phi float [ %i.dl, %bb.g ], [ %i.dw, %bb.h ]
  %.sink47.i = phi float [ %i.dn, %bb.g ], [ %i.dx, %bb.h ]
  %.sink.i = phi float [ %i.do, %bb.g ], [ %i.dy, %bb.h ]
  store float %.sink70, ptr %i.db, align 16, !tbaa !27
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %.sink69, ptr %i.dz, align 4, !tbaa !27
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %.sink, ptr %i.ea, align 8, !tbaa !27
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float 0.000000e+00, ptr %i.eb, align 4, !tbaa !27
  store float %.sink48.i, ptr %i.dc, align 16, !tbaa !27
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %.sink47.i, ptr %i.ec, align 4, !tbaa !27
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %.sink.i, ptr %i.ed, align 8, !tbaa !27
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float 0.000000e+00, ptr %i.ee, align 4, !tbaa !27
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.eg = getelementptr inbounds nuw i8, ptr %i.k, i64 428
  %i.eh = getelementptr inbounds nuw i8, ptr %i.k, i64 360
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ac, i64 428
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ac, i64 360
  %i.ek = getelementptr inbounds nuw i8, ptr %i.k, i64 436
  %i.el = getelementptr inbounds nuw i8, ptr %i.ac, i64 436
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.k

bb.j:                                             ; preds = %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit, %bb.j
  %indvars.iv = phi i64 [ 0, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.em = getelementptr inbounds nuw [84 x i8], ptr %i.ef, i64 %indvars.iv ; 12 uses
  %i.en = load float, ptr %i.q, align 8, !tbaa !27, !noalias !104
  %i.eo = load float, ptr %i.w, align 8, !tbaa !27, !noalias !104
  %i.ep = load float, ptr %i.z, align 8, !tbaa !27, !noalias !104
  %i.eq = load float, ptr %i.ai, align 8, !tbaa !27, !noalias !105
  %i.er = load float, ptr %i.ao, align 8, !tbaa !27, !noalias !105
  %i.es = load float, ptr %i.ar, align 8, !tbaa !27, !noalias !105
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv
  %i.eu = load float, ptr %i.eh, align 8, !tbaa !62
  %i.ev = load float, ptr %i.ej, align 8, !tbaa !62
  %i.ew = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.ey = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.ez = getelementptr inbounds nuw i8, ptr %i.em, i64 64
  %i.fa = load <2 x float>, ptr %i.l, align 8, !tbaa !27, !noalias !104
  %i.fb = load <2 x float>, ptr %i.v, align 8, !tbaa !27, !noalias !104
  %i.fc = load <2 x float>, ptr %i.y, align 8, !tbaa !27, !noalias !104
  %i.fd = load <3 x float>, ptr %i.u, align 8, !tbaa !27
  %i.fe = fsub <3 x float> %i.bl, %i.fd           ; 2 uses
  %i.ff = shufflevector <3 x float> %i.fe, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.fg = load <2 x float>, ptr %i.ad, align 8, !tbaa !27, !noalias !105
  %i.fh = load <2 x float>, ptr %i.an, align 8, !tbaa !27, !noalias !105
  %i.fi = load <2 x float>, ptr %i.aq, align 8, !tbaa !27, !noalias !105
  %i.fj = load <3 x float>, ptr %i.am, align 8, !tbaa !27
  %i.fk = fsub <3 x float> %i.ch, %i.fj           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %i.em, ptr noundef nonnull align 16 dereferenceable(16) %i.et, i64 16, i1 false), !tbaa.struct !24
  %i.fl = load float, ptr %i.em, align 4, !tbaa !27
  %i.fm = load <3 x float>, ptr %i.em, align 4, !tbaa !27 ; 4 uses
  %i.fn = shufflevector <3 x float> %i.fm, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.fo = extractelement <3 x float> %i.fm, i64 1
  %i.fp = fneg <3 x float> %i.fm                  ; 2 uses
  %i.fq = fneg float %i.fo
  %i.fr = fmul <3 x float> %i.ff, %i.fp
  %i.fs = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.fe, <3 x float> %i.fn, <3 x float> %i.fr) ; 6 uses
  %i.ft = shufflevector <3 x float> %i.fs, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fu = fmul <2 x float> %i.fb, %i.ft
  %i.fv = shufflevector <3 x float> %i.fs, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fa, <2 x float> %i.fv, <2 x float> %i.fu)
  %i.fx = shufflevector <3 x float> %i.fs, <3 x float> poison, <2 x i32> zeroinitializer
  %i.fy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fc, <2 x float> %i.fx, <2 x float> %i.fw) ; 4 uses
  %i.fz = extractelement <3 x float> %i.fs, i64 2
  %i.ga = fmul float %i.eo, %i.fz
  %i.gb = extractelement <3 x float> %i.fs, i64 1
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.en, float %i.gb, float %i.ga)
  %i.gd = extractelement <3 x float> %i.fs, i64 0
  %i.ge = tail call noundef float @llvm.fmuladd.f32(float %i.ep, float %i.gd, float %i.gc) ; 3 uses
  %.sroa.3.12.vec.insert.i18.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ge, i64 0
  store <2 x float> %i.fy, ptr %i.ew, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i18.i, ptr %.sroa.46.0..sroa_idx.i, align 4, !tbaa !23
  %i.gf = shufflevector <3 x float> %i.fm, <3 x float> poison, <3 x i32> <i32 2, i32 poison, i32 1>
  %i.gg = insertelement <3 x float> %i.gf, float %i.fl, i64 1
  %i.gh = fmul <3 x float> %i.fk, %i.gg
  %i.gi = shufflevector <3 x float> %i.gh, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.gj = insertelement <3 x float> poison, float %i.fq, i64 0
  %i.gk = shufflevector <3 x float> %i.gj, <3 x float> %i.fp, <3 x i32> <i32 0, i32 5, i32 3>
  %i.gl = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.fk, <3 x float> %i.gk, <3 x float> %i.gi) ; 6 uses
  %i.gm = shufflevector <3 x float> %i.gl, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gn = fmul <2 x float> %i.fh, %i.gm
  %i.go = shufflevector <3 x float> %i.gl, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fg, <2 x float> %i.go, <2 x float> %i.gn)
  %i.gq = shufflevector <3 x float> %i.gl, <3 x float> poison, <2 x i32> zeroinitializer
  %i.gr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fi, <2 x float> %i.gq, <2 x float> %i.gp) ; 4 uses
  %i.gs = extractelement <3 x float> %i.gl, i64 2
  %i.gt = fmul float %i.er, %i.gs
  %i.gu = extractelement <3 x float> %i.gl, i64 1
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.gu, float %i.gt)
  %i.gw = extractelement <3 x float> %i.gl, i64 0
  %i.gx = tail call noundef float @llvm.fmuladd.f32(float %i.es, float %i.gw, float %i.gv) ; 3 uses
  %.sroa.3.12.vec.insert.i33.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gx, i64 0
  store <2 x float> %i.gr, ptr %i.ex, align 4
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  store <2 x float> %.sroa.3.12.vec.insert.i33.i, ptr %.sroa.44.0..sroa_idx.i, align 4, !tbaa !23
  %i.gy = extractelement <2 x float> %i.fy, i64 0
  %i.gz = load <2 x float>, ptr %i.eg, align 4, !tbaa !27
  %i.ha = fmul <2 x float> %i.fy, %i.gz           ; 3 uses
  %i.hb = load float, ptr %i.ek, align 4, !tbaa !27
  %i.hc = fmul float %i.ge, %i.hb                 ; 2 uses
  %.sroa.3.12.vec.insert.i38.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hc, i64 0
  store <2 x float> %i.ha, ptr %i.ey, align 4
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.em, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i38.i, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !23
  %i.hd = extractelement <2 x float> %i.gr, i64 0
  %i.he = load <2 x float>, ptr %i.ei, align 4, !tbaa !27
  %i.hf = fmul <2 x float> %i.gr, %i.he           ; 3 uses
  %i.hg = load float, ptr %i.el, align 4, !tbaa !27
  %i.hh = fmul float %i.gx, %i.hg                 ; 2 uses
  %.sroa.3.12.vec.insert.i43.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hh, i64 0
  store <2 x float> %i.hf, ptr %i.ez, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.em, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i43.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !23
  %foldExtExtBinop75 = fmul <2 x float> %i.fy, %i.ha
  %i.hi = extractelement <2 x float> %foldExtExtBinop75, i64 1
  %i.hj = extractelement <2 x float> %i.ha, i64 0
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.hj, float %i.gy, float %i.hi)
  %i.hl = tail call noundef float @llvm.fmuladd.f32(float %i.hc, float %i.ge, float %i.hk)
  %i.hm = fadd float %i.eu, %i.hl
  %i.hn = fadd float %i.ev, %i.hm
  %foldExtExtBinop77 = fmul <2 x float> %i.gr, %i.hf
  %i.ho = extractelement <2 x float> %foldExtExtBinop77, i64 1
  %i.hp = extractelement <2 x float> %i.hf, i64 0
  %i.hq = tail call float @llvm.fmuladd.f32(float %i.hp, float %i.hd, float %i.ho)
  %i.hr = tail call noundef float @llvm.fmuladd.f32(float %i.hh, float %i.gx, float %i.hq)
  %i.hs = fadd float %i.hn, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.em, i64 80
  store float %i.hs, ptr %i.ht, align 4, !tbaa !64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.i, label %bb.j

bb.k:                                             ; preds = %bb.i, %bb.b
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !36, !nonnull !32, !align !37 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !38, !nonnull !32, !align !37 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 280
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 280
  tail call void @_ZN21btConeTwistConstraint14calcAngleInfo2ERK11btTransformS2_RK11btMatrix3x3S5_(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 4 dereferenceable(64) %i.hw, ptr noundef nonnull align 4 dereferenceable(64) %i.hz, ptr noundef nonnull align 4 dereferenceable(48) %i.ia, ptr noundef nonnull align 4 dereferenceable(48) %i.ib)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN21btConeTwistConstraint23solveConstraintObsoleteER12btSolverBodyS1_f(ptr nofree noundef nonnull align 8 dereferenceable(640) %0, ptr nofree noundef nonnull align 8 dereferenceable(112) %1, ptr nofree noundef nonnull align 8 dereferenceable(112) %2, float noundef %3) unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %class.btVector3, align 16          ; 4 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %5 = alloca %class.btVector3, align 16          ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %6 = alloca %class.btTransform, align 4         ; 9 uses
  %7 = alloca %class.btTransform, align 4         ; 9 uses
  %8 = alloca %class.btVector3, align 16          ; 7 uses
  %9 = alloca %class.btVector3, align 16          ; 7 uses
  %10 = alloca %class.btTransform, align 8        ; 15 uses
  %11 = alloca %class.btVector3, align 8          ; 8 uses
  %12 = alloca %class.btTransform, align 8        ; 15 uses
  %13 = alloca %class.btTransform, align 16       ; 8 uses
  %14 = alloca %class.btTransform, align 16       ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 575
  %i.d = load i8, ptr %i.c, align 1, !tbaa !22, !range !31, !noundef !32
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36, !nonnull !32, !align !37 ; 27 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = load float, ptr %i.l, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 404 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  %i.p = load float, ptr %i.o, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.r = load float, ptr %i.q, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.t = load float, ptr %i.s, align 4, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.v = load float, ptr %i.u, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  %i.x = load float, ptr %i.w, align 4, !tbaa !27 ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.aa = load float, ptr %i.z, align 8, !tbaa !27
  %i.ab = load <2 x float>, ptr %i.h, align 8, !tbaa !27
  %i.ac = load float, ptr %15, align 4, !tbaa !27
  %i.ad = load float, ptr %i.k, align 8, !tbaa !27 ; 3 uses
  %i.ae = load float, ptr %i.j, align 4, !tbaa !27 ; 2 uses
  %17 = load float, ptr %i.n, align 4, !tbaa !27  ; 2 uses
  %18 = load <2 x float>, ptr %16, align 8, !tbaa !27
  %19 = load float, ptr %i.y, align 4, !tbaa !27
  %20 = fmul float %i.ac, %i.ad
  %21 = fmul float %i.ad, %19
  %i.af = shufflevector <2 x float> %18, <2 x float> %i.ab, <2 x i32> <i32 0, i32 2>
  %i.ag = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %22 = insertelement <2 x float> poison, float %21, i64 0
  %23 = insertelement <2 x float> %22, float %20, i64 1
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.ah, <2 x float> %23)
  %i.aj = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.m, i64 1
  %i.al = insertelement <2 x float> poison, float %17, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.am, <2 x float> %i.ai)
  %i.ao = fmul float %i.ad, %i.t
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.r, float %i.ae, float %i.ao)
  %i.aq = tail call noundef float @llvm.fmuladd.f32(float %i.v, float %17, float %i.ap)
  %i.ar = fadd float %i.x, %i.aq                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.at = load float, ptr %i.as, align 8, !tbaa !27
  %i.au = insertelement <2 x float> poison, float %i.at, i64 0
  %i.av = insertelement <2 x float> %i.au, float %i.p, i64 1 ; 2 uses
  %i.aw = fadd <2 x float> %i.av, %i.an           ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !38, !nonnull !32, !align !37 ; 22 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.be = load float, ptr %i.bd, align 8, !tbaa !27
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !27
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !27
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 56 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !27
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 40 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !27
  %i.bq = load <2 x float>, ptr %i.az, align 8, !tbaa !27 ; 2 uses
  %i.br = load <2 x float>, ptr %i.bk, align 8, !tbaa !27 ; 2 uses
  %i.bs = load <2 x float>, ptr %i.bn, align 8, !tbaa !27
  %i.bt = insertelement <3 x float> poison, float %i.be, i64 0
  %i.bu = shufflevector <3 x float> %i.bt, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bv = shufflevector <2 x float> %i.bq, <2 x float> %i.br, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.bw = shufflevector <2 x float> %i.bs, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.bx = shufflevector <3 x float> %i.bv, <3 x float> %i.bw, <3 x i32> <i32 0, i32 1, i32 4>
  %i.by = fmul <3 x float> %i.bu, %i.bx
  %i.bz = shufflevector <2 x float> %i.bq, <2 x float> %i.br, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.ca = shufflevector <3 x float> %i.bz, <3 x float> %i.bw, <3 x i32> <i32 0, i32 1, i32 3>
  %i.cb = insertelement <3 x float> poison, float %i.bc, i64 0
  %i.cc = shufflevector <3 x float> %i.cb, <3 x float> poison, <3 x i32> zeroinitializer
  %i.cd = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ca, <3 x float> %i.cc, <3 x float> %i.by)
  %i.ce = insertelement <3 x float> poison, float %i.bg, i64 0
  %i.cf = insertelement <3 x float> %i.ce, float %i.bm, i64 1
  %i.cg = insertelement <3 x float> %i.cf, float %i.bp, i64 2
  %i.ch = insertelement <3 x float> poison, float %i.bi, i64 0
  %i.ci = shufflevector <3 x float> %i.ch, <3 x float> poison, <3 x i32> zeroinitializer
  %i.cj = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cg, <3 x float> %i.ci, <3 x float> %i.cd)
  %i.ck = load <3 x float>, ptr %i.bj, align 8, !tbaa !27 ; 2 uses
  %i.cl = fadd <3 x float> %i.cj, %i.ck           ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 572
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !28, !range !31, !noundef !32
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cp = fsub float %i.ar, %i.x                  ; 3 uses
  %i.cq = fsub <2 x float> %i.aw, %i.av           ; 4 uses
  %i.cr = fsub <3 x float> %i.cl, %i.ck           ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !123 ; 5 uses
  %.not.i = icmp eq ptr %i.ct, null
  br i1 %.not.i, label %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 328
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 336
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !27
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cy = load float, ptr %i.cx, align 8, !tbaa !27
  %i.cz = fadd float %i.cw, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 344
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dc = load float, ptr %i.da, align 4, !tbaa !27
  %i.dd = load float, ptr %i.db, align 8, !tbaa !27
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 348
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dg = extractelement <2 x float> %i.cq, i64 1
  %i.dh = fneg float %i.dg
  %i.di = load <2 x float>, ptr %i.cu, align 4, !tbaa !27
  %i.dj = load <2 x float>, ptr %1, align 8, !tbaa !27
  %i.dk = fadd <2 x float> %i.di, %i.dj
  %i.dl = load <2 x float>, ptr %i.de, align 4, !tbaa !27 ; 2 uses
  %i.dm = load <2 x float>, ptr %i.df, align 4, !tbaa !27 ; 2 uses
  %i.dn = fadd <2 x float> %i.dl, %i.dm           ; 2 uses
  %i.do = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dp = insertelement <2 x float> %i.do, float %i.dc, i64 1
  %i.dq = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dr = insertelement <2 x float> %i.dq, float %i.dd, i64 1
  %i.ds = fadd <2 x float> %i.dp, %i.dr           ; 2 uses
  %i.dt = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.du = insertelement <2 x float> %i.dt, float %i.cp, i64 0
  %i.dv = fneg <2 x float> %i.du
  %i.dw = fmul <2 x float> %i.ds, %i.dv
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %i.cq, <2 x float> %i.dw)
  %i.dy = extractelement <2 x float> %i.dn, i64 0
  %i.dz = fmul float %i.dy, %i.dh
  %i.ea = extractelement <2 x float> %i.ds, i64 1
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.ea, float %i.cp, float %i.dz)
  %i.ec = fadd <2 x float> %i.dk, %i.dx
  %i.ed = fadd float %i.cz, %i.eb
  %.sroa.3.12.vec.insert.i16.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ed, i64 0
  br label %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit

_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0821.0 = phi <2 x float> [ %i.ec, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %.sroa.6822.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i16.i, %bb.d ], [ zeroinitializer, %bb.c ]
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !123 ; 5 uses
  %.not.i78 = icmp eq ptr %i.ef, null
  br i1 %.not.i78, label %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit83, label %bb.e

bb.e:                                             ; preds = %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 328
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 336
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !27
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ek = load float, ptr %i.ej, align 8, !tbaa !27
  %i.el = fadd float %i.ei, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 344
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eo = load float, ptr %i.em, align 4, !tbaa !27
  %i.ep = load float, ptr %i.en, align 8, !tbaa !27
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ef, i64 348
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.es = extractelement <3 x float> %i.cr, i64 1
  %i.et = extractelement <3 x float> %i.cr, i64 0
  %i.eu = fneg float %i.et
  %i.ev = load <2 x float>, ptr %i.eg, align 4, !tbaa !27
  %i.ew = load <2 x float>, ptr %2, align 8, !tbaa !27
  %i.ex = fadd <2 x float> %i.ev, %i.ew
  %i.ey = load <2 x float>, ptr %i.eq, align 4, !tbaa !27 ; 2 uses
  %i.ez = load <2 x float>, ptr %i.er, align 4, !tbaa !27 ; 2 uses
  %i.fa = fadd <2 x float> %i.ey, %i.ez           ; 2 uses
  %i.fb = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fc = insertelement <2 x float> %i.fb, float %i.eo, i64 1
  %i.fd = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fe = insertelement <2 x float> %i.fd, float %i.ep, i64 1
  %i.ff = fadd <2 x float> %i.fc, %i.fe           ; 2 uses
  %i.fg = fneg <3 x float> %i.cr
  %i.fh = shufflevector <3 x float> %i.fg, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.fi = fmul <2 x float> %i.ff, %i.fh
  %i.fj = shufflevector <3 x float> %i.cr, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.fk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fa, <2 x float> %i.fj, <2 x float> %i.fi)
  %i.fl = extractelement <2 x float> %i.fa, i64 0
  %i.fm = fmul float %i.fl, %i.eu
  %i.fn = extractelement <2 x float> %i.ff, i64 1
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.fn, float %i.es, float %i.fm)
  %i.fp = fadd <2 x float> %i.ex, %i.fk
  %i.fq = fadd float %i.el, %i.fo
  %.sroa.3.12.vec.insert.i16.i81 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fq, i64 0
  br label %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit83

_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit83: ; preds = %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit, %bb.e
  %.sroa.0819.0 = phi <2 x float> [ %i.fp, %bb.e ], [ zeroinitializer, %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit ] ; 2 uses
  %.sroa.6820.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i16.i81, %bb.e ], [ zeroinitializer, %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit ]
  %foldExtExtBinop = fsub <2 x float> %.sroa.0821.0, %.sroa.0819.0
  %i.fr = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop888 = fsub <2 x float> %.sroa.0821.0, %.sroa.0819.0
  %foldExtExtBinop890 = fsub <2 x float> %.sroa.6822.0, %.sroa.6820.0
  %i.fs = extractelement <2 x float> %foldExtExtBinop890, i64 0
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fu = extractelement <3 x float> %i.cl, i64 0
  %i.fv = extractelement <2 x float> %i.aw, i64 1
  %i.fw = fsub float %i.fv, %i.fu
  %i.fx = extractelement <3 x float> %i.cl, i64 1
  %i.fy = fsub float %i.ar, %i.fx
  %i.fz = extractelement <3 x float> %i.cl, i64 2
  %i.ga = extractelement <2 x float> %i.aw, i64 0
  %i.gb = fsub float %i.ga, %i.fz
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  %i.ge = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.gf = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.gg = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.gh = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.gi = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.gj = getelementptr inbounds nuw i8, ptr %i.g, i64 316
  %i.gk = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ay, i64 360
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ay, i64 280
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ay, i64 288
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ay, i64 296
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ay, i64 304
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ay, i64 312
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ay, i64 316
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ay, i64 320
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.hd = insertelement <4 x float> poison, float %i.cp, i64 0
  %i.he = shufflevector <2 x float> %i.cq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hf = shufflevector <4 x float> %i.hd, <4 x float> %i.he, <4 x i32> <i32 0, i32 4, i32 5, i32 poison> ; 2 uses
  %i.hg = shufflevector <4 x float> %i.hf, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 poison>
  br label %bb.f

bb.f:                                             ; preds = %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit83, %bb.f
  %indvars.iv = phi i64 [ 0, %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit83 ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [84 x i8], ptr %i.ft, i64 %indvars.iv ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 80
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !64
  %i.hk = fdiv float 1.000000e+00, %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 2 uses
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !27 ; 5 uses
  %i.hn = load float, ptr %i.gc, align 8, !tbaa !52
  %i.ho = load float, ptr %i.gd, align 8, !tbaa !62 ; 2 uses
  %i.hp = fmul float %i.hm, %i.ho
  %i.hq = load <2 x float>, ptr %i.hh, align 4, !tbaa !27 ; 7 uses
  %i.hr = extractelement <2 x float> %i.hq, i64 1 ; 2 uses
  %foldExtExtBinop892 = fmul <2 x float> %foldExtExtBinop888, %i.hq
  %i.hs = extractelement <2 x float> %foldExtExtBinop892, i64 1
  %i.ht = extractelement <2 x float> %i.hq, i64 0 ; 2 uses
  %i.hu = tail call float @llvm.fmuladd.f32(float %i.ht, float %i.fr, float %i.hs)
  %i.hv = tail call noundef float @llvm.fmuladd.f32(float %i.hm, float %i.fs, float %i.hu)
  %i.hw = fmul float %i.fy, %i.hr
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.fw, float %i.ht, float %i.hw)
  %i.hy = tail call noundef float @llvm.fmuladd.f32(float %i.gb, float %i.hm, float %i.hx)
  %i.hz = fmul float %i.hy, -3.000000e-01
  %i.ia = fdiv float %i.hz, %3
  %i.ib = insertelement <2 x float> poison, float %i.ho, i64 0
  %i.ic = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> zeroinitializer
  %i.id = fmul <2 x float> %i.hq, %i.ic
  %i.ie = shufflevector <2 x float> %i.hq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.if = insertelement <4 x float> %i.ie, float %i.hm, i64 2
  %i.ig = insertelement <4 x float> %i.if, float %i.hk, i64 3 ; 2 uses
  %i.ih = fneg <4 x float> %i.ig                  ; 2 uses
  %i.ii = fneg float %i.hr
  %i.ij = insertelement <4 x float> %i.hf, float %i.hv, i64 3
  %i.ik = fmul <4 x float> %i.ij, %i.ih
  %i.il = insertelement <4 x float> %i.hg, float %i.ia, i64 3
  %i.im = shufflevector <2 x float> %i.hq, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.in = shufflevector <4 x float> %i.im, <4 x float> %i.ig, <4 x i32> <i32 0, i32 6, i32 2, i32 7>
  %i.io = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.il, <4 x float> %i.in, <4 x float> %i.ik) ; 9 uses
  %i.ip = extractelement <4 x float> %i.io, i64 3 ; 5 uses
  %i.iq = fadd float %i.hn, %i.ip
  store float %i.iq, ptr %i.gc, align 8, !tbaa !52
  %i.ir = load <2 x float>, ptr %i.ge, align 8, !tbaa !27 ; 2 uses
  %i.is = load float, ptr %i.gf, align 8, !tbaa !27
  %i.it = load <2 x float>, ptr %i.gg, align 8, !tbaa !27 ; 2 uses
  %i.iu = shufflevector <4 x float> %i.io, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.iv = shufflevector <2 x float> %i.ir, <2 x float> %i.it, <2 x i32> <i32 1, i32 3>
  %i.iw = fmul <2 x float> %i.iu, %i.iv
  %i.ix = shufflevector <2 x float> %i.ir, <2 x float> %i.it, <2 x i32> <i32 0, i32 2>
  %i.iy = shufflevector <4 x float> %i.io, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.iz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ix, <2 x float> %i.iy, <2 x float> %i.iw)
  %i.ja = load float, ptr %i.gh, align 8, !tbaa !27
  %i.jb = insertelement <2 x float> poison, float %i.is, i64 0
  %i.jc = insertelement <2 x float> %i.jb, float %i.ja, i64 1
  %i.jd = shufflevector <4 x float> %i.io, <4 x float> poison, <2 x i32> zeroinitializer
  %i.je = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jc, <2 x float> %i.jd, <2 x float> %i.iz)
  %i.jf = load float, ptr %i.gi, align 8, !tbaa !27
  %i.jg = load float, ptr %i.gj, align 4, !tbaa !27
  %i.jh = extractelement <4 x float> %i.io, i64 2
  %i.ji = fmul float %i.jh, %i.jg
  %i.jj = extractelement <4 x float> %i.io, i64 1
  %i.jk = tail call float @llvm.fmuladd.f32(float %i.jf, float %i.jj, float %i.ji)
  %i.jl = load float, ptr %i.gk, align 8, !tbaa !27
  %i.jm = extractelement <4 x float> %i.io, i64 0
  %i.jn = tail call noundef float @llvm.fmuladd.f32(float %i.jl, float %i.jm, float %i.jk)
  %i.jo = shufflevector <4 x float> %i.io, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.jp = shufflevector <4 x float> %i.io, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.jq = fmul <2 x float> %i.id, %i.jp
  %i.jr = fmul float %i.hp, %i.ip
  %i.js = load <2 x float>, ptr %1, align 8, !tbaa !27
  %i.jt = fadd <2 x float> %i.jq, %i.js
  store <2 x float> %i.jt, ptr %1, align 8, !tbaa !27
  %i.ju = load float, ptr %i.gl, align 8, !tbaa !27
  %i.jv = fadd float %i.jr, %i.ju
  store float %i.jv, ptr %i.gl, align 8, !tbaa !27
  %i.jw = load <2 x float>, ptr %i.gm, align 8, !tbaa !27
  %i.jx = fmul <2 x float> %i.jo, %i.jw
  %i.jy = load float, ptr %i.gn, align 8, !tbaa !27
  %i.jz = fmul float %i.ip, %i.jy
  %i.ka = fmul <2 x float> %i.je, %i.jx
  %i.kb = fmul float %i.jn, %i.jz
  %i.kc = load <2 x float>, ptr %i.go, align 8, !tbaa !27
  %i.kd = fadd <2 x float> %i.ka, %i.kc
  store <2 x float> %i.kd, ptr %i.go, align 8, !tbaa !27
  %i.ke = load float, ptr %i.gp, align 8, !tbaa !27
  %i.kf = fadd float %i.kb, %i.ke
  store float %i.kf, ptr %i.gp, align 8, !tbaa !27
  %i.kg = load float, ptr %i.gq, align 8, !tbaa !62 ; 2 uses
  %i.kh = load float, ptr %i.hl, align 4, !tbaa !27
  %i.ki = fmul float %i.kg, %i.kh
  %i.kj = load float, ptr %i.gs, align 8, !tbaa !27
  %i.kk = load float, ptr %i.gu, align 8, !tbaa !27
  %i.kl = load float, ptr %i.gv, align 8, !tbaa !27
  %i.km = load float, ptr %i.gw, align 4, !tbaa !27
  %i.kn = load float, ptr %i.gx, align 8, !tbaa !27
  %i.ko = fneg float %i.ip                        ; 2 uses
  %i.kp = load <2 x float>, ptr %i.hh, align 4, !tbaa !27
  %i.kq = insertelement <2 x float> poison, float %i.kg, i64 0
  %i.kr = shufflevector <2 x float> %i.kq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ks = fmul <2 x float> %i.kr, %i.kp
  %i.kt = load <2 x float>, ptr %2, align 8, !tbaa !27
  %i.ku = fmul <2 x float> %i.jo, %i.ks
  %i.kv = fsub <2 x float> %i.kt, %i.ku
  %i.kw = load float, ptr %i.gy, align 8, !tbaa !27
  %i.kx = fmul float %i.ip, %i.ki
  %i.ky = fsub float %i.kw, %i.kx
  %i.kz = load float, ptr %i.ha, align 8, !tbaa !27
  %i.la = fmul float %i.kz, %i.ko
  %i.lb = shufflevector <4 x float> %i.ih, <4 x float> poison, <3 x i32> <i32 2, i32 0, i32 poison>
  %i.lc = insertelement <3 x float> %i.lb, float %i.ii, i64 2
  %i.ld = fmul <3 x float> %i.cr, %i.lc
  %i.le = shufflevector <3 x float> %i.ld, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.lf = shufflevector <2 x float> %i.hq, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0>
  %i.lg = insertelement <3 x float> %i.lf, float %i.hm, i64 1
  %i.lh = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cr, <3 x float> %i.lg, <3 x float> %i.le) ; 6 uses
  %i.li = load <2 x float>, ptr %i.gr, align 8, !tbaa !27 ; 2 uses
  %i.lj = load <2 x float>, ptr %i.gt, align 8, !tbaa !27 ; 2 uses
  %i.lk = shufflevector <3 x float> %i.lh, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ll = shufflevector <2 x float> %i.li, <2 x float> %i.lj, <2 x i32> <i32 1, i32 3>
  %i.lm = fmul <2 x float> %i.lk, %i.ll
  %i.ln = shufflevector <2 x float> %i.li, <2 x float> %i.lj, <2 x i32> <i32 0, i32 2>
  %i.lo = shufflevector <3 x float> %i.lh, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ln, <2 x float> %i.lo, <2 x float> %i.lm)
  %i.lq = insertelement <2 x float> poison, float %i.kj, i64 0
  %i.lr = insertelement <2 x float> %i.lq, float %i.kk, i64 1
  %i.ls = shufflevector <3 x float> %i.lh, <3 x float> poison, <2 x i32> zeroinitializer
  %i.lt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lr, <2 x float> %i.ls, <2 x float> %i.lp)
  %i.lu = extractelement <3 x float> %i.lh, i64 2
  %i.lv = fmul float %i.lu, %i.km
  %i.lw = extractelement <3 x float> %i.lh, i64 1
  %i.lx = tail call float @llvm.fmuladd.f32(float %i.kl, float %i.lw, float %i.lv)
  %i.ly = extractelement <3 x float> %i.lh, i64 0
  %i.lz = tail call noundef float @llvm.fmuladd.f32(float %i.kn, float %i.ly, float %i.lx)
  store <2 x float> %i.kv, ptr %2, align 8, !tbaa !27
  store float %i.ky, ptr %i.gy, align 8, !tbaa !27
  %i.ma = load <2 x float>, ptr %i.gz, align 8, !tbaa !27
  %i.mb = insertelement <2 x float> poison, float %i.ko, i64 0
  %i.mc = shufflevector <2 x float> %i.mb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.md = fmul <2 x float> %i.ma, %i.mc
  %i.me = fmul <2 x float> %i.lt, %i.md
  %i.mf = fmul float %i.lz, %i.la
  %i.mg = load <2 x float>, ptr %i.hb, align 8, !tbaa !27
  %i.mh = fadd <2 x float> %i.me, %i.mg
  store <2 x float> %i.mh, ptr %i.hb, align 8, !tbaa !27
  %i.mi = load float, ptr %i.hc, align 8, !tbaa !27
  %i.mj = fadd float %i.mf, %i.mi
  store float %i.mj, ptr %i.hc, align 8, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %.loopexit, label %bb.f

.loopexit:                                        ; preds = %bb.f, %bb.b
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ml = load i8, ptr %i.mk, align 8, !tbaa !25, !range !31, !noundef !32
  %i.mm = trunc nuw i8 %i.ml to i1
  br i1 %i.mm, label %bb.g, label %bb.u

bb.g:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 16, i1 false), !tbaa.struct !24
  %i.mn = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.mn, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !24
  %i.mo = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.mo, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 16, i1 false), !tbaa.struct !24
  %i.mp = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.mp, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %i.az, i64 16, i1 false), !tbaa.struct !24
  %i.mq = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.mq, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i64 16, i1 false), !tbaa.struct !24
  %i.mr = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.mr, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !24
  %i.ms = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ms, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !123 ; 3 uses
  %.not.i124 = icmp eq ptr %i.mu, null
  br i1 %.not.i124, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 344
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mx = load <2 x float>, ptr %i.mv, align 4, !tbaa !27
  %i.my = load <2 x float>, ptr %i.mw, align 8, !tbaa !27
  %i.mz = fadd <2 x float> %i.mx, %i.my
  %i.na = getelementptr inbounds nuw i8, ptr %i.mu, i64 352
  %i.nb = load float, ptr %i.na, align 4, !tbaa !27
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.nd = load float, ptr %i.nc, align 8, !tbaa !27
  %i.ne = fadd float %i.nb, %i.nd
  %.sroa.3.12.vec.insert.i.i127 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ne, i64 0
  store <2 x float> %i.mz, ptr %8, align 16
  %.sroa.4.0..sroa_idx.i128 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i127, ptr %.sroa.4.0..sroa_idx.i128, align 8, !tbaa !23
  br label %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  br label %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit

_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.nf = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !123 ; 3 uses
  %.not.i129 = icmp eq ptr %i.ng, null
  br i1 %.not.i129, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 344
  %i.ni = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.nj = load <2 x float>, ptr %i.nh, align 4, !tbaa !27
  %i.nk = load <2 x float>, ptr %i.ni, align 8, !tbaa !27
  %i.nl = fadd <2 x float> %i.nj, %i.nk
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ng, i64 352
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !27
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.np = load float, ptr %i.no, align 8, !tbaa !27
  %i.nq = fadd float %i.nn, %i.np
  %.sroa.3.12.vec.insert.i.i132 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.nq, i64 0
  store <2 x float> %i.nl, ptr %9, align 16
  %.sroa.4.0..sroa_idx.i133 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i132, ptr %.sroa.4.0..sroa_idx.i133, align 8, !tbaa !23
  br label %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit134

bb.k:                                             ; preds = %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  br label %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit134

_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit134: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store float 1.000000e+00, ptr %10, align 8, !tbaa !27
  %i.nr = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.nr, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ns, align 4, !tbaa !27
  %i.nt = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.nu = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nt, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.nu, align 8, !tbaa !27
  %i.nv = getelementptr inbounds nuw i8, ptr %10, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.nv, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.nw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  call void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %8, float noundef %3, ptr noundef nonnull align 4 dereferenceable(64) %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  store float 1.000000e+00, ptr %12, align 8, !tbaa !27
  %i.nx = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.nx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ny, align 4, !tbaa !27
  %i.nz = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.oa = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nz, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.oa, align 8, !tbaa !27
  %i.ob = getelementptr inbounds nuw i8, ptr %12, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ob, i8 0, i64 20, i1 false)
  call void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %9, float noundef %3, ptr noundef nonnull align 4 dereferenceable(64) %12)
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.og = load float, ptr %i.of, align 4, !tbaa !27, !noalias !124 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.ok = load float, ptr %i.oj, align 4, !tbaa !27, !noalias !124 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.oo = load float, ptr %i.on, align 4, !tbaa !27, !noalias !124 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.ox = load float, ptr %i.ou, align 4, !tbaa !27, !noalias !125 ; 2 uses
  %i.oy = load float, ptr %i.ov, align 4, !tbaa !27, !noalias !125 ; 2 uses
  %i.oz = load float, ptr %i.ow, align 4, !tbaa !27, !noalias !125 ; 2 uses
  %i.pa = load float, ptr %i.j, align 4, !tbaa !27, !noalias !126
  %i.pb = fneg float %i.pa                        ; 3 uses
  %i.pc = load float, ptr %i.k, align 8, !tbaa !27, !noalias !126
  %i.pd = fneg float %i.pc                        ; 3 uses
  %i.pe = load float, ptr %i.n, align 4, !tbaa !27, !noalias !126
  %i.pf = fneg float %i.pe                        ; 3 uses
  %i.pg = fmul float %i.oy, %i.pd
  %i.ph = call float @llvm.fmuladd.f32(float %i.ox, float %i.pb, float %i.pg)
  %i.pi = call noundef float @llvm.fmuladd.f32(float %i.oz, float %i.pf, float %i.ph)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.pj = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.pk = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.pl = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.pm = load float, ptr %i.oa, align 8, !tbaa !27, !noalias !128 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.po = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.pp = load float, ptr %i.po, align 8, !tbaa !27, !noalias !127
  %i.pq = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.og, i64 0 ; 3 uses
  %i.pr = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ok, i64 0 ; 3 uses
  %i.ps = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.oo, i64 0 ; 3 uses
  %i.pt = load <2 x float>, ptr %i.i, align 4, !tbaa !27, !noalias !125 ; 2 uses
  %i.pu = load float, ptr %i.or, align 8, !tbaa !27, !noalias !125
  %i.pv = load <2 x float>, ptr %i.op, align 4, !tbaa !27, !noalias !125 ; 2 uses
  %i.pw = load float, ptr %i.os, align 8, !tbaa !27, !noalias !125
  %i.px = load <2 x float>, ptr %i.oq, align 4, !tbaa !27, !noalias !125 ; 2 uses
  %i.py = load float, ptr %i.ot, align 8, !tbaa !27, !noalias !125
  %i.pz = extractelement <2 x float> %i.pv, i64 0
  %i.qa = fmul float %i.pz, %i.pd
  %i.qb = extractelement <2 x float> %i.pt, i64 0
  %i.qc = call float @llvm.fmuladd.f32(float %i.qb, float %i.pb, float %i.qa)
  %i.qd = extractelement <2 x float> %i.px, i64 0
  %i.qe = call noundef float @llvm.fmuladd.f32(float %i.qd, float %i.pf, float %i.qc)
  %i.qf = fmul float %i.pw, %i.pd
  %i.qg = call float @llvm.fmuladd.f32(float %i.pu, float %i.pb, float %i.qf)
  %i.qh = call noundef float @llvm.fmuladd.f32(float %i.py, float %i.pf, float %i.qg)
  %i.qi = shufflevector <2 x float> %i.pt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.qj = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.qi, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.qk = shufflevector <2 x float> %i.pv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ql = shufflevector <4 x float> %i.qj, <4 x float> %i.qk, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.qm = shufflevector <2 x float> %i.px, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.qn = shufflevector <4 x float> %i.ql, <4 x float> %i.qm, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 3 uses
  %i.qo = insertelement <4 x float> %i.qi, float 0.000000e+00, i64 3
  %i.qp = shufflevector <4 x float> %i.qo, <4 x float> %i.qk, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.qq = shufflevector <4 x float> %i.qp, <4 x float> %i.qm, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 3 uses
  %i.qr = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ox, i64 0
  %i.qs = insertelement <4 x float> %i.qr, float %i.oy, i64 1
  %i.qt = insertelement <4 x float> %i.qs, float %i.oz, i64 2 ; 3 uses
  %i.qu = insertelement <4 x float> %i.qn, float 1.000000e+00, i64 3
  %i.qv = load <2 x float>, ptr %12, align 8, !tbaa !27, !noalias !128 ; 3 uses
  %i.qw = shufflevector <2 x float> %i.qv, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.qx = shufflevector <2 x float> %i.qv, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.qy = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.qz = load <2 x float>, ptr %i.pj, align 8, !tbaa !27, !noalias !128 ; 3 uses
  %i.ra = shufflevector <2 x float> %i.qz, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.rb = shufflevector <2 x float> %i.qz, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.rc = load <2 x float>, ptr %i.ba, align 4, !tbaa !27, !noalias !124 ; 3 uses
  %i.rd = load float, ptr %i.oe, align 8, !tbaa !27, !noalias !124 ; 3 uses
  %i.re = load <2 x float>, ptr %i.oh, align 4, !tbaa !27, !noalias !124 ; 2 uses
  %i.rf = load float, ptr %i.oi, align 8, !tbaa !27, !noalias !124 ; 3 uses
  %i.rg = load <2 x float>, ptr %i.ol, align 4, !tbaa !27, !noalias !124 ; 3 uses
  %i.rh = load float, ptr %i.om, align 8, !tbaa !27, !noalias !124 ; 3 uses
  %i.ri = shufflevector <2 x float> %i.rg, <2 x float> %i.rc, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.rj = shufflevector <2 x float> %i.re, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.rk = shufflevector <3 x float> %i.ri, <3 x float> %i.rj, <3 x i32> <i32 0, i32 1, i32 4>
  %i.rl = fmul <3 x float> %i.rk, zeroinitializer
  %i.rm = shufflevector <2 x float> %i.rg, <2 x float> %i.rc, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.rn = shufflevector <3 x float> %i.rm, <3 x float> %i.rj, <3 x i32> <i32 0, i32 1, i32 3>
  %i.ro = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.rn, <3 x float> zeroinitializer, <3 x float> %i.rl)
  %i.rp = insertelement <3 x float> poison, float %i.oo, i64 0
  %i.rq = insertelement <3 x float> %i.rp, float %i.og, i64 1
  %i.rr = insertelement <3 x float> %i.rq, float %i.ok, i64 2
  %i.rs = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.rr, <3 x float> zeroinitializer, <3 x float> %i.ro)
  %i.rt = load <3 x float>, ptr %i.bb, align 4, !tbaa !27, !noalias !129
  %i.ru = shufflevector <3 x float> %i.rt, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.rv = fadd <3 x float> %i.rs, %i.ru
  %i.rw = load <2 x float>, ptr %i.pn, align 8, !tbaa !27, !noalias !127
  %i.rx = insertelement <2 x float> %i.rc, float 0.000000e+00, i64 1 ; 3 uses
  %i.ry = insertelement <2 x float> %i.re, float 0.000000e+00, i64 1 ; 3 uses
  %i.rz = insertelement <2 x float> %i.rg, float 0.000000e+00, i64 1 ; 3 uses
  %i.sa = insertelement <3 x float> poison, float %i.qh, i64 0
end_hunk_1
begin_hunk_2_@_ZN21btConeTwistConstraint23solveConstraintObsoleteER12btSolverBodyS1_f:bb.a
  %i.axk = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.axl = load float, ptr %i.axk, align 8, !tbaa !27
  %i.axm = load <3 x float>, ptr %i.axj, align 4, !tbaa !27 ; 3 uses
  %i.axn = fmul float %i.axh, %i.axl
  %i.axo = extractelement <3 x float> %i.axm, i64 0
  %i.axp = call float @llvm.fmuladd.f32(float %i.axg, float %i.axo, float %i.axn)
  %i.axq = extractelement <3 x float> %i.axm, i64 2
  %i.axr = call noundef float @llvm.fmuladd.f32(float %i.axi, float %i.axq, float %i.axp) ; 2 uses
  %i.axs = fcmp ogt float %i.axr, 0.000000e+00
  br i1 %i.axs, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.axt = fmul float %i.awy, %i.axr
  %i.axu = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.axv = load float, ptr %i.axu, align 4, !tbaa !50
  %i.axw = call float @llvm.fmuladd.f32(float %i.axt, float %i.axv, float %i.axf)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.065 = phi float [ %i.axw, %bb.ad ], [ %i.axf, %bb.ac ]
  %i.axx = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.axy = load float, ptr %i.axx, align 4, !tbaa !44
  %i.axz = fmul float %.065, %i.axy
  %i.aya = getelementptr inbounds nuw i8, ptr %0, i64 564 ; 2 uses
  %i.ayb = load float, ptr %i.aya, align 4, !tbaa !134 ; 2 uses
  %i.ayc = fadd float %i.ayb, %i.axz              ; 2 uses
  %i.ayd = fcmp ogt float %i.ayc, 0.000000e+00
  %.sroa.speculated462 = select i1 %i.ayd, float %i.ayc, float 0.000000e+00 ; 2 uses
  store float %.sroa.speculated462, ptr %i.aya, align 4, !tbaa !134
  %i.aye = fsub float %.sroa.speculated462, %i.ayb
  %i.ayf = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.ayg = getelementptr inbounds nuw i8, ptr %0, i64 588
  %i.ayh = load ptr, ptr %i.f, align 8, !tbaa !36, !nonnull !32, !align !37 ; 7 uses
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayh, i64 280
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayh, i64 288
  %i.ayk = load float, ptr %i.ayj, align 8, !tbaa !27
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayh, i64 296
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ayh, i64 304
  %i.ayn = load float, ptr %i.aym, align 8, !tbaa !27
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.ayh, i64 312
  %i.ayp = load float, ptr %i.ayo, align 8, !tbaa !27
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayh, i64 316
  %i.ayr = load float, ptr %i.ayq, align 4, !tbaa !27
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayh, i64 320
  %i.ayt = load float, ptr %i.ays, align 8, !tbaa !27
  %i.ayu = load <2 x float>, ptr %1, align 8, !tbaa !27
  %i.ayv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ayw = load float, ptr %i.ayv, align 8, !tbaa !27
  %i.ayx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ayy = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ayz = load float, ptr %i.ayy, align 8, !tbaa !27
  %i.aza = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.azb = insertelement <3 x float> poison, float %i.aye, i64 0
  %i.azc = shufflevector <3 x float> %i.azb, <3 x float> poison, <3 x i32> zeroinitializer
  %i.azd = fmul <3 x float> %i.axm, %i.azc        ; 4 uses
  %i.aze = load float, ptr %i.ayg, align 4, !tbaa !27
  %i.azf = load <3 x float>, ptr %i.ayf, align 8, !tbaa !27 ; 3 uses
  %i.azg = extractelement <3 x float> %i.azd, i64 1
  %i.azh = fmul float %i.aze, %i.azg
  %i.azi = extractelement <3 x float> %i.azd, i64 0
  %i.azj = extractelement <3 x float> %i.azf, i64 0
  %i.azk = call float @llvm.fmuladd.f32(float %i.azi, float %i.azj, float %i.azh)
  %i.azl = extractelement <3 x float> %i.azd, i64 2
  %i.azm = extractelement <3 x float> %i.azf, i64 2
  %i.azn = call noundef float @llvm.fmuladd.f32(float %i.azl, float %i.azm, float %i.azk)
  %i.azo = insertelement <3 x float> poison, float %i.azn, i64 0
  %i.azp = shufflevector <3 x float> %i.azo, <3 x float> poison, <3 x i32> zeroinitializer
  %i.azq = fmul <3 x float> %i.azf, %i.azp
  %i.azr = fsub <3 x float> %i.azd, %i.azq        ; 5 uses
  %foldExtExtBinop937 = fmul <3 x float> %i.azr, %i.azr
  %i.azs = extractelement <3 x float> %foldExtExtBinop937, i64 1
  %i.azt = extractelement <3 x float> %i.azr, i64 0 ; 2 uses
  %i.azu = call float @llvm.fmuladd.f32(float %i.azt, float %i.azt, float %i.azs)
  %i.azv = extractelement <3 x float> %i.azr, i64 2 ; 2 uses
  %i.azw = call noundef float @llvm.fmuladd.f32(float %i.azv, float %i.azv, float %i.azu)
  %sqrt.i359 = call noundef float @llvm.sqrt.f32(float %i.azw) ; 6 uses
  %i.azx = fdiv float 1.000000e+00, %sqrt.i359
  %i.azy = insertelement <3 x float> poison, float %i.azx, i64 0
  %i.azz = shufflevector <3 x float> %i.azy, <3 x float> poison, <3 x i32> zeroinitializer
  %i.baa = fmul <3 x float> %i.azr, %i.azz        ; 6 uses
  %i.bab = load <2 x float>, ptr %i.ayi, align 8, !tbaa !27 ; 2 uses
  %i.bac = load <2 x float>, ptr %i.ayl, align 8, !tbaa !27 ; 2 uses
  %i.bad = shufflevector <2 x float> %i.bab, <2 x float> %i.bac, <2 x i32> <i32 1, i32 3>
  %i.bae = shufflevector <3 x float> %i.baa, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.baf = fmul <2 x float> %i.bad, %i.bae
  %i.bag = shufflevector <2 x float> %i.bab, <2 x float> %i.bac, <2 x i32> <i32 0, i32 2>
  %i.bah = shufflevector <3 x float> %i.baa, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bai = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bag, <2 x float> %i.bah, <2 x float> %i.baf)
  %i.baj = insertelement <2 x float> poison, float %i.ayk, i64 0
  %i.bak = insertelement <2 x float> %i.baj, float %i.ayn, i64 1
  %i.bal = shufflevector <3 x float> %i.baa, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.bam = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bak, <2 x float> %i.bal, <2 x float> %i.bai)
  %i.ban = extractelement <3 x float> %i.baa, i64 1 ; 2 uses
  %i.bao = fmul float %i.ayr, %i.ban
  %i.bap = extractelement <3 x float> %i.baa, i64 0 ; 2 uses
  %i.baq = call float @llvm.fmuladd.f32(float %i.ayp, float %i.bap, float %i.bao)
  %i.bar = extractelement <3 x float> %i.baa, i64 2 ; 2 uses
  %i.bas = call noundef float @llvm.fmuladd.f32(float %i.ayt, float %i.bar, float %i.baq)
  %i.bat = fmul float %sqrt.i359, 0.000000e+00    ; 2 uses
  %i.bau = insertelement <2 x float> poison, float %i.bat, i64 0
  %i.bav = shufflevector <2 x float> %i.bau, <2 x float> poison, <2 x i32> zeroinitializer
  %i.baw = fadd <2 x float> %i.bav, %i.ayu
  store <2 x float> %i.baw, ptr %1, align 8, !tbaa !27
  %i.bax = fadd float %i.bat, %i.ayw
  store float %i.bax, ptr %i.ayv, align 8, !tbaa !27
  %i.bay = load <2 x float>, ptr %i.ayx, align 8, !tbaa !27
  %i.baz = insertelement <2 x float> poison, float %sqrt.i359, i64 0
  %i.bba = shufflevector <2 x float> %i.baz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bbb = fmul <2 x float> %i.bba, %i.bay
  %i.bbc = fmul float %sqrt.i359, %i.ayz
  %i.bbd = fmul <2 x float> %i.bam, %i.bbb
  %i.bbe = fmul float %i.bas, %i.bbc
  %i.bbf = load <2 x float>, ptr %i.aza, align 8, !tbaa !27
  %i.bbg = fadd <2 x float> %i.bbd, %i.bbf
  store <2 x float> %i.bbg, ptr %i.aza, align 8, !tbaa !27
  %i.bbh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bbi = load float, ptr %i.bbh, align 8, !tbaa !27
  %i.bbj = fadd float %i.bbe, %i.bbi
  store float %i.bbj, ptr %i.bbh, align 8, !tbaa !27
  %i.bbk = load ptr, ptr %i.ax, align 8, !tbaa !38, !nonnull !32, !align !37 ; 7 uses
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbk, i64 280
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbk, i64 288
  %i.bbn = load float, ptr %i.bbm, align 8, !tbaa !27
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbk, i64 296
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbk, i64 304
  %i.bbq = load float, ptr %i.bbp, align 8, !tbaa !27
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbk, i64 312
  %i.bbs = load float, ptr %i.bbr, align 8, !tbaa !27
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbk, i64 316
  %i.bbu = load float, ptr %i.bbt, align 4, !tbaa !27
  %i.bbv = fmul float %i.ban, %i.bbu
  %i.bbw = call float @llvm.fmuladd.f32(float %i.bbs, float %i.bap, float %i.bbv)
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbk, i64 320
  %i.bby = load float, ptr %i.bbx, align 8, !tbaa !27
  %i.bbz = call noundef float @llvm.fmuladd.f32(float %i.bby, float %i.bar, float %i.bbw)
  %i.bca = fneg float %sqrt.i359                  ; 2 uses
  %i.bcb = fmul float %sqrt.i359, -0.000000e+00   ; 2 uses
  %i.bcc = load <2 x float>, ptr %2, align 8, !tbaa !27
  %i.bcd = insertelement <2 x float> poison, float %i.bcb, i64 0
  %i.bce = shufflevector <2 x float> %i.bcd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bcf = fadd <2 x float> %i.bce, %i.bcc
  %i.bcg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bch = load float, ptr %i.bcg, align 8, !tbaa !27
  %i.bci = fadd float %i.bcb, %i.bch
  %i.bcj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bck = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bcl = load float, ptr %i.bck, align 8, !tbaa !27
  %i.bcm = fmul float %i.bcl, %i.bca
  %i.bcn = fmul float %i.bbz, %i.bcm
  %i.bco = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bcp = load <2 x float>, ptr %i.bbl, align 8, !tbaa !27 ; 2 uses
  %i.bcq = load <2 x float>, ptr %i.bbo, align 8, !tbaa !27 ; 2 uses
  %i.bcr = shufflevector <2 x float> %i.bcp, <2 x float> %i.bcq, <2 x i32> <i32 1, i32 3>
  %i.bcs = fmul <2 x float> %i.bae, %i.bcr
  %i.bct = shufflevector <2 x float> %i.bcp, <2 x float> %i.bcq, <2 x i32> <i32 0, i32 2>
  %i.bcu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bct, <2 x float> %i.bah, <2 x float> %i.bcs)
  %i.bcv = insertelement <2 x float> poison, float %i.bbn, i64 0
  %i.bcw = insertelement <2 x float> %i.bcv, float %i.bbq, i64 1
  %i.bcx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bcw, <2 x float> %i.bal, <2 x float> %i.bcu)
  store <2 x float> %i.bcf, ptr %2, align 8, !tbaa !27
  store float %i.bci, ptr %i.bcg, align 8, !tbaa !27
  %i.bcy = load <2 x float>, ptr %i.bcj, align 8, !tbaa !27
  %i.bcz = insertelement <2 x float> poison, float %i.bca, i64 0
  %i.bda = shufflevector <2 x float> %i.bcz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bdb = fmul <2 x float> %i.bcy, %i.bda
  %i.bdc = fmul <2 x float> %i.bcx, %i.bdb
  %i.bdd = load <2 x float>, ptr %i.bco, align 8, !tbaa !27
  %i.bde = fadd <2 x float> %i.bdc, %i.bdd
  store <2 x float> %i.bde, ptr %i.bco, align 8, !tbaa !27
  %i.bdf = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bdg = load float, ptr %i.bdf, align 8, !tbaa !27
  %i.bdh = fadd float %i.bcn, %i.bdg
  store float %i.bdh, ptr %i.bdf, align 8, !tbaa !27
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit338
  %i.bdi = getelementptr inbounds nuw i8, ptr %0, i64 573
  %i.bdj = load i8, ptr %i.bdi, align 1, !tbaa !29, !range !31, !noundef !32
  %i.bdk = trunc nuw i8 %i.bdj to i1
  br i1 %i.bdk, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.bdl = getelementptr inbounds nuw i8, ptr %0, i64 580
  %i.bdm = load float, ptr %i.bdl, align 4, !tbaa !46 ; 2 uses
  %i.bdn = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.bdo = load float, ptr %i.bdn, align 4, !tbaa !47
  %i.bdp = fmul float %i.bdm, %i.bdo
  %i.bdq = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bdr = load float, ptr %i.bdq, align 8, !tbaa !51
  %i.bds = fmul float %i.bdp, %i.bdr
  %i.bdt = fdiv float %i.bds, %3                  ; 2 uses
  %foldExtExtBinop939 = fsub <2 x float> %.sroa.0472.0, %.sroa.0480.0
  %i.bdu = extractelement <2 x float> %foldExtExtBinop939, i64 0
  %foldExtExtBinop941 = fsub <2 x float> %.sroa.0472.0, %.sroa.0480.0
  %i.bdv = extractelement <2 x float> %foldExtExtBinop941, i64 1
  %foldExtExtBinop943 = fsub <2 x float> %.sroa.8477.0, %.sroa.8485.0
  %i.bdw = extractelement <2 x float> %foldExtExtBinop943, i64 0
  %i.bdx = getelementptr inbounds nuw i8, ptr %0, i64 524 ; 2 uses
  %i.bdy = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.bdz = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 2 uses
  %i.bea = load float, ptr %i.bdy, align 8, !tbaa !27 ; 4 uses
  %i.beb = load float, ptr %i.bdx, align 4, !tbaa !27 ; 3 uses
  %i.bec = load float, ptr %i.bdz, align 4, !tbaa !27 ; 3 uses
  %i.bed = fmul float %i.bdv, %i.bea
  %i.bee = call float @llvm.fmuladd.f32(float %i.bdu, float %i.beb, float %i.bed)
  %i.bef = call noundef float @llvm.fmuladd.f32(float %i.bdw, float %i.bec, float %i.bee) ; 2 uses
  %i.beg = fcmp ogt float %i.bef, 0.000000e+00
  br i1 %i.beg, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.beh = fmul float %i.bdm, %i.bef
  %i.bei = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.bej = load float, ptr %i.bei, align 4, !tbaa !50
  %i.bek = call float @llvm.fmuladd.f32(float %i.beh, float %i.bej, float %i.bdt)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.064 = phi float [ %i.bek, %bb.ah ], [ %i.bdt, %bb.ag ]
  %i.bel = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bem = load float, ptr %i.bel, align 8, !tbaa !48
  %i.ben = fmul float %.064, %i.bem
  %i.beo = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.bep = load float, ptr %i.beo, align 8, !tbaa !135 ; 2 uses
  %i.beq = fadd float %i.bep, %i.ben              ; 2 uses
  %i.ber = fcmp ogt float %i.beq, 0.000000e+00
  %.sroa.speculated = select i1 %i.ber, float %i.beq, float 0.000000e+00 ; 2 uses
  store float %.sroa.speculated, ptr %i.beo, align 8, !tbaa !135
  %i.bes = fsub float %.sroa.speculated, %i.bep   ; 5 uses
  %i.bet = load ptr, ptr %i.f, align 8, !tbaa !36, !nonnull !32, !align !37 ; 9 uses
  %24 = getelementptr inbounds nuw i8, ptr %i.bet, i64 280
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bet, i64 284
  %i.bev = getelementptr inbounds nuw i8, ptr %i.bet, i64 288
  %i.bew = load float, ptr %i.bev, align 8, !tbaa !27
  %25 = getelementptr inbounds nuw i8, ptr %i.bet, i64 296
  %i.bex = getelementptr inbounds nuw i8, ptr %i.bet, i64 300
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bet, i64 304
  %i.bez = load float, ptr %i.bey, align 8, !tbaa !27
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bet, i64 312
  %i.bfb = load float, ptr %i.bfa, align 8, !tbaa !27
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bet, i64 316
  %i.bfd = load float, ptr %i.bfc, align 4, !tbaa !27
  %i.bfe = fmul float %i.bea, %i.bfd
  %i.bff = call float @llvm.fmuladd.f32(float %i.bfb, float %i.beb, float %i.bfe)
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bet, i64 320
  %i.bfh = load float, ptr %i.bfg, align 8, !tbaa !27
  %i.bfi = call noundef float @llvm.fmuladd.f32(float %i.bfh, float %i.bec, float %i.bff)
  %i.bfj = fmul float %i.bes, 0.000000e+00        ; 2 uses
  %i.bfk = load <2 x float>, ptr %1, align 8, !tbaa !27
  %i.bfl = insertelement <2 x float> poison, float %i.bfj, i64 0
  %i.bfm = shufflevector <2 x float> %i.bfl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bfn = fadd <2 x float> %i.bfm, %i.bfk
  %i.bfo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bfp = load float, ptr %i.bfo, align 8, !tbaa !27
  %i.bfq = fadd float %i.bfj, %i.bfp
  %i.bfr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bfs = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bft = load float, ptr %i.bfs, align 8, !tbaa !27
  %i.bfu = fmul float %i.bes, %i.bft
  %i.bfv = fmul float %i.bfi, %i.bfu
  %i.bfw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bfx = load <2 x float>, ptr %24, align 8, !tbaa !27
  %26 = load float, ptr %i.beu, align 4, !tbaa !27
  %27 = load <2 x float>, ptr %25, align 8, !tbaa !27
  %28 = load float, ptr %i.bex, align 4, !tbaa !27
  %29 = fmul float %i.bea, %28
  %30 = fmul float %i.bea, %26
  %i.bfy = shufflevector <2 x float> %i.bfx, <2 x float> %27, <2 x i32> <i32 0, i32 2>
  %i.bfz = insertelement <2 x float> poison, float %i.beb, i64 0
  %i.bga = shufflevector <2 x float> %i.bfz, <2 x float> poison, <2 x i32> zeroinitializer
  %31 = insertelement <2 x float> poison, float %30, i64 0
  %32 = insertelement <2 x float> %31, float %29, i64 1
  %i.bgb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bfy, <2 x float> %i.bga, <2 x float> %32)
  %i.bgc = insertelement <2 x float> poison, float %i.bew, i64 0
  %i.bgd = insertelement <2 x float> %i.bgc, float %i.bez, i64 1
  %i.bge = insertelement <2 x float> poison, float %i.bec, i64 0
  %i.bgf = shufflevector <2 x float> %i.bge, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bgg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bgd, <2 x float> %i.bgf, <2 x float> %i.bgb)
  store <2 x float> %i.bfn, ptr %1, align 8, !tbaa !27
  store float %i.bfq, ptr %i.bfo, align 8, !tbaa !27
  %i.bgh = load <2 x float>, ptr %i.bfr, align 8, !tbaa !27
  %i.bgi = insertelement <2 x float> poison, float %i.bes, i64 0
  %i.bgj = shufflevector <2 x float> %i.bgi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bgk = fmul <2 x float> %i.bgj, %i.bgh
  %i.bgl = fmul <2 x float> %i.bgg, %i.bgk
  %i.bgm = load <2 x float>, ptr %i.bfw, align 8, !tbaa !27
  %i.bgn = fadd <2 x float> %i.bgl, %i.bgm
  store <2 x float> %i.bgn, ptr %i.bfw, align 8, !tbaa !27
  %i.bgo = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bgp = load float, ptr %i.bgo, align 8, !tbaa !27
  %i.bgq = fadd float %i.bfv, %i.bgp
  store float %i.bgq, ptr %i.bgo, align 8, !tbaa !27
  %i.bgr = load ptr, ptr %i.ax, align 8, !tbaa !38, !nonnull !32, !align !37 ; 9 uses
  %33 = getelementptr inbounds nuw i8, ptr %i.bgr, i64 280
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bgr, i64 284
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgr, i64 288
  %i.bgu = load float, ptr %i.bgt, align 8, !tbaa !27
  %34 = getelementptr inbounds nuw i8, ptr %i.bgr, i64 296
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.bgr, i64 300
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.bgr, i64 304
  %i.bgx = load float, ptr %i.bgw, align 8, !tbaa !27
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgr, i64 312
  %i.bgz = load float, ptr %i.bgy, align 8, !tbaa !27
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgr, i64 316
  %i.bhb = load float, ptr %i.bha, align 4, !tbaa !27
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.bgr, i64 320
  %i.bhd = load float, ptr %i.bhc, align 8, !tbaa !27
  %i.bhe = fneg float %i.bes                      ; 2 uses
  %i.bhf = fmul float %i.bes, -0.000000e+00       ; 2 uses
  %i.bhg = load <2 x float>, ptr %2, align 8, !tbaa !27
  %i.bhh = insertelement <2 x float> poison, float %i.bhf, i64 0
  %i.bhi = shufflevector <2 x float> %i.bhh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bhj = fadd <2 x float> %i.bhi, %i.bhg
  %i.bhk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bhl = load float, ptr %i.bhk, align 8, !tbaa !27
  %i.bhm = fadd float %i.bhf, %i.bhl
  %i.bhn = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bho = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bhp = load float, ptr %i.bho, align 8, !tbaa !27
  %i.bhq = fmul float %i.bhp, %i.bhe
  %i.bhr = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bhs = load <2 x float>, ptr %33, align 8, !tbaa !27
  %35 = load float, ptr %i.bgs, align 4, !tbaa !27
  %i.bht = load float, ptr %i.bdy, align 8, !tbaa !27 ; 3 uses
  %i.bhu = load float, ptr %i.bdx, align 4, !tbaa !27 ; 2 uses
  %i.bhv = load float, ptr %i.bdz, align 4, !tbaa !27 ; 2 uses
  %i.bhw = load <2 x float>, ptr %34, align 8, !tbaa !27
  %36 = load float, ptr %i.bgv, align 4, !tbaa !27
  %37 = fmul float %i.bht, %36
  %38 = fmul float %35, %i.bht
  %39 = shufflevector <2 x float> %i.bhs, <2 x float> %i.bhw, <2 x i32> <i32 0, i32 2>
  %40 = insertelement <2 x float> poison, float %i.bhu, i64 0
  %41 = shufflevector <2 x float> %40, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bhx = insertelement <2 x float> poison, float %38, i64 0
  %42 = insertelement <2 x float> %i.bhx, float %37, i64 1
  %i.bhy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %39, <2 x float> %41, <2 x float> %42)
  %i.bhz = insertelement <2 x float> poison, float %i.bgu, i64 0
  %i.bia = insertelement <2 x float> %i.bhz, float %i.bgx, i64 1
  %i.bib = insertelement <2 x float> poison, float %i.bhv, i64 0
  %i.bic = shufflevector <2 x float> %i.bib, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bid = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bia, <2 x float> %i.bic, <2 x float> %i.bhy)
  %i.bie = fmul float %i.bht, %i.bhb
  %i.bif = call float @llvm.fmuladd.f32(float %i.bgz, float %i.bhu, float %i.bie)
  %i.big = call noundef float @llvm.fmuladd.f32(float %i.bhd, float %i.bhv, float %i.bif)
  store <2 x float> %i.bhj, ptr %2, align 8, !tbaa !27
  store float %i.bhm, ptr %i.bhk, align 8, !tbaa !27
  %i.bih = load <2 x float>, ptr %i.bhn, align 8, !tbaa !27
  %i.bii = insertelement <2 x float> poison, float %i.bhe, i64 0
  %i.bij = shufflevector <2 x float> %i.bii, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bik = fmul <2 x float> %i.bih, %i.bij
  %i.bil = fmul <2 x float> %i.bid, %i.bik
  %i.bim = fmul float %i.big, %i.bhq
  %i.bin = load <2 x float>, ptr %i.bhr, align 8, !tbaa !27
  %i.bio = fadd <2 x float> %i.bil, %i.bin
  store <2 x float> %i.bio, ptr %i.bhr, align 8, !tbaa !27
  %i.bip = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.biq = load float, ptr %i.bip, align 8, !tbaa !27
  %i.bir = fadd float %i.bim, %i.biq
  store float %i.bir, ptr %i.bip, align 8, !tbaa !27
  br label %bb.aj

bb.aj:                                            ; preds = %bb.af, %bb.ai, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %3, ptr noundef nonnull align 4 dereferenceable(64) %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %5 = alloca %class.btQuaternion, align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !27
  %i.d = fmul float %3, %i.c
  %i.e = load <2 x float>, ptr %1, align 4, !tbaa !27
  %i.f = insertelement <2 x float> poison, float %3, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x float> %i.g, %i.e
  %i.i = load <2 x float>, ptr %i.a, align 4, !tbaa !27
  %i.j = fadd <2 x float> %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load float, ptr %i.k, align 4, !tbaa !27
  %i.m = fadd float %i.d, %i.l
  %.sroa.3.12.vec.insert.i19 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.m, i64 0
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <2 x float> %i.j, ptr %i.n, align 4
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i19, ptr %.sroa.460.0..sroa_idx, align 4, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = load <2 x float>, ptr %2, align 4, !tbaa !27 ; 5 uses
  %i.q = load <2 x float>, ptr %i.o, align 4, !tbaa !27 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.p, %i.p
  %i.r = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.s = extractelement <2 x float> %i.p, i64 0   ; 2 uses
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.r)
  %i.u = extractelement <2 x float> %i.q, i64 1   ; 2 uses
  %i.v = tail call noundef float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.t)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.v) ; 2 uses
  %i.w = fmul float %3, %sqrt.i
  %i.x = fcmp ogt float %i.w, f0x3F490FDB
  %i.y = fdiv float f0x3F490FDB, %3
  %.0 = select i1 %i.x, float %i.y, float %sqrt.i ; 6 uses
  %i.z = fcmp olt float %.0, 1.000000e-03
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = fmul float %3, %3
  %i.ab = fmul float %3, %i.aa
  %i.ac = fmul float %i.ab, f0x3CAAAAAB
  %i.ad = fmul float %i.ac, %.0
  %i.ae = fneg float %.0
  %i.af = fmul float %i.ad, %i.ae
  %i.ag = tail call float @llvm.fmuladd.f32(float %3, float 5.000000e-01, float %i.af)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ah = fmul float %.0, 5.000000e-01
  %i.ai = fmul float %3, %i.ah
  %i.aj = tail call noundef float @sinf(float noundef %i.ai) #18, !tbaa !7
  %i.ak = fdiv float %i.aj, %.0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink69 = phi float [ %i.ak, %bb.c ], [ %i.ag, %bb.b ]
  %i.al = insertelement <2 x float> poison, float %.sink69, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.an = fmul <2 x float> %i.p, %i.am            ; 3 uses
  %i.ao = shufflevector <2 x float> %i.q, <2 x float> %i.p, <2 x i32> <i32 1, i32 2>
  %i.ap = fmul <2 x float> %i.ao, %i.am           ; 2 uses
  %i.aq = fmul <2 x float> %i.q, %i.am
  %i.ar = fmul float %3, %.0
  %i.as = fmul float %i.ar, 5.000000e-01
  %i.at = tail call noundef float @cosf(float noundef %i.as) #18, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %.fca.0.load.i = load <2 x float>, ptr %5, align 8 ; 6 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.au = extractelement <2 x float> %i.ap, i64 0
  %i.av = fneg float %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ax = shufflevector <2 x float> %.fca.1.load.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ay = fmul <2 x float> %i.aq, %i.ax
  %i.az = insertelement <2 x float> poison, float %i.at, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bb = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.bb, <2 x float> %i.ay)
  %i.bd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %.fca.0.load.i, <2 x float> %i.bc)
  %i.be = fneg <2 x float> %i.an                  ; 2 uses
  %i.bf = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.fca.0.load.i, <2 x i32> <i32 0, i32 2>
  %i.bg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.bf, <2 x float> %i.bd) ; 4 uses
  %i.bh = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fneg <2 x float> %.fca.0.load.i
  %i.bj = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %i.bi, <2 x i32> <i32 1, i32 2>
  %i.bk = fmul <2 x float> %i.bh, %i.bj
  %i.bl = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 0, i32 3>
  %i.bm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.bl, <2 x float> %i.bk)
  %i.bn = shufflevector <2 x float> %i.an, <2 x float> %i.be, <2 x i32> <i32 1, i32 3>
  %i.bo = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.fca.0.load.i, <2 x i32> <i32 0, i32 3>
  %i.bp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bo, <2 x float> %i.bm)
  %i.bq = insertelement <2 x float> poison, float %i.av, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.bb, <2 x float> %i.bp) ; 3 uses
  %foldExtExtBinop71 = fmul <2 x float> %i.bg, %i.bg
  %i.bt = extractelement <2 x float> %foldExtExtBinop71, i64 0
  %i.bu = extractelement <2 x float> %i.bs, i64 0 ; 2 uses
  %i.bv = call float @llvm.fmuladd.f32(float %i.bu, float %i.bu, float %i.bt)
  %i.bw = extractelement <2 x float> %i.bg, i64 1 ; 2 uses
  %i.bx = call float @llvm.fmuladd.f32(float %i.bw, float %i.bw, float %i.bv)
  %i.by = extractelement <2 x float> %i.bs, i64 1 ; 2 uses
  %i.bz = call noundef float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.bx)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.bz)
  %i.ca = fdiv float 1.000000e+00, %sqrt.i.i
  %i.cb = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cd = fmul <2 x float> %i.bg, %i.cc           ; 6 uses
  %i.ce = fmul <2 x float> %i.bs, %i.cc           ; 4 uses
  %i.cf = extractelement <2 x float> %i.cd, i64 0
  %foldExtExtBinop73 = fmul <2 x float> %i.cd, %i.cd
  %i.cg = extractelement <2 x float> %foldExtExtBinop73, i64 0
  %i.ch = extractelement <2 x float> %i.ce, i64 0 ; 4 uses
  %i.ci = call float @llvm.fmuladd.f32(float %i.ch, float %i.ch, float %i.cg)
  %i.cj = extractelement <2 x float> %i.cd, i64 1 ; 3 uses
  %i.ck = call float @llvm.fmuladd.f32(float %i.cj, float %i.cj, float %i.ci)
  %i.cl = extractelement <2 x float> %i.ce, i64 1 ; 3 uses
  %i.cm = call noundef float @llvm.fmuladd.f32(float %i.cl, float %i.cl, float %i.ck)
  %i.cn = fdiv float 2.000000e+00, %i.cm          ; 2 uses
  %i.co = fmul float %i.ch, %i.cn                 ; 2 uses
  %i.cp = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = fmul <2 x float> %i.cd, %i.cq           ; 4 uses
  %i.cs = fmul float %i.cl, %i.co                 ; 2 uses
  %i.ct = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cu = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cv = fmul <2 x float> %i.ct, %i.cu           ; 4 uses
  %i.cw = fmul float %i.ch, %i.co                 ; 2 uses
  %i.cx = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x float> %i.cx, %i.cr           ; 4 uses
  %foldExtExtBinop75 = fmul <2 x float> %i.cd, %i.cr
  %i.cz = extractelement <2 x float> %foldExtExtBinop75, i64 0 ; 2 uses
  %i.da = extractelement <2 x float> %i.cr, i64 1 ; 2 uses
  %i.db = fmul float %i.cf, %i.da                 ; 2 uses
  %i.dc = fmul float %i.cj, %i.da                 ; 2 uses
  %i.dd = fadd float %i.cz, %i.dc
  %i.de = fsub float 1.000000e+00, %i.dd
  %i.df = fsub <2 x float> %i.cy, %i.cv
  %i.dg = fadd <2 x float> %i.cy, %i.cv
  %i.dh = shufflevector <2 x float> %i.df, <2 x float> %i.dg, <2 x i32> <i32 0, i32 3>
  %foldExtExtBinop77 = fadd <2 x float> %i.cy, %i.cv
  %i.di = extractelement <2 x float> %foldExtExtBinop77, i64 0
  %i.dj = fadd float %i.cw, %i.dc
  %i.dk = fsub float 1.000000e+00, %i.dj
  %i.dl = fsub float %i.db, %i.cs
  %foldExtExtBinop79 = fsub <2 x float> %i.cy, %i.cv
  %i.dm = extractelement <2 x float> %foldExtExtBinop79, i64 1
  %i.dn = fadd float %i.db, %i.cs
  %i.do = fadd float %i.cw, %i.cz
  %i.dp = fsub float 1.000000e+00, %i.do
  store float %i.de, ptr %4, align 4, !tbaa !27
  store <2 x float> %i.dh, ptr %i.aw, align 4, !tbaa !27
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 0.000000e+00, ptr %i.dq, align 4, !tbaa !27
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %i.di, ptr %i.dr, align 4, !tbaa !27
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %i.dk, ptr %i.ds, align 4, !tbaa !27
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %i.dl, ptr %i.dt, align 4, !tbaa !27
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 28
  store float 0.000000e+00, ptr %i.du, align 4, !tbaa !27
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 32
  store float %i.dm, ptr %i.dv, align 4, !tbaa !27
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 36
end_hunk_2
