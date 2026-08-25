Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/FBXConverter?download=true
inline.NumInlined: 7596
inline.NumDeleted: 2895
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN6Assimp3FBX12FBXConverter17GetRotationMatrixENS0_5Model8RotOrderERK10aiVector3tIfER12aiMatrix4x4tIfE:bb.a
  store float 1.000000e+00, ptr %.sroa.7164.0..sroa_idx, align 4
  %.sroa.8165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8165.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.9166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 60
  store float 1.000000e+00, ptr %.sroa.9166.0..sroa_idx, align 4
  br label %bb.w

bb.d:                                             ; preds = %bb.a
  store float 1.000000e+00, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6158.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8159.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 3 uses
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0155)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10156)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17)
  store i8 1, ptr %.sroa.0155, align 1
  store i8 1, ptr %.sroa.10156, align 1
  store i8 1, ptr %.sroa.17, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store float 1.000000e+00, ptr %4, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 132
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 172
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 188
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.w, align 4
  %i.x = load float, ptr %2, align 4
  %i.y = fmul float %i.x, f0x3C8EFA35             ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = fmul float %i.aa, f0x3C8EFA35           ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load float, ptr %i.ac, align 4
  %i.ae = fmul float %i.ad, f0x3C8EFA35           ; 3 uses
  %i.af = tail call noundef float @llvm.fabs.f32(float %i.ae)
  %i.ag = fcmp ogt float %i.af, f0x34000000
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 132
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 148
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 168
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 172
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 188
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 4
  %i.ah = tail call noundef float @cosf(float noundef %i.ae) #27 ; 2 uses
  store float %i.ah, ptr %.sroa.5.0..sroa_idx.i, align 4
  store float %i.ah, ptr %.sroa.0.0.sroa.gep113, align 16
  %i.ai = tail call noundef float @sinf(float noundef %i.ae) #27 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 144
  store float %i.ai, ptr %i.aj, align 16
  %i.ak = fneg float %i.ai
  store float %i.ak, ptr %.sroa.4.0..sroa_idx.i, align 4
  store i8 0, ptr %.sroa.17, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.al = tail call noundef float @llvm.fabs.f32(float %i.ab)
  %i.am = fcmp ogt float %i.al, f0x34000000
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.4.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %4, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i23, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %4, i64 84
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx.i24, align 4
  %.sroa.6.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i25, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %.sroa.8.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %4, i64 108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx.i27, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %4, i64 124
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i28, align 4
  %i.an = tail call noundef float @cosf(float noundef %i.ab) #27 ; 2 uses
  store float %i.an, ptr %.sroa.7.0..sroa_idx.i26, align 8
  store float %i.an, ptr %.sroa.0.0.sroa.gep114, align 16
  %i.ao = tail call noundef float @sinf(float noundef %i.ab) #27 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 72
  store float %i.ao, ptr %i.ap, align 8
  %i.aq = fneg float %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 96
  store float %i.aq, ptr %i.ar, align 16
  store i8 0, ptr %.sroa.10156, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.as = tail call noundef float @llvm.fabs.f32(float %i.y)
  %i.at = fcmp ogt float %i.as, f0x34000000
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store float 1.000000e+00, ptr %4, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i64 0, ptr %i.au, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.k, align 4
  %i.av = tail call noundef float @cosf(float noundef %i.y) #27 ; 2 uses
  store float %i.av, ptr %i.i, align 8
  store float %i.av, ptr %i.g, align 4
  %i.aw = tail call noundef float @sinf(float noundef %i.y) #27 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 36
  store float %i.aw, ptr %i.ax, align 4
  %i.ay = fneg float %i.aw
  store float %i.ay, ptr %i.h, align 8
  store i8 0, ptr %.sroa.0155, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  switch i32 %1, label %unreachable [
    i32 0, label %bb.p
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.m
    i32 4, label %bb.n
    i32 5, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  br label %bb.p

bb.m:                                             ; preds = %bb.j
  br label %bb.p

bb.n:                                             ; preds = %bb.j
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  br label %bb.p

unreachable:                                      ; preds = %bb.j
  unreachable

bb.p:                                             ; preds = %bb.j, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.sroa.19.0.sroa.phi = phi ptr [ %.sroa.0.0.sroa.gep113, %bb.o ], [ %.sroa.0.0.sroa.gep113, %bb.n ], [ %4, %bb.k ], [ %.sroa.0.0.sroa.gep114, %bb.l ], [ %.sroa.0.0.sroa.gep114, %bb.m ], [ %4, %bb.j ] ; 4 uses
  %.sroa.19.0.sroa.phi147 = phi ptr [ %.sroa.17, %bb.o ], [ %.sroa.17, %bb.n ], [ %.sroa.0155, %bb.k ], [ %.sroa.10156, %bb.l ], [ %.sroa.10156, %bb.m ], [ %.sroa.0155, %bb.j ]
  %.sroa.11.0.sroa.phi = phi ptr [ %.sroa.0.0.sroa.gep114, %bb.o ], [ %4, %bb.n ], [ %.sroa.0.0.sroa.gep113, %bb.k ], [ %.sroa.0.0.sroa.gep113, %bb.l ], [ %4, %bb.m ], [ %.sroa.0.0.sroa.gep114, %bb.j ] ; 4 uses
  %.sroa.11.0.sroa.phi139 = phi ptr [ %.sroa.10156, %bb.o ], [ %.sroa.0155, %bb.n ], [ %.sroa.17, %bb.k ], [ %.sroa.17, %bb.l ], [ %.sroa.0155, %bb.m ], [ %.sroa.10156, %bb.j ]
  %.sroa.0.0.sroa.phi = phi ptr [ %4, %bb.o ], [ %.sroa.0.0.sroa.gep114, %bb.n ], [ %.sroa.0.0.sroa.gep114, %bb.k ], [ %4, %bb.l ], [ %.sroa.0.0.sroa.gep113, %bb.m ], [ %.sroa.0.0.sroa.gep113, %bb.j ]
  %.sroa.0.0.sroa.phi131 = phi ptr [ %.sroa.0155, %bb.o ], [ %.sroa.10156, %bb.n ], [ %.sroa.10156, %bb.k ], [ %.sroa.0155, %bb.l ], [ %.sroa.17, %bb.m ], [ %.sroa.17, %bb.j ]
  %i.az = load i8, ptr %.sroa.0.0.sroa.phi131, align 1, !range !4, !noundef !3
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0.0.sroa.phi, i64 64, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bb = load i8, ptr %.sroa.11.0.sroa.phi139, align 1, !range !4, !noundef !3
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.066.0.copyload67 = load float, ptr %3, align 4
  %.sroa.668.0.copyload70 = load float, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.871.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.871.0.copyload73 = load float, ptr %.sroa.871.0..sroa_idx72, align 4
  %.sroa.1074.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.1074.0.copyload76 = load float, ptr %.sroa.1074.0..sroa_idx75, align 4
  %.sroa.1277.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.sroa.1277.0.copyload79 = load float, ptr %.sroa.1277.0..sroa_idx78, align 4
  %.sroa.1480.0.copyload82 = load float, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.1683.0.copyload85 = load float, ptr %.sroa.6158.0..sroa_idx, align 4
  %.sroa.1886.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %.sroa.1886.0.copyload88 = load float, ptr %.sroa.1886.0..sroa_idx87, align 4
  %.sroa.2089.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %.sroa.2089.0.copyload91 = load float, ptr %.sroa.2089.0..sroa_idx90, align 4
  %.sroa.2292.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %3, i64 36
  %.sroa.2292.0.copyload94 = load float, ptr %.sroa.2292.0..sroa_idx93, align 4
  %.sroa.2495.0.copyload97 = load float, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.2698.0.copyload100 = load float, ptr %.sroa.8159.0..sroa_idx, align 4
  %.sroa.28101.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %.sroa.28101.0.copyload103 = load float, ptr %.sroa.28101.0..sroa_idx102, align 4
  %.sroa.30104.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %3, i64 52
  %.sroa.30104.0.copyload106 = load float, ptr %.sroa.30104.0..sroa_idx105, align 4
  %.sroa.32107.0..sroa_idx108 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.32107.0.copyload109 = load float, ptr %.sroa.32107.0..sroa_idx108, align 4
  %.sroa.34110.0.copyload112 = load float, ptr %.sroa.9.0..sroa_idx, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.11.0.sroa.phi, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.11.0.sroa.phi, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.11.0.sroa.phi, i64 48
  %i.bg = load <4 x float>, ptr %.sroa.11.0.sroa.phi, align 4 ; 4 uses
  %i.bh = load <4 x float>, ptr %i.bd, align 4    ; 4 uses
  %5 = insertelement <4 x float> poison, float %.sroa.668.0.copyload70, i64 0
  %i.bi = shufflevector <4 x float> %5, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bj = fmul <4 x float> %i.bi, %i.bh
  %6 = insertelement <4 x float> poison, float %.sroa.066.0.copyload67, i64 0
  %i.bk = shufflevector <4 x float> %6, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> %i.bk, <4 x float> %i.bj)
  %i.bm = load <4 x float>, ptr %i.be, align 4    ; 4 uses
  %7 = insertelement <4 x float> poison, float %.sroa.871.0.copyload73, i64 0
  %i.bn = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.bn, <4 x float> %i.bl)
  %i.bp = load <4 x float>, ptr %i.bf, align 4    ; 4 uses
  %8 = insertelement <4 x float> poison, float %.sroa.1074.0.copyload76, i64 0
  %i.bq = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> zeroinitializer
  %i.br = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> %i.bq, <4 x float> %i.bo)
  store <4 x float> %i.br, ptr %3, align 4
  %9 = insertelement <4 x float> poison, float %.sroa.1480.0.copyload82, i64 0
  %i.bs = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bt = fmul <4 x float> %i.bs, %i.bh
  %10 = insertelement <4 x float> poison, float %.sroa.1277.0.copyload79, i64 0
  %i.bu = shufflevector <4 x float> %10, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> %i.bu, <4 x float> %i.bt)
  %11 = insertelement <4 x float> poison, float %.sroa.1683.0.copyload85, i64 0
  %i.bw = shufflevector <4 x float> %11, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.bw, <4 x float> %i.bv)
  %12 = insertelement <4 x float> poison, float %.sroa.1886.0.copyload88, i64 0
  %i.by = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> %i.by, <4 x float> %i.bx)
  store <4 x float> %i.bz, ptr %.sroa.1277.0..sroa_idx78, align 4
  %13 = insertelement <4 x float> poison, float %.sroa.2292.0.copyload94, i64 0
  %i.ca = shufflevector <4 x float> %13, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cb = fmul <4 x float> %i.ca, %i.bh
  %14 = insertelement <4 x float> poison, float %.sroa.2089.0.copyload91, i64 0
  %i.cc = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> %i.cc, <4 x float> %i.cb)
  %15 = insertelement <4 x float> poison, float %.sroa.2495.0.copyload97, i64 0
  %i.ce = shufflevector <4 x float> %15, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.ce, <4 x float> %i.cd)
  %16 = insertelement <4 x float> poison, float %.sroa.2698.0.copyload100, i64 0
  %i.cg = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ch = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> %i.cg, <4 x float> %i.cf)
  store <4 x float> %i.ch, ptr %.sroa.2089.0..sroa_idx90, align 4
  %i.ci = insertelement <4 x float> poison, float %.sroa.30104.0.copyload106, i64 0
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ck = fmul <4 x float> %i.cj, %i.bh
  %17 = insertelement <4 x float> poison, float %.sroa.28101.0.copyload103, i64 0
  %i.cl = shufflevector <4 x float> %17, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> %i.cl, <4 x float> %i.ck)
  %i.cn = insertelement <4 x float> poison, float %.sroa.32107.0.copyload109, i64 0
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.co, <4 x float> %i.cm)
  %i.cq = insertelement <4 x float> poison, float %.sroa.34110.0.copyload112, i64 0
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> %i.cr, <4 x float> %i.cp)
  store <4 x float> %i.cs, ptr %.sroa.28101.0..sroa_idx102, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ct = load i8, ptr %.sroa.19.0.sroa.phi147, align 1, !range !4, !noundef !3
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.0.0.copyload35 = load float, ptr %3, align 4
  %.sroa.6.0.copyload37 = load float, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.8.0.copyload39 = load float, ptr %.sroa.8.0..sroa_idx38, align 4
  %.sroa.10.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.10.0.copyload41 = load float, ptr %.sroa.10.0..sroa_idx40, align 4
  %.sroa.12.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.sroa.12.0.copyload43 = load float, ptr %.sroa.12.0..sroa_idx42, align 4
  %.sroa.14.0.copyload45 = load float, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.16.0.copyload47 = load float, ptr %.sroa.6158.0..sroa_idx, align 4
  %.sroa.18.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %.sroa.18.0.copyload49 = load float, ptr %.sroa.18.0..sroa_idx48, align 4
  %.sroa.20.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %.sroa.20.0.copyload51 = load float, ptr %.sroa.20.0..sroa_idx50, align 4
  %.sroa.22.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %3, i64 36
  %.sroa.22.0.copyload53 = load float, ptr %.sroa.22.0..sroa_idx52, align 4
  %.sroa.24.0.copyload55 = load float, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.26.0.copyload57 = load float, ptr %.sroa.8159.0..sroa_idx, align 4
  %.sroa.28.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %.sroa.28.0.copyload59 = load float, ptr %.sroa.28.0..sroa_idx58, align 4
  %.sroa.30.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %3, i64 52
  %.sroa.30.0.copyload61 = load float, ptr %.sroa.30.0..sroa_idx60, align 4
  %.sroa.32.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.32.0.copyload63 = load float, ptr %.sroa.32.0..sroa_idx62, align 4
  %.sroa.34.0.copyload65 = load float, ptr %.sroa.9.0..sroa_idx, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.19.0.sroa.phi, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.19.0.sroa.phi, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.19.0.sroa.phi, i64 48
  %i.cy = load <4 x float>, ptr %.sroa.19.0.sroa.phi, align 4 ; 4 uses
  %i.cz = load <4 x float>, ptr %i.cv, align 4    ; 4 uses
  %18 = insertelement <4 x float> poison, float %.sroa.6.0.copyload37, i64 0
  %i.da = shufflevector <4 x float> %18, <4 x float> poison, <4 x i32> zeroinitializer
  %i.db = fmul <4 x float> %i.da, %i.cz
  %19 = insertelement <4 x float> poison, float %.sroa.0.0.copyload35, i64 0
  %i.dc = shufflevector <4 x float> %19, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> %i.dc, <4 x float> %i.db)
  %i.de = load <4 x float>, ptr %i.cw, align 4    ; 4 uses
  %20 = insertelement <4 x float> poison, float %.sroa.8.0.copyload39, i64 0
  %i.df = shufflevector <4 x float> %20, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.de, <4 x float> %i.df, <4 x float> %i.dd)
  %i.dh = load <4 x float>, ptr %i.cx, align 4    ; 4 uses
  %21 = insertelement <4 x float> poison, float %.sroa.10.0.copyload41, i64 0
  %i.di = shufflevector <4 x float> %21, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> %i.di, <4 x float> %i.dg)
  store <4 x float> %i.dj, ptr %3, align 4
  %22 = insertelement <4 x float> poison, float %.sroa.14.0.copyload45, i64 0
  %i.dk = shufflevector <4 x float> %22, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dl = fmul <4 x float> %i.dk, %i.cz
  %23 = insertelement <4 x float> poison, float %.sroa.12.0.copyload43, i64 0
  %i.dm = shufflevector <4 x float> %23, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> %i.dm, <4 x float> %i.dl)
  %24 = insertelement <4 x float> poison, float %.sroa.16.0.copyload47, i64 0
  %i.do = shufflevector <4 x float> %24, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.de, <4 x float> %i.do, <4 x float> %i.dn)
  %25 = insertelement <4 x float> poison, float %.sroa.18.0.copyload49, i64 0
  %i.dq = shufflevector <4 x float> %25, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> %i.dq, <4 x float> %i.dp)
  store <4 x float> %i.dr, ptr %.sroa.12.0..sroa_idx42, align 4
  %26 = insertelement <4 x float> poison, float %.sroa.22.0.copyload53, i64 0
  %i.ds = shufflevector <4 x float> %26, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dt = fmul <4 x float> %i.ds, %i.cz
  %27 = insertelement <4 x float> poison, float %.sroa.20.0.copyload51, i64 0
  %i.du = shufflevector <4 x float> %27, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> %i.du, <4 x float> %i.dt)
  %28 = insertelement <4 x float> poison, float %.sroa.24.0.copyload55, i64 0
  %i.dw = shufflevector <4 x float> %28, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.de, <4 x float> %i.dw, <4 x float> %i.dv)
  %29 = insertelement <4 x float> poison, float %.sroa.26.0.copyload57, i64 0
  %i.dy = shufflevector <4 x float> %29, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> %i.dy, <4 x float> %i.dx)
  store <4 x float> %i.dz, ptr %.sroa.20.0..sroa_idx50, align 4
  %i.ea = insertelement <4 x float> poison, float %.sroa.30.0.copyload61, i64 0
  %i.eb = shufflevector <4 x float> %i.ea, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ec = fmul <4 x float> %i.eb, %i.cz
  %30 = insertelement <4 x float> poison, float %.sroa.28.0.copyload59, i64 0
  %i.ed = shufflevector <4 x float> %30, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ee = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> %i.ed, <4 x float> %i.ec)
  %i.ef = insertelement <4 x float> poison, float %.sroa.32.0.copyload63, i64 0
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.de, <4 x float> %i.eg, <4 x float> %i.ee)
  %i.ei = insertelement <4 x float> poison, float %.sroa.34.0.copyload65, i64 0
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ek = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> %i.ej, <4 x float> %i.eh)
  store <4 x float> %i.ek, ptr %.sroa.28.0..sroa_idx58, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0155)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10156)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA37_KcEEEvDpOT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3FBX12FBXConverter31NeedsComplexTransformationChainERKNS0_5ModelE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.m
  %.03062 = phi i64 [ 0, %bb.a ], [ %i.ar, %bb.m ] ; 5 uses
  %i.f = icmp eq i64 %.03062, 12
  %i.g = and i64 %.03062, 27
  %i.h = icmp eq i64 %i.g, 3
  %or.cond3 = or i1 %i.f, %i.h
  br i1 %or.cond3, label %bb.m, label %switch.lookup

