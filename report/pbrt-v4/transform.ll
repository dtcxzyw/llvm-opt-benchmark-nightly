Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/transform?download=true
inline.NumInlined: 2588
inline.NumDeleted: 406
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK4pbrt17AnimatedTransformclERKNS_3RayEPf:bb.a
  store <2 x float> %i.ik, ptr %0, align 8, !alias.scope !134
  %.sroa.27.0..sroa_idx.i.i62 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.im, ptr %.sroa.27.0..sroa_idx.i.i62, align 8, !alias.scope !134
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %i.gp, ptr %i.iq, align 4, !alias.scope !134
  %.sroa.23.0..sroa_idx.i.i63 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.gx, ptr %.sroa.23.0..sroa_idx.i.i63, align 4, !alias.scope !134
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.in, ptr %i.ir, align 8, !tbaa !70, !alias.scope !134
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ip, ptr %i.is, align 8, !tbaa !71, !alias.scope !134
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !134
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.m

bb.m:                                             ; preds = %_ZNK4pbrt9TransformclERKNS_3RayEPf.exit67, %_ZNK4pbrt9TransformclERKNS_3RayEPf.exit38, %_ZNK4pbrt9TransformclERKNS_3RayEPf.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt17AnimatedTransform11InterpolateEf(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pbrt::Transform") align 4 captures(none) initializes((0, 128)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(696) %1, float noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.pstd::optional", align 4    ; 5 uses
  %4 = alloca %"class.pbrt::SquareMatrix.0", align 4 ; 6 uses
  %5 = alloca %"class.pbrt::Transform", align 4   ; 4 uses
  %6 = alloca %"class.pbrt::Transform", align 8   ; 23 uses
  %7 = alloca %"class.pbrt::Transform", align 4   ; 19 uses
  %8 = alloca %"class.pbrt::Transform", align 4   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.b = load i8, ptr %i.a, align 4, !tbaa !65, !range !15, !noundef !16
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = load float, ptr %i.d, align 4, !tbaa !63 ; 3 uses
  %i.f = fcmp ugt float %2, %i.e
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(128) %1, i64 128, i1 false), !tbaa.struct !59
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 260
  %i.h = load float, ptr %i.g, align 4, !tbaa !64 ; 2 uses
  %i.i = fcmp ult float %2, %i.h
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(128) %i.j, i64 128, i1 false), !tbaa.struct !59
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.k = fsub float %2, %i.e
  %i.l = fsub float %i.h, %i.e
  %i.m = fdiv float %i.k, %i.l                    ; 9 uses
  %i.n = fsub float 1.000000e+00, %i.m            ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 268
  %.sroa.030.0.copyload = load <2 x float>, ptr %i.o, align 4, !tbaa !11 ; 2 uses
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 276
  %.sroa.231.0.copyload = load float, ptr %.sroa.231.0..sroa_idx, align 4, !tbaa !11
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.030.0.copyload, i64 0
  %i.p = fmul float %i.n, %.sroa.0.0.vec.extract.i
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.030.0.copyload, i64 1
  %i.q = fmul float %i.n, %.sroa.0.4.vec.extract.i
  %i.r = fmul float %i.n, %.sroa.231.0.copyload
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 280
  %.sroa.020.0.copyload = load <2 x float>, ptr %i.s, align 4, !tbaa !11 ; 2 uses
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 288
  %.sroa.221.0.copyload = load float, ptr %.sroa.221.0..sroa_idx, align 4, !tbaa !11
  %.sroa.0.0.vec.extract.i44 = extractelement <2 x float> %.sroa.020.0.copyload, i64 0
  %i.t = fmul float %i.m, %.sroa.0.0.vec.extract.i44
  %.sroa.0.4.vec.extract.i45 = extractelement <2 x float> %.sroa.020.0.copyload, i64 1
  %i.u = fmul float %i.m, %.sroa.0.4.vec.extract.i45
  %i.v = fmul float %i.m, %.sroa.221.0.copyload
  %i.w = fadd float %i.p, %i.t                    ; 2 uses
  %i.x = fadd float %i.q, %i.u                    ; 2 uses
  %i.y = fadd float %i.r, %i.v                    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 292
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.z, align 4 ; 5 uses
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 300
  %.sroa.28.0.copyload = load <2 x float>, ptr %.sroa.28.0..sroa_idx, align 4 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 308
  %.sroa.05.0.copyload = load <2 x float>, ptr %i.aa, align 4 ; 5 uses
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 316
  %.sroa.26.0.copyload = load <2 x float>, ptr %.sroa.26.0..sroa_idx, align 4 ; 5 uses
  %.sroa.04.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.07.0.copyload, i64 0
  %.sroa.01.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.05.0.copyload, i64 0
  %i.ab = fmul <2 x float> %.sroa.07.0.copyload, %.sroa.05.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ab, %shift
  %foldExtExtBinop119 = fmul <2 x float> %.sroa.28.0.copyload, %.sroa.26.0.copyload
  %foldExtExtBinop121 = fadd <2 x float> %foldExtExtBinop119, %foldExtExtBinop
  %i.ac = extractelement <2 x float> %foldExtExtBinop121, i64 0
  %.sroa.210.12.vec.extract.i.i.i = extractelement <2 x float> %.sroa.28.0.copyload, i64 1 ; 2 uses
  %.sroa.28.12.vec.extract.i.i.i = extractelement <2 x float> %.sroa.26.0.copyload, i64 1 ; 2 uses
  %i.ad = fmul float %.sroa.210.12.vec.extract.i.i.i, %.sroa.28.12.vec.extract.i.i.i
  %i.ae = fadd float %i.ad, %i.ac
  %i.af = fcmp olt float %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = shufflevector <2 x float> %.sroa.07.0.copyload, <2 x float> %.sroa.28.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ah = shufflevector <2 x float> %.sroa.05.0.copyload, <2 x float> %.sroa.26.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ai = fadd <4 x float> %i.ag, %i.ah           ; 2 uses
  %i.aj = fmul <4 x float> %i.ai, %i.ai           ; 4 uses
  %shift123 = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop124 = fadd <4 x float> %i.aj, %shift123
  %shift126 = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop127 = fadd <4 x float> %shift126, %foldExtExtBinop124
  %shift129 = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop130 = fadd <4 x float> %shift129, %foldExtExtBinop127
  %i.ak = extractelement <4 x float> %foldExtExtBinop130, i64 0
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ak)
  %i.al = fmul float %sqrt.i.i.i, 5.000000e-01    ; 2 uses
  %i.am = fcmp ogt float %i.al, 1.000000e+00
  %..i.i.i.i = select i1 %i.am, float 1.000000e+00, float %i.al
  %i.an = tail call noundef float @asinf(float noundef %..i.i.i.i) #28
  %i.ao = fmul float %i.an, 2.000000e+00
  %i.ap = fsub float f0x40490FDB, %i.ao
  br label %_ZN4pbrt12AngleBetweenENS_10QuaternionES0_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.aq = shufflevector <2 x float> %.sroa.05.0.copyload, <2 x float> %.sroa.26.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ar = shufflevector <2 x float> %.sroa.07.0.copyload, <2 x float> %.sroa.28.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.as = fsub <4 x float> %i.aq, %i.ar           ; 2 uses
  %i.at = fmul <4 x float> %i.as, %i.as           ; 4 uses
  %shift132 = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop133 = fadd <4 x float> %i.at, %shift132
  %shift135 = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop136 = fadd <4 x float> %shift135, %foldExtExtBinop133
  %shift138 = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop139 = fadd <4 x float> %shift138, %foldExtExtBinop136
  %i.au = extractelement <4 x float> %foldExtExtBinop139, i64 0
  %sqrt.i25.i.i = tail call noundef float @llvm.sqrt.f32(float %i.au)
  %i.av = fmul float %sqrt.i25.i.i, 5.000000e-01  ; 2 uses
  %i.aw = fcmp ogt float %i.av, 1.000000e+00
  %..i.i26.i.i = select i1 %i.aw, float 1.000000e+00, float %i.av
  %i.ax = tail call noundef float @asinf(float noundef %..i.i26.i.i) #28
  %i.ay = fmul float %i.ax, 2.000000e+00
  br label %_ZN4pbrt12AngleBetweenENS_10QuaternionES0_.exit.i

