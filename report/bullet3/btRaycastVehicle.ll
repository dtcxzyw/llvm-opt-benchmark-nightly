Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btRaycastVehicle?download=true
inline.NumInlined: 513
inline.NumDeleted: 147
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN16btRaycastVehicle8addWheelERK9btVector3S2_S2_ffRKNS_15btVehicleTuningEb:bb.a
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.cx, <2 x float> %i.cv)
  %i.cz = fmul float %.sroa.1231.32.copyload, %i.cn
  %i.da = tail call float @llvm.fmuladd.f32(float %.sroa.1030.32.copyload, float %i.cm, float %i.cz)
  %i.db = tail call noundef float @llvm.fmuladd.f32(float %.sroa.1332.32.copyload, float %i.co, float %i.da)
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.db, i64 0
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ay, i64 52
  store <2 x float> %i.cy, ptr %i.dc, align 4
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 60
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !52
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ay, i64 192
  %i.de = getelementptr inbounds nuw i8, ptr %i.ay, i64 196
  %i.df = getelementptr inbounds nuw i8, ptr %i.ay, i64 200
  %i.dg = load float, ptr %i.dd, align 4, !tbaa !51 ; 2 uses
  %i.dh = load float, ptr %i.de, align 4, !tbaa !51 ; 2 uses
  %i.di = load float, ptr %i.df, align 4, !tbaa !51 ; 2 uses
  %i.dj = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = fmul <2 x float> %i.cp, %i.dk
  %i.dm = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.dn, <2 x float> %i.dl)
  %i.dp = insertelement <2 x float> poison, float %.sroa.5.0.copyload, i64 0
  %i.dq = insertelement <2 x float> %i.dp, float %.sroa.9.16.copyload, i64 1
  %i.dr = insertelement <2 x float> poison, float %i.di, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dq, <2 x float> %i.ds, <2 x float> %i.do)
  %i.du = fmul float %.sroa.1231.32.copyload, %i.dh
  %i.dv = tail call float @llvm.fmuladd.f32(float %.sroa.1030.32.copyload, float %i.dg, float %i.du)
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
  %i.ab = load float, ptr %i.p, align 8, !tbaa !51 ; 2 uses
  %i.ac = load float, ptr %i.q, align 4, !tbaa !51 ; 2 uses
  %i.ad = load <2 x float>, ptr %3, align 8, !tbaa !51 ; 2 uses
  %i.ae = load float, ptr %i.s, align 8, !tbaa !51 ; 2 uses
  %i.af = load <2 x float>, ptr %i.f, align 8, !tbaa !51 ; 2 uses
  %i.ag = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = shufflevector <2 x float> %i.ad, <2 x float> %i.af, <2 x i32> <i32 1, i32 3>
  %i.aj = fmul <2 x float> %i.ah, %i.ai
  %i.ak = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = shufflevector <2 x float> %i.ad, <2 x float> %i.af, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.an = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.am, <2 x float> %i.aj)
  %i.ao = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fmul float %i.ac, %i.y
  %i.ar = call float @llvm.fmuladd.f32(float %i.ab, float %i.w, float %i.aq)
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
  %i.bj = load float, ptr %i.ay, align 8, !tbaa !51 ; 2 uses
  %i.bk = load float, ptr %i.az, align 4, !tbaa !51 ; 2 uses
  %i.bl = load float, ptr %i.ba, align 8, !tbaa !51 ; 2 uses
  %i.bm = shufflevector <2 x float> %i.bb, <2 x float> %i.be, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bn = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x float> %i.bm, %i.bo
  %i.bq = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.br, <2 x float> %i.bp)
  %i.bt = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.bu, <2 x float> %i.bs)
  %i.bw = fmul float %i.y, %i.bk
  %i.bx = call float @llvm.fmuladd.f32(float %i.w, float %i.bj, float %i.bw)
  %i.by = call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.bl, float %i.bx)
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.by, i64 0
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 52
  store <2 x float> %i.bv, ptr %i.bz, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 60
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !52
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.cd = load float, ptr %i.ca, align 8, !tbaa !51 ; 2 uses
  %i.ce = load float, ptr %i.cb, align 4, !tbaa !51 ; 2 uses
  %i.cf = load float, ptr %i.cc, align 8, !tbaa !51 ; 2 uses
  %i.cg = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x float> %i.bm, %i.ch
  %i.cj = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.ck, <2 x float> %i.ci)
  %i.cm = insertelement <2 x float> %i.bd, float %i.bf, i64 1
  %i.cn = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.co, <2 x float> %i.cl)
  %i.cq = fmul float %i.y, %i.ce
  %i.cr = call float @llvm.fmuladd.f32(float %i.w, float %i.cd, float %i.cq)
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
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %.sroa.1141.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.aw = load float, ptr %i.k, align 4, !tbaa !51 ; 4 uses
  %i.ax = fneg float %i.aw
  store float %i.ax, ptr %i.ad, align 4, !tbaa !51
  %i.ay = load <2 x float>, ptr %i.e, align 4, !tbaa !51 ; 4 uses
  %i.az = load float, ptr %i.f, align 8, !tbaa !51 ; 3 uses
  %i.ba = extractelement <2 x float> %i.ay, i64 0 ; 2 uses
  %i.bb = fneg float %i.ba                        ; 3 uses
  %i.bc = fneg float %i.az                        ; 3 uses
  %i.bd = load <2 x float>, ptr %i.j, align 4, !tbaa !51 ; 3 uses
  %i.be = load float, ptr %i.l, align 8, !tbaa !51 ; 3 uses
  %i.bf = fneg float %i.be
  %i.bg = fmul float %i.h, %i.be
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.aw, float %i.bg) ; 3 uses
  %i.bi = fmul float %i.ba, %i.aw
  %i.bj = extractelement <2 x float> %i.bd, i64 0 ; 3 uses
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.i, float %i.bj, float %i.bi) ; 3 uses
  %i.bl = fneg float %i.bj
  %i.bm = fmul float %i.az, %i.bj
  %i.bn = fmul float %i.bk, %i.bk
  %i.bo = shufflevector <2 x float> %i.ay, <2 x float> %i.bd, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.bp = fmul <2 x float> %i.bo, %i.bo
  %i.bq = shufflevector <2 x float> %i.ay, <2 x float> %i.bd, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.bq, <2 x float> %i.bp)
  %i.bs = insertelement <2 x float> poison, float %i.h, i64 0
  %i.bt = insertelement <2 x float> %i.bs, float %i.aw, i64 1 ; 3 uses
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.bt, <2 x float> %i.br)
  %i.bv = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.bu)
  %i.bw = insertelement <2 x float> poison, float %i.p, i64 0
  %i.bx = insertelement <2 x float> %i.bw, float %i.u, i64 1
  %i.by = fdiv <2 x float> %i.bx, %i.bv           ; 3 uses
  %i.bz = insertelement <2 x float> %i.bq, float %i.bb, i64 0
  %i.ca = fmul <2 x float> %i.by, %i.bz           ; 7 uses
  %i.cb = insertelement <2 x float> %i.bo, float %i.bc, i64 0
  %i.cc = fmul <2 x float> %i.by, %i.cb           ; 7 uses
  %i.cd = insertelement <2 x float> %i.bt, float %i.i, i64 0
  %i.ce = fmul <2 x float> %i.by, %i.cd           ; 4 uses
  %i.cf = fmul <2 x float> %i.cc, %i.cc
  %i.cg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.ca, <2 x float> %i.cf)
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.ce, <2 x float> %i.cg)
  %i.ci = insertelement <2 x float> poison, float %i.q, i64 0
  %i.cj = insertelement <2 x float> %i.ci, float %i.v, i64 1 ; 3 uses
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.cj, <2 x float> %i.ch)
  %i.cl = fdiv <2 x float> splat (float 2.000000e+00), %i.ck ; 4 uses
  %foldExtExtBinop.a = fmul <2 x float> %i.cc, %i.cl ; 3 uses
  %i.cm = extractelement <2 x float> %foldExtExtBinop.a, i64 0
  %i.cn = fmul float %i.q, %i.cm                  ; 2 uses
  %i.co = fmul <2 x float> %i.ce, %i.cl           ; 5 uses
  %i.cp = extractelement <2 x float> %i.co, i64 0
  %4 = fmul float %i.q, %i.cp                     ; 2 uses
  %i.cq = fmul <2 x float> %i.ca, %i.cl           ; 2 uses
  %foldExtExtBinop103 = fmul <2 x float> %i.ca, %foldExtExtBinop.a
  %5 = extractelement <2 x float> %foldExtExtBinop103, i64 0 ; 2 uses
  %foldExtExtBinop105 = fmul <2 x float> %i.ca, %i.co
  %i.cr = extractelement <2 x float> %foldExtExtBinop105, i64 0 ; 2 uses
  %foldExtExtBinop107 = fmul <2 x float> %i.cc, %foldExtExtBinop.a ; 2 uses
  %6 = fadd float %i.cr, %i.cn                    ; 3 uses
  %7 = fadd float %5, %4                          ; 3 uses
  %8 = fmul <2 x float> %i.cj, %i.cq              ; 4 uses
  %9 = fmul <2 x float> %i.cc, %i.co              ; 4 uses
  %foldExtExtBinop109 = fsub <2 x float> %9, %8
  %10 = extractelement <2 x float> %foldExtExtBinop109, i64 0 ; 3 uses
  %11 = fsub float %i.cr, %i.cn                   ; 3 uses
  %foldExtExtBinop111 = fmul <2 x float> %i.cc, %i.cl ; 2 uses
  %i.cs = extractelement <2 x float> %foldExtExtBinop111, i64 1 ; 2 uses
  %12 = fmul float %i.v, %i.cs                    ; 2 uses
  %i.ct = extractelement <2 x float> %i.co, i64 1 ; 2 uses
  %13 = fmul float %i.v, %i.ct                    ; 2 uses
  %i.cu = extractelement <2 x float> %i.ca, i64 1 ; 2 uses
  %i.cv = fmul float %i.cu, %i.cs                 ; 2 uses
  %14 = fmul float %i.cu, %i.ct                   ; 2 uses
  %foldExtExtBinop113 = fmul <2 x float> %i.cc, %foldExtExtBinop111 ; 2 uses
  %15 = fsub float %i.cv, %13                     ; 3 uses
  %16 = fadd float %14, %12                       ; 3 uses
  %i.cw = fmul <2 x float> %i.ce, %i.co           ; 3 uses
  %foldExtExtBinop115 = fadd <2 x float> %foldExtExtBinop107, %i.cw
  %17 = extractelement <2 x float> %foldExtExtBinop115, i64 0
  %18 = fmul <2 x float> %i.ca, %i.cq             ; 3 uses
  %foldExtExtBinop117 = fadd <2 x float> %18, %foldExtExtBinop107
  %i.cx = extractelement <2 x float> %foldExtExtBinop117, i64 0
  %i.cy = fsub float 1.000000e+00, %i.cx          ; 3 uses
  %foldExtExtBinop119 = fadd <2 x float> %foldExtExtBinop113, %i.cw
  %19 = extractelement <2 x float> %foldExtExtBinop119, i64 1
  %i.cz = fsub float 1.000000e+00, %19            ; 3 uses
  %20 = fadd <2 x float> %18, %i.cw
  %21 = fsub <2 x float> splat (float 1.000000e+00), %20 ; 3 uses
  %22 = fadd <2 x float> %9, %8
  %i.da = fsub <2 x float> %9, %8                 ; 2 uses
  %23 = fsub float %14, %12                       ; 3 uses
  %foldExtExtBinop121 = fadd <2 x float> %9, %8
  %24 = extractelement <2 x float> %foldExtExtBinop121, i64 1 ; 3 uses
  %foldExtExtBinop123 = fadd <2 x float> %18, %foldExtExtBinop113
  %25 = extractelement <2 x float> %foldExtExtBinop123, i64 1
  %26 = fsub float 1.000000e+00, %25              ; 3 uses
  store float %i.bl, ptr %i.z, align 4, !tbaa !51
  store float %i.bf, ptr %i.ab, align 4, !tbaa !51
  store float %i.bb, ptr %i.ah, align 4, !tbaa !51
  store float %i.bc, ptr %i.ai, align 4, !tbaa !51
  store float %i.i, ptr %i.aj, align 4, !tbaa !51
  %27 = extractelement <2 x float> %21, i64 1     ; 2 uses
  %i.db = extractelement <2 x float> %i.da, i64 1 ; 2 uses
  %28 = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.be, float %i.bm) ; 2 uses
  %29 = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bh, float %i.bn)
  %i.dc = fsub float %5, %4
  %30 = fadd float %i.cv, %13                     ; 3 uses
  %31 = fsub float 1.000000e+00, %17
  %32 = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.dc, i64 1
  %33 = shufflevector <4 x float> %32, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %34 = shufflevector <2 x float> %21, <2 x float> %i.da, <4 x i32> <i32 poison, i32 poison, i32 1, i32 3>
  %35 = insertelement <4 x float> %34, float %29, i64 0
  %36 = insertelement <4 x float> %35, float %30, i64 1
  %37 = fmul <4 x float> %33, %36
  %38 = insertelement <4 x float> poison, float %28, i64 0 ; 2 uses
  %i.dd = insertelement <4 x float> %38, float %i.cz, i64 1
  %i.de = insertelement <4 x float> %i.dd, float %15, i64 2
  %39 = insertelement <4 x float> %i.de, float %16, i64 3
  %i.df = shufflevector <4 x float> %38, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.dg = insertelement <2 x float> %i.df, float %31, i64 1
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.di = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %39, <4 x float> %i.dh, <4 x float> %37) ; 4 uses
  %i.dj = extractelement <4 x float> %i.di, i64 0
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.dj)
  %i.dk = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.dl = fmul float %i.bh, %i.dk
  %i.dm = fmul float %i.bk, %i.dk
  %i.dn = fmul float %28, %i.dk
  store float %i.dl, ptr %i.an, align 4, !tbaa !51
  store float %i.dm, ptr %i.ao, align 4, !tbaa !51
  store float %i.dn, ptr %i.ap, align 4, !tbaa !51
  %i.do = extractelement <4 x float> %i.di, i64 1
  %i.dp = tail call noundef float @llvm.fmuladd.f32(float %23, float %6, float %i.do) ; 3 uses
  %40 = extractelement <4 x float> %i.di, i64 2
  %i.dq = tail call noundef float @llvm.fmuladd.f32(float %24, float %6, float %40) ; 3 uses
  %41 = extractelement <4 x float> %i.di, i64 3
  %42 = tail call noundef float @llvm.fmuladd.f32(float %26, float %6, float %41) ; 3 uses
  %43 = extractelement <2 x float> %21, i64 0     ; 3 uses
  %44 = fmul float %43, %30
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.cz, float %7, float %44)
  %i.ds = tail call noundef float @llvm.fmuladd.f32(float %23, float %10, float %i.dr) ; 2 uses
  %45 = fmul float %43, %27
  %46 = tail call float @llvm.fmuladd.f32(float %15, float %7, float %45)
  %47 = tail call noundef float @llvm.fmuladd.f32(float %24, float %10, float %46) ; 2 uses
  %48 = fmul float %43, %i.db
  %49 = tail call float @llvm.fmuladd.f32(float %16, float %7, float %48)
  %50 = tail call noundef float @llvm.fmuladd.f32(float %26, float %10, float %49) ; 2 uses
  %51 = extractelement <2 x float> %22, i64 0     ; 3 uses
  %52 = fmul float %51, %30
  %53 = tail call float @llvm.fmuladd.f32(float %i.cz, float %11, float %52)
  %54 = tail call noundef float @llvm.fmuladd.f32(float %23, float %i.cy, float %53) ; 2 uses
  %55 = fmul float %51, %27
  %56 = tail call float @llvm.fmuladd.f32(float %15, float %11, float %55)
  %i.dt = tail call noundef float @llvm.fmuladd.f32(float %24, float %i.cy, float %56) ; 2 uses
  %57 = fmul float %51, %i.db
  %i.du = tail call float @llvm.fmuladd.f32(float %16, float %11, float %57)
  %i.dv = tail call noundef float @llvm.fmuladd.f32(float %26, float %i.cy, float %i.du) ; 2 uses
  %i.dw = load <2 x float>, ptr %i.aa, align 8, !tbaa !51, !noalias !107 ; 4 uses
  %i.dx = extractelement <2 x float> %i.dw, i64 0
  %i.dy = fmul float %i.dq, %i.dx
  %i.dz = load <2 x float>, ptr %3, align 8, !tbaa !51, !noalias !107 ; 4 uses
  %i.ea = extractelement <2 x float> %i.dz, i64 0
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.ea, float %i.dp, float %i.dy)
  %i.ec = load <2 x float>, ptr %i.ac, align 8, !tbaa !51, !noalias !107 ; 4 uses
  %58 = extractelement <2 x float> %i.ec, i64 0
  %59 = tail call noundef float @llvm.fmuladd.f32(float %58, float %42, float %i.eb)
  %60 = extractelement <2 x float> %i.dw, i64 1
  %61 = fmul float %i.dq, %60
  %62 = extractelement <2 x float> %i.dz, i64 1
  %63 = tail call float @llvm.fmuladd.f32(float %62, float %i.dp, float %61)
  %64 = extractelement <2 x float> %i.ec, i64 1
  %65 = tail call noundef float @llvm.fmuladd.f32(float %64, float %42, float %63)
  %66 = load float, ptr %i.ar, align 8, !tbaa !51, !noalias !107 ; 3 uses
  %67 = load float, ptr %i.as, align 8, !tbaa !51, !noalias !107 ; 3 uses
  %68 = fmul float %i.dq, %67
  %69 = tail call float @llvm.fmuladd.f32(float %66, float %i.dp, float %68)
  %70 = load float, ptr %i.at, align 8, !tbaa !51, !noalias !107 ; 3 uses
  %71 = tail call noundef float @llvm.fmuladd.f32(float %70, float %42, float %69)
  %i.ed = insertelement <2 x float> poison, float %47, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = fmul <2 x float> %i.ee, %i.dw
  %72 = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.eg = shufflevector <2 x float> %72, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> %i.eg, <2 x float> %i.ef)
  %i.ei = insertelement <2 x float> poison, float %50, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %73 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> %i.ej, <2 x float> %i.eh)
  %74 = fmul float %47, %67
  %75 = tail call float @llvm.fmuladd.f32(float %66, float %i.ds, float %74)
  %76 = tail call noundef float @llvm.fmuladd.f32(float %70, float %50, float %75)
  %i.ek = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %77 = fmul <2 x float> %i.el, %i.dw
  %78 = insertelement <2 x float> poison, float %54, i64 0
  %79 = shufflevector <2 x float> %78, <2 x float> poison, <2 x i32> zeroinitializer
  %80 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> %79, <2 x float> %77)
  %81 = insertelement <2 x float> poison, float %i.dv, i64 0
  %82 = shufflevector <2 x float> %81, <2 x float> poison, <2 x i32> zeroinitializer
  %83 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> %82, <2 x float> %80)
  %84 = fmul float %i.dt, %67
  %i.em = tail call float @llvm.fmuladd.f32(float %66, float %54, float %84)
  %85 = tail call noundef float @llvm.fmuladd.f32(float %70, float %i.dv, float %i.em)
  store float %59, ptr %i.aq, align 8
  store float %65, ptr %.sroa.437.0..sroa_idx, align 4
  store float %71, ptr %.sroa.538.0..sroa_idx, align 8
  store float 0.000000e+00, ptr %.sroa.639.0..sroa_idx, align 4, !tbaa !52
  store <2 x float> %73, ptr %i.au, align 8
  store float %76, ptr %.sroa.10.16..sroa_idx, align 8
  store float 0.000000e+00, ptr %.sroa.1141.16..sroa_idx, align 4, !tbaa !52
  store <2 x float> %83, ptr %i.av, align 8
  %.sroa.1542.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store float %85, ptr %.sroa.1542.32..sroa_idx, align 8
  %.sroa.1643.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 140
  store float 0.000000e+00, ptr %.sroa.1643.32..sroa_idx, align 4, !tbaa !52
  %i.en = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.eo = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ep = load float, ptr %i.eo, align 8, !tbaa !51 ; 2 uses
  %i.eq = fmul float %i.h, %i.ep
  %i.er = insertelement <2 x float> %i.ay, float %i.az, i64 1
  %i.es = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eu = fmul <2 x float> %i.er, %i.et
  %i.ev = load <2 x float>, ptr %i.en, align 4, !tbaa !51
  %i.ew = fadd <2 x float> %i.ev, %i.eu
  %i.ex = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !51
  %i.ez = fadd float %i.eq, %i.ey
  %.sroa.3.12.vec.insert.i30 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ez, i64 0
  %i.fa = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store <2 x float> %i.ew, ptr %i.fa, align 8
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
  %i.n = load float, ptr %i.h, align 8, !tbaa !51 ; 2 uses
  %i.o = load float, ptr %i.i, align 4, !tbaa !51 ; 2 uses
  %i.p = load float, ptr %i.j, align 8, !tbaa !51 ; 2 uses
  %i.q = shufflevector <2 x float> %i.k, <2 x float> %i.l, <2 x i32> <i32 1, i32 3>
  %i.r = insertelement <2 x float> poison, float %i.o, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x float> %i.q, %i.s
  %i.u = insertelement <2 x float> poison, float %i.n, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = shufflevector <2 x float> %i.k, <2 x float> %i.l, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.w, <2 x float> %i.t)
  %i.y = insertelement <2 x float> poison, float %i.p, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fmul float %.sroa.12.32.copyload, %i.o
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.n, float %.sroa.1085.32.copyload, float %i.aa)
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
  %i.an = load float, ptr %i.af, align 8, !tbaa !51 ; 2 uses
  %i.ao = load float, ptr %i.ag, align 4, !tbaa !51 ; 2 uses
  %i.ap = load float, ptr %i.ah, align 8, !tbaa !51 ; 2 uses
  %i.aq = shufflevector <2 x float> %i.ai, <2 x float> %i.aj, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ar = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x float> %i.aq, %i.as
  %i.au = insertelement <2 x float> poison, float %i.an, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.av, <2 x float> %i.at)
  %i.ax = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.ay, <2 x float> %i.aw)
  %i.ba = fmul float %.sroa.12.32.copyload, %i.ao
  %i.bb = tail call float @llvm.fmuladd.f32(float %.sroa.1085.32.copyload, float %i.an, float %i.ba)
  %i.bc = tail call noundef float @llvm.fmuladd.f32(float %.sroa.13.32.copyload, float %i.ap, float %i.bb)
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bc, i64 0
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 4 uses
  store <2 x float> %i.az, ptr %i.bd, align 4
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 4 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !52
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bh = load float, ptr %i.be, align 8, !tbaa !51 ; 2 uses
  %i.bi = load float, ptr %i.bf, align 4, !tbaa !51 ; 2 uses
  %i.bj = load float, ptr %i.bg, align 8, !tbaa !51 ; 2 uses
  %i.bk = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x float> %i.aq, %i.bl
  %i.bn = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.bo, <2 x float> %i.bm)
  %i.bq = insertelement <2 x float> poison, float %.sroa.583.0.copyload, i64 0
  %i.br = insertelement <2 x float> %i.bq, float %.sroa.9.16.copyload, i64 1
  %i.bs = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.bt, <2 x float> %i.bp)
  %i.bv = fmul float %.sroa.12.32.copyload, %i.bi
  %i.bw = tail call float @llvm.fmuladd.f32(float %.sroa.1085.32.copyload, float %i.bh, float %i.bv)
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
end_hunk_0
