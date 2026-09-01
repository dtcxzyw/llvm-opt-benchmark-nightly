Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/subsurface?download=true
inline.NumInlined: 1845
inline.NumDeleted: 691
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN4pbrt10SpawnRayToENS_8Point3fiENS_7Normal3IfEEfS0_S2_:bb.a
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.fca.1.extract32, ptr %.sroa.27.0..sroa_idx.i, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %i.u, ptr %i.w, align 4
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.v, ptr %.sroa.23.0..sroa_idx.i, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %4, ptr %i.x, align 8, !tbaa !458
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.y, align 8, !tbaa !141
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4pbrt9WorkQueueINS_17ShadowRayWorkItemEE4PushES1_(ptr noundef nonnull align 8 dereferenceable(228) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(128) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = atomicrmw add ptr %i.a, i32 1 monotonic, align 4 ; 2 uses
  %i.c = load float, ptr %1, align 8, !tbaa !459
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !122
  %i.f = sext i32 %i.b to i64                     ; 15 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.f
  store float %i.c, ptr %i.g, align 4, !tbaa !123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load float, ptr %i.h, align 4, !tbaa !460
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !125
  %i.l = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.f
  store float %i.i, ptr %i.l, align 4, !tbaa !123
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load float, ptr %i.m, align 8, !tbaa !210
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !126
  %i.q = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.f
  store float %i.n, ptr %i.q, align 4, !tbaa !123
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load float, ptr %i.r, align 4, !tbaa !461
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !127
  %i.v = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.f
  store float %i.s, ptr %i.v, align 4, !tbaa !123
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load float, ptr %i.w, align 8, !tbaa !462
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !128
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.f
  store float %i.x, ptr %i.aa, align 4, !tbaa !123
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !463
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !129
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.f
  store float %i.ac, ptr %i.af, align 4, !tbaa !123
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !458
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !385
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.f
  store float %i.ah, ptr %i.ak, align 4, !tbaa !123
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !387
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.f
  %i.ap = load i64, ptr %i.al, align 8, !tbaa !141
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !141
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !433
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !464
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.f
  store float %i.ar, ptr %i.au, align 4, !tbaa !123
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !115
  %i.ba = getelementptr inbounds [16 x i8], ptr %i.az, i64 %i.f ; 2 uses
  %i.bb = load <4 x float>, ptr %i.av, align 4
  %.sroa.03.4.vec.insert.i.i = shufflevector <4 x float> %i.bb, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bc = load <4 x float>, ptr %i.aw, align 4
  %.sroa.35.12.vec.insert.i.i = shufflevector <4 x float> %i.bc, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %.sroa.03.4.vec.insert.i.i, ptr %i.ba, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store <2 x float> %.sroa.35.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !120
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !119
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.be, i64 %i.f ; 2 uses
  %i.bg = load <4 x float>, ptr %i.ax, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i = shufflevector <4 x float> %i.bg, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.bg, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.bf, align 16
  %.sroa.2.0..0..sroa_idx.i28.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i28.i.i, align 8, !tbaa !120
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !121
  %i.bk = getelementptr inbounds [16 x i8], ptr %i.bj, i64 %i.f ; 2 uses
  %i.bl = load <4 x float>, ptr %i.bh, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i12.i = shufflevector <4 x float> %i.bl, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i13.i = shufflevector <4 x float> %i.bl, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i12.i, ptr %i.bk, align 16
  %.sroa.2.0..0..sroa_idx.i.i14.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i13.i, ptr %.sroa.2.0..0..sroa_idx.i.i14.i, align 8, !tbaa !120
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !121
  %i.bp = getelementptr inbounds [16 x i8], ptr %i.bo, i64 %i.f ; 2 uses
  %i.bq = load <4 x float>, ptr %i.bm, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i17.i = shufflevector <4 x float> %i.bq, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i18.i = shufflevector <4 x float> %i.bq, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i17.i, ptr %i.bp, align 16
  %.sroa.2.0..0..sroa_idx.i.i19.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i18.i, ptr %.sroa.2.0..0..sroa_idx.i.i19.i, align 8, !tbaa !120
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !121
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.f ; 2 uses
  %i.bv = load <4 x float>, ptr %i.br, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i22.i = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i23.i = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i22.i, ptr %i.bu, align 16
  %.sroa.2.0..0..sroa_idx.i.i24.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i23.i, ptr %.sroa.2.0..0..sroa_idx.i.i24.i, align 8, !tbaa !120
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !436
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !466
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.f
  store i32 %i.bx, ptr %i.ca, align 4, !tbaa !136
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt15TabulatedBSSRDF6PDF_SpENS_6Point3IfEENS_7Normal3IfEE(ptr noundef nonnull align 8 dereferenceable(80) %0, <2 x float> %1, float %2, <2 x float> %3, float %4) local_unnamed_addr #9 comdat align 2 {
_ZN4pbrt6Tuple3INS_7Normal3EfEixEi.exit.2:
  %.sroa.033.0.copyload = load <2 x float>, ptr %0, align 8 ; 2 uses
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.234.0.copyload = load float, ptr %.sroa.234.0..sroa_idx, align 8
  %foldExtExtBinop = fsub <2 x float> %1, %.sroa.033.0.copyload ; 2 uses
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop121 = fsub <2 x float> %1, %.sroa.033.0.copyload
  %i.b = extractelement <2 x float> %foldExtExtBinop121, i64 1 ; 3 uses
  %i.c = fsub float %2, %.sroa.234.0.copyload     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.025.0.copyload = load <2 x float>, ptr %i.d, align 8 ; 5 uses
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.226.0.copyload = load float, ptr %.sroa.226.0..sroa_idx, align 8 ; 5 uses
  %.sroa.01.0.vec.extract.i.i = extractelement <2 x float> %.sroa.025.0.copyload, i64 0 ; 3 uses
  %.sroa.01.4.vec.extract.i.i = extractelement <2 x float> %.sroa.025.0.copyload, i64 1 ; 7 uses
  %i.e = tail call noundef float @llvm.copysign.f32(float 1.000000e+00, float %.sroa.226.0.copyload) ; 5 uses
  %i.f = fadd float %.sroa.226.0.copyload, %i.e
  %i.g = fdiv float -1.000000e+00, %i.f           ; 3 uses
  %i.h = fmul float %.sroa.01.0.vec.extract.i.i, %.sroa.01.4.vec.extract.i.i
  %i.i = fmul float %i.h, %i.g                    ; 3 uses
  %foldExtExtBinop123 = fmul <2 x float> %.sroa.025.0.copyload, %.sroa.025.0.copyload
  %i.j = extractelement <2 x float> %foldExtExtBinop123, i64 0
  %i.k = fmul float %i.e, %i.j
  %i.l = fmul float %i.k, %i.g
  %i.m = fadd float %i.l, 1.000000e+00            ; 2 uses
  %i.n = fmul float %i.e, %i.i                    ; 2 uses
  %i.o = fneg float %i.e
  %i.p = fmul float %.sroa.01.0.vec.extract.i.i, %i.o ; 3 uses
  %i.q = fmul float %.sroa.01.4.vec.extract.i.i, %.sroa.01.4.vec.extract.i.i
  %i.r = fmul float %i.q, %i.g
  %i.s = fadd float %i.e, %i.r                    ; 2 uses
  %i.t = fmul float %i.a, %i.m
  %i.u = fmul float %i.b, %i.n
  %i.v = fadd float %i.t, %i.u
  %i.w = fmul float %i.c, %i.p
  %i.x = fadd float %i.w, %i.v                    ; 2 uses
  %i.y = fmul float %i.a, %i.i
  %i.z = fmul float %i.b, %i.s
  %i.aa = fadd float %i.y, %i.z
  %i.ab = fmul float %i.c, %.sroa.01.4.vec.extract.i.i
  %i.ac = fsub float %i.aa, %i.ab                 ; 2 uses
  %foldExtExtBinop125 = fmul <2 x float> %foldExtExtBinop, %.sroa.025.0.copyload
  %i.ad = extractelement <2 x float> %foldExtExtBinop125, i64 0
  %i.ae = fmul float %i.b, %.sroa.01.4.vec.extract.i.i
  %i.af = fadd float %i.ad, %i.ae
  %i.ag = fmul float %i.c, %.sroa.226.0.copyload
  %i.ah = fadd float %i.ag, %i.af                 ; 2 uses
  %i.ai = fmul float %i.ac, %i.ac                 ; 2 uses
  %i.aj = fmul float %i.ah, %i.ah                 ; 2 uses
  %i.ak = fadd float %i.aj, %i.ai
  %sqrt115 = tail call float @llvm.sqrt.f32(float %i.ak)
  %i.al = fmul float %i.x, %i.x                   ; 2 uses
  %i.am = fadd float %i.al, %i.ai
  %sqrt = tail call float @llvm.sqrt.f32(float %i.am)
  %i.an = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt15TabulatedBSSRDF6PDF_SrEf(ptr noundef nonnull align 8 dereferenceable(80) %0, float noundef %sqrt115) ; 2 uses
  %i.ao = fadd float %i.aj, %i.al
  %sqrt114 = tail call float @llvm.sqrt.f32(float %i.ao)
  %i.ap = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt15TabulatedBSSRDF6PDF_SrEf(ptr noundef nonnull align 8 dereferenceable(80) %0, float noundef %sqrt114) ; 2 uses
  %i.aq = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt15TabulatedBSSRDF6PDF_SrEf(ptr noundef nonnull align 8 dereferenceable(80) %0, float noundef %sqrt) ; 2 uses
  %i.ar = extractvalue { <2 x float>, <2 x float> } %i.aq, 1
  %i.as = extractvalue { <2 x float>, <2 x float> } %i.aq, 0
  %i.at = extractvalue { <2 x float>, <2 x float> } %i.an, 1
  %.sroa.04.0.vec.extract.i.i51 = extractelement <2 x float> %3, i64 0 ; 3 uses
  %i.au = fmul float %4, %i.p                     ; 2 uses
  %i.av = fneg float %i.au
  %.sroa.04.4.vec.extract.i.i53 = extractelement <2 x float> %3, i64 1 ; 3 uses
  %5 = extractvalue { <2 x float>, <2 x float> } %i.ap, 1
  %6 = fneg float %.sroa.01.4.vec.extract.i.i     ; 2 uses
  %7 = fmul float %4, %6                          ; 2 uses
  %8 = fneg float %7
  %9 = extractvalue { <2 x float>, <2 x float> } %i.an, 0
  %10 = extractvalue { <2 x float>, <2 x float> } %i.ap, 0
  %i.aw = fmul float %4, %.sroa.226.0.copyload    ; 2 uses
  %i.ax = fneg float %i.aw
  %11 = tail call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i.i53, float %.sroa.01.4.vec.extract.i.i, float %i.aw)
  %i.ay = tail call noundef float @llvm.fma.f32(float %4, float %6, float %8)
  %i.az = tail call noundef float @llvm.fma.f32(float %4, float %i.p, float %i.av)
  %12 = tail call noundef float @llvm.fma.f32(float %4, float %.sroa.226.0.copyload, float %i.ax)
  %i.ba = tail call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i.i53, float %i.s, float %7)
  %13 = tail call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i.i53, float %i.n, float %i.au)
  %14 = fadd float %11, %12
  %15 = fadd float %i.ay, %i.ba
  %16 = fadd float %i.az, %13
  %i.bb = tail call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i.i51, float %.sroa.01.0.vec.extract.i.i, float %14)
  %17 = tail call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i.i51, float %i.i, float %15)
  %i.bc = tail call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i.i51, float %i.m, float %16)
  %18 = insertelement <3 x float> poison, float %i.bc, i64 0
  %19 = insertelement <3 x float> %18, float %17, i64 1
  %20 = insertelement <3 x float> %19, float %i.bb, i64 2
  %21 = tail call <3 x float> @llvm.fabs.v3f32(<3 x float> %20) ; 3 uses
  %22 = shufflevector <2 x float> %9, <2 x float> %i.at, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bd = shufflevector <3 x float> %21, <3 x float> poison, <4 x i32> zeroinitializer
  %i.be = fmul <4 x float> %22, %i.bd
  %i.bf = fmul <4 x float> %i.be, splat (float 2.500000e-01)
  %i.bg = fadd <4 x float> %i.bf, zeroinitializer
  %i.bh = shufflevector <2 x float> %10, <2 x float> %5, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %23 = shufflevector <3 x float> %21, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bi = fmul <4 x float> %i.bh, %23
  %i.bj = fmul <4 x float> %i.bi, splat (float 2.500000e-01)
  %i.bk = fadd <4 x float> %i.bg, %i.bj
  %i.bl = shufflevector <2 x float> %i.as, <2 x float> %i.ar, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %24 = shufflevector <3 x float> %21, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bm = fmul <4 x float> %i.bl, %24
  %i.bn = fmul <4 x float> %i.bm, splat (float 5.000000e-01)
  %i.bo = fadd <4 x float> %i.bk, %i.bn           ; 2 uses
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bq = shufflevector <4 x float> %i.bo, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.bp, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.bq, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt15TabulatedBSSRDF2SrEf(ptr noundef nonnull align 8 dereferenceable(80) %0, float noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pbrt::SampledSpectrum", align 16 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [4 x float], align 16             ; 4 uses
  %i.d = alloca [4 x float], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  br label %bb.c

bb.b:                                             ; preds = %bb.r
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.e, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !120
  %i.k = shufflevector <2 x float> %.sroa.0.0.copyload, <2 x float> %.sroa.2.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.l = fmul <4 x float> %i.k, %i.k
  %i.m = load <4 x float>, ptr %2, align 16, !tbaa !123
  %i.n = fmul <4 x float> %i.l, %i.m              ; 2 uses
  %i.o = fcmp ogt <4 x float> %i.n, zeroinitializer
  %i.p = select <4 x i1> %i.o, <4 x float> %i.n, <4 x float> zeroinitializer ; 2 uses
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.r = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.q, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %i.r, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i

bb.c:                                             ; preds = %bb.a, %bb.r
  %indvars.iv61 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next62, %bb.r ] ; 4 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv61
  %i.t = load float, ptr %i.s, align 4, !tbaa !123
  %i.u = fmul float %1, %i.t                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !200  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !187
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !188
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv61
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !123
  %i.ac = call noundef zeroext i1 @_ZN4pbrt17CatmullRomWeightsEN4pstd4spanIKfEEfPiNS1_IfEE(ptr %i.x, i64 %i.z, float noundef %i.ab, ptr noundef nonnull %i.a, ptr nonnull %i.c, i64 4)
  br i1 %i.ac, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !200 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !187
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !188
  %i.ai = call noundef zeroext i1 @_ZN4pbrt17CatmullRomWeightsEN4pstd4spanIKfEEfPiNS1_IfEE(ptr %i.af, i64 %i.ah, float noundef %i.u, ptr noundef nonnull %i.b, ptr nonnull %i.d, i64 4)
  br i1 %i.ai, label %.preheader36, label %bb.r