switch.lookup:                                    ; preds = %bb.b
  %i.i = icmp eq i64 %.03062, 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6Assimp3FBX12FBXConverter31NeedsComplexTransformationChainERKNS0_5ModelE, i64 %.03062
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 3 uses
  store ptr %i.d, ptr %2, align 8
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %switch.load) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.j, ptr %i.a, align 8
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %switch.lookup
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %2, align 8
  %i.m = load i64, ptr %i.a, align 8
  store i64 %i.m, ptr %i.d, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %switch.lookup
  %i.n = phi ptr [ %i.l, %.noexc.i ], [ %i.d, %switch.lookup ] ; 2 uses
  switch i64 %i.j, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %switch.load, align 1
  store i8 %i.o, ptr %i.n, align 1
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %switch.load, i64 %i.j, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.p = load i64, ptr %i.a, align 8              ; 2 uses
  store i64 %i.p, ptr %i.e, align 8
  %i.q = load ptr, ptr %2, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 0, ptr %i.r, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.s = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc39 unwind label %bb.j   ; 2 uses

.noexc39:                                         ; preds = %bb.e
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc39
  %i.u = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.s, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE, i64 0) #27 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.0.0.copyload31.i = load <2 x float>, ptr %i.w, align 4
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.10.0.copyload.i = load float, ptr %.sroa.10.0..sroa_idx.i, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.noexc39, %bb.f
  %.0 = phi i1 [ true, %bb.g ], [ false, %.noexc39 ], [ false, %bb.f ] ; 2 uses
  %.sroa.10.0.i = phi float [ %.sroa.10.0.copyload.i, %bb.g ], [ 0.000000e+00, %.noexc39 ], [ 0.000000e+00, %bb.f ] ; 3 uses
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.0.copyload31.i, %bb.g ], [ zeroinitializer, %.noexc39 ], [ zeroinitializer, %bb.f ] ; 5 uses
  %i.x = load ptr, ptr %2, align 8                ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.d
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.z = load i64, ptr %i.d, align 8
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %or.cond5 = and i1 %i.i, %.0
  br i1 %or.cond5, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.046.0.vec.extract = extractelement <2 x float> %.sroa.0.0.i, i64 0
  %i.ab = fadd float %.sroa.046.0.vec.extract, -1.000000e+00 ; 2 uses
  %.sroa.046.4.vec.extract = extractelement <2 x float> %.sroa.0.0.i, i64 1
  %i.ac = fadd float %.sroa.046.4.vec.extract, -1.000000e+00 ; 2 uses
  %i.ad = fadd float %.sroa.10.0.i, -1.000000e+00 ; 2 uses
  %i.ae = fmul float %i.ac, %i.ac
  %i.af = call float @llvm.fmuladd.f32(float %i.ab, float %i.ab, float %i.ae)
  %i.ag = call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.ad, float %i.af)
  %i.ah = fcmp ogt float %i.ag, f0x34000000
  br i1 %i.ah, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.i
  br label %.critedge