_ZN4pbrt12AngleBetweenENS_10QuaternionES0_.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i = phi float [ %i.ap, %bb.g ], [ %i.ay, %bb.h ] ; 6 uses
  %i.az = fmul float %.0.i.i, %.0.i.i
  %i.ba = fsub float 1.000000e+00, %i.az
  %i.bb = fcmp oeq float %i.ba, 1.000000e+00
  br i1 %i.bb, label %_ZN4pbrt9SinXOverXEf.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZN4pbrt12AngleBetweenENS_10QuaternionES0_.exit.i
  %i.bc = tail call noundef float @sinf(float noundef %.0.i.i) #28
  %i.bd = fdiv float %i.bc, %.0.i.i
  br label %_ZN4pbrt9SinXOverXEf.exit.i

_ZN4pbrt9SinXOverXEf.exit.i:                      ; preds = %bb.i, %_ZN4pbrt12AngleBetweenENS_10QuaternionES0_.exit.i
  %.0.i15.i = phi float [ %i.bd, %bb.i ], [ 1.000000e+00, %_ZN4pbrt12AngleBetweenENS_10QuaternionES0_.exit.i ] ; 5 uses
  %i.be = fmul float %i.n, %.0.i.i                ; 4 uses
  %i.bf = fmul float %i.be, %i.be
  %i.bg = fsub float 1.000000e+00, %i.bf
  %i.bh = fcmp oeq float %i.bg, 1.000000e+00
  br i1 %i.bh, label %_ZN4pbrt9SinXOverXEf.exit17.i, label %bb.j

