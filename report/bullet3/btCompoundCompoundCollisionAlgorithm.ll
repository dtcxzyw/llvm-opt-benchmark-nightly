Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btCompoundCompoundCollisionAlgorithm?download=true
inline.NumInlined: 383
inline.NumDeleted: 124
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev:bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #16
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6btDbvt8ICollideD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @_ZN36btCompoundCompoundCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #9 align 2 {
bb.a:
  ret float 0.000000e+00
}

declare void @_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(880), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN30btCompoundCompoundLeafCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN30btCompoundCompoundLeafCallback7ProcessEPK10btDbvtNodeS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CProfileSample, align 1      ; 6 uses
  %4 = alloca %class.btTransform, align 16        ; 10 uses
  %5 = alloca %class.btTransform, align 16        ; 10 uses
  %6 = alloca %class.btVector3, align 4           ; 9 uses
  %7 = alloca %class.btVector3, align 4           ; 9 uses
  %8 = alloca %class.btVector3, align 4           ; 7 uses
  %9 = alloca %class.btVector3, align 4           ; 7 uses
  %10 = alloca %struct.btCollisionObjectWrapper, align 8 ; 14 uses
  %11 = alloca %struct.btCollisionObjectWrapper, align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull @.str)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !71
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !71
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !57   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !57   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !72   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !73   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !88
  %i.r = sext i32 %i.e to i64
  %i.s = getelementptr inbounds [88 x i8], ptr %i.q, i64 %i.r ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !92   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !88
  %i.x = sext i32 %i.g to i64                     ; 2 uses
  %i.y = getelementptr inbounds [88 x i8], ptr %i.w, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !92  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !78, !nonnull !79, !align !80 ; 9 uses
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.990.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.sroa.1394.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 36
  %.sroa.1495.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.sroa.1495.32.copyload = load float, ptr %.sroa.1495.32..sroa_idx, align 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %.sroa.1899.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %.sroa.1899.48.copyload = load float, ptr %.sroa.1899.48..sroa_idx, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 2 uses
  %i.ap = load <2 x float>, ptr %i.ac, align 4    ; 3 uses
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ar = shufflevector <2 x float> %i.ap, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.at = load <2 x float>, ptr %i.ad, align 4    ; 3 uses
  %i.au = shufflevector <2 x float> %i.at, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.av = shufflevector <2 x float> %i.at, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ax = load <2 x float>, ptr %i.ae, align 4    ; 3 uses
  %.sroa.1394.32.copyload = load float, ptr %.sroa.1394.32..sroa_idx, align 4
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.az = shufflevector <2 x float> %i.ax, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ba = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %.sroa.1495.32.copyload, i64 0
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bc = extractelement <2 x float> %i.ax, i64 0
  %i.bd = load <2 x float>, ptr %i.af, align 4
  %i.be = load <2 x float>, ptr %.sroa.586.0..sroa_idx, align 4 ; 3 uses
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.bh = load <2 x float>, ptr %.sroa.990.16..sroa_idx, align 4 ; 3 uses
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.bk = load <2 x float>, ptr %i.s, align 8, !tbaa !81, !noalias !158 ; 2 uses
  %i.bl = load <2 x float>, ptr %i.ag, align 8, !tbaa !81, !noalias !158 ; 2 uses
  %i.bm = load <2 x float>, ptr %i.ah, align 8, !tbaa !81, !noalias !158 ; 2 uses
  %i.bn = load <2 x float>, ptr %i.ai, align 4, !tbaa !81, !noalias !158 ; 2 uses
  %i.bo = load float, ptr %i.al, align 8, !tbaa !81, !noalias !158
  %i.bp = load <2 x float>, ptr %i.aj, align 4, !tbaa !81, !noalias !158 ; 2 uses
  %i.bq = load float, ptr %i.am, align 8, !tbaa !81, !noalias !158
  %i.br = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bs = insertelement <4 x float> %i.br, float 1.000000e+00, i64 3
  %i.bt = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bu = shufflevector <4 x float> %i.bs, <4 x float> %i.bt, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bv = fmul <4 x float> %i.aq, %i.bu
  %i.bw = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bx = insertelement <4 x float> %i.bw, float 0.000000e+00, i64 3
  %i.by = shufflevector <2 x float> %i.bn, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bz = shufflevector <4 x float> %i.bx, <4 x float> %i.by, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ca = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> %i.ar, <4 x float> %i.bv)
  %i.cb = load <2 x float>, ptr %i.ak, align 4, !tbaa !81, !noalias !158 ; 2 uses
  %i.cc = load float, ptr %i.an, align 8, !tbaa !81, !noalias !158
  %i.cd = shufflevector <2 x float> %i.bm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ce = insertelement <4 x float> %i.cd, float 0.000000e+00, i64 3
  %i.cf = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cg = shufflevector <4 x float> %i.ce, <4 x float> %i.cf, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ch = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> %i.bg, <4 x float> %i.ca)
  %i.ci = shufflevector <2 x float> %i.bl, <2 x float> %i.bp, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cj = insertelement <4 x float> %i.ci, float 1.000000e+00, i64 3 ; 2 uses
  %i.ck = fmul <4 x float> %i.au, %i.cj
  %i.cl = shufflevector <2 x float> %i.bk, <2 x float> %i.bn, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cm = insertelement <4 x float> %i.cl, float 0.000000e+00, i64 3 ; 2 uses
  %i.cn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cm, <4 x float> %i.av, <4 x float> %i.ck)
  %i.co = shufflevector <2 x float> %i.bm, <2 x float> %i.cb, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cp = insertelement <4 x float> %i.co, float 0.000000e+00, i64 3 ; 2 uses
  %i.cq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cp, <4 x float> %i.bj, <4 x float> %i.cn)
  %i.cr = insertelement <4 x float> %i.cj, float %i.bq, i64 2
  %i.cs = fmul <4 x float> %i.ay, %i.cr
  %i.ct = insertelement <4 x float> %i.cm, float %i.bo, i64 2
  %i.cu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ct, <4 x float> %i.az, <4 x float> %i.cs)
  %i.cv = insertelement <4 x float> %i.cp, float %i.cc, i64 2
  %i.cw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> %i.bb, <4 x float> %i.cu)
  %i.cx = load <3 x float>, ptr %i.ao, align 8, !tbaa !81, !noalias !157 ; 5 uses
  %i.cy = load float, ptr %i.ao, align 8, !tbaa !81, !noalias !157
  %i.cz = shufflevector <2 x float> %i.be, <2 x float> %i.bh, <2 x i32> <i32 0, i32 2>
  %i.da = shufflevector <3 x float> %i.cx, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.db = fmul <2 x float> %i.cz, %i.da
  %i.dc = shufflevector <3 x float> %i.cx, <3 x float> poison, <2 x i32> zeroinitializer
  %i.dd = shufflevector <2 x float> %i.ap, <2 x float> %i.at, <2 x i32> <i32 0, i32 2>
  %i.de = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> %i.dd, <2 x float> %i.db)
  %i.df = shufflevector <3 x float> %i.cx, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.dg = shufflevector <2 x float> %i.be, <2 x float> %i.bh, <2 x i32> <i32 1, i32 3>
  %i.dh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.dg, <2 x float> %i.de)
  %i.di = extractelement <3 x float> %i.cx, i64 1
  %i.dj = fmul float %.sroa.1394.32.copyload, %i.di
  %i.dk = call float @llvm.fmuladd.f32(float %i.cy, float %i.bc, float %i.dj)
  %i.dl = extractelement <3 x float> %i.cx, i64 2
  %i.dm = call noundef float @llvm.fmuladd.f32(float %i.dl, float %.sroa.1495.32.copyload, float %i.dk)
  %i.dn = fadd <2 x float> %i.bd, %i.dh
  %i.do = fadd float %.sroa.1899.48.copyload, %i.dm
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.do, i64 0
  store <4 x float> %i.ch, ptr %4, align 16, !alias.scope !157
  store <4 x float> %i.cq, ptr %i.as, align 16, !alias.scope !157
  store <4 x float> %i.cw, ptr %i.aw, align 16, !alias.scope !157
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <2 x float> %i.dn, ptr %i.dp, align 16, !alias.scope !157
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !57, !alias.scope !157
  %i.dq = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !78, !nonnull !79, !align !80 ; 9 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %.sroa.982.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %.sroa.13.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 36
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  %.sroa.14.32.copyload = load float, ptr %.sroa.14.32..sroa_idx, align 4 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  %.sroa.18.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 56
  %.sroa.18.48.copyload = load float, ptr %.sroa.18.48..sroa_idx, align 4
  %i.dv = load ptr, ptr %i.v, align 8, !tbaa !88
  %i.dw = getelementptr inbounds [88 x i8], ptr %i.dv, i64 %i.x ; 12 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %13 = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 20
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 36
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dw, i64 52
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 56
  %i.eg = load <2 x float>, ptr %i.dr, align 4    ; 3 uses
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ei = shufflevector <2 x float> %i.eg, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ek = load <2 x float>, ptr %i.ds, align 4    ; 3 uses
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.em = shufflevector <2 x float> %i.ek, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.eo = load <2 x float>, ptr %i.dt, align 4    ; 3 uses
  %.sroa.13.32.copyload = load float, ptr %.sroa.13.32..sroa_idx, align 4
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.eq = shufflevector <2 x float> %i.eo, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.er = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %.sroa.14.32.copyload, i64 0
  %i.es = shufflevector <4 x float> %i.er, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.et = extractelement <2 x float> %i.eo, i64 0
  %i.eu = load <2 x float>, ptr %i.du, align 4
  %i.ev = load <2 x float>, ptr %.sroa.5.0..sroa_idx, align 4 ; 3 uses
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ey = load <2 x float>, ptr %.sroa.982.16..sroa_idx, align 4 ; 3 uses
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fa = shufflevector <4 x float> %i.ez, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.fb = load <2 x float>, ptr %i.dw, align 4, !tbaa !81, !noalias !160 ; 2 uses
  %i.fc = load <2 x float>, ptr %12, align 4, !tbaa !81, !noalias !160 ; 2 uses
  %i.fd = load <2 x float>, ptr %13, align 4, !tbaa !81, !noalias !160 ; 2 uses
  %i.fe = load <2 x float>, ptr %i.dx, align 4, !tbaa !81, !noalias !160 ; 2 uses
  %i.ff = load float, ptr %i.ea, align 4, !tbaa !81, !noalias !160
  %i.fg = load <2 x float>, ptr %i.dy, align 4, !tbaa !81, !noalias !160 ; 2 uses
  %i.fh = load float, ptr %i.eb, align 4, !tbaa !81, !noalias !160
  %i.fi = shufflevector <2 x float> %i.fc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fj = insertelement <4 x float> %i.fi, float 1.000000e+00, i64 3
  %i.fk = shufflevector <2 x float> %i.fg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fl = shufflevector <4 x float> %i.fj, <4 x float> %i.fk, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.fm = fmul <4 x float> %i.eh, %i.fl
  %i.fn = shufflevector <2 x float> %i.fb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fo = insertelement <4 x float> %i.fn, float 0.000000e+00, i64 3
  %i.fp = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fq = shufflevector <4 x float> %i.fo, <4 x float> %i.fp, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.fr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fq, <4 x float> %i.ei, <4 x float> %i.fm)
  %i.fs = load <2 x float>, ptr %i.dz, align 4, !tbaa !81, !noalias !160 ; 2 uses
  %i.ft = load float, ptr %i.ec, align 4, !tbaa !81, !noalias !160
  %i.fu = shufflevector <2 x float> %i.fd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fv = insertelement <4 x float> %i.fu, float 0.000000e+00, i64 3
  %i.fw = shufflevector <2 x float> %i.fs, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fx = shufflevector <4 x float> %i.fv, <4 x float> %i.fw, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.fy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fx, <4 x float> %i.ex, <4 x float> %i.fr)
  %i.fz = shufflevector <2 x float> %i.fc, <2 x float> %i.fg, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ga = insertelement <4 x float> %i.fz, float 1.000000e+00, i64 3 ; 2 uses
  %i.gb = fmul <4 x float> %i.el, %i.ga
  %i.gc = shufflevector <2 x float> %i.fb, <2 x float> %i.fe, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.gd = insertelement <4 x float> %i.gc, float 0.000000e+00, i64 3 ; 2 uses
  %i.ge = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gd, <4 x float> %i.em, <4 x float> %i.gb)
  %i.gf = shufflevector <2 x float> %i.fd, <2 x float> %i.fs, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.gg = insertelement <4 x float> %i.gf, float 0.000000e+00, i64 3 ; 2 uses
  %i.gh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gg, <4 x float> %i.fa, <4 x float> %i.ge)
  %i.gi = insertelement <4 x float> %i.ga, float %i.fh, i64 2
  %i.gj = fmul <4 x float> %i.ep, %i.gi
  %i.gk = insertelement <4 x float> %i.gd, float %i.ff, i64 2
  %i.gl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gk, <4 x float> %i.eq, <4 x float> %i.gj)
  %i.gm = insertelement <4 x float> %i.gg, float %i.ft, i64 2
  %i.gn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gm, <4 x float> %i.es, <4 x float> %i.gl)
  %14 = load float, ptr %i.ee, align 4, !tbaa !81, !noalias !159 ; 2 uses
  %15 = load float, ptr %i.ed, align 4, !tbaa !81, !noalias !159 ; 2 uses
  %i.go = load float, ptr %i.ef, align 4, !tbaa !81, !noalias !159 ; 2 uses
  %i.gp = shufflevector <2 x float> %i.ev, <2 x float> %i.ey, <2 x i32> <i32 0, i32 2>
  %16 = insertelement <2 x float> poison, float %14, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gq = fmul <2 x float> %i.gp, %17
  %18 = insertelement <2 x float> poison, float %15, i64 0
  %i.gr = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = shufflevector <2 x float> %i.eg, <2 x float> %i.ek, <2 x i32> <i32 0, i32 2>
  %i.gt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gr, <2 x float> %i.gs, <2 x float> %i.gq)
  %19 = insertelement <2 x float> poison, float %i.go, i64 0
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = shufflevector <2 x float> %i.ev, <2 x float> %i.ey, <2 x i32> <i32 1, i32 3>
  %22 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> %21, <2 x float> %i.gt)
  %i.gu = fmul float %.sroa.13.32.copyload, %14
  %i.gv = call float @llvm.fmuladd.f32(float %15, float %i.et, float %i.gu)
  %i.gw = call noundef float @llvm.fmuladd.f32(float %i.go, float %.sroa.14.32.copyload, float %i.gv)
  %i.gx = fadd <2 x float> %i.eu, %22
  %i.gy = fadd float %.sroa.18.48.copyload, %i.gw
  %.sroa.3.12.vec.insert.i4.i.i65 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gy, i64 0
  store <4 x float> %i.fy, ptr %5, align 16, !alias.scope !159
  store <4 x float> %i.gh, ptr %i.ej, align 16, !alias.scope !159
  store <4 x float> %i.gn, ptr %i.en, align 16, !alias.scope !159
  %i.gz = getelementptr inbounds nuw i8, ptr %5, i64 48
  store <2 x float> %i.gx, ptr %i.gz, align 16, !alias.scope !159
  %.sroa.4.0..sroa_idx.i75 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i65, ptr %.sroa.4.0..sroa_idx.i75, align 8, !tbaa !57, !alias.scope !159
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.ha = load ptr, ptr %i.u, align 8, !tbaa !11
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8
  invoke void %i.hc(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.hd = load ptr, ptr %i.aa, align 8, !tbaa !11
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load ptr, ptr %i.he, align 8
  invoke void %i.hf(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %9)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !75
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 48
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !81 ; 6 uses
  %i.hk = load float, ptr %6, align 4, !tbaa !81
  %i.hl = fsub float %i.hk, %i.hj                 ; 2 uses
  store float %i.hl, ptr %6, align 4, !tbaa !81
  %i.hm = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !81
  %i.ho = fsub float %i.hn, %i.hj                 ; 2 uses
  store float %i.ho, ptr %i.hm, align 4, !tbaa !81
  %i.hp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !81
  %i.hr = fsub float %i.hq, %i.hj                 ; 2 uses
  store float %i.hr, ptr %i.hp, align 4, !tbaa !81
  %i.hs = load float, ptr %7, align 4, !tbaa !81
  %i.ht = fadd float %i.hj, %i.hs                 ; 2 uses
  store float %i.ht, ptr %7, align 4, !tbaa !81
  %i.hu = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !81
  %i.hw = fadd float %i.hj, %i.hv                 ; 2 uses
  store float %i.hw, ptr %i.hu, align 4, !tbaa !81
  %i.hx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !81
  %i.hz = fadd float %i.hj, %i.hy                 ; 2 uses
  store float %i.hz, ptr %i.hx, align 4, !tbaa !81
  %i.ia = load ptr, ptr @gCompoundCompoundChildShapePairCallback, align 8, !tbaa !161 ; 2 uses
  %.not = icmp eq ptr %i.ia, null
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ib = invoke noundef zeroext i1 %i.ia(ptr noundef nonnull %i.u, ptr noundef nonnull %i.aa)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %i.ib, label %._crit_edge, label %bb.aa

._crit_edge:                                      ; preds = %bb.e
  %.pre = load float, ptr %6, align 4, !tbaa !81
  %.pre101 = load float, ptr %7, align 4
  %.pre102 = load float, ptr %i.hp, align 4, !tbaa !81
  %.pre103 = load float, ptr %i.hx, align 4
  %.pre104 = load float, ptr %i.hm, align 4, !tbaa !81
  %.pre105 = load float, ptr %i.hu, align 4
  br label %bb.h

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.g:                                             ; preds = %bb.d
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.h:                                             ; preds = %._crit_edge, %bb.c
  %i.ie = phi float [ %.pre105, %._crit_edge ], [ %i.hw, %bb.c ]
  %i.if = phi float [ %.pre104, %._crit_edge ], [ %i.ho, %bb.c ]
  %i.ig = phi float [ %.pre103, %._crit_edge ], [ %i.hz, %bb.c ]
  %i.ih = phi float [ %.pre102, %._crit_edge ], [ %i.hr, %bb.c ]
  %i.ii = phi float [ %.pre101, %._crit_edge ], [ %i.ht, %bb.c ]
  %i.ij = phi float [ %.pre, %._crit_edge ], [ %i.hl, %bb.c ]
  %i.ik = load float, ptr %9, align 4, !tbaa !81
  %i.il = fcmp ule float %i.ij, %i.ik
  %i.im = load float, ptr %8, align 4
  %i.in = fcmp uge float %i.ii, %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ip = load float, ptr %i.io, align 4, !tbaa !81
  %i.iq = fcmp ule float %i.ih, %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.is = load float, ptr %i.ir, align 4
  %i.it = fcmp uge float %i.ig, %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !81
  %i.iw = fcmp ule float %i.if, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.iy = load float, ptr %i.ix, align 4
  %i.iz = fcmp uge float %i.ie, %i.iy
  %i.ja = select i1 %i.iw, i1 %i.iz, i1 false
  %i.jb = select i1 %i.ja, i1 %i.iq, i1 false
  %i.jc = select i1 %i.jb, i1 %i.it, i1 false
  %i.jd = select i1 %i.jc, i1 %i.il, i1 false
  %i.je = select i1 %i.jd, i1 %i.in, i1 false
  br i1 %i.je, label %bb.i, label %bb.aa

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.jf = load ptr, ptr %i.h, align 8, !tbaa !72  ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !65
  store ptr %i.jf, ptr %10, align 8, !tbaa !162
  %i.ji = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.u, ptr %i.ji, align 8, !tbaa !44
  %i.jj = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.jh, ptr %i.jj, align 8, !tbaa !65
  %i.jk = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %4, ptr %i.jk, align 8, !tbaa !163
  %i.jl = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr null, ptr %i.jl, align 8, !tbaa !164
  %i.jm = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i32 -1, ptr %i.jm, align 8, !tbaa !165
  %i.jn = getelementptr inbounds nuw i8, ptr %10, i64 44
  store i32 %i.e, ptr %i.jn, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.jo = load ptr, ptr %i.l, align 8, !tbaa !73  ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !65
  store ptr %i.jo, ptr %11, align 8, !tbaa !162
  %i.jr = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.aa, ptr %i.jr, align 8, !tbaa !44
  %i.js = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.jq, ptr %i.js, align 8, !tbaa !65
  %i.jt = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %5, ptr %i.jt, align 8, !tbaa !163
  %i.ju = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr null, ptr %i.ju, align 8, !tbaa !164
  %i.jv = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i32 -1, ptr %i.jv, align 8, !tbaa !165
  %i.jw = getelementptr inbounds nuw i8, ptr %11, i64 44
  store i32 %i.g, ptr %i.jw, align 4, !tbaa !166
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !76
  %i.jz = invoke noundef ptr @_ZN23btHashedSimplePairCache8findPairEii(ptr noundef nonnull align 8 dereferenceable(104) %i.jy, i32 noundef %i.e, i32 noundef %i.g)
          to label %bb.j unwind label %bb.l       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ka = load ptr, ptr %i.hg, align 8, !tbaa !75
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 48
  %i.kc = load float, ptr %i.kb, align 8, !tbaa !86
  %i.kd = fcmp ogt float %i.kc, 0.000000e+00      ; 2 uses
  br i1 %i.kd, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !74 ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !11
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.ki = load ptr, ptr %i.kh, align 8
  %i.kj = invoke noundef ptr %i.ki(ptr noundef nonnull align 8 dereferenceable(8) %i.kf, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef null, i32 noundef 2)
          to label %bb.s unwind label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.m:                                             ; preds = %bb.q, %bb.p, %bb.k
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.n:                                             ; preds = %bb.j
  %.not52 = icmp eq ptr %i.jz, null
  br i1 %.not52, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.km = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !57
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !74 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !77
  %i.ks = load ptr, ptr %i.kp, align 8, !tbaa !11
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8
  %i.kv = invoke noundef ptr %i.ku(ptr noundef nonnull align 8 dereferenceable(8) %i.kp, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %i.kr, i32 noundef 1)
          to label %bb.q unwind label %bb.m       ; 2 uses

bb.q:                                             ; preds = %bb.p
end_hunk_0
