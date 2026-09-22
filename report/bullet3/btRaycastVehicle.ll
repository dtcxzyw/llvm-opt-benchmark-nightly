Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btRaycastVehicle?download=true
inline.NumInlined: 513
inline.NumDeleted: 147
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN16btRaycastVehicle8addWheelERK9btVector3S2_S2_ffRKNS_15btVehicleTuningEb:bb.a
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.cx, <2 x float> %i.cv)
  %i.cz = fmul float %.sroa.1231.32.copyload, %i.cm
  %i.da = tail call float @llvm.fmuladd.f32(float %.sroa.1030.32.copyload, float %i.cn, float %i.cz)
  %i.db = tail call noundef float @llvm.fmuladd.f32(float %.sroa.1332.32.copyload, float %i.co, float %i.da)
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.db, i64 0
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ay, i64 52
  store <2 x float> %i.cy, ptr %i.dc, align 4
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 60
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !52
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ay, i64 192
  %i.de = getelementptr inbounds nuw i8, ptr %i.ay, i64 196
  %i.df = getelementptr inbounds nuw i8, ptr %i.ay, i64 200
  %i.dg = load float, ptr %i.de, align 4, !tbaa !51 ; 2 uses
  %i.dh = load float, ptr %i.dd, align 4, !tbaa !51 ; 2 uses
  %i.di = load float, ptr %i.df, align 4, !tbaa !51 ; 2 uses
  %i.dj = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = fmul <2 x float> %i.cp, %i.dk
  %i.dm = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.dn, <2 x float> %i.dl)
  %i.dp = insertelement <2 x float> poison, float %.sroa.5.0.copyload, i64 0
  %i.dq = insertelement <2 x float> %i.dp, float %.sroa.9.16.copyload, i64 1
  %i.dr = insertelement <2 x float> poison, float %i.di, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dq, <2 x float> %i.ds, <2 x float> %i.do)
  %i.du = fmul float %.sroa.1231.32.copyload, %i.dg
  %i.dv = tail call float @llvm.fmuladd.f32(float %.sroa.1030.32.copyload, float %i.dh, float %i.du)
  %i.dw = tail call noundef float @llvm.fmuladd.f32(float %.sroa.1332.32.copyload, float %i.di, float %i.dv)
  %.sroa.3.12.vec.insert.i14.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dw, i64 0
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ay, i64 68
  store <2 x float> %i.dt, ptr %i.dx, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 76
  store <2 x float> %.sroa.3.12.vec.insert.i14.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !52
  %i.dy = load i32, ptr %i.f, align 4, !tbaa !44
  %i.dz = add nsw i32 %i.dy, -1
  tail call void @_ZN16btRaycastVehicle20updateWheelTransformEib(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.dz, i1 noundef zeroext false)
  ret ptr %i.ay
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16btRaycastVehicle23updateWheelTransformsWSER11btWheelInfob(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(296) initializes((36, 85)) %1, i1 noundef zeroext %2) local_unnamed_addr #7 align 2 {
bb.a:
  %3 = alloca %class.btTransform, align 8         ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i8 0, ptr %i.a, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %i.d, i64 16, i1 false), !tbaa.struct !53
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !53
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !53
  br i1 %2, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !104  ; 3 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 4 dereferenceable(64) %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.w = load float, ptr %i.h, align 8, !tbaa !51 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.y = load float, ptr %i.x, align 4, !tbaa !51 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aa = load float, ptr %i.z, align 8, !tbaa !51 ; 3 uses
  %i.ab = load <2 x float>, ptr %3, align 8, !tbaa !51 ; 2 uses
  %i.ac = load float, ptr %i.q, align 4, !tbaa !51 ; 2 uses
  %i.ad = load float, ptr %i.p, align 8, !tbaa !51 ; 2 uses
  %i.ae = load float, ptr %i.s, align 8, !tbaa !51 ; 2 uses
  %i.af = load <2 x float>, ptr %i.f, align 8, !tbaa !51 ; 2 uses
  %i.ag = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = shufflevector <2 x float> %i.ab, <2 x float> %i.af, <2 x i32> <i32 1, i32 3>
  %i.aj = fmul <2 x float> %i.ah, %i.ai
  %i.ak = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = shufflevector <2 x float> %i.ab, <2 x float> %i.af, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.an = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.am, <2 x float> %i.aj)
  %i.ao = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fmul float %i.ac, %i.y
  %i.ar = call float @llvm.fmuladd.f32(float %i.ad, float %i.w, float %i.aq)
  %i.as = call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.aa, float %i.ar)
  %i.at = load <2 x float>, ptr %i.i, align 8, !tbaa !51
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.av = load float, ptr %i.au, align 8, !tbaa !51
  %i.aw = fadd float %i.as, %i.av
  %.sroa.3.12.vec.insert.i4.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aw, i64 0
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  store <2 x float> %.sroa.3.12.vec.insert.i4.i, ptr %.sroa.44.0..sroa_idx, align 4, !tbaa !52
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bb = load <2 x float>, ptr %i.r, align 4, !tbaa !51 ; 2 uses
  %i.bc = load <4 x float>, ptr %i.t, align 8
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.be = load <2 x float>, ptr %i.u, align 4, !tbaa !51 ; 2 uses
  %i.bf = load float, ptr %i.v, align 8, !tbaa !51
  %i.bg = shufflevector <2 x float> %i.bb, <2 x float> %i.be, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.bg, <2 x float> %i.an)
  %i.bi = fadd <2 x float> %i.bh, %i.at
  store <2 x float> %i.bi, ptr %i.ax, align 4
  %i.bj = load float, ptr %i.az, align 4, !tbaa !51 ; 2 uses
  %i.bk = load float, ptr %i.ay, align 8, !tbaa !51 ; 2 uses
  %i.bl = load float, ptr %i.ba, align 8, !tbaa !51 ; 2 uses
  %i.bm = shufflevector <2 x float> %i.bb, <2 x float> %i.be, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bn = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x float> %i.bm, %i.bo
  %i.bq = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.br, <2 x float> %i.bp)
  %i.bt = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.bu, <2 x float> %i.bs)
  %i.bw = fmul float %i.y, %i.bj
  %i.bx = call float @llvm.fmuladd.f32(float %i.w, float %i.bk, float %i.bw)
  %i.by = call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.bl, float %i.bx)
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.by, i64 0
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 52
  store <2 x float> %i.bv, ptr %i.bz, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 60
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !52
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.cd = load float, ptr %i.cb, align 4, !tbaa !51 ; 2 uses
  %i.ce = load float, ptr %i.ca, align 8, !tbaa !51 ; 2 uses
  %i.cf = load float, ptr %i.cc, align 8, !tbaa !51 ; 2 uses
  %i.cg = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x float> %i.bm, %i.ch
  %i.cj = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.ck, <2 x float> %i.ci)
  %i.cm = insertelement <2 x float> %i.bd, float %i.bf, i64 1
  %i.cn = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.co, <2 x float> %i.cl)
  %i.cq = fmul float %i.y, %i.cd
  %i.cr = call float @llvm.fmuladd.f32(float %i.w, float %i.ce, float %i.cq)
  %i.cs = call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.cf, float %i.cr)
  %.sroa.3.12.vec.insert.i14 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cs, i64 0
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 68
  store <2 x float> %i.cp, ptr %i.ct, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 76
  store <2 x float> %.sroa.3.12.vec.insert.i14, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16btRaycastVehicle20updateWheelTransformEib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #7 align 2 {