bb.j:                                             ; preds = %_ZN4pbrt9SinXOverXEf.exit.i
  %i.bi = tail call noundef float @sinf(float noundef %i.be) #28
  %i.bj = fdiv float %i.bi, %i.be
  br label %_ZN4pbrt9SinXOverXEf.exit17.i

_ZN4pbrt9SinXOverXEf.exit17.i:                    ; preds = %bb.j, %_ZN4pbrt9SinXOverXEf.exit.i
  %.0.i16.i = phi float [ %i.bj, %bb.j ], [ 1.000000e+00, %_ZN4pbrt9SinXOverXEf.exit.i ] ; 3 uses
  %i.bk = fmul float %i.m, %.0.i.i                ; 4 uses
  %i.bl = fmul float %i.bk, %i.bk
  %i.bm = fsub float 1.000000e+00, %i.bl
  %i.bn = fcmp oeq float %i.bm, 1.000000e+00
  br i1 %i.bn, label %_ZN4pbrt5SlerpEfNS_10QuaternionES0_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4pbrt9SinXOverXEf.exit17.i
  %i.bo = tail call noundef float @sinf(float noundef %i.bk) #28
  %i.bp = fdiv float %i.bo, %i.bk
  br label %_ZN4pbrt5SlerpEfNS_10QuaternionES0_.exit