bb.j:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %2, align 8               ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.d
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.j
  %i.al = load i64, ptr %i.d, align 8
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %i.ai

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %.0, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.046.0.vec.extract48 = extractelement <2 x float> %.sroa.0.0.i, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0.0.i, %.sroa.0.0.i
  %i.an = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ao = call float @llvm.fmuladd.f32(float %.sroa.046.0.vec.extract48, float %.sroa.046.0.vec.extract48, float %i.an)
  %i.ap = call noundef float @llvm.fmuladd.f32(float %.sroa.10.0.i, float %.sroa.10.0.i, float %i.ao)
  %i.aq = fcmp ogt float %i.ap, f0x34000000
  br i1 %i.aq, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.b
  %i.ar = add nuw nsw i64 %.03062, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, 17
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !121

.critedge:                                        ; preds = %bb.l, %bb.m, %.thread, %bb.i
  %.lcssa59 = phi i1 [ false, %.thread ], [ true, %bb.i ], [ false, %bb.m ], [ true, %bb.l ]
  ret i1 %.lcssa59
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12FBXConverter27NameTransformationChainNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_18TransformationCompE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.a, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.33, i64 12, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 12, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i8 0, ptr %i.c, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !122
  %i.f = load ptr, ptr %2, align 8, !noalias !122
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.e)
          to label %.noexc10 unwind label %bb.g   ; 8 uses

.noexc10:                                         ; preds = %._crit_edge.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX12FBXConverter14ConvertClusterERSt6vectorIP6aiBoneSaIS4_EEPKNS0_7ClusterERS2_ImSaImEESD_SD_RK12aiMatrix4x4tIfEP6aiNode:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.r = load i64, ptr %i.b, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 %i.r, ptr %i.s, align 8
  %i.t = load ptr, ptr %8, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  invoke void @_ZN6Assimp3FBX12FBXConverter11FixNodeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.w = load i64, ptr %i.v, align 8              ; 3 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.y, i8 0, i64 1024, i1 false)
  %i.z = and i64 %i.w, 4294966272
  %.not.i = icmp eq i64 %i.z, 0
  %spec.select.i = select i1 %.not.i, i32 %i.x, i32 1023 ; 2 uses
  store i32 %spec.select.i, ptr %9, align 4
  %i.aa = load ptr, ptr %10, align 8              ; 3 uses
  %i.ab = zext i32 %spec.select.i to i64          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 1 %i.aa, i64 %i.ab, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab
  store i8 0, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.aa, %i.ad
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.d
  %i.af = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.af)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.ag = load i64, ptr %i.ad, align 8
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ah) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6aiBoneSt4lessIS6_ESaISt4pairIS6_S8_EEE5countERS6_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.am = load i64, ptr %i.s, align 8             ; 4 uses
  %i.an = load ptr, ptr %8, align 8               ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ap = load i64, ptr %i.ao, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.am, i64 %i.ap) ; 2 uses
  %i.aq = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.aq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call i32 @memcmp(ptr noundef %i.as, ptr noundef %i.an, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #27 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.e
  %i.au = sub i64 %i.ap, %i.am
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.au, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i

_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.at, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.av = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.av, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.av, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_P6aiBoneESt10_Select1stISA_ESt4lessIS6_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i, label %bb.e, !llvm.loop !213

_ZNKSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_P6aiBoneESt10_Select1stISA_ESt4lessIS6_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i: ; preds = %_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i
  %i.aw = icmp eq ptr %.19.i.i.i, %i.al
  br i1 %i.aw, label %_ZNKSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6aiBoneSt4lessIS6_ESaISt4pairIS6_S8_EEE5countERS6_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_P6aiBoneESt10_Select1stISA_ESt4lessIS6_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ay = load i64, ptr %i.ax, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ay, i64 %i.am) ; 2 uses
  %i.az = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.az, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call i32 @memcmp(ptr noundef %i.an, ptr noundef %i.bb, i64 noundef %.sroa.speculated.i.i.i.i.i) #27 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6aiBoneSt4lessIS6_ESaISt4pairIS6_S8_EEE5countERS6_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.f
  %i.bd = sub i64 %i.am, %i.ay
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bd, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6aiBoneSt4lessIS6_ESaISt4pairIS6_S8_EEE5countERS6_.exit

_ZNKSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6aiBoneSt4lessIS6_ESaISt4pairIS6_S8_EEE5countERS6_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.bc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.be = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.be, label %_ZNKSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6aiBoneSt4lessIS6_ESaISt4pairIS6_S8_EEE5countERS6_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNKSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6aiBoneSt4lessIS6_ESaISt4pairIS6_S8_EEE5countERS6_.exit
  %i.bf = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store ptr %i.y, ptr %i.c, align 8
  invoke void @_ZN6Assimp6Logger12verboseDebugIJRA28_KcPS2_RA12_S2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bf, ptr noundef nonnull align 1 dereferenceable(28) @.str.48, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(12) @.str.49, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6aiBoneSt4lessIS6_ESaISt4pairIS6_S8_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr %i.bg, align 8
  br label %bb.aa

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.aj

bb.l:                                             ; preds = %_ZNKSt6vectorIP6aiBoneSaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.af, %bb.aa, %bb.p, %bb.o, %_ZNKSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6aiBoneSt4lessIS6_ESaISt4pairIS6_S8_EEE5countERS6_.exit.thread, %bb.i, %bb.g
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.m:                                             ; preds = %bb.h
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  br label %bb.aj

_ZNKSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6aiBoneSt4lessIS6_ESaISt4pairIS6_S8_EEE5countERS6_.exit.thread: ; preds = %_ZNKSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_P6aiBoneESt10_Select1stISA_ESt4lessIS6_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6aiBoneSt4lessIS6_ESaISt4pairIS6_S8_EEE5countERS6_.exit
  %i.bl = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %_ZNKSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6aiBoneSt4lessIS6_ESaISt4pairIS6_S8_EEE5countERS6_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store ptr %i.y, ptr %i.d, align 8
  invoke void @_ZN6Assimp6Logger12verboseDebugIJRA18_KcPS2_RA13_S2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bl, ptr noundef nonnull align 1 dereferenceable(18) @.str.50, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(13) @.str.51, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.bm = invoke noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #30
          to label %bb.p unwind label %bb.l       ; 23 uses

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1056 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.bm, i8 0, i64 1056, i1 false)
  %i.bo = load i32, ptr %9, align 4
  %spec.select.i48 = call i32 @llvm.umin.i32(i32 %i.bo, i32 1023) ; 2 uses
  store i32 %spec.select.i48, ptr %i.bm, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 4 ; 2 uses
  %i.bq = zext nneg i32 %spec.select.i48 to i64   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bp, ptr nonnull align 4 %i.y, i64 %i.bq, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bq
  store i8 0, ptr %i.br, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bn, ptr noundef nonnull align 8 dereferenceable(64) %i.bs, i64 64, i1 false)
  %i.bt = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %i.bn)
          to label %bb.q unwind label %bb.l       ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 1116
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 1100
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 1096
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 1080
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 1076
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 1060
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.sroa.0.0.copyload63 = load float, ptr %i.bn, align 8
  %.sroa.7.0.copyload65 = load float, ptr %i.bz, align 4
  %.sroa.9.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.bm, i64 1064
  %.sroa.9.0.copyload67 = load float, ptr %.sroa.9.0..sroa_idx66, align 8
  %.sroa.11.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.bm, i64 1068
  %.sroa.11.0.copyload69 = load float, ptr %.sroa.11.0..sroa_idx68, align 4
  %.sroa.13.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.bm, i64 1072 ; 2 uses
  %.sroa.13.0.copyload71 = load float, ptr %.sroa.13.0..sroa_idx70, align 8
  %.sroa.15.0.copyload73 = load float, ptr %i.by, align 4
  %.sroa.17.0.copyload75 = load float, ptr %i.bx, align 8
  %.sroa.19.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.bm, i64 1084
  %.sroa.19.0.copyload77 = load float, ptr %.sroa.19.0..sroa_idx76, align 4
  %.sroa.21.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.bm, i64 1088 ; 2 uses
  %.sroa.21.0.copyload79 = load float, ptr %.sroa.21.0..sroa_idx78, align 8
  %.sroa.23.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.bm, i64 1092
  %.sroa.23.0.copyload81 = load float, ptr %.sroa.23.0..sroa_idx80, align 4
  %.sroa.25.0.copyload83 = load float, ptr %i.bw, align 8
  %.sroa.27.0.copyload85 = load float, ptr %i.bv, align 4
  %.sroa.29.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.bm, i64 1104 ; 2 uses
  %.sroa.29.0.copyload87 = load float, ptr %.sroa.29.0..sroa_idx86, align 8
  %.sroa.31.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %i.bm, i64 1108
  %.sroa.31.0.copyload89 = load float, ptr %.sroa.31.0..sroa_idx88, align 4
  %.sroa.33.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.bm, i64 1112
  %.sroa.33.0.copyload91 = load float, ptr %.sroa.33.0..sroa_idx90, align 8
  %.sroa.35.0.copyload93 = load float, ptr %i.bu, align 4
  %i.ca = load <4 x float>, ptr %6, align 4       ; 4 uses
  %i.cb = load <4 x float>, ptr %.sroa.8.0..sroa_idx, align 4 ; 4 uses
  %i.cc = load <4 x float>, ptr %.sroa.12.0..sroa_idx, align 4 ; 4 uses
  %i.cd = load <4 x float>, ptr %.sroa.16.0..sroa_idx, align 4 ; 4 uses
  %12 = insertelement <4 x float> poison, float %.sroa.7.0.copyload65, i64 0
  %i.ce = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cf = fmul <4 x float> %i.cb, %i.ce
  %13 = insertelement <4 x float> poison, float %.sroa.0.0.copyload63, i64 0
  %i.cg = shufflevector <4 x float> %13, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ch = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> %i.cg, <4 x float> %i.cf)
  %14 = insertelement <4 x float> poison, float %.sroa.9.0.copyload67, i64 0
  %i.ci = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> %i.ci, <4 x float> %i.ch)
  %15 = insertelement <4 x float> poison, float %.sroa.11.0.copyload69, i64 0
  %i.ck = shufflevector <4 x float> %15, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cd, <4 x float> %i.ck, <4 x float> %i.cj)
  store <4 x float> %i.cl, ptr %i.bn, align 8
  %16 = insertelement <4 x float> poison, float %.sroa.15.0.copyload73, i64 0
  %i.cm = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cn = fmul <4 x float> %i.cb, %i.cm
  %17 = insertelement <4 x float> poison, float %.sroa.13.0.copyload71, i64 0
  %i.co = shufflevector <4 x float> %17, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> %i.co, <4 x float> %i.cn)
  %18 = insertelement <4 x float> poison, float %.sroa.17.0.copyload75, i64 0
  %i.cq = shufflevector <4 x float> %18, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> %i.cq, <4 x float> %i.cp)
  %19 = insertelement <4 x float> poison, float %.sroa.19.0.copyload77, i64 0
  %i.cs = shufflevector <4 x float> %19, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ct = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cd, <4 x float> %i.cs, <4 x float> %i.cr)
  store <4 x float> %i.ct, ptr %.sroa.13.0..sroa_idx70, align 8
  %20 = insertelement <4 x float> poison, float %.sroa.23.0.copyload81, i64 0
  %i.cu = shufflevector <4 x float> %20, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cv = fmul <4 x float> %i.cb, %i.cu
  %21 = insertelement <4 x float> poison, float %.sroa.21.0.copyload79, i64 0
  %i.cw = shufflevector <4 x float> %21, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> %i.cw, <4 x float> %i.cv)
  %22 = insertelement <4 x float> poison, float %.sroa.25.0.copyload83, i64 0
  %i.cy = shufflevector <4 x float> %22, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> %i.cy, <4 x float> %i.cx)
  %23 = insertelement <4 x float> poison, float %.sroa.27.0.copyload85, i64 0
  %i.da = shufflevector <4 x float> %23, <4 x float> poison, <4 x i32> zeroinitializer
  %i.db = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cd, <4 x float> %i.da, <4 x float> %i.cz)
  store <4 x float> %i.db, ptr %.sroa.21.0..sroa_idx78, align 8
  %i.dc = insertelement <4 x float> poison, float %.sroa.31.0.copyload89, i64 0
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.de = fmul <4 x float> %i.cb, %i.dd
  %24 = insertelement <4 x float> poison, float %.sroa.29.0.copyload87, i64 0
  %i.df = shufflevector <4 x float> %24, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> %i.df, <4 x float> %i.de)
  %i.dh = insertelement <4 x float> poison, float %.sroa.33.0.copyload91, i64 0
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> %i.di, <4 x float> %i.dg)
  %i.dk = insertelement <4 x float> poison, float %.sroa.35.0.copyload93, i64 0
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cd, <4 x float> %i.dl, <4 x float> %i.dj)
  store <4 x float> %i.dm, ptr %.sroa.29.0..sroa_idx86, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.do = load ptr, ptr %i.dn, align 8            ; 2 uses
  %i.dp = load ptr, ptr %3, align 8               ; 2 uses
  %i.dq = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.dr = ptrtoint ptr %i.dp to i64               ; 2 uses
  %i.ds = sub i64 %i.dq, %i.dr                    ; 2 uses
  %i.dt = ashr exact i64 %i.ds, 3                 ; 2 uses
  %i.du = trunc i64 %i.dt to i32
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bm, i64 1028
  store i32 %i.du, ptr %i.dv, align 4
  %i.dw = icmp ugt i64 %i.dt, 2305843009213693951
  %i.dx = select i1 %i.dw, i64 -1, i64 %i.ds
  %i.dy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dx) #30
          to label %bb.r unwind label %bb.v       ; 3 uses