.preheader36:                                     ; preds = %bb.d
  %i.aj = load i32, ptr %i.a, align 4
  %i.ak = load i32, ptr %i.b, align 4             ; 5 uses
  %i.al = sext i32 %i.ak to i64                   ; 5 uses
  %i.am = load float, ptr %i.d, align 16
  %i.an = load float, ptr %i.h, align 4           ; 2 uses
  %i.ao = load float, ptr %i.i, align 8           ; 2 uses
  %i.ap = load float, ptr %i.j, align 4           ; 2 uses
  %i.aq = icmp sgt i32 %i.ak, -1
  %i.ar = add nsw i64 %i.al, 1                    ; 2 uses
  %i.as = icmp sgt i32 %i.ak, -2
  %i.at = add nsw i64 %i.al, 2                    ; 2 uses
  %i.au = icmp sgt i32 %i.ak, -3
  %i.av = add nsw i64 %i.al, 3                    ; 2 uses
  %i.aw = icmp sgt i32 %i.ak, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader36, %.split46.us
  %indvars.iv = phi i64 [ 0, %.preheader36 ], [ %indvars.iv.next, %.split46.us ] ; 3 uses
  %.02653 = phi float [ 0.000000e+00, %.preheader36 ], [ %.us-phi, %.split46.us ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !123 ; 7 uses
  %i.az = trunc i64 %indvars.iv to i32
  %i.ba = add i32 %i.aj, %i.az
  %.fr56 = freeze i32 %i.ba                       ; 2 uses
  %i.bb = icmp sgt i32 %.fr56, -1
  %i.bc = zext nneg i32 %.fr56 to i64             ; 8 uses
  %i.bd = fmul float %i.ay, %i.am                 ; 2 uses
  %i.be = fcmp une float %i.bd, 0.000000e+00      ; 2 uses
  br i1 %i.bb, label %.preheader.split.us.preheader, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %i.bf = fmul float %i.ay, %i.an
  %i.bg = fcmp une float %i.bf, 0.000000e+00
  %or.cond = select i1 %i.be, i1 true, i1 %i.bg
  %i.bh = fmul float %i.ay, %i.ao
  %i.bi = fcmp une float %i.bh, 0.000000e+00
  %or.cond80 = select i1 %or.cond, i1 true, i1 %i.bi
  %i.bj = fmul float %i.ay, %i.ap
  %i.bk = fcmp une float %i.bj, 0.000000e+00
  %or.cond82 = select i1 %or.cond80, i1 true, i1 %i.bk
  br i1 %or.cond82, label %.split.us, label %.split46.us

.preheader.split.us.preheader:                    ; preds = %.preheader
  br i1 %i.be, label %bb.e, label %.preheader.split.us.1

bb.e:                                             ; preds = %.preheader.split.us.preheader
  %i.bl = load ptr, ptr %i.f, align 8, !tbaa !200 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !188
  %i.bo = icmp ugt i64 %i.bn, %i.bc
  br i1 %i.bo, label %bb.f, label %.split.us

bb.f:                                             ; preds = %bb.e
  br i1 %i.aq, label %bb.g, label %.split44.us

bb.g:                                             ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !188 ; 2 uses
  %i.br = icmp ugt i64 %i.bq, %i.al
  br i1 %i.br, label %_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us, label %.split44.us

_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us:   ; preds = %bb.g
  %i.bs = mul i64 %i.bq, %i.bc
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !187
  %i.bv = getelementptr [4 x i8], ptr %i.bu, i64 %i.bs
  %i.bw = getelementptr [4 x i8], ptr %i.bv, i64 %i.al
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !123
  %i.by = fmul float %i.bd, %i.bx
  %i.bz = fadd float %.02653, %i.by
  br label %.preheader.split.us.1

.preheader.split.us.1:                            ; preds = %_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us, %.preheader.split.us.preheader
  %.2.us = phi float [ %i.bz, %_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us ], [ %.02653, %.preheader.split.us.preheader ] ; 2 uses
  %i.ca = fmul float %i.ay, %i.an                 ; 2 uses
  %i.cb = fcmp une float %i.ca, 0.000000e+00
  br i1 %i.cb, label %bb.h, label %.preheader.split.us.2

bb.h:                                             ; preds = %.preheader.split.us.1
  %i.cc = load ptr, ptr %i.f, align 8, !tbaa !200 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !188
  %i.cf = icmp ugt i64 %i.ce, %i.bc
  br i1 %i.cf, label %bb.i, label %.split.us

bb.i:                                             ; preds = %bb.h
  br i1 %i.as, label %bb.j, label %.split44.us

bb.j:                                             ; preds = %bb.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !188 ; 2 uses
  %i.ci = icmp ugt i64 %i.ch, %i.ar
  br i1 %i.ci, label %_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us.1, label %.split44.us

_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us.1: ; preds = %bb.j
  %i.cj = mul i64 %i.ch, %i.bc
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !187
  %i.cm = getelementptr [4 x i8], ptr %i.cl, i64 %i.cj
  %i.cn = getelementptr [4 x i8], ptr %i.cm, i64 %i.ar
  %i.co = load float, ptr %i.cn, align 4, !tbaa !123
  %i.cp = fmul float %i.ca, %i.co
  %i.cq = fadd float %.2.us, %i.cp
  br label %.preheader.split.us.2

.preheader.split.us.2:                            ; preds = %_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us.1, %.preheader.split.us.1
  %.2.us.1 = phi float [ %i.cq, %_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us.1 ], [ %.2.us, %.preheader.split.us.1 ] ; 2 uses
  %i.cr = fmul float %i.ay, %i.ao                 ; 2 uses
  %i.cs = fcmp une float %i.cr, 0.000000e+00
  br i1 %i.cs, label %bb.k, label %.preheader.split.us.3

bb.k:                                             ; preds = %.preheader.split.us.2
  %i.ct = load ptr, ptr %i.f, align 8, !tbaa !200 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !188
  %i.cw = icmp ugt i64 %i.cv, %i.bc
  br i1 %i.cw, label %bb.l, label %.split.us

bb.l:                                             ; preds = %bb.k
  br i1 %i.au, label %bb.m, label %.split44.us

bb.m:                                             ; preds = %bb.l
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !188 ; 2 uses
  %i.cz = icmp ugt i64 %i.cy, %i.at
  br i1 %i.cz, label %_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us.2, label %.split44.us

end_hunk_0
begin_hunk_1_@_ZN4pbrt6detail21stringPrintfRecursiveIRA47_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_:bb.a
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body26, %bb.h
  %.pn19.pn = phi { ptr, i32 } [ %i.w, %bb.h ], [ %.pn19, %.body26 ], [ %.pn19.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.p

bb.p:                                             ; preds = %.body, %bb.n
  %.pn19.pn.pn = phi { ptr, i32 } [ %.pn19.pn, %.body ], [ %i.ca, %bb.n ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #23
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn19.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn, %bb.p ], [ %i.bz, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.z

bb.r:                                             ; preds = %bb.d
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !237
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %.invoke, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.cn = load ptr, ptr %3, align 8, !tbaa !239   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !671)
  %i.co = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.cn, ptr noundef nonnull align 1 dereferenceable(47) %2) #23, !noalias !671
  %i.cp = add nsw i32 %i.co, 1
  %i.cq = sext i32 %i.cp to i64                   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.cr, ptr %7, align 8, !tbaa !231, !alias.scope !671
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.cs, align 8, !tbaa !237, !alias.scope !671
  store i8 0, ptr %i.cr, align 8, !tbaa !120, !alias.scope !671
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cq, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41 unwind label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41: ; preds = %bb.s
  %i.ct = load ptr, ptr %7, align 8, !tbaa !239, !alias.scope !671
  %i.cu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ct, i64 noundef %i.cq, ptr noundef %i.cn, ptr noundef nonnull align 1 dereferenceable(47) %2) #23 ; 0 uses
  %i.cv = load i64, ptr %i.cs, align 8, !tbaa !237, !alias.scope !671
  %i.cw = add i64 %i.cv, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cw, i64 noundef 1)
          to label %_ZN4pbrt6detail9formatOneIRA47_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit unwind label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #25
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %7, align 8, !tbaa !239, !alias.scope !671 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cr
  br i1 %i.db, label %.body42, label %.body42.sink.split