bb.a:
  %3 = alloca %class.btMatrix3x3, align 8         ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [296 x i8], ptr %i.b, i64 %i.c ; 24 uses
  tail call void @_ZN16btRaycastVehicle23updateWheelTransformsWSER11btWheelInfob(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(296) %i.d, i1 noundef zeroext %2)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.h = load float, ptr %i.g, align 4, !tbaa !51 ; 4 uses
  %i.i = fneg float %i.h                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 236
  %i.n = load float, ptr %i.m, align 4, !tbaa !70
  %i.o = fmul float %i.n, 5.000000e-01            ; 2 uses
  %i.p = tail call noundef float @sinf(float noundef %i.o) #20
  %i.q = tail call noundef float @cosf(float noundef %i.o) #20 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.s = load float, ptr %i.r, align 8, !tbaa !71
  %i.t = fmul float %i.s, -5.000000e-01           ; 2 uses
  %i.u = tail call noundef float @sinf(float noundef %i.t) #20
  %i.v = tail call noundef float @cosf(float noundef %i.t) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.x = load i32, ptr %i.w, align 8, !tbaa !47
  %i.y = sext i32 %i.x to i64                     ; 3 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %3, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.y
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.y
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !48
  %i.ag = sext i32 %i.af to i64                   ; 3 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ag
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ag
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !49
  %i.am = sext i32 %i.al to i64                   ; 3 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %3, i64 %i.am
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.am
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.am
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %4 = load <2 x float>, ptr %i.j, align 4, !tbaa !51 ; 3 uses
  %5 = extractelement <2 x float> %4, i64 0       ; 3 uses
  %6 = fneg float %5
  %7 = load <2 x float>, ptr %i.l, align 8, !tbaa !51 ; 4 uses
  %i.av = load float, ptr %i.k, align 4, !tbaa !51 ; 3 uses
  %i.aw = fneg float %i.av
  store float %i.aw, ptr %i.ad, align 4, !tbaa !51
  %i.ax = load <2 x float>, ptr %i.e, align 4, !tbaa !51 ; 4 uses
  %i.ay = load float, ptr %i.f, align 8, !tbaa !51 ; 3 uses
  %8 = extractelement <2 x float> %i.ax, i64 0    ; 2 uses
  %9 = fneg float %8                              ; 3 uses
  %10 = fneg float %i.ay                          ; 3 uses
  %i.az = extractelement <2 x float> %7, i64 0    ; 3 uses
  %i.ba = fneg float %i.az
  %11 = fmul float %i.h, %i.az
  %12 = tail call float @llvm.fmuladd.f32(float %10, float %i.av, float %11) ; 3 uses
  %13 = fmul float %8, %i.av
  %14 = tail call float @llvm.fmuladd.f32(float %i.i, float %5, float %13) ; 3 uses
  %i.bb = fmul float %i.ay, %5
  %i.bc = tail call float @llvm.fmuladd.f32(float %9, float %i.az, float %i.bb) ; 3 uses
  %i.bd = fmul float %14, %14
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %12, float %i.bd)
  %i.be = tail call noundef float @llvm.fmuladd.f32(float %i.bc, float %i.bc, float %15)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.be)
  %16 = fdiv float 1.000000e+00, %sqrt.i.i        ; 3 uses
  %17 = fmul float %12, %16
  %i.bf = fmul float %14, %16
  %i.bg = fmul float %i.bc, %16
  %18 = shufflevector <2 x float> %i.ax, <2 x float> %7, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bh = fmul <2 x float> %18, %18
  %i.bi = shufflevector <2 x float> %i.ax, <2 x float> %4, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bi, <2 x float> %i.bh)
  %i.bk = insertelement <2 x float> %7, float %i.h, i64 0 ; 2 uses
  %19 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.bk, <2 x float> %i.bj)
  %20 = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %19)
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <3 x i32> <i32 0, i32 0, i32 1>
  %22 = insertelement <3 x float> poison, float %i.p, i64 0
  %23 = insertelement <3 x float> %22, float %i.u, i64 2
  %24 = shufflevector <3 x float> %23, <3 x float> poison, <3 x i32> <i32 0, i32 0, i32 2>
  %25 = fdiv <3 x float> %24, %21                 ; 3 uses
  %26 = insertelement <3 x float> poison, float %9, i64 0
  %27 = shufflevector <2 x float> %4, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %28 = shufflevector <3 x float> %26, <3 x float> %27, <3 x i32> <i32 0, i32 0, i32 3>
  %29 = fmul <3 x float> %28, %25                 ; 8 uses
  %30 = insertelement <3 x float> poison, float %10, i64 0
  %31 = shufflevector <3 x float> %30, <3 x float> %27, <3 x i32> <i32 0, i32 0, i32 4>
  %32 = fmul <3 x float> %31, %25                 ; 7 uses
  %33 = insertelement <3 x float> poison, float %i.i, i64 0
  %34 = shufflevector <2 x float> %7, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %35 = shufflevector <3 x float> %33, <3 x float> %34, <3 x i32> <i32 0, i32 0, i32 4>
  %36 = fmul <3 x float> %35, %25                 ; 5 uses
  %37 = fmul <3 x float> %32, %32
  %38 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %29, <3 x float> %29, <3 x float> %37)
  %39 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %36, <3 x float> %36, <3 x float> %38)
  %40 = insertelement <3 x float> poison, float %i.q, i64 0
  %41 = insertelement <3 x float> %40, float %i.v, i64 2
  %42 = shufflevector <3 x float> %41, <3 x float> poison, <3 x i32> <i32 0, i32 0, i32 2> ; 3 uses
  %43 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %42, <3 x float> %42, <3 x float> %39)
  %44 = fdiv <3 x float> splat (float 2.000000e+00), %43 ; 2 uses
  %45 = extractelement <3 x float> %32, i64 0
  %46 = fmul <3 x float> %29, %44                 ; 3 uses
  %47 = extractelement <3 x float> %29, i64 2
  %foldExtExtBinop = fmul <3 x float> %29, %46
  %48 = extractelement <3 x float> %foldExtExtBinop, i64 2 ; 2 uses
  %foldExtExtBinop103 = fmul <3 x float> %29, %46
  %49 = extractelement <3 x float> %foldExtExtBinop103, i64 0 ; 2 uses
  %50 = extractelement <3 x float> %36, i64 2
  %51 = extractelement <3 x float> %36, i64 0
  %i.bl = extractelement <3 x float> %32, i64 2
  %52 = fmul <3 x float> %42, %46                 ; 4 uses
  %53 = shufflevector <3 x float> %32, <3 x float> poison, <3 x i32> <i32 poison, i32 0, i32 2>
  store float %6, ptr %i.z, align 4, !tbaa !51
  store float %i.ba, ptr %i.ab, align 4, !tbaa !51
  store float %9, ptr %i.ah, align 4, !tbaa !51
  store float %10, ptr %i.ai, align 4, !tbaa !51
  store float %i.i, ptr %i.aj, align 4, !tbaa !51
  store float %17, ptr %i.an, align 4, !tbaa !51
  store float %i.bf, ptr %i.ao, align 4, !tbaa !51
  store float %i.bg, ptr %i.ap, align 4, !tbaa !51
  %54 = load <2 x float>, ptr %i.aa, align 8, !tbaa !51, !noalias !107 ; 4 uses
  %i.bm = extractelement <2 x float> %54, i64 0
  %55 = load <2 x float>, ptr %3, align 8, !tbaa !51, !noalias !107 ; 4 uses
  %56 = extractelement <2 x float> %55, i64 0
  %57 = load <2 x float>, ptr %i.ac, align 8, !tbaa !51, !noalias !107 ; 4 uses
  %58 = extractelement <2 x float> %57, i64 0
  %59 = extractelement <2 x float> %57, i64 1
  %60 = load float, ptr %i.ar, align 8, !tbaa !51, !noalias !107
  %61 = load float, ptr %i.as, align 8, !tbaa !51, !noalias !107
  %62 = load float, ptr %i.at, align 8, !tbaa !51, !noalias !107 ; 3 uses
  store float 0.000000e+00, ptr %.sroa.639.0..sroa_idx, align 4, !tbaa !52
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %.sroa.1141.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  store float 0.000000e+00, ptr %.sroa.1141.16..sroa_idx, align 4, !tbaa !52
  %63 = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %64 = shufflevector <3 x float> %36, <3 x float> poison, <2 x i32> <i32 0, i32 2>
  %65 = shufflevector <3 x float> %44, <3 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %66 = fmul <2 x float> %64, %65                 ; 5 uses
  %67 = shufflevector <3 x float> %32, <3 x float> poison, <2 x i32> <i32 0, i32 2>
  %68 = fmul <2 x float> %67, %65                 ; 3 uses
  %i.bn = extractelement <2 x float> %68, i64 1   ; 2 uses
  %69 = fmul float %i.bl, %i.bn                   ; 2 uses
  %i.bo = extractelement <2 x float> %68, i64 0   ; 2 uses
  %70 = fmul float %45, %i.bo                     ; 2 uses
  %i.bp = extractelement <2 x float> %66, i64 0
  %71 = fmul float %51, %i.bp                     ; 2 uses
  %72 = fadd float %70, %71
  %73 = insertelement <2 x float> poison, float %i.q, i64 0
  %74 = insertelement <2 x float> %73, float %i.v, i64 1
  %75 = fmul <2 x float> %74, %66                 ; 4 uses
  %76 = shufflevector <3 x float> %29, <3 x float> poison, <2 x i32> <i32 0, i32 2>
  %77 = fmul <2 x float> %76, %68                 ; 4 uses
  %foldExtExtBinop105.a = fsub <2 x float> %77, %75 ; 2 uses
  %78 = shufflevector <2 x float> %foldExtExtBinop105.a, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %79 = extractelement <2 x float> %foldExtExtBinop105.a, i64 0
  %80 = fmul float %i.v, %i.bn                    ; 2 uses
  %81 = extractelement <2 x float> %66, i64 1     ; 2 uses
  %82 = fmul float %50, %81                       ; 2 uses
  %83 = fadd float %69, %82
  %84 = fmul float %i.q, %i.bo                    ; 2 uses
  %85 = fmul float %47, %81                       ; 2 uses
  %86 = fadd float %49, %71
  %i.bq = fsub float 1.000000e+00, %86            ; 2 uses
  %87 = shufflevector <2 x float> %66, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %88 = shufflevector <3 x float> %87, <3 x float> %53, <3 x i32> <i32 0, i32 4, i32 5>
  %89 = shufflevector <3 x float> %32, <3 x float> %87, <3 x i32> <i32 0, i32 3, i32 4>
  %90 = fmul <3 x float> %88, %89                 ; 4 uses
  %i.br = fadd float %48, %69
  %foldExtExtBinop107 = fadd <3 x float> %90, %52 ; 2 uses
  %91 = shufflevector <3 x float> %foldExtExtBinop107, <3 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %92 = extractelement <3 x float> %foldExtExtBinop107, i64 0
  %93 = fadd float %49, %70
  %94 = fsub float 1.000000e+00, %93              ; 2 uses
  %95 = fadd <2 x float> %77, %75                 ; 3 uses
  %96 = fsub <2 x float> %77, %75                 ; 2 uses
  %97 = shufflevector <2 x float> %95, <2 x float> %96, <2 x i32> <i32 0, i32 3>
  %98 = fadd float %85, %80                       ; 3 uses
  %99 = fadd float %48, %82
  %foldExtExtBinop109 = fsub <3 x float> %90, %52
  %i.bs = extractelement <3 x float> %foldExtExtBinop109, i64 2 ; 3 uses
  %100 = fsub <3 x float> %90, %52
  %101 = fadd <3 x float> %90, %52                ; 2 uses
  %102 = shufflevector <3 x float> %100, <3 x float> %101, <3 x i32> <i32 0, i32 1, i32 5> ; 2 uses
  %103 = fsub float 1.000000e+00, %i.br           ; 3 uses
  %i.bt = fmul float %79, %i.bs
  %104 = insertelement <2 x float> poison, float %i.bq, i64 0
  %105 = shufflevector <2 x float> %104, <2 x float> poison, <2 x i32> zeroinitializer
  %106 = fmul float %i.bq, %i.bs
  %107 = shufflevector <2 x float> %95, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bu = extractelement <2 x float> %95, i64 0
  %i.bv = tail call float @llvm.fmuladd.f32(float %98, float %i.bu, float %106)
  %108 = insertelement <3 x float> poison, float %103, i64 0
  %109 = insertelement <3 x float> poison, float %i.bv, i64 0
  %i.bw = fmul float %92, %i.bs
  %110 = shufflevector <3 x float> %29, <3 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %111 = shufflevector <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, <4 x float> %110, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %112 = shufflevector <2 x float> %66, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %113 = shufflevector <4 x float> <float 1.000000e+00, float 1.000000e+00, float -0.000000e+00, float poison>, <4 x float> %112, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %114 = fmul <4 x float> %111, %113              ; 2 uses
  %i.bx = extractelement <4 x float> %114, i64 3
  %115 = fadd float %i.bx, %84                    ; 2 uses
  %116 = fsub float 1.000000e+00, %83             ; 2 uses
  %117 = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %72, i64 0
  %i.by = insertelement <4 x float> %117, float %84, i64 3
  %118 = shufflevector <4 x float> %i.by, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %119 = fsub <4 x float> %114, %118              ; 4 uses
  %120 = fsub float 1.000000e+00, %99             ; 2 uses
  %foldExtExtBinop111 = fadd <2 x float> %77, %75 ; 2 uses
  %121 = shufflevector <2 x float> %foldExtExtBinop111, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bz = extractelement <2 x float> %foldExtExtBinop111, i64 1
  %.scalar = fsub float %85, %80
  %122 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar, i64 0 ; 2 uses
  %123 = shufflevector <2 x float> %122, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ca = extractelement <4 x float> %119, i64 0
  %i.cb = tail call float @llvm.fmuladd.f32(float %98, float %i.ca, float %i.bt)
  %i.cc = tail call noundef float @llvm.fmuladd.f32(float %103, float %115, float %i.cb) ; 3 uses
  %124 = insertelement <2 x float> poison, float %i.bz, i64 0
  %125 = insertelement <2 x float> %124, float %120, i64 1
  %126 = fmul <2 x float> %105, %125
  %127 = insertelement <2 x float> %107, float %116, i64 0
  %128 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %97, <2 x float> %127, <2 x float> %126)
  %129 = shufflevector <2 x float> %122, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %130 = shufflevector <3 x float> %108, <3 x float> %129, <3 x i32> <i32 0, i32 3, i32 poison>
  %131 = shufflevector <3 x float> %130, <3 x float> %102, <3 x i32> <i32 0, i32 1, i32 3>
  %132 = shufflevector <2 x float> %128, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %133 = shufflevector <3 x float> %109, <3 x float> %132, <3 x i32> <i32 0, i32 3, i32 4>
  %134 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %102, <3 x float> %131, <3 x float> %133) ; 6 uses
  %135 = shufflevector <3 x float> %134, <3 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %136 = shufflevector <4 x float> %78, <4 x float> %135, <4 x i32> <i32 0, i32 poison, i32 6, i32 poison>
  %137 = shufflevector <4 x float> %136, <4 x float> %91, <4 x i32> <i32 0, i32 poison, i32 2, i32 4> ; 2 uses
  %138 = shufflevector <4 x float> %137, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.cd = insertelement <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, float %120, i64 0
  %139 = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %140 = fmul <4 x float> %138, %139
  %141 = shufflevector <2 x float> %96, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 1>
  %i.ce = insertelement <4 x float> %141, float 0.000000e+00, i64 2
  %142 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ce, <4 x float> %119, <4 x float> %140)
  %143 = shufflevector <3 x float> %134, <3 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 poison>
  %144 = shufflevector <4 x float> %143, <4 x float> %137, <4 x i32> <i32 4, i32 4, i32 2, i32 7>
  %145 = shufflevector <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x float> %121, <4 x i32> <i32 5, i32 1, i32 poison, i32 poison>
  %146 = shufflevector <4 x float> %145, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %147 = fmul <4 x float> %144, %146
  %i.cf = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %116, i64 0
  %148 = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %149 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %148, <4 x float> %119, <4 x float> %147)
  %150 = extractelement <4 x float> %119, i64 3
  %151 = tail call float @llvm.fmuladd.f32(float %98, float %150, float %i.bw)
  %152 = shufflevector <3 x float> %101, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 poison, i32 2>
  %153 = insertelement <4 x float> %152, float 0.000000e+00, i64 2
  %154 = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, float %115, i64 0
  %i.cg = insertelement <4 x float> %154, float %94, i64 3
  %155 = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3> ; 2 uses
  %156 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %153, <4 x float> %155, <4 x float> %142) ; 3 uses
  %i.ch = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %123, <4 x float> %155, <4 x float> %149) ; 3 uses
  %157 = tail call noundef float @llvm.fmuladd.f32(float %103, float %94, float %151) ; 2 uses
  %i.ci = extractelement <4 x float> %156, i64 0
  %158 = fmul float %i.ci, %i.bm
  %159 = extractelement <4 x float> %i.ch, i64 0
  %160 = tail call float @llvm.fmuladd.f32(float %56, float %159, float %158)
  %i.cj = tail call noundef float @llvm.fmuladd.f32(float %58, float %i.cc, float %160)
  %161 = shufflevector <2 x float> %54, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %162 = insertelement <2 x float> %161, float %61, i64 1
  %163 = shufflevector <2 x float> %162, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %164 = fmul <4 x float> %156, %163
  %165 = shufflevector <2 x float> %55, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ck = insertelement <2 x float> %165, float %60, i64 1
  %166 = shufflevector <2 x float> %i.ck, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %167 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %166, <4 x float> %i.ch, <4 x float> %164) ; 4 uses
  %i.cl = extractelement <4 x float> %167, i64 0
  %i.cm = tail call noundef float @llvm.fmuladd.f32(float %59, float %i.cc, float %i.cl)
  %168 = extractelement <4 x float> %167, i64 1
  %169 = tail call noundef float @llvm.fmuladd.f32(float %62, float %i.cc, float %168)
  %170 = shufflevector <3 x float> %134, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cn = fmul <2 x float> %170, %54
  %171 = shufflevector <3 x float> %134, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %172 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %55, <2 x float> %171, <2 x float> %i.cn)
  %i.co = shufflevector <3 x float> %134, <3 x float> poison, <2 x i32> zeroinitializer
  %i.cp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %57, <2 x float> %i.co, <2 x float> %172)
  %173 = extractelement <3 x float> %134, i64 0
  %174 = extractelement <4 x float> %167, i64 2
  %175 = tail call noundef float @llvm.fmuladd.f32(float %62, float %173, float %174)
  %176 = shufflevector <4 x float> %156, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %177 = fmul <2 x float> %176, %54
  %178 = shufflevector <4 x float> %i.ch, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %179 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %55, <2 x float> %178, <2 x float> %177)
  %180 = insertelement <2 x float> poison, float %157, i64 0
  %181 = shufflevector <2 x float> %180, <2 x float> poison, <2 x i32> zeroinitializer
  %182 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %57, <2 x float> %181, <2 x float> %179)
  %183 = extractelement <4 x float> %167, i64 3
  %184 = tail call noundef float @llvm.fmuladd.f32(float %62, float %157, float %183)
  store float %i.cj, ptr %i.aq, align 8
  store float %i.cm, ptr %.sroa.437.0..sroa_idx, align 4
  store float %169, ptr %.sroa.538.0..sroa_idx, align 8
  store <2 x float> %i.cp, ptr %i.au, align 8
  store float %175, ptr %.sroa.10.16..sroa_idx, align 8
  store <2 x float> %182, ptr %63, align 8
  %.sroa.1542.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store float %184, ptr %.sroa.1542.32..sroa_idx, align 8
  %.sroa.1643.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 140
  store float 0.000000e+00, ptr %.sroa.1643.32..sroa_idx, align 4, !tbaa !52
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.cs = load float, ptr %i.cr, align 8, !tbaa !51 ; 2 uses
  %i.ct = fmul float %i.h, %i.cs
  %i.cu = insertelement <2 x float> %i.ax, float %i.ay, i64 1
  %i.cv = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x float> %i.cu, %i.cw
  %i.cy = load <2 x float>, ptr %i.cq, align 4, !tbaa !51
  %i.cz = fadd <2 x float> %i.cy, %i.cx
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.db = load float, ptr %i.da, align 4, !tbaa !51
  %i.dc = fadd float %i.ct, %i.db
  %.sroa.3.12.vec.insert.i30 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dc, i64 0
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store <2 x float> %i.cz, ptr %i.dd, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store <2 x float> %.sroa.3.12.vec.insert.i30, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZNK16btRaycastVehicle19getWheelTransformWSEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, i32 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [296 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16btRaycastVehicle15resetSuspensionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !44
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw [296 x i8], ptr %i.e, i64 %indvars.iv ; 7 uses
  %i.g = tail call noundef float @_ZNK11btWheelInfo23getSuspensionRestLengthEv(ptr noundef nonnull align 8 dereferenceable(296) %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store float %i.g, ptr %i.h, align 8, !tbaa !72
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.j = load <2 x float>, ptr %i.i, align 4, !tbaa !51
  %i.k = fneg <2 x float> %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %i.m = load float, ptr %i.l, align 4, !tbaa !51
  %i.n = fneg float %i.m
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.n, i64 0
  store <2 x float> %i.k, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !52
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 280
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.o, align 8, !tbaa !51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !44
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %bb.b, label %._crit_edge, !llvm.loop !108

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

declare noundef float @_ZNK11btWheelInfo23getSuspensionRestLengthEv(ptr noundef nonnull align 8 dereferenceable(296)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZNK16btRaycastVehicle24getChassisWorldTransformEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN16btRaycastVehicle7rayCastER11btWheelInfo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(296) initializes((36, 85)) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %2 = alloca %"struct.btVehicleRaycaster::btVehicleRaycasterResult", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  store i8 0, ptr %i.a, align 4, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 11 uses
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
  %i.n = load float, ptr %i.i, align 4, !tbaa !51 ; 2 uses
  %i.o = load float, ptr %i.h, align 8, !tbaa !51 ; 2 uses
  %i.p = load float, ptr %i.j, align 8, !tbaa !51 ; 2 uses
  %i.q = shufflevector <2 x float> %i.k, <2 x float> %i.l, <2 x i32> <i32 1, i32 3>
  %i.r = insertelement <2 x float> poison, float %i.n, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x float> %i.q, %i.s
  %i.u = insertelement <2 x float> poison, float %i.o, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = shufflevector <2 x float> %i.k, <2 x float> %i.l, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.w, <2 x float> %i.t)
  %i.y = insertelement <2 x float> poison, float %i.p, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fmul float %.sroa.12.32.copyload, %i.n
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.o, float %.sroa.1085.32.copyload, float %i.aa)
  %i.ac = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %.sroa.13.32.copyload, float %i.ab)
  %i.ad = fadd float %.sroa.17.48.copyload, %i.ac
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ad, i64 0
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
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.ak, <2 x float> %i.x)
  %i.am = fadd <2 x float> %i.m, %i.al
  store <2 x float> %i.am, ptr %i.ae, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.44.0..sroa_idx.i, align 4, !tbaa !52
  %i.an = load float, ptr %i.ag, align 4, !tbaa !51 ; 2 uses
  %i.ao = load float, ptr %i.af, align 8, !tbaa !51 ; 2 uses
  %i.ap = load float, ptr %i.ah, align 8, !tbaa !51 ; 2 uses
  %i.aq = shufflevector <2 x float> %i.ai, <2 x float> %i.aj, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ar = insertelement <2 x float> poison, float %i.an, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x float> %i.aq, %i.as
  %i.au = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.av, <2 x float> %i.at)
  %i.ax = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.ay, <2 x float> %i.aw)
  %i.ba = fmul float %.sroa.12.32.copyload, %i.an
  %i.bb = tail call float @llvm.fmuladd.f32(float %.sroa.1085.32.copyload, float %i.ao, float %i.ba)
  %i.bc = tail call noundef float @llvm.fmuladd.f32(float %.sroa.13.32.copyload, float %i.ap, float %i.bb)
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bc, i64 0
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 4 uses
  store <2 x float> %i.az, ptr %i.bd, align 4
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 4 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !52
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bh = load float, ptr %i.bf, align 4, !tbaa !51 ; 2 uses
  %i.bi = load float, ptr %i.be, align 8, !tbaa !51 ; 2 uses
  %i.bj = load float, ptr %i.bg, align 8, !tbaa !51 ; 2 uses
  %i.bk = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x float> %i.aq, %i.bl
  %i.bn = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.bo, <2 x float> %i.bm)
  %i.bq = insertelement <2 x float> poison, float %.sroa.583.0.copyload, i64 0
  %i.br = insertelement <2 x float> %i.bq, float %.sroa.9.16.copyload, i64 1
  %i.bs = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.bt, <2 x float> %i.bp)
  %i.bv = fmul float %.sroa.12.32.copyload, %i.bh
  %i.bw = tail call float @llvm.fmuladd.f32(float %.sroa.1085.32.copyload, float %i.bi, float %i.bv)
  %i.bx = tail call noundef float @llvm.fmuladd.f32(float %.sroa.13.32.copyload, float %i.bj, float %i.bw)
  %.sroa.3.12.vec.insert.i14.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bx, i64 0
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 68
  store <2 x float> %i.bu, ptr %i.by, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 76
  store <2 x float> %.sroa.3.12.vec.insert.i14.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !52
  %i.bz = tail call noundef float @_ZNK11btWheelInfo23getSuspensionRestLengthEv(ptr noundef nonnull align 8 dereferenceable(296) %1)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.cb = load float, ptr %i.ca, align 8, !tbaa !73
  %i.cc = fadd float %i.bz, %i.cb                 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ce = load float, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !51
  %i.cf = fmul float %i.cc, %i.ce
  %i.cg = load <2 x float>, ptr %i.bd, align 4, !tbaa !51
  %i.ch = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = fmul <2 x float> %i.cg, %i.ci
  %i.ck = load <2 x float>, ptr %i.ae, align 4, !tbaa !51
  %i.cl = fadd <2 x float> %i.cj, %i.ck