_ZN4pbrt5SlerpEfNS_10QuaternionES0_.exit:         ; preds = %_ZN4pbrt9SinXOverXEf.exit17.i, %bb.k
  %.0.i36.i = phi float [ %i.bp, %bb.k ], [ 1.000000e+00, %_ZN4pbrt9SinXOverXEf.exit17.i ] ; 3 uses
  %i.bq = fmul float %i.m, %.sroa.28.12.vec.extract.i.i.i
  %i.br = insertelement <2 x float> poison, float %i.m, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = shufflevector <2 x float> %.sroa.26.0.copyload, <2 x float> %.sroa.05.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.bu = fmul <2 x float> %i.bs, %i.bt
  %i.bv = fmul float %i.m, %.sroa.01.0.vec.extract.i.i.i.i
  %i.bw = fmul float %i.n, %.sroa.210.12.vec.extract.i.i.i
  %i.bx = insertelement <2 x float> poison, float %i.n, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = shufflevector <2 x float> %.sroa.28.0.copyload, <2 x float> %.sroa.07.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.ca = fmul <2 x float> %i.by, %i.bz
  %i.cb = fmul float %i.n, %.sroa.04.0.vec.extract.i.i.i.i
  %i.cc = fmul float %i.cb, %.0.i16.i
  %i.cd = fdiv float %i.cc, %.0.i15.i
  %i.ce = fmul float %i.bv, %.0.i36.i
  %i.cf = fdiv float %i.ce, %.0.i15.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 324
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 356
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 388
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 420
  %.sroa.20.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ci = load <8 x float>, ptr %i.cg, align 4
  %i.cj = insertelement <8 x float> poison, float %i.n, i64 0
  %i.ck = shufflevector <8 x float> %i.cj, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.cl = fmul <8 x float> %i.ck, %i.ci
  %i.cm = load <8 x float>, ptr %i.ch, align 4
  %i.cn = insertelement <8 x float> poison, float %i.m, i64 0
  %i.co = shufflevector <8 x float> %i.cn, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.cp = fmul <8 x float> %i.co, %i.cm
  %i.cq = fadd <8 x float> %i.cl, %i.cp
  store <8 x float> %i.cq, ptr %4, align 4, !tbaa !11, !alias.scope !139
  %i.cr = load <8 x float>, ptr %.sroa.20.0..sroa_idx, align 4
  %i.cs = fmul <8 x float> %i.ck, %i.cr
  %i.ct = load <8 x float>, ptr %.sroa.27.0..sroa_idx, align 4
  %i.cu = fmul <8 x float> %i.co, %i.ct
  %i.cv = fadd <8 x float> %i.cs, %i.cu
  store <8 x float> %i.cv, ptr %.sroa.20.0..sroa_idx93, align 4, !tbaa !11, !alias.scope !139
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.cw = fneg float %i.w
  %i.cx = fneg float %i.x
  %i.cy = fneg float %i.y
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %6, align 8, !alias.scope !140
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float 0.000000e+00, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !140
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %i.w, ptr %.sroa.610.0..sroa_idx.i, align 4, !alias.scope !140
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !140
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float 0.000000e+00, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !140
  %.sroa.1014.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 28
  store float %i.x, ptr %.sroa.1014.0..sroa_idx.i, align 4, !alias.scope !140
  %.sroa.1115.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  store <2 x float> zeroinitializer, ptr %.sroa.1115.0..sroa_idx.i, align 8, !alias.scope !140
  %.sroa.1317.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 40
  store float 1.000000e+00, ptr %.sroa.1317.0..sroa_idx.i, align 8, !alias.scope !140
  %.sroa.1418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 44
  store float %i.y, ptr %.sroa.1418.0..sroa_idx.i, align 4, !alias.scope !140
  %.sroa.1519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 48
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.1519.0..sroa_idx.i, align 8, !alias.scope !140
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 64
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.cz, align 8, !alias.scope !140
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 72
  store float 0.000000e+00, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !140
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 76
  store float %i.cw, ptr %.sroa.6.0..sroa_idx.i, align 4, !alias.scope !140
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 80
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !140
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 88
  store float 0.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !140
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 92
  store float %i.cx, ptr %.sroa.10.0..sroa_idx.i, align 4, !alias.scope !140
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 96
  store <2 x float> zeroinitializer, ptr %.sroa.11.0..sroa_idx.i, align 8, !alias.scope !140
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 104
  store float 1.000000e+00, ptr %.sroa.13.0..sroa_idx.i, align 8, !alias.scope !140
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 108
  store float %i.cy, ptr %.sroa.14.0..sroa_idx.i, align 4, !alias.scope !140
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 112
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.15.0..sroa_idx.i, align 8, !alias.scope !140
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 60
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 76
  store i32 0, ptr %i.de, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 92
  store i32 0, ptr %i.dh, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 108
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.di, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.dj, align 4, !tbaa !11
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.dn = fmul float %i.bw, %.0.i16.i
  %i.do = fdiv float %i.dn, %.0.i15.i
  %i.dp = insertelement <2 x float> poison, float %.0.i16.i, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = fmul <2 x float> %i.ca, %i.dq
  %i.ds = insertelement <2 x float> poison, float %.0.i15.i, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.du = fdiv <2 x float> %i.dr, %i.dt
  %i.dv = insertelement <2 x float> poison, float %.0.i36.i, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = fmul <2 x float> %i.bu, %i.dw
  %i.dy = fmul float %i.bq, %.0.i36.i
  %i.dz = fdiv <2 x float> %i.dx, %i.dt
  %i.ea = fdiv float %i.dy, %.0.i15.i
  %9 = fadd float %i.cd, %i.cf                    ; 5 uses
  %i.eb = fadd <2 x float> %i.du, %i.dz           ; 6 uses
  %i.ec = fadd float %i.do, %i.ea                 ; 3 uses
  %10 = fmul float %9, %9                         ; 2 uses
  %i.ed = extractelement <2 x float> %i.eb, i64 1 ; 4 uses
  %i.ee = fmul float %i.ed, %i.ed                 ; 2 uses
  %i.ef = extractelement <2 x float> %i.eb, i64 0
  %foldExtExtBinop141 = fmul <2 x float> %i.eb, %i.eb
  %i.eg = extractelement <2 x float> %foldExtExtBinop141, i64 0 ; 2 uses
  %i.eh = insertelement <2 x float> poison, float %9, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = fmul <2 x float> %i.ei, %i.eb           ; 3 uses
  %i.ek = fmul float %i.ed, %i.ef                 ; 2 uses
  %i.el = fmul float %i.ed, %i.ec                 ; 2 uses
  %i.em = fadd float %i.ee, %i.eg
  %i.en = fadd float %10, %i.eg
  %i.eo = fmul float %9, %i.ec
  %i.ep = insertelement <4 x float> poison, float %i.em, i64 0
  %i.eq = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.er = shufflevector <4 x float> %i.ep, <4 x float> %i.eq, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.es = insertelement <4 x float> %i.er, float %i.en, i64 2
  %i.et = insertelement <4 x float> %i.es, float %9, i64 3
  %i.eu = insertelement <4 x float> <float 2.000000e+00, float poison, float 2.000000e+00, float poison>, float %i.ec, i64 1
  %i.ev = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ew = fmul <4 x float> %i.et, %i.ev           ; 2 uses
  %i.ex = shufflevector <2 x float> %i.ej, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ey = shufflevector <4 x float> <float 1.000000e+00, float poison, float 1.000000e+00, float poison>, <4 x float> %i.ex, <4 x i32> <i32 0, i32 5, i32 2, i32 poison>
  %i.ez = insertelement <4 x float> %i.ey, float %i.ek, i64 3
  %i.fa = fsub <4 x float> %i.ez, %i.ew           ; 2 uses
  %i.fb = shufflevector <4 x float> %i.ew, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.fc = insertelement <2 x float> %i.fb, float %i.el, i64 0
  %i.fd = fadd <2 x float> %i.ej, %i.fc
  %i.fe = shufflevector <4 x float> %i.fa, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.ff = shufflevector <2 x float> %i.fd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fg = shufflevector <4 x float> %i.fa, <4 x float> %i.ff, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.fh = shufflevector <8 x float> %i.fg, <8 x float> <float poison, float poison, float poison, float 1.000000e+00, float poison, float poison, float poison, float 1.000000e+00>, <8 x i32> <i32 0, i32 1, i32 4, i32 11, i32 5, i32 2, i32 3, i32 15>
  %i.fi = fmul <8 x float> %i.fh, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00, float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 0.000000e+00> ; 4 uses
  %i.fj = shufflevector <8 x float> %i.fe, <8 x float> %i.fi, <2 x i32> <i32 0, i32 12>
  store <2 x float> %i.fj, ptr %i.dd, align 4, !tbaa !11
  %i.fk = extractelement <2 x float> %i.ej, i64 0
  %i.fl = fsub float %i.fk, %i.el
  %i.fm = fmul float %i.fl, 2.000000e+00          ; 2 uses
  store float %i.fm, ptr %i.dk, align 4, !tbaa !11
  %i.fn = shufflevector <8 x float> %i.fi, <8 x float> %i.fe, <2 x i32> <i32 1, i32 10>
  store <2 x float> %i.fn, ptr %i.dl, align 4, !tbaa !11
  %i.fo = fadd float %i.ek, %i.eo
  %i.fp = fmul float %i.fo, 2.000000e+00          ; 2 uses
  store float %i.fp, ptr %i.df, align 4, !tbaa !11
  %i.fq = shufflevector <8 x float> %i.fi, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.fq, ptr %i.dm, align 4, !tbaa !11
  %i.fr = fadd float %10, %i.ee
  %i.fs = fmul float %i.fr, 2.000000e+00
  %i.ft = fsub float 1.000000e+00, %i.fs          ; 2 uses
  store float %i.ft, ptr %i.dg, align 4, !tbaa !11
  store <8 x float> %i.fi, ptr %7, align 4
  %.sroa.11.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %7, i64 32
  store float %i.fm, ptr %.sroa.11.0..sroa_idx.i56, align 4
  %.sroa.12.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %7, i64 36
  store float %i.fp, ptr %.sroa.12.0..sroa_idx.i57, align 4
  store float %i.ft, ptr %i.da, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.db, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.dc, align 4, !tbaa !9
  call void @_ZNK4pbrt9TransformmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %5, ptr noundef nonnull align 4 dereferenceable(128) %6, ptr noundef nonnull align 4 dereferenceable(128) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %8, ptr noundef nonnull align 4 dereferenceable(64) %4, i64 64, i1 false), !tbaa.struct !17
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN4pbrt7InverseILi4EEEN4pstd8optionalINS_12SquareMatrixIXT_EEEEERKS4_(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %3, ptr noundef nonnull align 4 dereferenceable(64) %4)
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.fw = load i8, ptr %i.fv, align 4, !tbaa !14, !range !15, !noundef !16
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %_ZN4pbrt5SlerpEfNS_10QuaternionES0_.exit
  store <8 x float> splat (float +snan(0x200000)), ptr %i.fu, align 4, !tbaa !11
  %i.fy = getelementptr inbounds nuw i8, ptr %8, i64 96
  store <8 x float> splat (float +snan(0x200000)), ptr %i.fy, align 4, !tbaa !11
  br label %_ZN4pbrt9TransformC2ERKNS_12SquareMatrixILi4EEE.exit