_ZN4pbrt6detail9formatOneIRA47_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41
  %i.dc = load i64, ptr %i.cs, align 8, !tbaa !237 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !237
  %i.df = sub i64 4611686018427387903, %i.de
  %i.dg = icmp ult i64 %i.df, %i.dc
  br i1 %i.dg, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44

bb.v:                                             ; preds = %_ZN4pbrt6detail9formatOneIRA47_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #24
          to label %.noexc45 unwind label %bb.w

.noexc45:                                         ; preds = %bb.v
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44: ; preds = %_ZN4pbrt6detail9formatOneIRA47_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit
  %i.dh = load ptr, ptr %7, align 8, !tbaa !239
  %i.di = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dh, i64 noundef %i.dc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47 unwind label %bb.w ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44
  %i.dj = load ptr, ptr %7, align 8, !tbaa !239   ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.cr
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47
  %i.dl = load i64, ptr %i.cr, align 8, !tbaa !120
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.x

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44, %bb.v
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %7, align 8, !tbaa !239   ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.cr
  br i1 %i.dp, label %.body42, label %.body42.sink.split

.body42.sink.split:                               ; preds = %bb.w, %bb.u
  %.sink89 = phi ptr [ %i.da, %bb.u ], [ %i.do, %bb.w ]
  %.pn.ph = phi { ptr, i32 } [ %i.cz, %bb.u ], [ %i.dn, %bb.w ]
  %i.dq = load i64, ptr %i.cr, align 8, !tbaa !120
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %.sink89, i64 noundef %i.dr) #26
  br label %.body42