bb.r:                                             ; preds = %bb.q
  %i.dz = icmp eq ptr %i.do, %i.dp
  br i1 %i.dz, label %.loopexit111, label %.loopexit111.loopexit

.loopexit111.loopexit:                            ; preds = %bb.r
  %i.ea = add i64 %i.dq, -8
  %i.eb = sub i64 %i.ea, %i.dr
  %i.ec = and i64 %i.eb, -8
  %i.ed = add i64 %i.ec, 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dy, i8 0, i64 %i.ed, i1 false)
  br label %.loopexit111

.loopexit111:                                     ; preds = %.loopexit111.loopexit, %bb.r
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bm, i64 1048
  store ptr %i.dy, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8            ; 2 uses
  %i.ei = load ptr, ptr %4, align 8               ; 2 uses
  %.not = icmp eq ptr %i.eh, %i.ei
  br i1 %.not, label %._crit_edge, label %.lr.ph117.preheader

.lr.ph117.preheader:                              ; preds = %.loopexit111
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = ashr exact i64 %i.el, 3
  br label %.lr.ph117

._crit_edge:                                      ; preds = %.loopexit, %.loopexit111
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.en = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.en, ptr %11, align 8
  %i.eo = load ptr, ptr %8, align 8               ; 2 uses
  %i.ep = load i64, ptr %i.s, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.ep, ptr %i.a, align 8
  %i.eq = icmp ugt i64 %i.ep, 15
  br i1 %i.eq, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %._crit_edge
  %i.er = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.y     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.er, ptr %11, align 8
  %i.es = load i64, ptr %i.a, align 8
  store i64 %i.es, ptr %i.en, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %._crit_edge
  %i.et = phi ptr [ %i.er, %.noexc ], [ %i.en, %._crit_edge ] ; 2 uses
  switch i64 %i.ep, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.x
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i
  %i.eu = load i8, ptr %i.eo, align 1
  store i8 %i.eu, ptr %i.et, align 1
  br label %bb.x

bb.t:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.et, ptr align 1 %i.eo, i64 %i.ep, i1 false)
  br label %bb.x

bb.u:                                             ; preds = %bb.n
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %bb.aj

bb.v:                                             ; preds = %bb.q
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.lr.ph117:                                        ; preds = %.lr.ph117.preheader, %.loopexit
  %.035116 = phi ptr [ %.237, %.loopexit ], [ %i.dy, %.lr.ph117.preheader ] ; 4 uses
  %.039114 = phi i64 [ %i.gl, %.loopexit ], [ 0, %.lr.ph117.preheader ] ; 6 uses
  %i.ex = load ptr, ptr %4, align 8
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.039114
  %i.ez = load i64, ptr %i.ey, align 8            ; 4 uses
  %i.fa = icmp eq i64 %i.ez, -1
  br i1 %i.fa, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %.lr.ph117
  %i.fb = load ptr, ptr %5, align 8
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %.039114
  %i.fd = load i64, ptr %i.fc, align 8            ; 5 uses
  %.not118 = icmp eq i64 %i.fd, 0
  br i1 %.not118, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.w
  %xtraiter = and i64 %i.fd, 1
  %i.fe = icmp eq i64 %i.fd, 1
  br i1 %i.fe, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.fd, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.136113 = phi ptr [ %.035116, %.lr.ph.preheader.new ], [ %i.fp, %.lr.ph ] ; 5 uses
  %.038112 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ga, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.136113, i64 8
  %i.fg = load ptr, ptr %3, align 8
  %i.fh = getelementptr [8 x i8], ptr %i.fg, i64 %i.ez
  %i.fi = getelementptr [8 x i8], ptr %i.fh, i64 %.038112
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = trunc i64 %i.fj to i32
  store i32 %i.fk, ptr %.136113, align 4
  %i.fl = load ptr, ptr %i.ef, align 8
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %.039114
  %i.fn = load float, ptr %i.fm, align 4
  %i.fo = getelementptr inbounds nuw i8, ptr %.136113, i64 4
  store float %i.fn, ptr %i.fo, align 4
  %i.fp = getelementptr inbounds nuw i8, ptr %.136113, i64 16 ; 3 uses
  %i.fq = load ptr, ptr %3, align 8
  %i.fr = getelementptr [8 x i8], ptr %i.fq, i64 %i.ez
  %i.fs = getelementptr [8 x i8], ptr %i.fr, i64 %.038112
  %i.ft = getelementptr i8, ptr %i.fs, i64 8
  %i.fu = load i64, ptr %i.ft, align 8
  %i.fv = trunc i64 %i.fu to i32
  store i32 %i.fv, ptr %i.ff, align 4
  %i.fw = load ptr, ptr %i.ef, align 8
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %.039114
  %i.fy = load float, ptr %i.fx, align 4
  %i.fz = getelementptr inbounds nuw i8, ptr %.136113, i64 12
  store float %i.fy, ptr %i.fz, align 4
  %i.ga = add nuw i64 %.038112, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !214

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.136113.epil.init = phi ptr [ %.035116, %.lr.ph.preheader ], [ %i.fp, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %.038112.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ga, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod140 = trunc i64 %i.fd to i1
  call void @llvm.assume(i1 %lcmp.mod140)
  %i.gb = getelementptr inbounds nuw i8, ptr %.136113.epil.init, i64 8
  %i.gc = load ptr, ptr %3, align 8
  %i.gd = getelementptr [8 x i8], ptr %i.gc, i64 %i.ez
  %i.ge = getelementptr [8 x i8], ptr %i.gd, i64 %.038112.epil.init
  %i.gf = load i64, ptr %i.ge, align 8
  %i.gg = trunc i64 %i.gf to i32
  store i32 %i.gg, ptr %.136113.epil.init, align 4
  %i.gh = load ptr, ptr %i.ef, align 8
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %.039114
  %i.gj = load float, ptr %i.gi, align 4
  %i.gk = getelementptr inbounds nuw i8, ptr %.136113.epil.init, i64 4
  store float %i.gj, ptr %i.gk, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.w, %.lr.ph117
  %.237 = phi ptr [ %.035116, %.lr.ph117 ], [ %.035116, %bb.w ], [ %i.fp, %.loopexit.loopexit.unr-lcssa ], [ %i.gb, %.lr.ph.epil.preheader ]
  %i.gl = add nuw i64 %.039114, 1                 ; 2 uses
  %exitcond119.not = icmp eq i64 %i.gl, %i.em
  br i1 %exitcond119.not, label %._crit_edge, label %.lr.ph117, !llvm.loop !215

bb.x:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i.i
  %i.gm = load i64, ptr %i.a, align 8             ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.gm, ptr %i.gn, align 8
  %i.go = load ptr, ptr %11, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gm
  store i8 0, ptr %i.gp, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.gq = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.bm, ptr %i.gq, align 8
  %i.gr = invoke { ptr, i8 } @_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_P6aiBoneESt10_Select1stISA_ESt4lessIS6_ESaISA_EE16_M_insert_uniqueISA_EES7_ISt17_Rb_tree_iteratorISA_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull align 8 dereferenceable(40) %11)
