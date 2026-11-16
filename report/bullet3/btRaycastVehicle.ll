Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btRaycastVehicle?download=true
inline.NumInlined: 513
inline.NumDeleted: 147
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN16btRaycastVehicle8addWheelERK9btVector3S2_S2_ffRKNS_15btVehicleTuningEb:bb.a
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4
  %i.ci = load <2 x float>, ptr %.sroa.828.16..sroa_idx, align 4 ; 2 uses
  %.sroa.9.16.copyload = load float, ptr %.sroa.9.16..sroa_idx, align 4
  %i.cj = shufflevector <2 x float> %i.ch, <2 x float> %i.ci, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.cj, <2 x float> %i.bw)
  %i.cl = fadd <2 x float> %i.bl, %i.ck
  store <2 x float> %i.cl, ptr %i.cd, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.44.0..sroa_idx.i, align 4, !tbaa !52
  %i.cm = load float, ptr %i.ce, align 4, !tbaa !51 ; 2 uses
  %i.cn = load float, ptr %i.cf, align 4, !tbaa !51 ; 2 uses
  %i.co = load float, ptr %i.cg, align 4, !tbaa !51 ; 2 uses
  %i.cp = shufflevector <2 x float> %i.ch, <2 x float> %i.ci, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cq = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x float> %i.cp, %i.cr
  %i.ct = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.cu, <2 x float> %i.cs)
  %i.cw = insertelement <2 x float> poison, float %i.co, i64 0
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
  %i.bc = load <2 x float>, ptr %i.t, align 8
  %i.bd = load <2 x float>, ptr %i.u, align 4, !tbaa !51 ; 2 uses
  %i.be = load float, ptr %i.v, align 8, !tbaa !51
  %i.bf = shufflevector <2 x float> %i.bb, <2 x float> %i.bd, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.bf, <2 x float> %i.an)
  %i.bh = fadd <2 x float> %i.bg, %i.at
  store <2 x float> %i.bh, ptr %i.ax, align 4
  %i.bi = load float, ptr %i.ay, align 8, !tbaa !51 ; 2 uses
  %i.bj = load float, ptr %i.az, align 4, !tbaa !51 ; 2 uses
  %i.bk = load float, ptr %i.ba, align 8, !tbaa !51 ; 2 uses
  %i.bl = shufflevector <2 x float> %i.bb, <2 x float> %i.bd, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bm = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x float> %i.bl, %i.bn
  %i.bp = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.bq, <2 x float> %i.bo)
  %i.bs = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.bt, <2 x float> %i.br)
  %i.bv = fmul float %i.y, %i.bj
  %i.bw = call float @llvm.fmuladd.f32(float %i.w, float %i.bi, float %i.bv)
  %i.bx = call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.bk, float %i.bw)
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bx, i64 0
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 52
  store <2 x float> %i.bu, ptr %i.by, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 60
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !52
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.cc = load float, ptr %i.bz, align 8, !tbaa !51 ; 2 uses
  %i.cd = load float, ptr %i.ca, align 4, !tbaa !51 ; 2 uses
  %i.ce = load float, ptr %i.cb, align 8, !tbaa !51 ; 2 uses
  %i.cf = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = fmul <2 x float> %i.bl, %i.cg
  %i.ci = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.cj, <2 x float> %i.ch)
  %i.cl = insertelement <2 x float> %i.bc, float %i.be, i64 1
  %i.cm = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> %i.cn, <2 x float> %i.ck)
  %i.cp = fmul float %i.y, %i.cd
  %i.cq = call float @llvm.fmuladd.f32(float %i.w, float %i.cc, float %i.cp)
  %i.cr = call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.ce, float %i.cq)
  %.sroa.3.12.vec.insert.i14 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cr, i64 0
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 68
  store <2 x float> %i.co, ptr %i.cs, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 76
  store <2 x float> %.sroa.3.12.vec.insert.i14, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16btRaycastVehicle20updateWheelTransformEib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #7 align 2 {