.body42:                                          ; preds = %.body42.sink.split, %bb.w, %bb.u
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.u ], [ %i.dn, %bb.w ], [ %.pn.ph, %.body42.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.z

.invoke:                                          ; preds = %bb.a, %bb.r, %bb.c
  %i.ds = phi i32 [ 257, %bb.c ], [ 266, %bb.r ], [ 229, %bb.a ]
  %i.dt = phi ptr [ @.str.16, %bb.c ], [ @.str.17, %bb.r ], [ @.str.15, %bb.a ]
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.14, i32 noundef %i.ds, ptr noundef nonnull %i.dt) #24
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.x:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !252
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull %0, ptr noundef %i.du)
          to label %bb.y unwind label %bb.b

bb.y:                                             ; preds = %bb.x
  %i.dv = load ptr, ptr %3, align 8, !tbaa !239   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.y
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !120
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.z:                                             ; preds = %.body42, %bb.q, %bb.b
  %.pn24 = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn19.pn.pn.pn, %bb.q ], [ %.pn, %.body42 ]
  %i.ea = load ptr, ptr %3, align 8, !tbaa !239   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.z
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !120
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn24
}

declare void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, ptr, i64) local_unnamed_addr #1

declare void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124), ptr, i64, ptr, i64) local_unnamed_addr #1