end_hunk_0
begin_hunk_1_@_ZN25btDefaultVehicleRaycaster7castRayERK9btVector3S2_RN18btVehicleRaycaster24btVehicleRaycasterResultE:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16btCollisionWorld17RayResultCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18btVehicleRaycasterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN25btDefaultVehicleRaycasterD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN16btRaycastVehicle12updateActionEP16btCollisionWorldf(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, float noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(224) %0, float noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16btRaycastVehicle19setCoordinateSystemEiii(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %1, ptr %i.a, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 %2, ptr %i.b, align 4, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %3, ptr %i.c, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind
declare void @_ZN17btCollisionObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(372) dereferenceable(372)) unnamed_addr #14

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #16

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16btCollisionWorld24ClosestRayResultCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(100) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK16btCollisionWorld17RayResultCallback14needsCollisionEP17btBroadphaseProxy(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !144
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !94
  %i.e = and i32 %i.d, %i.b
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !93
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !145
  %i.j = and i32 %i.i, %i.g
  %i.k = icmp ne i32 %i.j, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ]
  ret i1 %i.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZN16btCollisionWorld24ClosestRayResultCallback15addSingleResultERNS_14LocalRayResultEb(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i1 noundef zeroext %2) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !148
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.b, ptr %i.c, align 8, !tbaa !91
  %i.d = load ptr, ptr %1, align 8, !tbaa !149    ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !92
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !53
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = load float, ptr %i.k, align 4, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.p = load float, ptr %i.o, align 4, !tbaa !51
  %i.q = load <2 x float>, ptr %i.h, align 4, !tbaa !51 ; 2 uses
  %i.r = load float, ptr %i.j, align 4, !tbaa !51 ; 2 uses
  %i.s = load float, ptr %i.i, align 8, !tbaa !51 ; 2 uses
  %i.t = load float, ptr %i.m, align 8, !tbaa !51 ; 2 uses
  %i.u = load <2 x float>, ptr %i.n, align 4, !tbaa !51 ; 2 uses
  %i.v = insertelement <2 x float> poison, float %i.r, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = shufflevector <2 x float> %i.q, <2 x float> %i.u, <2 x i32> <i32 1, i32 3>
  %i.y = fmul <2 x float> %i.w, %i.x
  %i.z = shufflevector <2 x float> %i.q, <2 x float> %i.u, <2 x i32> <i32 0, i32 2>
  %i.aa = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.ab, <2 x float> %i.y)
  %i.ad = insertelement <2 x float> poison, float %i.l, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.p, i64 1
  %i.af = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.ag, <2 x float> %i.ac)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !51
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.al = load float, ptr %i.ak, align 4, !tbaa !51
  %i.am = fmul float %i.r, %i.al
  %i.an = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.s, float %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !51
  %i.aq = tail call noundef float @llvm.fmuladd.f32(float %i.ap, float %i.t, float %i.an)
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aq, i64 0
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 68
  store <2 x float> %i.ah, ptr %i.ar, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.av = load float, ptr %i.a, align 8, !tbaa !148 ; 3 uses
  %i.aw = fsub float 1.000000e+00, %i.av          ; 2 uses
  %i.ax = load <2 x float>, ptr %i.at, align 4, !tbaa !51
  %i.ay = load <2 x float>, ptr %i.au, align 4, !tbaa !51
  %i.az = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x float> %i.ba, %i.ay
  %i.bc = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.ax, <2 x float> %i.bb)
  store <2 x float> %i.be, ptr %i.as, align 4, !tbaa !51
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !51
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !51
  %i.bj = fmul float %i.av, %i.bi
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.bg, float %i.bj)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 92
  store float %i.bk, ptr %i.bl, align 4, !tbaa !51
  %i.bm = load float, ptr %i.a, align 8, !tbaa !148
  ret float %i.bm
}

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !54}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"vtable pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"_ZTS18btAlignedAllocatorIP17btTypedConstraintLj16EE"}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"any p2 pointer", !13, i64 0}
!15 = !{!"p2 _ZTS17btTypedConstraint", !14, i64 0}
!16 = !{!"bool", !6, i64 0}
!17 = !{!"_ZTS20btAlignedObjectArrayIP17btTypedConstraintE", !12, i64 0, !7, i64 4, !7, i64 8, !15, i64 16, !16, i64 24}
!18 = !{i8 0, i8 2}
!19 = !{!"_ZTS18btAlignedAllocatorI9btVector3Lj16EE"}
!20 = !{!"p1 _ZTS9btVector3", !13, i64 0}
!21 = !{!"_ZTS20btAlignedObjectArrayI9btVector3E", !19, i64 0, !7, i64 4, !7, i64 8, !20, i64 16, !16, i64 24}
!22 = !{!21, !16, i64 24}
!23 = !{!21, !20, i64 16}
!24 = !{!21, !7, i64 4}
!25 = !{!21, !7, i64 8}
!26 = !{!"_ZTS18btAlignedAllocatorIfLj16EE"}
!27 = !{!"p1 float", !13, i64 0}
!28 = !{!"_ZTS20btAlignedObjectArrayIfE", !26, i64 0, !7, i64 4, !7, i64 8, !27, i64 16, !16, i64 24}
!29 = !{!28, !16, i64 24}
!30 = !{!28, !27, i64 16}
!31 = !{!28, !7, i64 4}
!32 = !{!28, !7, i64 8}
!33 = !{!"_ZTS17btActionInterface"}
!34 = !{!"p1 _ZTS18btVehicleRaycaster", !13, i64 0}
!35 = !{!"float", !6, i64 0}
!36 = !{!"p1 _ZTS11btRigidBody", !13, i64 0}
!37 = !{!"_ZTS18btAlignedAllocatorI11btWheelInfoLj16EE"}
!38 = !{!"p1 _ZTS11btWheelInfo", !13, i64 0}
!39 = !{!"_ZTS20btAlignedObjectArrayI11btWheelInfoE", !37, i64 0, !7, i64 4, !7, i64 8, !38, i64 16, !16, i64 24}
!40 = !{!"_ZTS16btRaycastVehicle", !33, i64 0, !21, i64 8, !21, i64 40, !28, i64 72, !28, i64 104, !7, i64 136, !7, i64 140, !34, i64 144, !35, i64 152, !35, i64 156, !35, i64 160, !36, i64 168, !7, i64 176, !7, i64 180, !7, i64 184, !39, i64 192}
!41 = !{!40, !34, i64 144}
!42 = !{!39, !16, i64 24}
!43 = !{!39, !38, i64 16}
!44 = !{!39, !7, i64 4}
!45 = !{!39, !7, i64 8}
!46 = !{!40, !36, i64 168}
!47 = !{!40, !7, i64 176}
!48 = !{!40, !7, i64 180}
!49 = !{!40, !7, i64 184}
!50 = !{!40, !35, i64 160}
!51 = !{!35, !35, i64 0}
!52 = !{!6, !6, i64 0}
!53 = !{i64 0, i64 16, !52}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{}
!56 = !{!"_ZTS9btVector3", !6, i64 0}
!57 = !{!"_ZTSN11btWheelInfo11RaycastInfoE", !56, i64 0, !56, i64 16, !35, i64 32, !56, i64 36, !56, i64 52, !56, i64 68, !16, i64 84, !13, i64 88}
!58 = !{!"_ZTS11btMatrix3x3", !6, i64 0}
!59 = !{!"_ZTS11btTransform", !58, i64 0, !56, i64 48}
!60 = !{!"_ZTS11btWheelInfo", !57, i64 0, !59, i64 96, !56, i64 160, !56, i64 176, !56, i64 192, !35, i64 208, !35, i64 212, !35, i64 216, !35, i64 220, !35, i64 224, !35, i64 228, !35, i64 232, !35, i64 236, !35, i64 240, !35, i64 244, !35, i64 248, !35, i64 252, !35, i64 256, !35, i64 260, !16, i64 264, !13, i64 272, !35, i64 280, !35, i64 284, !35, i64 288, !35, i64 292}
!61 = !{!60, !16, i64 84}
!62 = !{!"p1 _ZTS17btBroadphaseProxy", !13, i64 0}
!63 = !{!"p1 _ZTS16btCollisionShape", !13, i64 0}
!64 = !{!"_ZTS18btAlignedAllocatorIPK17btCollisionObjectLj16EE"}
!65 = !{!"p2 _ZTS17btCollisionObject", !14, i64 0}
!66 = !{!"_ZTS20btAlignedObjectArrayIPK17btCollisionObjectE", !64, i64 0, !7, i64 4, !7, i64 8, !65, i64 16, !16, i64 24}
!67 = !{!"_ZTS17btCollisionObject", !59, i64 8, !59, i64 72, !56, i64 136, !56, i64 152, !56, i64 168, !7, i64 184, !35, i64 188, !62, i64 192, !63, i64 200, !13, i64 208, !63, i64 216, !7, i64 224, !7, i64 228, !7, i64 232, !7, i64 236, !7, i64 240, !35, i64 244, !35, i64 248, !35, i64 252, !35, i64 256, !35, i64 260, !35, i64 264, !35, i64 268, !7, i64 272, !13, i64 280, !7, i64 288, !7, i64 292, !7, i64 296, !35, i64 300, !35, i64 304, !35, i64 308, !7, i64 312, !66, i64 320, !7, i64 352, !56, i64 356}
!68 = !{!"p1 _ZTS13btMotionState", !13, i64 0}
!69 = !{!"_ZTS11btRigidBody", !67, i64 0, !58, i64 372, !56, i64 420, !56, i64 436, !35, i64 452, !56, i64 456, !56, i64 472, !56, i64 488, !56, i64 504, !56, i64 520, !56, i64 536, !35, i64 552, !35, i64 556, !16, i64 560, !35, i64 564, !35, i64 568, !35, i64 572, !35, i64 576, !35, i64 580, !35, i64 584, !68, i64 592, !17, i64 600, !7, i64 632, !7, i64 636, !56, i64 640, !56, i64 656, !56, i64 672, !56, i64 688, !56, i64 704, !56, i64 720, !7, i64 736, !7, i64 740}
!70 = !{!60, !35, i64 236}
!71 = !{!60, !35, i64 240}
!72 = !{!60, !35, i64 32}
!73 = !{!60, !35, i64 216}
!74 = !{!"_ZTSN18btVehicleRaycaster24btVehicleRaycasterResultE", !56, i64 0, !56, i64 16, !35, i64 32}
!75 = !{!74, !35, i64 32}
!76 = !{!60, !13, i64 88}
!77 = !{!60, !35, i64 284}
!78 = !{!60, !35, i64 280}
!79 = !{!69, !35, i64 452}
!80 = !{!60, !35, i64 220}
!81 = !{!60, !35, i64 288}
!82 = !{!60, !35, i64 256}
!83 = !{!60, !35, i64 260}
!84 = !{!"_ZTS19btWheelContactPoint", !36, i64 0, !36, i64 8, !56, i64 16, !56, i64 32, !35, i64 48, !35, i64 52}
!85 = !{!84, !36, i64 0}
!86 = !{!84, !36, i64 8}
!87 = !{!84, !35, i64 52}
!88 = !{!84, !35, i64 48}
!89 = !{!"p1 _ZTS17btCollisionObject", !13, i64 0}
!90 = !{!"_ZTSN16btCollisionWorld17RayResultCallbackE", !35, i64 8, !89, i64 16, !7, i64 24, !7, i64 28, !7, i64 32}
!91 = !{!90, !35, i64 8}
!92 = !{!90, !89, i64 16}
!93 = !{!90, !7, i64 24}
!94 = !{!90, !7, i64 28}
!95 = !{!"branch_weights", i32 1, i32 1048575}
!96 = !{!17, !15, i64 16}
!97 = distinct !{!97, !54}
!98 = !{!"_ZTSN16btRaycastVehicle15btVehicleTuningE", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20}
!99 = !{!98, !35, i64 12}
!100 = !{!98, !35, i64 20}
!101 = !{!16, !16, i64 0}
!102 = !{!13, !13, i64 0}
!103 = !{i64 0, i64 16, !52, i64 16, i64 16, !52, i64 32, i64 4, !51, i64 36, i64 16, !52, i64 52, i64 16, !52, i64 68, i64 16, !52, i64 84, i64 1, !101, i64 88, i64 8, !102}
!104 = !{!69, !68, i64 592}
!105 = distinct !{!105, !"_ZmlRK11btMatrix3x3S1_"}
!106 = distinct !{!106, !105, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!107 = !{!106}
!108 = distinct !{!108, !54}
!109 = !{!60, !35, i64 212}
!110 = distinct !{!110, !54}
!111 = distinct !{!111, !54}
!112 = distinct !{!112, !54}
!113 = distinct !{!113, !54}
!114 = !{!60, !35, i64 252}
!115 = !{!60, !35, i64 244}
!116 = distinct !{!116, !54}
!117 = distinct !{!117, !54, !129, !130}
!118 = distinct !{!118, !131}
!119 = distinct !{!119, !54, !129}
!120 = distinct !{!120, !54, !129, !130}
!121 = distinct !{!121, !131}
!122 = distinct !{!122, !54, !129}
!123 = distinct !{!123, !54, !129, !130}
!124 = distinct !{!124, !54, !129}
!125 = distinct !{!125, !54}
!126 = distinct !{!126, !54}
!127 = distinct !{!127, !54}
!128 = distinct !{!128, !54}
!129 = !{!"llvm.loop.isvectorized", i32 1}
!130 = !{!"llvm.loop.unroll.runtime.disable"}
!131 = !{!"llvm.loop.unroll.disable"}
!132 = !{!60, !35, i64 292}
!133 = !{!60, !35, i64 232}
!134 = !{!60, !35, i64 248}
!135 = distinct !{!135, !54}
!136 = !{!90, !7, i64 32}
!137 = !{!"_ZTS18btVehicleRaycaster"}
!138 = !{!"p1 _ZTS15btDynamicsWorld", !13, i64 0}
!139 = !{!"_ZTS25btDefaultVehicleRaycaster", !137, i64 0, !138, i64 8}
!140 = !{!139, !138, i64 8}
!141 = !{!67, !7, i64 272}
!142 = !{!67, !7, i64 224}
!143 = !{!"_ZTS17btBroadphaseProxy", !13, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !56, i64 20, !56, i64 36}
!144 = !{!143, !7, i64 8}
!145 = !{!143, !7, i64 12}
!146 = !{!"p1 _ZTSN16btCollisionWorld14LocalShapeInfoE", !13, i64 0}
!147 = !{!"_ZTSN16btCollisionWorld14LocalRayResultE", !89, i64 0, !146, i64 8, !56, i64 16, !35, i64 32}
!148 = !{!147, !35, i64 32}
!149 = !{!147, !89, i64 0}
end_hunk_1
