Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btRaycastVehicle?download=true
inline.NumInlined: 494
inline.NumDeleted: 147
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN16btRaycastVehicle8addWheelERK9btVector3S2_S2_ffRKNS_15btVehicleTuningEb:bb.a
  %i.de = load float, ptr %i.dc, align 4, !tbaa !49 ; 2 uses
  %i.df = load float, ptr %i.db, align 4, !tbaa !49 ; 2 uses
  %i.dg = load float, ptr %i.dd, align 4, !tbaa !49 ; 2 uses
  %i.dh = insertelement <2 x float> poison, float %i.de, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = fmul <2 x float> %i.cn, %i.di
  %i.dk = insertelement <2 x float> poison, float %i.df, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.dl, <2 x float> %i.dj)
  %i.dn = insertelement <2 x float> poison, float %.sroa.5.0.copyload, i64 0
  %i.do = insertelement <2 x float> %i.dn, float %.sroa.9.16.copyload, i64 1
  %i.dp = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> %i.dq, <2 x float> %i.dm)
  %i.ds = fmul float %.sroa.1229.32.copyload, %i.de
  %i.dt = tail call float @llvm.fmuladd.f32(float %.sroa.1028.32.copyload, float %i.df, float %i.ds)
  %i.du = tail call noundef float @llvm.fmuladd.f32(float %.sroa.1330.32.copyload, float %i.dg, float %i.dt)
  %.sroa.3.12.vec.insert.i19.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.du, i64 0
  %i.dv = getelementptr inbounds nuw i8, ptr %i.aw, i64 68
  store <2 x float> %i.dr, ptr %i.dv, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 76
  store <2 x float> %.sroa.3.12.vec.insert.i19.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !50
  %i.dw = load i32, ptr %i.d, align 4, !tbaa !42
  %i.dx = add nsw i32 %i.dw, -1
  tail call void @_ZN16btRaycastVehicle20updateWheelTransformEib(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.dx, i1 noundef zeroext false)
  ret ptr %i.aw
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: uwtable
define dso_local void @_ZN16btRaycastVehicle23updateWheelTransformsWSER11btWheelInfob(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(288) initializes((36, 85)) %1, i1 noundef zeroext %2) local_unnamed_addr #8 align 2 {
bb.a:
  %3 = alloca %class.btTransform, align 8         ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i8 0, ptr %i.a, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %i.d, i64 16, i1 false), !tbaa.struct !51
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !51
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !51
  br i1 %2, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !96   ; 3 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 4 dereferenceable(64) %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.w = load <2 x float>, ptr %3, align 8, !tbaa !49 ; 2 uses
  %i.x = load float, ptr %i.r, align 4, !tbaa !49 ; 2 uses
  %i.y = load float, ptr %i.p, align 8, !tbaa !49 ; 2 uses
  %i.z = load float, ptr %i.t, align 8, !tbaa !49 ; 2 uses
  %i.aa = load <2 x float>, ptr %i.f, align 8, !tbaa !49 ; 2 uses
  %i.ab = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = shufflevector <2 x float> %i.w, <2 x float> %i.aa, <2 x i32> <i32 1, i32 3>
  %i.ae = fmul <2 x float> %i.ac, %i.ad
  %i.af = shufflevector <2 x float> %i.w, <2 x float> %i.aa, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ag = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.ah, <2 x float> %i.ae)
  %i.aj = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = load <2 x float>, ptr %i.i, align 8, !tbaa !49
  %i.am = load float, ptr %i.h, align 8, !tbaa !49 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ao = load float, ptr %i.an, align 4, !tbaa !49 ; 3 uses
  %i.ap = fmul float %i.x, %i.ao
  %i.aq = call float @llvm.fmuladd.f32(float %i.am, float %i.y, float %i.ap)
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.as = load float, ptr %i.ar, align 8, !tbaa !49 ; 3 uses
  %i.at = call noundef float @llvm.fmuladd.f32(float %i.as, float %i.z, float %i.aq)
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.av = load float, ptr %i.au, align 8, !tbaa !49
  %i.aw = fadd float %i.av, %i.at
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aw, i64 0
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.44.0..sroa_idx, align 4, !tbaa !50
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bb = load <2 x float>, ptr %i.q, align 4, !tbaa !49 ; 2 uses
  %i.bc = load <4 x float>, ptr %i.s, align 8
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.be = load <2 x float>, ptr %i.u, align 4, !tbaa !49 ; 2 uses
  %i.bf = load float, ptr %i.v, align 8, !tbaa !49
  %i.bg = shufflevector <2 x float> %i.bb, <2 x float> %i.be, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.ak, <2 x float> %i.ai)
  %i.bi = fadd <2 x float> %i.bh, %i.al
  store <2 x float> %i.bi, ptr %i.ax, align 4
  %i.bj = load float, ptr %i.az, align 4, !tbaa !49 ; 2 uses
  %i.bk = load float, ptr %i.ay, align 8, !tbaa !49 ; 2 uses
  %i.bl = load float, ptr %i.ba, align 8, !tbaa !49 ; 2 uses
  %i.bm = shufflevector <2 x float> %i.bb, <2 x float> %i.be, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bn = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x float> %i.bm, %i.bo
  %i.bq = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.br, <2 x float> %i.bp)
  %i.bt = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.bu, <2 x float> %i.bs)
  %i.bw = fmul float %i.ao, %i.bj
  %i.bx = call float @llvm.fmuladd.f32(float %i.am, float %i.bk, float %i.bw)
  %i.by = call noundef float @llvm.fmuladd.f32(float %i.as, float %i.bl, float %i.bx)
  %.sroa.3.12.vec.insert.i14 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.by, i64 0
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 52
  store <2 x float> %i.bv, ptr %i.bz, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 60
  store <2 x float> %.sroa.3.12.vec.insert.i14, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !50
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.cd = load float, ptr %i.cb, align 4, !tbaa !49 ; 2 uses
  %i.ce = load float, ptr %i.ca, align 8, !tbaa !49 ; 2 uses
  %i.cf = load float, ptr %i.cc, align 8, !tbaa !49 ; 2 uses
  %i.cg = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x float> %i.bm, %i.ch
  %i.cj = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.ck, <2 x float> %i.ci)
  %i.cm = insertelement <2 x float> %i.bd, float %i.bf, i64 1
  %i.cn = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.co, <2 x float> %i.cl)
  %i.cq = fmul float %i.ao, %i.cd
  %i.cr = call float @llvm.fmuladd.f32(float %i.am, float %i.ce, float %i.cq)
  %i.cs = call noundef float @llvm.fmuladd.f32(float %i.as, float %i.cf, float %i.cr)
  %.sroa.3.12.vec.insert.i19 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cs, i64 0
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 68
  store <2 x float> %i.cp, ptr %i.ct, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 76
  store <2 x float> %.sroa.3.12.vec.insert.i19, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN16btRaycastVehicle20updateWheelTransformEib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [288 x i8], ptr %i.b, i64 %i.c ; 23 uses
  tail call void @_ZN16btRaycastVehicle23updateWheelTransformsWSER11btWheelInfob(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(288) %i.d, i1 noundef zeroext %2)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 236
  %i.l = load float, ptr %i.k, align 4, !tbaa !64
  %i.m = fmul float %i.l, 5.000000e-01            ; 2 uses
  %i.n = tail call noundef float @sinf(float noundef %i.m) #20, !tbaa !7
  %i.o = tail call noundef float @cosf(float noundef %i.m) #20, !tbaa !7 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.q = load float, ptr %i.p, align 8, !tbaa !65
  %i.r = fmul float %i.q, -5.000000e-01           ; 2 uses
  %i.s = tail call noundef float @sinf(float noundef %i.r) #20, !tbaa !7
  %i.t = tail call noundef float @cosf(float noundef %i.r) #20, !tbaa !7 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  store float 0.000000e+00, ptr %.sroa.639.0..sroa_idx, align 4, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %.sroa.1141.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  store float 0.000000e+00, ptr %.sroa.1141.16..sroa_idx, align 4, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.x = load float, ptr %i.i, align 4, !tbaa !49 ; 5 uses
  %i.y = load float, ptr %i.j, align 8, !tbaa !49 ; 6 uses
  %i.z = load float, ptr %i.h, align 4, !tbaa !49 ; 5 uses
  %i.aa = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.s, i64 1
  %i.ac = insertelement <2 x float> poison, float %i.o, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.t, i64 1 ; 3 uses
  %i.ae = insertelement <2 x float> poison, float %i.z, i64 0
  %i.af = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ag = load float, ptr %i.f, align 8, !tbaa !49 ; 4 uses
  %i.ah = load float, ptr %i.e, align 4, !tbaa !49 ; 3 uses
  %i.ai = load float, ptr %i.g, align 4, !tbaa !49 ; 4 uses
  %i.aj = fneg float %i.ag                        ; 4 uses
  %i.ak = fneg float %i.ah                        ; 4 uses
  %i.al = fneg float %i.ai                        ; 4 uses
  %i.am = fmul float %i.ai, %i.y
  %i.an = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.x, float %i.am) ; 3 uses
  %i.ao = fmul float %i.ah, %i.x
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.al, float %i.z, float %i.ao) ; 3 uses
  %i.aq = fmul float %i.ag, %i.z
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.y, float %i.aq) ; 3 uses
  %i.as = fmul float %i.ap, %i.ap
  %i.at = tail call float @llvm.fmuladd.f32(float %i.an, float %i.an, float %i.as)
  %i.au = tail call noundef float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.at)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.au)
  %i.av = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.aw = fmul float %i.an, %i.av                 ; 2 uses
  %i.ax = fmul float %i.ap, %i.av                 ; 3 uses
  %i.ay = fmul float %i.ar, %i.av                 ; 2 uses
  %i.az = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.ba = insertelement <2 x float> %i.az, float %i.aj, i64 1
  %i.bb = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.ak, i64 1
  %i.bd = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.be = insertelement <2 x float> %i.bd, float %i.al, i64 1
  %i.bf = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.bg = insertelement <2 x float> %i.bf, float %i.y, i64 1 ; 3 uses
  %i.bh = fmul <2 x float> %i.bg, %i.bg
  %i.bi = insertelement <2 x float> poison, float %i.ah, i64 0 ; 2 uses
  %i.bj = insertelement <2 x float> %i.bi, float %i.z, i64 1 ; 3 uses
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.bj, <2 x float> %i.bh)
  %i.bl = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.x, i64 1 ; 3 uses
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.bm, <2 x float> %i.bk)
  %i.bo = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.bn)
  %i.bp = fdiv <2 x float> %i.ab, %i.bo           ; 3 uses
  %i.bq = insertelement <2 x float> %i.bm, float %i.al, i64 0
  %i.br = fmul <2 x float> %i.bp, %i.bq           ; 4 uses
  %i.bs = insertelement <2 x float> %i.bg, float %i.aj, i64 0
  %i.bt = fmul <2 x float> %i.bp, %i.bs           ; 7 uses
  %i.bu = insertelement <2 x float> %i.bj, float %i.ak, i64 0
  %i.bv = fmul <2 x float> %i.bp, %i.bu           ; 7 uses
  %i.bw = fmul <2 x float> %i.bt, %i.bt
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.bv, <2 x float> %i.bw)
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.br, <2 x float> %i.bx)
  %i.bz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.ad, <2 x float> %i.by)
  %i.ca = fdiv <2 x float> splat (float 2.000000e+00), %i.bz ; 4 uses
  %i.cb = fmul <2 x float> %i.br, %i.ca           ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.bt, %i.ca ; 3 uses
  %i.cc = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cd = extractelement <2 x float> %i.cb, i64 0
  %i.ce = fmul float %i.o, %i.cc                  ; 2 uses
  %i.cf = fmul float %i.o, %i.cd                  ; 2 uses
  %foldExtExtBinop115 = fmul <2 x float> %i.bv, %i.cb
  %i.cg = extractelement <2 x float> %foldExtExtBinop115, i64 0 ; 2 uses
  %foldExtExtBinop117 = fmul <2 x float> %i.bv, %foldExtExtBinop
  %i.ch = extractelement <2 x float> %foldExtExtBinop117, i64 0 ; 2 uses
  %i.ci = fsub float %i.ch, %i.cf                 ; 3 uses
  %i.cj = extractelement <2 x float> %i.cb, i64 1 ; 2 uses
  %foldExtExtBinop119 = fmul <2 x float> %i.bt, %i.ca ; 2 uses
  %i.ck = extractelement <2 x float> %foldExtExtBinop119, i64 1 ; 2 uses
  %i.cl = fmul <2 x float> %i.bv, %i.ca           ; 2 uses
  %i.cm = extractelement <2 x float> %i.bv, i64 1 ; 2 uses
  %foldExtExtBinop121 = fmul <2 x float> %i.bt, %foldExtExtBinop ; 2 uses
  %foldExtExtBinop123 = fmul <2 x float> %i.bt, %foldExtExtBinop119 ; 2 uses
  %i.cn = fmul <2 x float> %i.bt, %i.cb           ; 4 uses
  %i.co = fmul float %i.cm, %i.cj                 ; 2 uses
  %i.cp = fmul float %i.cm, %i.ck                 ; 2 uses
  %i.cq = fmul <2 x float> %i.ad, %i.cl           ; 4 uses
  %i.cr = fsub float %i.cg, %i.ce
  %i.cs = fadd float %i.ch, %i.cf
  %i.ct = fmul <2 x float> %i.bv, %i.cl           ; 3 uses
  %i.cu = fmul <2 x float> %i.br, %i.cb           ; 3 uses
  %i.cv = fmul float %i.t, %i.cj                  ; 2 uses
  %foldExtExtBinop125 = fadd <2 x float> %foldExtExtBinop123, %i.cu
  %i.cw = extractelement <2 x float> %foldExtExtBinop125, i64 1
  %i.cx = fmul float %i.t, %i.ck                  ; 2 uses
  %foldExtExtBinop127 = fadd <2 x float> %i.ct, %foldExtExtBinop123
  %i.cy = extractelement <2 x float> %foldExtExtBinop127, i64 1
  %foldExtExtBinop129 = fadd <2 x float> %foldExtExtBinop121, %i.cu
  %i.cz = extractelement <2 x float> %foldExtExtBinop129, i64 0
  %foldExtExtBinop131 = fadd <2 x float> %i.ct, %foldExtExtBinop121
  %i.da = extractelement <2 x float> %foldExtExtBinop131, i64 0
  %i.db = fadd <2 x float> %i.ct, %i.cu
  %i.dc = fsub float 1.000000e+00, %i.cz          ; 3 uses
  %i.dd = fsub <2 x float> splat (float 1.000000e+00), %i.db ; 4 uses
  %i.de = fadd <2 x float> %i.cn, %i.cq           ; 2 uses
  %i.df = fsub <2 x float> %i.cn, %i.cq           ; 3 uses
  %i.dg = shufflevector <2 x float> %i.de, <2 x float> %i.df, <2 x i32> <i32 0, i32 3>
  %i.dh = fadd float %i.cg, %i.ce                 ; 3 uses
  %foldExtExtBinop133 = fadd <2 x float> %i.cn, %i.cq ; 2 uses
  %i.di = extractelement <2 x float> %foldExtExtBinop133, i64 1
  %i.dj = fadd float %i.cp, %i.cv                 ; 2 uses
  %i.dk = fadd float %i.co, %i.cx                 ; 2 uses
  %i.dl = fsub float 1.000000e+00, %i.da
  %foldExtExtBinop135 = fsub <2 x float> %i.cn, %i.cq
  %i.dm = fsub float %i.cp, %i.cv                 ; 2 uses
  %i.dn = fsub float 1.000000e+00, %i.cw          ; 2 uses
  %i.do = fsub float %i.co, %i.cx                 ; 2 uses
  %i.dp = fsub float 1.000000e+00, %i.cy          ; 2 uses
  %i.dq = extractelement <2 x float> %i.dd, i64 1
  %i.dr = fmul float %i.ci, %i.dq
  %i.ds = fmul float %i.ci, %i.dj
  %i.dt = extractelement <2 x float> %i.df, i64 1
  %i.du = fmul float %i.ci, %i.dt
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.dm, float %i.dc, float %i.dr)
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.dn, float %i.dc, float %i.ds)
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.dc, float %i.du)
  %i.dy = tail call noundef float @llvm.fmuladd.f32(float %i.di, float %i.dh, float %i.dv) ; 2 uses
  %i.dz = tail call noundef float @llvm.fmuladd.f32(float %i.do, float %i.dh, float %i.dw) ; 2 uses
  %i.ea = tail call noundef float @llvm.fmuladd.f32(float %i.dp, float %i.dh, float %i.dx) ; 2 uses
  %i.eb = shufflevector <2 x float> %i.de, <2 x float> %i.dd, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ec = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ed = fmul <2 x float> %i.eb, %i.ec
  %i.ee = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = fmul <2 x float> %i.eb, %i.ef
  %i.eh = shufflevector <2 x float> %i.df, <2 x float> %i.dd, <2 x i32> <i32 1, i32 2>
  %i.ei = fmul <2 x float> %i.dg, %i.eh
  %i.ej = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.em = insertelement <2 x float> %i.el, float %i.cs, i64 1 ; 3 uses
  %i.en = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.em, <2 x float> %i.ed)
  %i.eo = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %i.em, <2 x float> %i.eg)
  %i.er = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.em, <2 x float> %i.ei)
  %i.eu = shufflevector <2 x float> %foldExtExtBinop133, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ev = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> %foldExtExtBinop135, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ex = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.ew, <2 x float> %i.en) ; 3 uses
  %i.ey = insertelement <2 x float> poison, float %i.do, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.ew, <2 x float> %i.eq) ; 3 uses
  %i.fb = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fc, <2 x float> %i.ew, <2 x float> %i.et) ; 3 uses
  %i.fe = fmul float %i.y, %i.dy
  %i.ff = tail call float @llvm.fmuladd.f32(float %i.z, float %i.dz, float %i.fe)
  %i.fg = tail call noundef float @llvm.fmuladd.f32(float %i.x, float %i.ea, float %i.ff)
  %i.fh = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.fi = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fj = fmul <2 x float> %i.ba, %i.fi
  %i.fk = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.fl, <2 x float> %i.fj)
  %i.fn = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.fo, <2 x float> %i.fm)
  %3 = extractelement <2 x float> %i.ex, i64 1    ; 2 uses
  %4 = fmul float %i.ax, %3
  %5 = fmul float %i.y, %3
  %i.fq = insertelement <2 x float> %i.ae, float %i.aw, i64 1 ; 2 uses
  %i.fr = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %6 = insertelement <2 x float> poison, float %5, i64 0
  %7 = insertelement <2 x float> %6, float %4, i64 1
  %i.fs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fr, <2 x float> %7)
  %i.ft = insertelement <2 x float> %i.af, float %i.ay, i64 1 ; 2 uses
  %i.fu = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.fu, <2 x float> %i.fs)
  %8 = extractelement <2 x float> %i.ex, i64 0    ; 2 uses
  %9 = fmul float %i.ax, %8
  %10 = fmul float %i.y, %8
  %i.fw = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = insertelement <2 x float> poison, float %10, i64 0
  %12 = insertelement <2 x float> %11, float %9, i64 1
  %i.fx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fw, <2 x float> %12)
  %i.fy = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.fy, <2 x float> %i.fx)
  %i.ga = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gc = fmul <2 x float> %i.ex, %i.gb
  %i.gd = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.ge = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ge, <2 x float> %i.fa, <2 x float> %i.gc)
  %i.gg = insertelement <2 x float> poison, float %i.al, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gh, <2 x float> %i.fd, <2 x float> %i.gf) ; 2 uses
  store float %i.fg, ptr %i.u, align 8
  store <2 x float> %i.fp, ptr %.sroa.437.0..sroa_idx, align 4
  store <2 x float> %i.fv, ptr %i.v, align 8
  %i.gj = extractelement <2 x float> %i.gi, i64 1
  store float %i.gj, ptr %.sroa.10.16..sroa_idx, align 8
  store <2 x float> %i.fz, ptr %i.w, align 8
  %.sroa.1542.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.gk = extractelement <2 x float> %i.gi, i64 0
  store float %i.gk, ptr %.sroa.1542.32..sroa_idx, align 8
  %.sroa.1643.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 140
  store float 0.000000e+00, ptr %.sroa.1643.32..sroa_idx, align 4, !tbaa !50
  %i.gl = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.gm = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.gn = load float, ptr %i.gm, align 8, !tbaa !49 ; 2 uses
  %i.go = fmul float %i.ai, %i.gn
  %i.gp = insertelement <2 x float> %i.bi, float %i.ag, i64 1
  %i.gq = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = fmul <2 x float> %i.gp, %i.gr
  %i.gt = load <2 x float>, ptr %i.gl, align 4, !tbaa !49
  %i.gu = fadd <2 x float> %i.gt, %i.gs
  %i.gv = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !49
  %i.gx = fadd float %i.go, %i.gw
  %.sroa.3.12.vec.insert.i30 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gx, i64 0
  %i.gy = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store <2 x float> %i.gu, ptr %i.gy, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store <2 x float> %.sroa.3.12.vec.insert.i30, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZNK16btRaycastVehicle19getWheelTransformWSEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, i32 noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [288 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  ret ptr %i.e
}