declare void @_ZNK4pbrt24PortalImageInfiniteLight8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEb(ptr dead_on_unwind writable sret(%"class.pstd::optional.75") align 8, ptr noundef nonnull align 8 dereferenceable(516), ptr noundef byval(%"class.pbrt::LightSampleContext") align 8, <2 x float>, ptr noundef byval(%"class.pbrt::SampledWavelengths") align 8, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_subsurface.cpp() #20 section ".text.startup" {
bb.a:
  store <8 x float> <float f0x3F652546, float 2.664000e-01, float -1.614000e-01, float f0xBF400D1B, float 1.713500e+00, float 3.670000e-02, float 3.890000e-02, float -6.850000e-02>, ptr @_ZN4pbrtL10LMSFromXYZE, align 32, !tbaa !123
  store float 1.029600e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10LMSFromXYZE, i64 32), align 32, !tbaa !123
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10LMSFromXYZE) ; 0 uses
  store <8 x float> <float 9.869930e-01, float -1.470540e-01, float 1.599630e-01, float 4.323050e-01, float 5.183600e-01, float 4.929120e-02, float -8.528660e-03, float 4.004280e-02>, ptr @_ZN4pbrtL10XYZFromLMSE, align 32, !tbaa !123
  store float 9.684870e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10XYZFromLMSE, i64 32), align 32, !tbaa !123
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10XYZFromLMSE) ; 0 uses
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL29STATS_REGredundantBufferBytesE, ptr noundef nonnull @"_ZN4pbrt3$_08__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL25STATS_REGnBufferCacheHitsE, ptr noundef nonnull @"_ZN4pbrt3$_18__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fma.v2f32(<2 x float>, <2 x float>, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fabs.v3f32(<3 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.copysign.v2f32(<2 x float>, <2 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x float> @llvm.masked.load.v5f32.p0(ptr captures(none), <5 x i1>, <5 x float>) #22

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nounwind }
attributes #24 = { noreturn }
attributes #25 = { noreturn nounwind }
attributes #26 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 1}
!10 = !{!"_ZTSN4pbrt23WavefrontPathIntegratorE", !11, i64 0, !11, i64 1, !11, i64 2, !12, i64 3, !12, i64 15, !13, i64 32, !15, i64 40, !16, i64 48, !19, i64 56, !21, i64 64, !23, i64 72, !25, i64 80, !26, i64 88, !6, i64 96, !6, i64 100, !11, i64 104, !6, i64 108, !6, i64 112, !28, i64 120, !7, i64 520, !42, i64 536, !43, i64 544, !44, i64 552, !45, i64 560, !46, i64 568, !47, i64 576, !47, i64 584, !48, i64 592, !49, i64 600, !50, i64 608, !51, i64 616, !51, i64 624, !52, i64 632, !53, i64 640}
!11 = !{!"bool", !7, i64 0}
!12 = !{!"_ZTSN4pstd5arrayIbLi12EEE", !7, i64 0}
!13 = !{!"p1 _ZTSN4pbrt23WavefrontPathIntegrator5StatsE", !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!"p1 _ZTSN4pstd3pmr15memory_resourceE", !14, i64 0}
!16 = !{!"_ZTSN4pbrt6FilterE", !17, i64 0}
!17 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_9BoxFilterENS_14GaussianFilterENS_14MitchellFilterENS_17LanczosSincFilterENS_14TriangleFilterEEEE", !18, i64 0}
!18 = !{!"long", !7, i64 0}
!19 = !{!"_ZTSN4pbrt4FilmE", !20, i64 0}
!20 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_7RGBFilmENS_11GBufferFilmENS_12SpectralFilmEEEE", !18, i64 0}
!21 = !{!"_ZTSN4pbrt7SamplerE", !22, i64 0}
!22 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_14PMJ02BNSamplerENS_18IndependentSamplerENS_17StratifiedSamplerENS_13HaltonSamplerENS_18PaddedSobolSamplerENS_12SobolSamplerENS_13ZSobolSamplerENS_10MLTSamplerENS_15DebugMLTSamplerEEEE", !18, i64 0}
!23 = !{!"_ZTSN4pbrt6CameraE", !24, i64 0}
!24 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_17PerspectiveCameraENS_18OrthographicCameraENS_15SphericalCameraENS_15RealisticCameraEEEE", !18, i64 0}
!25 = !{!"p1 _ZTSN4pstd6vectorIN4pbrt5LightENS_3pmr21polymorphic_allocatorIS2_EEEE", !14, i64 0}
!26 = !{!"_ZTSN4pbrt12LightSamplerE", !27, i64 0}
!27 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_19UniformLightSamplerENS_17PowerLightSamplerENS_22ExhaustiveLightSamplerENS_15BVHLightSamplerEEEE", !18, i64 0}
!28 = !{!"_ZTSN4pbrt3SOAINS_16PixelSampleStateEEE", !6, i64 0, !29, i64 8, !30, i64 16, !32, i64 40, !34, i64 80, !34, i64 104, !35, i64 128, !41, i64 360}
!29 = !{!"p1 float", !14, i64 0}
!30 = !{!"_ZTSN4pbrt3SOAINS_6Point2IiEEEE", !6, i64 0, !31, i64 8, !31, i64 16}
!31 = !{!"p1 int", !14, i64 0}
!32 = !{!"_ZTSN4pbrt3SOAINS_18SampledWavelengthsEEE", !6, i64 0, !33, i64 8, !33, i64 16, !29, i64 24, !29, i64 32}
!33 = !{!"p1 _ZTSN4pbrt6Float4E", !14, i64 0}
!34 = !{!"_ZTSN4pbrt3SOAINS_15SampledSpectrumEEE", !6, i64 0, !33, i64 8, !29, i64 16}
!35 = !{!"_ZTSN4pbrt3SOAINS_14VisibleSurfaceEEE", !6, i64 0, !36, i64 8, !37, i64 16, !38, i64 48, !38, i64 80, !39, i64 112, !29, i64 136, !40, i64 144, !40, i64 176, !34, i64 208}
!36 = !{!"p1 bool", !14, i64 0}
!37 = !{!"_ZTSN4pbrt3SOAINS_6Point3IfEEEE", !6, i64 0, !29, i64 8, !29, i64 16, !29, i64 24}
!38 = !{!"_ZTSN4pbrt3SOAINS_7Normal3IfEEEE", !6, i64 0, !29, i64 8, !29, i64 16, !29, i64 24}
!39 = !{!"_ZTSN4pbrt3SOAINS_6Point2IfEEEE", !6, i64 0, !29, i64 8, !29, i64 16}
!40 = !{!"_ZTSN4pbrt3SOAINS_7Vector3IfEEEE", !6, i64 0, !29, i64 8, !29, i64 16, !29, i64 24}
!41 = !{!"_ZTSN4pbrt3SOAINS_10RaySamplesEEE", !33, i64 0, !33, i64 8, !33, i64 16, !29, i64 24, !29, i64 32}
!42 = !{!"p1 _ZTSN4pbrt18WavefrontAggregateE", !14, i64 0}
!43 = !{!"p1 _ZTSN4pbrt17MediumSampleQueueE", !14, i64 0}
!44 = !{!"p1 _ZTSN4pbrt14MultiWorkQueueINS_8TypePackIJNS_21MediumScatterWorkItemINS_15HGPhaseFunctionEEEEEEEE", !14, i64 0}
!45 = !{!"p1 _ZTSN4pbrt15EscapedRayQueueE", !14, i64 0}
!46 = !{!"p1 _ZTSN4pbrt9WorkQueueINS_20HitAreaLightWorkItemEEE", !14, i64 0}
!47 = !{!"p1 _ZTSN4pbrt14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS2_INS_23CoatedConductorMaterialEEENS2_INS_17ConductorMaterialEEENS2_INS_18DielectricMaterialEEENS2_INS_15DiffuseMaterialEEENS2_INS_27DiffuseTransmissionMaterialEEENS2_INS_12HairMaterialEEENS2_INS_16MeasuredMaterialEEENS2_INS_18SubsurfaceMaterialEEENS2_INS_22ThinDielectricMaterialEEENS2_INS_11MixMaterialEEEEEEEE", !14, i64 0}
!48 = !{!"p1 _ZTSN4pbrt9WorkQueueINS_17ShadowRayWorkItemEEE", !14, i64 0}
!49 = !{!"p1 _ZTSN4pbrt25GetBSSRDFAndProbeRayQueueE", !14, i64 0}
!50 = !{!"p1 _ZTSN4pbrt22SubsurfaceScatterQueueE", !14, i64 0}
!51 = !{!"p1 _ZTSN4pbrt3RGBE", !14, i64 0}
!52 = !{!"p1 _ZTSSt6atomicIbE", !14, i64 0}
!53 = !{!"p1 _ZTSSt6thread", !14, i64 0}
!54 = !{i8 0, i8 2}
!55 = !{}
!56 = !{!57, !57, i64 0}
!57 = !{!"p1 _ZTSN4pbrt8RayQueueE", !14, i64 0}
!58 = !{!10, !49, i64 600}
!59 = !{!60, !61, i64 0}
!60 = !{!"_ZTSZN4pbrt23WavefrontPathIntegrator16SampleSubsurfaceEiE3$_0", !61, i64 0}
!61 = !{!"p1 _ZTSN4pbrt23WavefrontPathIntegratorE", !14, i64 0}
!62 = !{!63, !63, i64 0}
!63 = !{!"p1 _ZTSN4pbrt9WorkQueueINS_28GetBSSRDFAndProbeRayWorkItemEEE", !14, i64 0}
!64 = !{!65, !65, i64 0}
!65 = !{!"p1 _ZTSN4pbrt11PBRTOptionsE", !14, i64 0}
!66 = !{!67, !11, i64 10}
!67 = !{!"_ZTSN4pbrt16BasicPBRTOptionsE", !6, i64 0, !11, i64 4, !11, i64 5, !11, i64 6, !11, i64 7, !11, i64 8, !11, i64 9, !11, i64 10, !11, i64 11, !11, i64 12, !11, i64 13, !68, i64 16}
!68 = !{!"_ZTSN4pbrt25RenderingCoordinateSystemE", !7, i64 0}
!69 = !{!14, !14, i64 0}
!70 = !{!71, !71, i64 0}
!71 = !{!"p2 _ZTSN4pbrt9WorkQueueINS_28GetBSSRDFAndProbeRayWorkItemEEE", !72, i64 0}
!72 = !{!"any p2 pointer", !14, i64 0}
!73 = !{!74, !14, i64 24}
!74 = !{!"_ZTSSt8functionIFvlEE", !75, i64 0, !14, i64 24}
!75 = !{!"_ZTSSt14_Function_base", !7, i64 0, !14, i64 16}
!76 = !{!75, !14, i64 16}
!77 = !{!78, !78, i64 0}
!78 = !{!"p1 _ZTSSt8functionIFvlEE", !14, i64 0}
!79 = !{!80, !14, i64 24}
!80 = !{!"_ZTSSt8functionIFvllEE", !75, i64 0, !14, i64 24}
!81 = !{!10, !42, i64 536}
!82 = !{!10, !6, i64 112}
!83 = !{!10, !50, i64 608}
!84 = !{!85, !85, i64 0}
!85 = !{!"vtable pointer", !8, i64 0}
!86 = !{!87, !61, i64 0}
!87 = !{!"_ZTSZN4pbrt23WavefrontPathIntegrator16SampleSubsurfaceEiE3$_1", !61, i64 0, !57, i64 8}
!88 = !{!87, !57, i64 8}
!89 = !{!90, !90, i64 0}
!90 = !{!"p1 _ZTSN4pbrt9WorkQueueINS_25SubsurfaceScatterWorkItemEEE", !14, i64 0}
!91 = !{!92, !92, i64 0}
!92 = !{!"p2 _ZTSN4pbrt9WorkQueueINS_25SubsurfaceScatterWorkItemEEE", !72, i64 0}
!93 = !{!18, !18, i64 0}
!94 = !{!95, !78, i64 0}
!95 = !{!"_ZTSZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_", !78, i64 0}
!96 = !{i64 8}
!97 = distinct !{null, null, null, null}
!98 = distinct !{!98, !99}
!99 = !{!"llvm.loop.mustprogress"}
!100 = !{!101, !101, i64 0}
!101 = !{!"p1 _ZTSSt9type_info", !14, i64 0}
!102 = !{!103, !14, i64 0}
!103 = !{!"_ZTSZN4pbrt12ForAllQueuedIZNS_23WavefrontPathIntegrator16SampleSubsurfaceEiE3$_0NS_28GetBSSRDFAndProbeRayWorkItemEEEvPKcPKNS_9WorkQueueIT0_EEiOT_EUliE_", !14, i64 0, !71, i64 8}
!104 = !{!103, !71, i64 8}
!105 = !{!106, !107, i64 8}
!106 = !{!"_ZTSN4pbrt3SOAINS_28GetBSSRDFAndProbeRayWorkItemEEE", !6, i64 0, !107, i64 8, !32, i64 16, !34, i64 56, !34, i64 80, !37, i64 104, !40, i64 136, !38, i64 168, !38, i64 200, !40, i64 232, !39, i64 264, !31, i64 288, !108, i64 296, !29, i64 320, !31, i64 328}
!107 = !{!"p1 _ZTSN4pbrt8MaterialE", !14, i64 0}
!108 = !{!"_ZTSN4pbrt3SOAINS_15MediumInterfaceEEE", !6, i64 0, !109, i64 8, !109, i64 16}
!109 = !{!"p1 _ZTSN4pbrt6MediumE", !14, i64 0}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZNK4pbrt3SOAINS_28GetBSSRDFAndProbeRayWorkItemEEixEi: argument 0"}
!112 = distinct !{!112, !"_ZNK4pbrt3SOAINS_28GetBSSRDFAndProbeRayWorkItemEEixEi"}
!113 = !{!114, !18, i64 0}
!114 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_21CoatedDiffuseMaterialENS_23CoatedConductorMaterialENS_17ConductorMaterialENS_18DielectricMaterialENS_15DiffuseMaterialENS_27DiffuseTransmissionMaterialENS_12HairMaterialENS_16MeasuredMaterialENS_18SubsurfaceMaterialENS_22ThinDielectricMaterialENS_11MixMaterialEEEE", !18, i64 0}
!115 = !{!32, !33, i64 8}
!116 = !{!117, !111}
!117 = distinct !{!117, !118, !"_ZNK4pbrt3SOAINS_18SampledWavelengthsEEixEi: argument 0"}
!118 = distinct !{!118, !"_ZNK4pbrt3SOAINS_18SampledWavelengthsEEixEi"}
!119 = !{!32, !33, i64 16}
!120 = !{!7, !7, i64 0}
!121 = !{!34, !33, i64 8}
!122 = !{!37, !29, i64 8}
!123 = !{!124, !124, i64 0}
!124 = !{!"float", !7, i64 0}
!125 = !{!37, !29, i64 16}
!126 = !{!37, !29, i64 24}
!127 = !{!40, !29, i64 8}
!128 = !{!40, !29, i64 16}
!129 = !{!40, !29, i64 24}
!130 = !{!38, !29, i64 8}
!131 = !{!38, !29, i64 16}
!132 = !{!38, !29, i64 24}
!133 = !{!39, !29, i64 8}
!134 = !{!39, !29, i64 16}
!135 = !{!106, !31, i64 288}
!136 = !{!6, !6, i64 0}
!137 = !{!108, !109, i64 8}
!138 = !{!139, !111}
!139 = distinct !{!139, !140, !"_ZNK4pbrt3SOAINS_15MediumInterfaceEEixEi: argument 0"}
!140 = distinct !{!140, !"_ZNK4pbrt3SOAINS_15MediumInterfaceEEixEi"}
!141 = !{!142, !18, i64 0}
!142 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_17HomogeneousMediumENS_10GridMediumENS_13RGBGridMediumENS_11CloudMediumENS_13NanoVDBMediumEEEE", !18, i64 0}
!143 = !{!108, !109, i64 16}
!144 = !{!106, !29, i64 320}
!145 = !{!106, !31, i64 328}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZNK4pbrt28GetBSSRDFAndProbeRayWorkItem22GetMaterialEvalContextEv: argument 0"}
!148 = distinct !{!148, !"_ZNK4pbrt28GetBSSRDFAndProbeRayWorkItem22GetMaterialEvalContextEv"}
!149 = !{!41, !33, i64 16}
!150 = !{!151, !153}
!151 = distinct !{!151, !152, !"_ZNK4pbrt3SOAINS_10RaySamplesEEixEi: argument 0"}
!152 = distinct !{!152, !"_ZNK4pbrt3SOAINS_10RaySamplesEEixEi"}
!153 = distinct !{!153, !154, !"_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev: argument 0"}
!154 = distinct !{!154, !"_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev"}
!155 = !{!156, !11, i64 24}
!156 = !{!"_ZTSN4pstd8optionalIN4pbrt18BSSRDFProbeSegmentEEE", !7, i64 0, !11, i64 24}
end_hunk_1