_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i: ; preds = %_ZN4pbrt5SlerpEfNS_10QuaternionES0_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.fu, ptr noundef nonnull align 4 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !17
  br label %_ZN4pbrt9TransformC2ERKNS_12SquareMatrixILi4EEE.exit

_ZN4pbrt9TransformC2ERKNS_12SquareMatrixILi4EEE.exit: ; preds = %.preheader.preheader.i, %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @_ZNK4pbrt9TransformmlERKS0_(ptr dead_on_unwind writable sret(%"class.pbrt::Transform") align 4 %0, ptr noundef nonnull align 4 dereferenceable(128) %5, ptr noundef nonnull align 4 dereferenceable(128) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.l

bb.l:                                             ; preds = %_ZN4pbrt9TransformC2ERKNS_12SquareMatrixILi4EEE.exit, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt17AnimatedTransform12ApplyInverseERKNS_3RayEPf(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pbrt::Ray") align 8 captures(none) initializes((0, 28), (32, 40)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(696) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"class.pbrt::Point3fi", align 16   ; 11 uses
  %5 = alloca %"class.pbrt::Point3fi", align 8    ; 6 uses
  %6 = alloca %"class.pbrt::Point3fi", align 16   ; 11 uses
  %7 = alloca %"class.pbrt::Point3fi", align 8    ; 6 uses
  %8 = alloca %"class.pbrt::Point3fi", align 16   ; 11 uses
  %9 = alloca %"class.pbrt::Point3fi", align 8    ; 6 uses
  %10 = alloca %"class.pbrt::Transform", align 4  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.b = load i8, ptr %i.a, align 4, !tbaa !65, !range !15, !noundef !16
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.e = load float, ptr %i.d, align 8, !tbaa !70 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.g = load float, ptr %i.f, align 4, !tbaa !63
  %i.h = fcmp ugt float %i.e, %i.g
  br i1 %i.h, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28, !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28, !noalias !147
  %i.i = load <1 x float>, ptr %2, align 8, !noalias !147
  %.sroa.07.4.vec.insert.i.i = shufflevector <1 x float> %i.i, <1 x float> poison, <2 x i32> zeroinitializer
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load <1 x float>, ptr %i.j, align 4, !noalias !147
  %.sroa.05.4.vec.insert.i.i = shufflevector <1 x float> %i.k, <1 x float> poison, <2 x i32> zeroinitializer
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load <1 x float>, ptr %i.l, align 8, !noalias !147
  %.sroa.0.4.vec.insert.i.i = shufflevector <1 x float> %i.m, <1 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.07.4.vec.insert.i.i, ptr %9, align 8, !tbaa !11, !noalias !147
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  store <2 x float> %.sroa.05.4.vec.insert.i.i, ptr %i.n, align 8, !tbaa !11, !noalias !147
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.o, align 8, !tbaa !11, !noalias !147
  call void @_ZNK4pbrt9Transform12ApplyInverseERKNS_8Point3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3fi") align 4 %8, ptr noundef nonnull align 4 dereferenceable(128) %1, ptr noundef nonnull align 4 dereferenceable(24) %9), !noalias !147
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !147
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.040.0.copyload.i = load <2 x float>, ptr %i.p, align 4, !noalias !147 ; 3 uses
  %.sroa.241.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.241.0.copyload.i = load float, ptr %.sroa.241.0..sroa_idx.i, align 4, !noalias !147 ; 2 uses
  %i.q = shufflevector <2 x float> %.sroa.040.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.t = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.r, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !11, !noalias !147 ; 3 uses
  %i.u = shufflevector <5 x float> %i.t, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.v = shufflevector <5 x float> %i.t, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.w = fmul <2 x float> %i.q, %i.v
  %i.x = load <2 x float>, ptr %i.s, align 4, !tbaa !11, !noalias !147 ; 2 uses
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.z = shufflevector <4 x float> %i.u, <4 x float> %i.y, <2 x i32> <i32 0, i32 4>
  %i.aa = fmul <2 x float> %.sroa.040.0.copyload.i, %i.z
  %i.ab = fadd <2 x float> %i.w, %i.aa
  %i.ac = insertelement <2 x float> poison, float %.sroa.241.0.copyload.i, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = shufflevector <2 x float> %i.x, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.af = shufflevector <5 x float> %i.t, <5 x float> %i.ae, <2 x i32> <i32 2, i32 6>
  %i.ag = fmul <2 x float> %i.ad, %i.af
  %i.ah = fadd <2 x float> %i.ab, %i.ag           ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aj = load <2 x float>, ptr %i.ai, align 4, !tbaa !11, !noalias !147
  %i.ak = fmul <2 x float> %.sroa.040.0.copyload.i, %i.aj ; 2 uses
  %shift = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ak, %shift
  %i.al = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.an = load float, ptr %i.am, align 4, !tbaa !11, !noalias !147
  %i.ao = fmul float %.sroa.241.0.copyload.i, %i.an
  %i.ap = fadd float %i.al, %i.ao                 ; 5 uses
  %i.aq = fmul <2 x float> %i.ah, %i.ah           ; 2 uses
  %shift73 = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop74 = fadd <2 x float> %i.aq, %shift73
  %i.ar = extractelement <2 x float> %foldExtExtBinop74, i64 0
  %i.as = fmul float %i.ap, %i.ap
  %i.at = fadd float %i.ar, %i.as                 ; 2 uses
  %i.au = fcmp ogt float %i.at, 0.000000e+00
  br i1 %i.au, label %bb.d, label %_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf.exit

bb.d:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !58, !noalias !147
  %i.ay = load float, ptr %i.av, align 8, !tbaa !57, !noalias !147
  %i.az = fsub float %i.ax, %i.ay
  %i.ba = fmul float %i.az, 5.000000e-01
  %i.bb = extractelement <2 x float> %i.ah, i64 1
  %i.bc = tail call noundef float @llvm.fabs.f32(float %i.bb)
  %i.bd = fmul float %i.bc, %i.ba
  %i.be = load <6 x float>, ptr %8, align 16, !tbaa !11, !noalias !147 ; 2 uses
  %i.bf = shufflevector <6 x float> %i.be, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.bg = shufflevector <6 x float> %i.be, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.bh = fsub <2 x float> %i.bf, %i.bg
  %i.bi = fmul <2 x float> %i.bh, splat (float 5.000000e-01)
  %i.bj = insertelement <2 x float> %i.ah, float %i.ap, i64 1
  %i.bk = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bj)
  %i.bl = fmul <2 x float> %i.bk, %i.bi           ; 2 uses
  %i.bm = extractelement <2 x float> %i.bl, i64 0
  %i.bn = fadd float %i.bm, %i.bd
  %i.bo = extractelement <2 x float> %i.bl, i64 1
  %i.bp = fadd float %i.bn, %i.bo
  %i.bq = fdiv float %i.bp, %i.at                 ; 3 uses
  %i.br = insertelement <2 x float> poison, float %i.bq, i64 0
end_hunk_0