end_hunk_1
begin_hunk_2_@_ZN6Assimp3FBX12FBXConverter21ConvertAnimationStackERKNS0_14AnimationStackE:bb.a
  %i.px = getelementptr inbounds nuw i8, ptr %i.pv, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.px, i8 0, i64 28, i1 false)
  %i.py = getelementptr inbounds nuw i8, ptr %i.pv, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.py, i8 0, i64 28, i1 false)
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pv, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.pz, i8 0, i64 28, i1 false)
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pv, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.qa, i8 0, i64 28, i1 false)
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pv, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.qb, i8 0, i64 28, i1 false)
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pv, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.qc, i8 0, i64 28, i1 false)
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pv, i64 256 ; 2 uses
  %i.qe = icmp eq ptr %i.qd, %i.pp
  br i1 %i.qe, label %.loopexit, label %.new

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %bb.cs
  %i.qf = getelementptr inbounds nuw i8, ptr %i.oz, i64 1032 ; 7 uses
  store ptr %i.pn, ptr %i.qf, align 8
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ow, i64 24
  %i.qh = load ptr, ptr %i.qg, align 8            ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.ow, i64 8 ; 2 uses
  %.not322353 = icmp eq ptr %i.qh, %i.qi
  br i1 %.not322353, label %._crit_edge358, label %.lr.ph357

._crit_edge358:                                   ; preds = %._crit_edge352, %.loopexit
  %i.qj = load ptr, ptr %i.x, align 8
  %i.qk = add i32 %.0123361, 1
  %i.ql = zext i32 %.0123361 to i64
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.qj, i64 %i.ql
  store ptr %i.oz, ptr %i.qm, align 8
  %i.qn = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0276.0360) #28 ; 2 uses
  %.not321 = icmp eq ptr %i.qn, %i.fv
  br i1 %.not321, label %.loopexit326, label %bb.cp

bb.cu:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit247, %bb.cp
  %i.qo = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

.lr.ph357:                                        ; preds = %.loopexit, %._crit_edge352
  %.0122355 = phi i32 [ %i.ry, %._crit_edge352 ], [ 0, %.loopexit ] ; 2 uses
  %.sroa.0272.0354 = phi ptr [ %i.rz, %._crit_edge352 ], [ %i.qh, %.loopexit ] ; 3 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %.sroa.0272.0354, i64 32
  %i.qq = getelementptr inbounds nuw i8, ptr %.sroa.0272.0354, i64 40
  %i.qr = load ptr, ptr %i.qq, align 8            ; 5 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 8 ; 2 uses
  %i.qt = load ptr, ptr %i.qs, align 8
  %i.qu = load ptr, ptr %i.qr, align 8
  %i.qv = ptrtoint ptr %i.qt to i64
  %i.qw = ptrtoint ptr %i.qu to i64
  %i.qx = sub i64 %i.qv, %i.qw
  %i.qy = ashr exact i64 %i.qx, 2                 ; 3 uses
  %i.qz = trunc i64 %i.qy to i32                  ; 2 uses
  %i.ra = load ptr, ptr %i.qf, align 8
  %i.rb = zext i32 %.0122355 to i64               ; 6 uses
  %i.rc = getelementptr inbounds nuw [32 x i8], ptr %i.ra, i64 %i.rb
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 24
  store i32 %i.qz, ptr %i.rd, align 8
  %i.re = and i64 %i.qy, 4294967295               ; 2 uses
  %i.rf = shl nuw nsw i64 %i.re, 2
  %i.rg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.rf) #30
          to label %bb.cv unwind label %bb.cx

bb.cv:                                            ; preds = %.lr.ph357
  %i.rh = load ptr, ptr %i.qf, align 8
  %i.ri = getelementptr inbounds nuw [32 x i8], ptr %i.rh, i64 %i.rb
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  store ptr %i.rg, ptr %i.rj, align 8
  %i.rk = shl nuw nsw i64 %i.re, 3
  %i.rl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.rk) #30
          to label %bb.cw unwind label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.rm = load ptr, ptr %i.qf, align 8
  %i.rn = getelementptr inbounds nuw [32 x i8], ptr %i.rm, i64 %i.rb
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  store ptr %i.rl, ptr %i.ro, align 8
  %i.rp = load i64, ptr %i.qp, align 8
  %i.rq = sitofp i64 %i.rp to double
  %i.rr = fdiv nnan double %i.rq, f0x422581D1AF600000
  %i.rs = load double, ptr %i.os, align 8
  %i.rt = fmul double %i.rs, %i.rr
  %i.ru = load ptr, ptr %i.qf, align 8
  %i.rv = getelementptr inbounds nuw [32 x i8], ptr %i.ru, i64 %i.rb
  store double %i.rt, ptr %i.rv, align 8
  %.not382 = icmp eq i32 %i.qz, 0
  br i1 %.not382, label %._crit_edge352, label %.lr.ph351

.lr.ph351:                                        ; preds = %bb.cw
  %i.rw = getelementptr inbounds nuw i8, ptr %i.qr, i64 24
  %i.rx = getelementptr inbounds nuw i8, ptr %i.qr, i64 32
  %wide.trip.count = and i64 %i.qy, 4294967295
  br label %bb.cy

._crit_edge352:                                   ; preds = %bb.da, %bb.cw
  %i.ry = add i32 %.0122355, 1
  %i.rz = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0272.0354) #28 ; 2 uses
  %.not322 = icmp eq ptr %i.rz, %i.qi
  br i1 %.not322, label %._crit_edge358, label %.lr.ph357

bb.cx:                                            ; preds = %bb.cv, %.lr.ph357
  %i.sa = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.cy:                                            ; preds = %.lr.ph351, %bb.da
  %indvars.iv = phi i64 [ 0, %.lr.ph351 ], [ %indvars.iv.next, %bb.da ] ; 8 uses
  %i.sb = load ptr, ptr %i.qs, align 8
  %i.sc = load ptr, ptr %i.qr, align 8            ; 2 uses
  %i.sd = ptrtoint ptr %i.sb to i64
  %i.se = ptrtoint ptr %i.sc to i64
  %i.sf = sub i64 %i.sd, %i.se
  %i.sg = ashr exact i64 %i.sf, 2                 ; 2 uses
  %.not.i.i248 = icmp ugt i64 %i.sg, %indvars.iv
  br i1 %.not.i.i248, label %bb.cz, label %.invoke