bb.a:
  %3 = alloca %class.btMatrix3x3, align 8         ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [296 x i8], ptr %i.b, i64 %i.c ; 20 uses
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
  %i.v = tail call noundef float @cosf(float noundef %i.t) #20 ; 2 uses
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
  %i.ar = load float, ptr %i.k, align 4, !tbaa !51 ; 5 uses
  %i.as = load float, ptr %i.l, align 8, !tbaa !51 ; 6 uses
  %i.at = fneg float %i.as
  %i.au = fmul float %i.h, %i.as
  %i.av = load float, ptr %i.j, align 4, !tbaa !51 ; 5 uses
  %i.aw = fneg float %i.ar
  %i.ax = fneg float %i.av
  %i.ay = load <2 x float>, ptr %i.e, align 4, !tbaa !51 ; 4 uses
  %i.az = load float, ptr %i.f, align 8, !tbaa !51 ; 3 uses
  %i.ba = extractelement <2 x float> %i.ay, i64 0 ; 2 uses
  %i.bb = fneg float %i.ba                        ; 3 uses
  %i.bc = fneg float %i.az                        ; 3 uses
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.ar, float %i.au) ; 3 uses
  %i.be = fmul float %i.ba, %i.ar
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.i, float %i.av, float %i.be) ; 3 uses
  %i.bg = fmul float %i.az, %i.av
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.as, float %i.bg) ; 3 uses
  %i.bi = fmul float %i.bf, %i.bf
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.bd, float %i.bi)
  %i.bk = tail call noundef float @llvm.fmuladd.f32(float %i.bh, float %i.bh, float %i.bj)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.bk)
  %i.bl = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.bm = fmul float %i.bd, %i.bl
  %i.bn = fmul float %i.bf, %i.bl
  %i.bo = fmul float %i.bh, %i.bl
  %i.bp = insertelement <2 x float> %i.ay, float %i.as, i64 0 ; 2 uses
  %i.bq = fmul <2 x float> %i.bp, %i.bp
  %i.br = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bs = insertelement <2 x float> %i.br, float %i.av, i64 0 ; 2 uses
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.bs, <2 x float> %i.bq)
  %i.bu = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.bv = insertelement <2 x float> %i.bu, float %i.h, i64 1 ; 2 uses
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.bv, <2 x float> %i.bt)
  %i.bx = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.bw)
  %i.by = insertelement <2 x float> poison, float %i.u, i64 0
  %i.bz = insertelement <2 x float> %i.by, float %i.p, i64 1
  %i.ca = fdiv <2 x float> %i.bz, %i.bx           ; 3 uses
  %i.cb = insertelement <2 x float> poison, float %i.av, i64 0
  %i.cc = insertelement <2 x float> %i.cb, float %i.bb, i64 1
  %i.cd = fmul <2 x float> %i.cc, %i.ca           ; 6 uses
  %i.ce = insertelement <2 x float> poison, float %i.as, i64 0
  %i.cf = insertelement <2 x float> %i.ce, float %i.bc, i64 1
  %i.cg = fmul <2 x float> %i.cf, %i.ca           ; 3 uses
  %i.ch = insertelement <4 x float> poison, float %i.as, i64 0 ; 2 uses
  %i.ci = insertelement <4 x float> %i.ch, float %i.ar, i64 1
  %i.cj = shufflevector <2 x float> %i.ca, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ck = shufflevector <4 x float> %i.ci, <4 x float> %i.cj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cl = shufflevector <4 x float> %i.cj, <4 x float> %i.ch, <4 x i32> <i32 0, i32 0, i32 4, i32 poison>
  %i.cm = insertelement <4 x float> %i.cl, float %i.i, i64 3
  %i.cn = fmul <4 x float> %i.ck, %i.cm           ; 6 uses
  %i.co = fmul <2 x float> %i.cg, %i.cg
  %i.cp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.cd, <2 x float> %i.co)
  %i.cq = shufflevector <4 x float> %i.cn, <4 x float> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> %i.cq, <2 x float> %i.cp)
  %i.cs = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %i.q, i64 1 ; 3 uses
  %i.cu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.ct, <2 x float> %i.cr)
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cw = fdiv <4 x float> splat (float 2.000000e+00), %i.cv ; 3 uses
  %i.cx = extractelement <4 x float> %i.cw, i64 3
  %i.cy = extractelement <2 x float> %i.cd, i64 1
  %i.cz = extractelement <2 x float> %i.cg, i64 1 ; 3 uses
  %i.da = fmul float %i.cz, %i.cx                 ; 3 uses
  %i.db = fmul float %i.q, %i.da                  ; 2 uses
  %i.dc = fmul <4 x float> %i.cn, %i.cw           ; 8 uses
  %i.dd = extractelement <4 x float> %i.dc, i64 3 ; 2 uses
  %i.de = fmul float %i.cy, %i.dd                 ; 2 uses
  %i.df = fmul float %i.cz, %i.dd                 ; 2 uses
  %foldExtExtBinop = fmul <4 x float> %i.cn, %i.dc
  %i.dg = extractelement <4 x float> %foldExtExtBinop, i64 3 ; 2 uses
  %i.dh = shufflevector <2 x float> %i.ct, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.di = fmul <4 x float> %i.dh, %i.dc           ; 4 uses
  %i.dj = shufflevector <2 x float> %i.cd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dk = shufflevector <4 x float> %i.dc, <4 x float> %i.dj, <4 x i32> <i32 1, i32 0, i32 4, i32 5>
  %i.dl = shufflevector <4 x float> %i.dj, <4 x float> %i.dc, <4 x i32> <i32 0, i32 0, i32 5, i32 poison>
  %i.dm = insertelement <4 x float> %i.dl, float %i.da, i64 3
  %i.dn = fmul <4 x float> %i.dk, %i.dm           ; 4 uses
  %i.do = fadd float %i.de, %i.db                 ; 3 uses
  %i.dp = fsub float %i.de, %i.db                 ; 3 uses
  %foldExtExtBinop103 = fmul <4 x float> %i.cn, %i.dc
  %foldExtExtBinop105 = fadd <4 x float> %i.dn, %i.di
  %i.dq = extractelement <4 x float> %foldExtExtBinop105, i64 1 ; 3 uses
  %i.dr = fsub <4 x float> %i.dn, %i.di           ; 3 uses
  %i.ds = fadd <4 x float> %i.dn, %i.di           ; 3 uses
  %i.dt = shufflevector <4 x float> %i.dr, <4 x float> %i.ds, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  store float %i.ax, ptr %i.z, align 4, !tbaa !51
  store float %i.at, ptr %i.ab, align 4, !tbaa !51
  store float %i.aw, ptr %i.ad, align 4, !tbaa !51
  store float %i.bb, ptr %i.ah, align 4, !tbaa !51
  store float %i.bc, ptr %i.ai, align 4, !tbaa !51
  store float %i.i, ptr %i.aj, align 4, !tbaa !51
  store float %i.bm, ptr %i.an, align 4, !tbaa !51
  store float %i.bn, ptr %i.ao, align 4, !tbaa !51
  store float %i.bo, ptr %i.ap, align 4, !tbaa !51
  %i.du = insertelement <4 x float> poison, float %i.do, i64 0
  %i.dv = extractelement <4 x float> %i.dr, i64 1
  %i.dw = extractelement <4 x float> %i.ds, i64 2
  %i.dx = shufflevector <4 x float> %i.ds, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 3, i32 poison>
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ec = shufflevector <4 x float> %i.cw, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ed = fmul <2 x float> %i.cd, %i.ec           ; 3 uses
  %i.ee = extractelement <2 x float> %i.ed, i64 1
  %i.ef = fmul float %i.q, %i.ee                  ; 2 uses
  %i.eg = fmul float %i.cz, %i.da                 ; 2 uses
  %i.eh = fmul <2 x float> %i.cd, %i.ed           ; 3 uses
  %i.ei = extractelement <2 x float> %i.eh, i64 1
  %i.ej = fadd float %i.ei, %i.dg
  %i.ek = fsub float 1.000000e+00, %i.ej          ; 3 uses
  %i.el = fsub float %i.df, %i.ef                 ; 3 uses
  %i.em = fadd float %i.df, %i.ef                 ; 3 uses
  %i.en = extractelement <2 x float> %i.ed, i64 0
  %i.eo = fmul float %i.v, %i.en                  ; 2 uses
  %foldExtExtBinop107 = fmul <4 x float> %i.cn, %i.dc
  %i.ep = extractelement <4 x float> %foldExtExtBinop107, i64 0 ; 2 uses
  %shift = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop109 = fmul <4 x float> %i.cn, %shift
  %i.eq = extractelement <4 x float> %foldExtExtBinop109, i64 0 ; 2 uses
  %i.er = fsub float %i.eq, %i.eo                 ; 3 uses
  %i.es = fadd float %i.eq, %i.eo                 ; 3 uses
  %i.et = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.eu = insertelement <2 x float> %i.et, float %i.eg, i64 1
  %i.ev = fadd <2 x float> %i.eh, %i.eu
  %i.ew = fsub <2 x float> splat (float 1.000000e+00), %i.ev ; 4 uses
  %i.ex = fadd float %i.eg, %i.dg
  %i.ey = shufflevector <4 x float> %i.dn, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.ez = insertelement <2 x float> %i.ey, float 1.000000e+00, i64 0
  %i.fa = shufflevector <4 x float> %i.di, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.fb = insertelement <2 x float> %i.fa, float %i.ex, i64 0
  %i.fc = fsub <2 x float> %i.ez, %i.fb           ; 3 uses
  %i.fd = extractelement <2 x float> %i.fc, i64 1 ; 2 uses
  %i.fe = fmul float %i.fd, %i.dq
  %i.ff = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fg = insertelement <2 x float> %i.ff, float %i.ep, i64 0
  %i.fh = shufflevector <4 x float> %foldExtExtBinop103, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fi = fadd <2 x float> %i.fg, %i.fh
  %i.fj = fsub <2 x float> splat (float 1.000000e+00), %i.fi ; 4 uses
  %i.fk = extractelement <2 x float> %i.fj, i64 1 ; 2 uses
  %i.fl = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.fe, i64 0
  %i.fm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fc, <2 x float> %i.fj, <2 x float> %i.fl)
  %i.fn = fmul float %i.fd, %i.er
  %i.fo = fmul float %i.ek, %i.dq
  %i.fp = shufflevector <2 x float> %i.fc, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fq = shufflevector <4 x float> %i.du, <4 x float> %i.fp, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.fr = shufflevector <2 x float> %i.fj, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fs = shufflevector <4 x float> %i.fq, <4 x float> %i.fr, <4 x i32> <i32 0, i32 1, i32 1, i32 4>
  %i.ft = shufflevector <2 x float> %i.fm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fu = insertelement <4 x float> %i.ft, float %i.fn, i64 2
  %i.fv = insertelement <4 x float> %i.fu, float %i.fo, i64 3
  %i.fw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dt, <4 x float> %i.fs, <4 x float> %i.fv) ; 3 uses
  %i.fx = fmul float %i.ek, %i.fk
  %i.fy = fmul float %i.ek, %i.er
  %5 = shufflevector <2 x float> %i.ew, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fz = shufflevector <4 x float> %i.dt, <4 x float> %5, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ga = insertelement <4 x float> %i.dx, float %i.el, i64 0
  %i.gb = insertelement <4 x float> %i.ga, float %i.do, i64 3
  %i.gc = shufflevector <4 x float> %i.fw, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 2>
  %i.gd = insertelement <4 x float> %i.gc, float %i.fx, i64 1
  %i.ge = insertelement <4 x float> %i.gd, float %i.fy, i64 2
  %i.gf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fz, <4 x float> %i.gb, <4 x float> %i.ge) ; 4 uses
  %i.gg = extractelement <4 x float> %i.gf, i64 1
  %6 = tail call noundef float @llvm.fmuladd.f32(float %i.es, float %i.el, float %i.gg) ; 3 uses
  %i.gh = fmul float %i.em, %i.dq
  %i.gi = extractelement <2 x float> %i.fj, i64 0
  %i.gj = tail call float @llvm.fmuladd.f32(float %i.gi, float %i.dp, float %i.gh)
  %i.gk = shufflevector <4 x float> %i.dr, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gl = insertelement <2 x float> %i.gk, float %i.el, i64 0
  %i.gm = shufflevector <4 x float> %i.gf, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.gn = insertelement <2 x float> %i.gm, float %i.gj, i64 1
  %i.go = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gl, <2 x float> %i.ew, <2 x float> %i.gn) ; 2 uses
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.gq = fmul float %i.em, %i.fk
  %7 = extractelement <2 x float> %i.ew, i64 1    ; 2 uses
  %i.gr = fmul float %i.em, %i.er
  %8 = extractelement <2 x float> %i.ew, i64 0
  %i.gs = load <2 x float>, ptr %3, align 8, !tbaa !51, !noalias !107 ; 3 uses
  %9 = extractelement <2 x float> %i.gs, i64 0
  %10 = extractelement <4 x float> %i.gf, i64 0   ; 3 uses
  %i.gt = extractelement <2 x float> %i.go, i64 0 ; 2 uses
  %i.gu = load <2 x float>, ptr %i.ac, align 8, !tbaa !51, !noalias !107 ; 3 uses
  %i.gv = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.es, i64 0
  %i.gw = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.do, i64 0
  %i.gx = shufflevector <4 x float> %i.fw, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gy = insertelement <2 x float> %i.gx, float 1.000000e+00, i64 1
  %i.gz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gv, <2 x float> %i.gw, <2 x float> %i.gy)
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hb = load <2 x float>, ptr %4, align 4, !tbaa !51, !noalias !107 ; 3 uses
  %i.hc = load float, ptr %i.ea, align 8, !tbaa !51, !noalias !107
  %i.hd = load <2 x float>, ptr %i.aa, align 8, !tbaa !51, !noalias !107 ; 3 uses
  %i.he = shufflevector <2 x float> %i.hd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hf = insertelement <4 x float> %i.he, float 0.000000e+00, i64 3
  %i.hg = shufflevector <2 x float> %i.gs, <2 x float> %i.hb, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.hh = insertelement <4 x float> %i.hg, float 0.000000e+00, i64 3
  %i.hi = shufflevector <4 x float> %i.fw, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 7>
  %i.hj = shufflevector <2 x float> %i.gu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hk = insertelement <4 x float> %i.hj, float 0.000000e+00, i64 3
  %i.hl = shufflevector <4 x float> %i.gf, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 3, i32 3, i32 3, i32 7>
  %i.hm = extractelement <2 x float> %i.hd, i64 0
  %11 = fmul float %6, %i.hm
  %12 = tail call float @llvm.fmuladd.f32(float %9, float %10, float %11)
  %13 = extractelement <2 x float> %i.gu, i64 0
  %14 = tail call noundef float @llvm.fmuladd.f32(float %13, float %i.gt, float %12)
  %15 = extractelement <2 x float> %i.hb, i64 0
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.dp, float %i.gq)
  %i.ho = tail call noundef float @llvm.fmuladd.f32(float %i.es, float %7, float %i.hn)
  %16 = load <2 x float>, ptr %i.dy, align 4, !tbaa !51, !noalias !107 ; 3 uses
  %17 = load float, ptr %i.eb, align 8, !tbaa !51, !noalias !107
  %18 = fmul float %6, %17
  %19 = shufflevector <2 x float> %16, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %20 = shufflevector <4 x float> %i.hf, <4 x float> %19, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %21 = fmul <4 x float> %20, %i.ha
  %i.hp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hh, <4 x float> %i.hi, <4 x float> %21)
  %i.hq = extractelement <2 x float> %16, i64 0
  %i.hr = fmul float %6, %i.hq
  %22 = tail call float @llvm.fmuladd.f32(float %15, float %10, float %i.hr)
  %23 = tail call float @llvm.fmuladd.f32(float %i.hc, float %10, float %18)
  %24 = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.ho, i64 1
  %25 = shufflevector <4 x float> %24, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %26 = shufflevector <2 x float> %i.hd, <2 x float> %16, <4 x i32> <i32 poison, i32 0, i32 2, i32 3>
  %27 = insertelement <4 x float> %26, float %23, i64 0
  %i.hs = fmul <4 x float> %25, %27
  %28 = shufflevector <2 x float> %i.hb, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ht = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store float %14, ptr %i.ht, align 8
  %.sroa.940.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %.sroa.1141.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  store float 0.000000e+00, ptr %.sroa.1141.16..sroa_idx, align 4, !tbaa !52
  %i.hu = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %29 = tail call float @llvm.fmuladd.f32(float %i.dw, float %i.dp, float %i.gr)
  %i.hv = tail call noundef float @llvm.fmuladd.f32(float %8, float %7, float %29)
  %i.hw = load <2 x float>, ptr %i.dz, align 4, !tbaa !51, !noalias !107 ; 4 uses
  %i.hx = shufflevector <2 x float> %i.hw, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.hy = shufflevector <2 x float> %i.hw, <2 x float> %i.gs, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.hz = shufflevector <4 x float> %i.hk, <4 x float> %i.hx, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ia = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hz, <4 x float> %i.hl, <4 x float> %i.hp)
  %30 = extractelement <2 x float> %i.hw, i64 0
  %31 = tail call noundef float @llvm.fmuladd.f32(float %30, float %i.gt, float %22)
  %i.ib = shufflevector <4 x float> %i.hy, <4 x float> %28, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ic = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ib, <4 x float> %i.gp, <4 x float> %i.hs) ; 2 uses
  %i.id = shufflevector <2 x float> %i.gu, <2 x float> %i.hw, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ie = insertelement <4 x float> %i.id, float 0.000000e+00, i64 3
  %32 = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.hv, i64 0
  %33 = shufflevector <4 x float> %32, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.if = shufflevector <4 x float> %i.ic, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 3, i32 7>
  %i.ig = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ie, <4 x float> %33, <4 x float> %i.if)
  store <4 x float> %i.ia, ptr %i.aq, align 8
  store float %31, ptr %.sroa.940.16..sroa_idx, align 4
  %i.ih = extractelement <4 x float> %i.ic, i64 0
  store float %i.ih, ptr %.sroa.10.16..sroa_idx, align 8
  store <4 x float> %i.ig, ptr %i.hu, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.ij = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ik = load float, ptr %i.ij, align 8, !tbaa !51 ; 2 uses
  %i.il = fmul float %i.h, %i.ik
  %i.im = insertelement <2 x float> %i.ay, float %i.az, i64 1
  %i.in = insertelement <2 x float> poison, float %i.ik, i64 0
  %i.io = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ip = fmul <2 x float> %i.im, %i.io
  %i.iq = load <2 x float>, ptr %i.ii, align 4, !tbaa !51
  %i.ir = fadd <2 x float> %i.iq, %i.ip
  %i.is = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.it = load float, ptr %i.is, align 4, !tbaa !51
  %i.iu = fadd float %i.il, %i.it
  %.sroa.3.12.vec.insert.i30 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.iu, i64 0
  %i.iv = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store <2 x float> %i.ir, ptr %i.iv, align 8
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
end_hunk_0