; Function Attrs: uwtable
define dso_local void @_ZN16btRaycastVehicle15resetSuspensionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw [288 x i8], ptr %i.e, i64 %indvars.iv ; 7 uses
  %i.g = tail call noundef float @_ZNK11btWheelInfo23getSuspensionRestLengthEv(ptr noundef nonnull align 8 dereferenceable(288) %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store float %i.g, ptr %i.h, align 8, !tbaa !66
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.j = load <2 x float>, ptr %i.i, align 4, !tbaa !49
  %i.k = fneg <2 x float> %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %i.m = load float, ptr %i.l, align 4, !tbaa !49
  %i.n = fneg float %i.m
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.n, i64 0
  store <2 x float> %i.k, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.o, align 8, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !42
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

declare noundef float @_ZNK11btWheelInfo23getSuspensionRestLengthEv(ptr noundef nonnull align 8 dereferenceable(288)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZNK16btRaycastVehicle24getChassisWorldTransformEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  ret ptr %i.c
}

; Function Attrs: uwtable
define dso_local noundef float @_ZN16btRaycastVehicle7rayCastER11btWheelInfo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(288) initializes((36, 85)) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %2 = alloca %"struct.btVehicleRaycaster::btVehicleRaycasterResult", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  store i8 0, ptr %i.a, align 4, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.1085.32.copyload = load float, ptr %i.f, align 4 ; 3 uses
  %.sroa.12.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %.sroa.12.32.copyload = load float, ptr %.sroa.12.32..sroa_idx, align 4 ; 3 uses
  %.sroa.13.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.13.32.copyload = load float, ptr %.sroa.13.32..sroa_idx, align 4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.17.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.17.48.copyload = load float, ptr %.sroa.17.48..sroa_idx, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.k = load <2 x float>, ptr %i.d, align 4      ; 2 uses
  %i.l = load <2 x float>, ptr %i.e, align 4      ; 2 uses
  %i.m = load <2 x float>, ptr %i.g, align 4
  %i.n = load float, ptr %i.i, align 4, !tbaa !49 ; 2 uses
  %i.o = load float, ptr %i.h, align 8, !tbaa !49 ; 2 uses
  %i.p = load float, ptr %i.j, align 8, !tbaa !49 ; 2 uses
  %i.q = shufflevector <2 x float> %i.k, <2 x float> %i.l, <2 x i32> <i32 1, i32 3>
  %i.r = insertelement <2 x float> poison, float %i.n, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x float> %i.q, %i.s
  %i.u = shufflevector <2 x float> %i.k, <2 x float> %i.l, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.v = insertelement <2 x float> poison, float %i.o, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.w, <2 x float> %i.t)
  %i.y = insertelement <2 x float> poison, float %i.p, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fmul float %.sroa.12.32.copyload, %i.n
  %i.ab = tail call float @llvm.fmuladd.f32(float %.sroa.1085.32.copyload, float %i.o, float %i.aa)
  %i.ac = tail call noundef float @llvm.fmuladd.f32(float %.sroa.13.32.copyload, float %i.p, float %i.ab)
  %i.ad = fadd float %.sroa.17.48.copyload, %i.ac
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ad, i64 0
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ai = load <2 x float>, ptr %.sroa.4.0..sroa_idx82, align 4 ; 2 uses
  %.sroa.583.0.copyload = load float, ptr %.sroa.583.0..sroa_idx, align 4
  %i.aj = load <2 x float>, ptr %.sroa.8.16..sroa_idx, align 4 ; 2 uses
  %.sroa.9.16.copyload = load float, ptr %.sroa.9.16..sroa_idx, align 4
  %i.ak = shufflevector <2 x float> %i.ai, <2 x float> %i.aj, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.z, <2 x float> %i.x)
  %i.am = fadd <2 x float> %i.m, %i.al
  store <2 x float> %i.am, ptr %i.ae, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.44.0..sroa_idx.i, align 4, !tbaa !50
  %i.an = load float, ptr %i.ag, align 4, !tbaa !49 ; 2 uses
  %i.ao = load float, ptr %i.af, align 8, !tbaa !49 ; 2 uses
  %i.ap = load float, ptr %i.ah, align 8, !tbaa !49 ; 2 uses
  %i.aq = shufflevector <2 x float> %i.ai, <2 x float> %i.aj, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ar = insertelement <2 x float> poison, float %i.an, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x float> %i.aq, %i.as
  %i.au = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.av, <2 x float> %i.at)
  %i.ax = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.ay, <2 x float> %i.aw)
  %i.ba = fmul float %.sroa.12.32.copyload, %i.an
  %i.bb = tail call float @llvm.fmuladd.f32(float %.sroa.1085.32.copyload, float %i.ao, float %i.ba)
  %i.bc = tail call noundef float @llvm.fmuladd.f32(float %.sroa.13.32.copyload, float %i.ap, float %i.bb)
  %.sroa.3.12.vec.insert.i14.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bc, i64 0
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 4 uses
  store <2 x float> %i.az, ptr %i.bd, align 4
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 4 uses
  store <2 x float> %.sroa.3.12.vec.insert.i14.i, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !50
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bh = load float, ptr %i.bf, align 4, !tbaa !49 ; 2 uses
  %i.bi = load float, ptr %i.be, align 8, !tbaa !49 ; 2 uses
  %i.bj = load float, ptr %i.bg, align 8, !tbaa !49 ; 2 uses
  %i.bk = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x float> %i.aq, %i.bl
  %i.bn = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.bo, <2 x float> %i.bm)
end_hunk_0