bb.cz:                                            ; preds = %bb.cy
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.sc, i64 %indvars.iv
  %i.si = load i32, ptr %i.sh, align 4
  %i.sj = load ptr, ptr %i.qf, align 8
  %i.sk = getelementptr inbounds nuw [32 x i8], ptr %i.sj, i64 %i.rb
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %i.sm = load ptr, ptr %i.sl, align 8
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %indvars.iv
  store i32 %i.si, ptr %i.sn, align 4
  %i.so = load ptr, ptr %i.rx, align 8
  %i.sp = load ptr, ptr %i.rw, align 8            ; 2 uses
  %i.sq = ptrtoint ptr %i.so to i64
  %i.sr = ptrtoint ptr %i.sp to i64
  %i.ss = sub i64 %i.sq, %i.sr
  %i.st = ashr exact i64 %i.ss, 2                 ; 2 uses
  %.not.i.i250 = icmp ugt i64 %i.st, %indvars.iv
  br i1 %.not.i.i250, label %bb.da, label %.invoke

.invoke:                                          ; preds = %bb.cz, %bb.cy
  %i.su = phi i64 [ %i.sg, %bb.cy ], [ %i.st, %bb.cz ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.229, i64 noundef %indvars.iv, i64 noundef %i.su) #31
          to label %.cont unwind label %bb.db

.cont:                                            ; preds = %.invoke
  unreachable

bb.da:                                            ; preds = %bb.cz
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.sp, i64 %indvars.iv
  %i.sw = load float, ptr %i.sv, align 4
  %i.sx = fpext float %i.sw to double
  %i.sy = load ptr, ptr %i.qf, align 8
  %i.sz = getelementptr inbounds nuw [32 x i8], ptr %i.sy, i64 %i.rb
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  %i.tb = load ptr, ptr %i.ta, align 8
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %indvars.iv
  store double %i.sx, ptr %i.tc, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge352, label %bb.cy, !llvm.loop !331

bb.db:                                            ; preds = %.invoke
  %i.td = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.dc:                                            ; preds = %._crit_edge348.thread
  call void @_ZN11aiAnimationD2Ev(ptr noundef nonnull align 8 dead_on_return(1096) dereferenceable(1096) %i.p) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 1096) #29
  %i.te = load ptr, ptr %i.z, align 8
  %i.tf = getelementptr inbounds i8, ptr %i.te, i64 -8
  store ptr %i.tf, ptr %i.z, align 8
  %i.tg = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc252 unwind label %bb.cm

.noexc252:                                        ; preds = %bb.dc
  br i1 %i.tg, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA44_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit, label %bb.dd

bb.dd:                                            ; preds = %.noexc252
  %i.th = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc253 unwind label %bb.cm

.noexc253:                                        ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.ti = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
          to label %.noexc254 unwind label %bb.cm

.noexc254:                                        ; preds = %.noexc253
  store ptr %i.ti, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger4infoIJPKcRA44_S2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.th, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(44) @.str.173, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc255 unwind label %bb.cm

.noexc255:                                        ; preds = %.noexc254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA44_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit

.loopexit326:                                     ; preds = %._crit_edge358, %bb.cn, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiNodeAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.tj = phi i64 [ %i.ms, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiNodeAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit ], [ %i.ok, %bb.cn ], [ %i.ok, %._crit_edge358 ]
  %i.tk = phi ptr [ %.pre424, %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP10aiNodeAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit ], [ %i.ol, %bb.cn ], [ %i.ol, %._crit_edge358 ]
  br i1 %.not, label %bb.df, label %bb.de

bb.de:                                            ; preds = %.loopexit326
  %i.tl = sitofp i64 %i.gj to double
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 480
  %17 = load double, ptr %i.tm, align 8
  %i.tn = sitofp i64 %i.mm to double
  %i.to = insertelement <2 x double> poison, double %i.tn, i64 0
  %i.tp = insertelement <2 x double> %i.to, double %i.tl, i64 1
  %i.tq = fdiv nnan <2 x double> %i.tp, splat (double f0x422581D1AF600000)
  %18 = insertelement <2 x double> poison, double %17, i64 0
  %i.tr = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ts = fmul <2 x double> %i.tq, %i.tr
  br label %bb.dg

bb.df:                                            ; preds = %.loopexit326
  %i.tt = load double, ptr %i.i, align 8
  %i.tu = load double, ptr %i.j, align 8
  %i.tv = insertelement <2 x double> poison, double %i.tu, i64 0
  %i.tw = insertelement <2 x double> %i.tv, double %i.tt, i64 1
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.tx = phi <2 x double> [ %i.ts, %bb.de ], [ %i.tw, %bb.df ] ; 6 uses
  %i.ty = load i32, ptr %i.s, align 8
  %.not383 = icmp eq i32 %i.ty, 0
  br i1 %.not383, label %.preheader, label %.lr.ph374.preheader

.lr.ph374.preheader:                              ; preds = %bb.dg
  %i.tz = extractelement <2 x double> %i.tx, i64 1
  %i.ua = extractelement <2 x double> %i.tx, i64 1
  %i.ub = extractelement <2 x double> %i.tx, i64 1
  br label %.lr.ph374

.preheader:                                       ; preds = %._crit_edge371, %bb.dg
  %i.uc = load i32, ptr %i.w, align 8             ; 2 uses
  %.not387 = icmp eq i32 %i.uc, 0
  br i1 %.not387, label %._crit_edge381, label %.lr.ph380.preheader

.lr.ph380.preheader:                              ; preds = %.preheader
  %i.ud = extractelement <2 x double> %i.tx, i64 1
  br label %.lr.ph380

.lr.ph374:                                        ; preds = %.lr.ph374.preheader, %._crit_edge371
  %indvars.iv409 = phi i64 [ %indvars.iv.next410, %._crit_edge371 ], [ 0, %.lr.ph374.preheader ] ; 2 uses
  %i.ue = load ptr, ptr %i.t, align 8
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.ue, i64 %indvars.iv409
  %i.ug = load ptr, ptr %i.uf, align 8            ; 6 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 1028 ; 2 uses
  %i.ui = load i32, ptr %i.uh, align 4
  %.not384 = icmp eq i32 %i.ui, 0
  br i1 %.not384, label %.preheader325, label %.lr.ph366

.lr.ph366:                                        ; preds = %.lr.ph374
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ug, i64 1032
  br label %bb.dh

.preheader325:                                    ; preds = %bb.dh, %.lr.ph374
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ug, i64 1040 ; 2 uses
  %i.ul = load i32, ptr %i.uk, align 8
  %.not385 = icmp eq i32 %i.ul, 0
  br i1 %.not385, label %.preheader324, label %.lr.ph368

.lr.ph368:                                        ; preds = %.preheader325
  %i.um = getelementptr inbounds nuw i8, ptr %i.ug, i64 1048
  br label %bb.di

bb.dh:                                            ; preds = %.lr.ph366, %bb.dh
  %indvars.iv400 = phi i64 [ 0, %.lr.ph366 ], [ %indvars.iv.next401, %bb.dh ] ; 2 uses
  %i.un = load ptr, ptr %i.uj, align 8
  %i.uo = getelementptr inbounds nuw [24 x i8], ptr %i.un, i64 %indvars.iv400 ; 2 uses
  %i.up = load double, ptr %i.uo, align 8
  %i.uq = fsub double %i.up, %i.tz
  store double %i.uq, ptr %i.uo, align 8
  %indvars.iv.next401 = add nuw nsw i64 %indvars.iv400, 1 ; 2 uses
  %i.ur = load i32, ptr %i.uh, align 4
  %i.us = zext i32 %i.ur to i64
  %i.ut = icmp samesign ult i64 %indvars.iv.next401, %i.us
  br i1 %i.ut, label %bb.dh, label %.preheader325, !llvm.loop !332

.preheader324:                                    ; preds = %bb.di, %.preheader325
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ug, i64 1056 ; 2 uses
  %i.uv = load i32, ptr %i.uu, align 8
  %.not386 = icmp eq i32 %i.uv, 0
  br i1 %.not386, label %._crit_edge371, label %.lr.ph370

.lr.ph370:                                        ; preds = %.preheader324
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ug, i64 1064
  br label %bb.dj

bb.di:                                            ; preds = %.lr.ph368, %bb.di
  %indvars.iv403 = phi i64 [ 0, %.lr.ph368 ], [ %indvars.iv.next404, %bb.di ] ; 2 uses
  %i.ux = load ptr, ptr %i.um, align 8
  %i.uy = getelementptr inbounds nuw [32 x i8], ptr %i.ux, i64 %indvars.iv403 ; 2 uses
  %i.uz = load double, ptr %i.uy, align 8
  %i.va = fsub double %i.uz, %i.ua
  store double %i.va, ptr %i.uy, align 8
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 1 ; 2 uses
  %i.vb = load i32, ptr %i.uk, align 8
  %i.vc = zext i32 %i.vb to i64
  %i.vd = icmp samesign ult i64 %indvars.iv.next404, %i.vc
  br i1 %i.vd, label %bb.di, label %.preheader324, !llvm.loop !333

._crit_edge371:                                   ; preds = %bb.dj, %.preheader324
  %indvars.iv.next410 = add nuw nsw i64 %indvars.iv409, 1 ; 2 uses
  %i.ve = load i32, ptr %i.s, align 8
  %i.vf = zext i32 %i.ve to i64
  %i.vg = icmp samesign ult i64 %indvars.iv.next410, %i.vf
  br i1 %i.vg, label %.lr.ph374, label %.preheader, !llvm.loop !334

bb.dj:                                            ; preds = %.lr.ph370, %bb.dj
  %indvars.iv406 = phi i64 [ 0, %.lr.ph370 ], [ %indvars.iv.next407, %bb.dj ] ; 2 uses
  %i.vh = load ptr, ptr %i.uw, align 8
  %i.vi = getelementptr inbounds nuw [24 x i8], ptr %i.vh, i64 %indvars.iv406 ; 2 uses
  %i.vj = load double, ptr %i.vi, align 8
  %i.vk = fsub double %i.vj, %i.ub
  store double %i.vk, ptr %i.vi, align 8
  %indvars.iv.next407 = add nuw nsw i64 %indvars.iv406, 1 ; 2 uses
  %i.vl = load i32, ptr %i.uu, align 8
  %i.vm = zext i32 %i.vl to i64
  %i.vn = icmp samesign ult i64 %indvars.iv.next407, %i.vm
  br i1 %i.vn, label %bb.dj, label %._crit_edge371, !llvm.loop !335

._crit_edge381:                                   ; preds = %._crit_edge378, %.preheader
  %shift = shufflevector <2 x double> %i.tx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.tx, %shift
  %i.vo = extractelement <2 x double> %foldExtExtBinop, i64 0
  store double %i.vo, ptr %i.q, align 8
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.vq = load double, ptr %i.vp, align 8
  store double %i.vq, ptr %i.r, align 8
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA44_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit

.lr.ph380:                                        ; preds = %.lr.ph380.preheader, %._crit_edge378
  %i.vr = phi i32 [ %i.vy, %._crit_edge378 ], [ %i.uc, %.lr.ph380.preheader ]
  %indvars.iv415 = phi i64 [ %indvars.iv.next416, %._crit_edge378 ], [ 0, %.lr.ph380.preheader ] ; 2 uses
  %i.vs = load ptr, ptr %i.x, align 8
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.vs, i64 %indvars.iv415
  %i.vu = load ptr, ptr %i.vt, align 8            ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 1028 ; 2 uses
  %i.vw = load i32, ptr %i.vv, align 4
  %.not388 = icmp eq i32 %i.vw, 0
  br i1 %.not388, label %._crit_edge378, label %.lr.ph377

.lr.ph377:                                        ; preds = %.lr.ph380
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vu, i64 1032
  br label %bb.dk

._crit_edge378.loopexit:                          ; preds = %bb.dk
  %.pre425 = load i32, ptr %i.w, align 8
  br label %._crit_edge378

._crit_edge378:                                   ; preds = %._crit_edge378.loopexit, %.lr.ph380
  %i.vy = phi i32 [ %.pre425, %._crit_edge378.loopexit ], [ %i.vr, %.lr.ph380 ] ; 2 uses
  %indvars.iv.next416 = add nuw nsw i64 %indvars.iv415, 1 ; 2 uses
  %i.vz = zext i32 %i.vy to i64
  %i.wa = icmp samesign ult i64 %indvars.iv.next416, %i.vz
  br i1 %i.wa, label %.lr.ph380, label %._crit_edge381, !llvm.loop !336

bb.dk:                                            ; preds = %.lr.ph377, %bb.dk
  %indvars.iv412 = phi i64 [ 0, %.lr.ph377 ], [ %indvars.iv.next413, %bb.dk ] ; 2 uses
  %i.wb = load ptr, ptr %i.vx, align 8
  %i.wc = getelementptr inbounds nuw [32 x i8], ptr %i.wb, i64 %indvars.iv412 ; 2 uses
  %i.wd = load double, ptr %i.wc, align 8
  %i.we = fsub double %i.wd, %i.ud
  store double %i.we, ptr %i.wc, align 8
  %indvars.iv.next413 = add nuw nsw i64 %indvars.iv412, 1 ; 2 uses
  %i.wf = load i32, ptr %i.vv, align 4
  %i.wg = zext i32 %i.wf to i64
  %i.wh = icmp samesign ult i64 %indvars.iv.next413, %i.wg
  br i1 %i.wh, label %bb.dk, label %._crit_edge378.loopexit, !llvm.loop !337

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA44_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit: ; preds = %.noexc255, %.noexc252, %._crit_edge381
  %i.wi = phi i64 [ %i.ni, %.noexc255 ], [ %i.ni, %.noexc252 ], [ %i.tj, %._crit_edge381 ]
  %i.wj = phi ptr [ %i.nj, %.noexc255 ], [ %i.nj, %.noexc252 ], [ %i.tk, %._crit_edge381 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  %.not.i.i.i256 = icmp eq ptr %i.wj, null
  br i1 %.not.i.i.i256, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EED2Ev.exit, label %bb.dl

bb.dl:                                            ; preds = %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA44_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit
  %i.wk = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.wl = load ptr, ptr %i.wk, align 8
  %i.wm = ptrtoint ptr %i.wl to i64
  %i.wn = sub i64 %i.wm, %i.wi
  call void @_ZdlPvm(ptr noundef nonnull %i.wj, i64 noundef %i.wn) #29
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EED2Ev.exit

_ZNSt6vectorIP10aiNodeAnimSaIS1_EED2Ev.exit:      ; preds = %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogInfoIJRA44_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  %i.wo = load ptr, ptr %i.fw, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt3mapIlP12morphKeyDataSt4lessIlESaIS6_IKlSA_EEEESt10_Select1stISI_ESB_IS5_ESaISI_EE8_M_eraseEPSt13_Rb_tree_nodeISI_E(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef %i.wo)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS_IlP12morphKeyDataSt4lessIlESaISt4pairIKlS7_EEES8_IS5_ESaISA_IKS5_SF_EEED2Ev.exit unwind label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EED2Ev.exit
  %i.wp = landingpad { ptr, i32 }
          catch ptr null
  %i.wq = extractvalue { ptr, i32 } %i.wp, 0
  call void @__clang_call_terminate(ptr %i.wq) #32
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS_IlP12morphKeyDataSt4lessIlESaISt4pairIKlS7_EEES8_IS5_ESaISA_IKS5_SF_EEED2Ev.exit: ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  %i.wr = load ptr, ptr %i.fr, align 8
  invoke void @_ZNSt8_Rb_treeIPKN6Assimp3FBX18AnimationCurveNodeESt4pairIKS4_PKNS1_14AnimationLayerEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef %i.wr)
          to label %_ZNSt3mapIPKN6Assimp3FBX18AnimationCurveNodeEPKNS1_14AnimationLayerESt4lessIS4_ESaISt4pairIKS4_S7_EEED2Ev.exit unwind label %bb.dn

bb.dn:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS_IlP12morphKeyDataSt4lessIlESaISt4pairIKlS7_EEES8_IS5_ESaISA_IKS5_SF_EEED2Ev.exit
  %i.ws = landingpad { ptr, i32 }
          catch ptr null
  %i.wt = extractvalue { ptr, i32 } %i.ws, 0
end_hunk_2
