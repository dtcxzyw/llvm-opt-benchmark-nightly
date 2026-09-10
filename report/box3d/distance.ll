Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/distance?download=true
inline.NumInlined: 318
inline.NumDeleted: 39
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@b3GetSweepTransform:bb.a
  %.sroa.011.0.vec.extract.i.i = extractelement <2 x float> %.sroa.010.0.i.i, i64 0
  %i.ar = fmul <2 x float> %i.w, %.sroa.019.0.copyload
  %i.as = fmul <2 x float> %i.t, %.sroa.017.0.copyload
  %i.at = fadd <2 x float> %i.ar, %i.as
  %foldExtExtBinop50 = fmul <2 x float> %.sroa.4.0.i.i, %.sroa.09.0.copyload
  %i.au = extractelement <2 x float> %foldExtExtBinop50, i64 0
  %i.av = fmul float %.sroa.011.0.vec.extract.i.i, %.sroa.210.0.copyload
  %i.aw = shufflevector <2 x float> %.sroa.09.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ax = insertelement <2 x float> %i.aw, float %.sroa.210.0.copyload, i64 1 ; 2 uses
  %i.ay = fmul <2 x float> %.sroa.010.0.i.i, %i.ax
  %i.az = shufflevector <2 x float> %.sroa.010.0.i.i, <2 x float> %.sroa.4.0.i.i, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ba = fmul <2 x float> %i.az, %.sroa.09.0.copyload
  %i.bb = fsub <2 x float> %i.ay, %i.ba           ; 2 uses
  %i.bc = fsub float %i.au, %i.av
  %i.bd = shufflevector <2 x float> %.sroa.4.0.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.be = insertelement <2 x float> %i.aw, float %.sroa.210.0.copyload, i64 0
  %i.bf = fmul <2 x float> %i.bd, %i.be
  %i.bg = fmul <2 x float> %i.bd, %i.ax
  %i.bh = fadd <2 x float> %i.bf, %i.bb           ; 2 uses
  %i.bi = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bj = insertelement <2 x float> %i.bi, float %i.bc, i64 0
  %i.bk = fadd <2 x float> %i.bg, %i.bj           ; 2 uses
  %i.bl = fmul <2 x float> %i.az, %i.bh
  %i.bm = shufflevector <2 x float> %.sroa.4.0.i.i, <2 x float> %.sroa.010.0.i.i, <2 x i32> <i32 0, i32 2>
  %i.bn = fmul <2 x float> %i.bm, %i.bk
  %i.bo = fsub <2 x float> %i.bl, %i.bn
  %i.bp = shufflevector <2 x float> %i.bk, <2 x float> %i.bh, <2 x i32> <i32 0, i32 3>
  %i.bq = fmul <2 x float> %.sroa.010.0.i.i, %i.bp ; 2 uses
  %shift52 = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop53 = fsub <2 x float> %i.bq, %shift52
  %i.br = extractelement <2 x float> %foldExtExtBinop53, i64 0
  %i.bs = fmul <2 x float> %i.bo, splat (float 2.000000e+00)
  %i.bt = fadd <2 x float> %.sroa.09.0.copyload, %i.bs
  %i.bu = fmul float %i.br, 2.000000e+00
  %i.bv = fadd float %.sroa.210.0.copyload, %i.bu
  %i.bw = fsub <2 x float> %i.at, %i.bt
  %i.bx = fsub float %i.aq, %i.bv
  store <2 x float> %i.bw, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.bx, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define void @b3TimeOfImpact(ptr dead_on_unwind noalias nofree writable sret(%struct.b3TOIOutput) align 4 captures(none) initializes((0, 52)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %2 = alloca %struct.b3ShapeProxy, align 8       ; 12 uses
  %3 = alloca %struct.b3ShapeProxy, align 8       ; 12 uses
  %4 = alloca %struct.b3SimplexCache, align 8     ; 6 uses
  %5 = alloca %struct.b3DistanceInput, align 8    ; 10 uses
  %6 = alloca %struct.b3DistanceOutput, align 8   ; 11 uses
  %7 = alloca %struct.b3SeparationFunction, align 8 ; 32 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %0, i8 0, i64 52, i1 false)
  store float -1.000000e+00, ptr %i.a, align 4, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0964.0.copyload = load <2 x float>, ptr %i.b, align 8 ; 11 uses
  %.sroa.6967.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.6967.0.copyload = load float, ptr %.sroa.6967.0..sroa_idx, align 8, !tbaa !16 ; 8 uses
  %.sroa.8970.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.8970.0.copyload = load <2 x float>, ptr %.sroa.8970.0..sroa_idx, align 4 ; 8 uses
  %.sroa.12975.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.12975.0.copyload = load float, ptr %.sroa.12975.0..sroa_idx, align 4, !tbaa !16 ; 6 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.15.0.copyload = load <2 x float>, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.19.0.copyload = load float, ptr %.sroa.19.0..sroa_idx, align 8, !tbaa !16
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 68
  %.sroa.23.0.copyload = load <2 x float>, ptr %.sroa.23.0..sroa_idx, align 4 ; 7 uses
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 76
  %.sroa.25.0.copyload = load <2 x float>, ptr %.sroa.25.0..sroa_idx, align 4 ; 7 uses
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 84
  %.sroa.27.0.copyload = load <2 x float>, ptr %.sroa.27.0..sroa_idx, align 4 ; 12 uses
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 92
  %.sroa.31.0.copyload = load <2 x float>, ptr %.sroa.31.0..sroa_idx, align 4 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 100
  %.sroa.0929.0.copyload = load <2 x float>, ptr %i.c, align 4 ; 11 uses
  %.sroa.6932.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 108
  %.sroa.6932.0.copyload = load float, ptr %.sroa.6932.0..sroa_idx, align 4, !tbaa !16 ; 8 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.8.0.copyload = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.12.0.copyload = load float, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !16
  %.sroa.16.0..sroa_idx941 = getelementptr inbounds nuw i8, ptr %1, i64 124
  %.sroa.16.0.copyload = load <2 x float>, ptr %.sroa.16.0..sroa_idx941, align 4 ; 2 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 132
  %.sroa.20.0.copyload = load float, ptr %.sroa.20.0..sroa_idx, align 4, !tbaa !16
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.24.0.copyload = load <2 x float>, ptr %.sroa.24.0..sroa_idx, align 8 ; 7 uses
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.sroa.26.0.copyload = load <2 x float>, ptr %.sroa.26.0..sroa_idx, align 8 ; 7 uses
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.sroa.28.0.copyload = load <2 x float>, ptr %.sroa.28.0..sroa_idx, align 8 ; 9 uses
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.32.0.copyload = load <2 x float>, ptr %.sroa.32.0..sroa_idx, align 8 ; 7 uses
  %i.d = fsub <2 x float> %.sroa.15.0.copyload, %.sroa.8970.0.copyload ; 4 uses
  %i.e = fsub float %.sroa.19.0.copyload, %.sroa.12975.0.copyload ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %.sroa.8.0.copyload, %.sroa.8970.0.copyload ; 2 uses
  %i.f = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 2 uses
  %foldExtExtBinop2426 = fsub <2 x float> %.sroa.16.0.copyload, %.sroa.8970.0.copyload ; 2 uses
  %i.g = extractelement <2 x float> %foldExtExtBinop2426, i64 1 ; 2 uses
  %i.h = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.i = insertelement <2 x float> %i.h, float %.sroa.12.0.copyload, i64 0
  %i.j = shufflevector <2 x float> %.sroa.8970.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.k = insertelement <2 x float> %i.j, float %.sroa.12975.0.copyload, i64 0 ; 2 uses
  %i.l = fsub <2 x float> %i.i, %i.k              ; 4 uses
  %.sroa.08.4.vec.insert.i367 = shufflevector <2 x float> %i.l, <2 x float> %foldExtExtBinop, <2 x i32> <i32 1, i32 3>
  %i.m = shufflevector <2 x float> %.sroa.16.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.n = insertelement <2 x float> %i.m, float %.sroa.20.0.copyload, i64 0
  %i.o = fsub <2 x float> %i.n, %i.k              ; 4 uses
  %.sroa.08.4.vec.insert.i375 = shufflevector <2 x float> %i.o, <2 x float> %foldExtExtBinop2426, <2 x i32> <i32 1, i32 3>
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !33
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !14
  %i.u = add i32 %i.t, %i.r                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.w = load float, ptr %i.v, align 8, !tbaa !84
  %i.x = tail call float @b3GetLengthUnitsPerMeter() #13
  %i.y = fmul float %i.x, 5.000000e-03            ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !85
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !85
  %i.ad = fadd float %i.aa, %i.ac
  %i.ae = fsub float %i.ad, %i.y                  ; 2 uses
  %i.af = fcmp ogt float %i.y, %i.ae
  %i.ag = select i1 %i.af, float %i.y, float %i.ae ; 6 uses
  %i.ah = fmul float %i.y, 2.500000e-01           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !33
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 0, ptr %i.aj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !33
  %i.ak = shufflevector <2 x float> %.sroa.23.0.copyload, <2 x float> %.sroa.25.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.al = shufflevector <2 x float> %.sroa.27.0.copyload, <2 x float> %.sroa.31.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.am = fmul <4 x float> %i.ak, %i.al           ; 4 uses
  %.sroa.03.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.0964.0.copyload, i64 1 ; 4 uses
  %i.an = shufflevector <2 x float> %.sroa.28.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.ao = shufflevector <2 x float> %.sroa.24.0.copyload, <2 x float> %.sroa.26.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ap = shufflevector <2 x float> %.sroa.28.0.copyload, <2 x float> %.sroa.32.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aq = fmul <4 x float> %i.ao, %i.ap           ; 4 uses
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> %i.am, <2 x i32> <i32 0, i32 4>
  %i.as = shufflevector <4 x float> %i.aq, <4 x float> %i.am, <2 x i32> <i32 1, i32 5>
  %i.at = fadd <2 x float> %i.ar, %i.as
  %i.au = shufflevector <4 x float> %i.aq, <4 x float> %i.am, <2 x i32> <i32 2, i32 6>
  %i.av = fadd <2 x float> %i.at, %i.au
  %i.aw = shufflevector <4 x float> %i.aq, <4 x float> %i.am, <2 x i32> <i32 3, i32 7>
  %i.ax = fadd <2 x float> %i.aw, %i.av
  %i.ay = fcmp olt <2 x float> %i.ax, zeroinitializer ; 2 uses
  %.sroa.03.4.vec.extract.i.i.i409 = extractelement <2 x float> %.sroa.0929.0.copyload, i64 1 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 44
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.ba = fneg <2 x float> %.sroa.23.0.copyload   ; 4 uses
  %i.bb = fneg <2 x float> %.sroa.25.0.copyload   ; 4 uses
  %i.bc = fneg <2 x float> %.sroa.24.0.copyload   ; 4 uses
  %i.bd = fneg <2 x float> %.sroa.26.0.copyload   ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.2219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.2208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.2198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 7 uses
  %i.bj = fadd float %i.ah, %i.ag                 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 152 ; 12 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.6967.0..sroa_idx968 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.8970.0..sroa_idx971 = getelementptr inbounds nuw i8, ptr %7, i64 28
  %.sroa.12975.0..sroa_idx976 = getelementptr inbounds nuw i8, ptr %7, i64 36
  %.sroa.15.0..sroa_idx978 = getelementptr inbounds nuw i8, ptr %7, i64 40
  %.sroa.19.0..sroa_idx982 = getelementptr inbounds nuw i8, ptr %7, i64 48
  %.sroa.23.0..sroa_idx984 = getelementptr inbounds nuw i8, ptr %7, i64 52
  %.sroa.25.0..sroa_idx987 = getelementptr inbounds nuw i8, ptr %7, i64 60
  %.sroa.27.0..sroa_idx990 = getelementptr inbounds nuw i8, ptr %7, i64 68
  %.sroa.31.0..sroa_idx995 = getelementptr inbounds nuw i8, ptr %7, i64 76
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 84
  %.sroa.6932.0..sroa_idx933 = getelementptr inbounds nuw i8, ptr %7, i64 92
  %.sroa.8.0..sroa_idx935 = getelementptr inbounds nuw i8, ptr %7, i64 96
  %.sroa.12.0..sroa_idx939 = getelementptr inbounds nuw i8, ptr %7, i64 104
  %.sroa.16.0..sroa_idx942 = getelementptr inbounds nuw i8, ptr %7, i64 108
  %.sroa.20.0..sroa_idx946 = getelementptr inbounds nuw i8, ptr %7, i64 116
  %.sroa.24.0..sroa_idx948 = getelementptr inbounds nuw i8, ptr %7, i64 120
  %.sroa.26.0..sroa_idx951 = getelementptr inbounds nuw i8, ptr %7, i64 128
  %.sroa.28.0..sroa_idx954 = getelementptr inbounds nuw i8, ptr %7, i64 136
  %.sroa.32.0..sroa_idx959 = getelementptr inbounds nuw i8, ptr %7, i64 144
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 176 ; 11 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 160 ; 16 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 164 ; 5 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 172 ; 4 uses
  %i.br = fsub float %i.ag, %i.ah                 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %.promoted1976 = load i32, ptr %i.bi, align 4   ; 2 uses
  %.promoted1983 = load i32, ptr %i.bs, align 4
  %.promoted1990 = load i32, ptr %i.bt, align 4
  %i.bu = add i32 %.promoted1976, 25
  %i.bv = extractelement <2 x float> %i.o, i64 0
  %i.bw = extractelement <2 x float> %i.l, i64 0
  %i.bx = shufflevector <2 x float> %.sroa.27.0.copyload, <2 x float> %.sroa.31.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.by = shufflevector <2 x float> %.sroa.31.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.bz = shufflevector <2 x float> %.sroa.31.0.copyload, <2 x float> %.sroa.27.0.copyload, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.ca = shufflevector <2 x float> %.sroa.32.0.copyload, <2 x float> %.sroa.28.0.copyload, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.cb = shufflevector <2 x float> %.sroa.32.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.cc = shufflevector <2 x float> %.sroa.28.0.copyload, <2 x float> %.sroa.32.0.copyload, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.cd = shufflevector <2 x float> %.sroa.28.0.copyload, <2 x float> %.sroa.27.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ce = shufflevector <2 x float> %.sroa.28.0.copyload, <2 x float> %.sroa.27.0.copyload, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cf = shufflevector <2 x float> %.sroa.0929.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cg = insertelement <2 x float> %i.cf, float %.sroa.6932.0.copyload, i64 1 ; 3 uses
  %i.ch = insertelement <2 x float> %i.cf, float %.sroa.6932.0.copyload, i64 0 ; 5 uses
  %i.ci = shufflevector <2 x float> %.sroa.0964.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cj = insertelement <2 x float> %i.ci, float %.sroa.6967.0.copyload, i64 1 ; 2 uses
  %i.ck = insertelement <2 x float> %i.ci, float %.sroa.6967.0.copyload, i64 0 ; 5 uses
  %i.cl = extractelement <2 x i1> %i.ay, i64 0    ; 8 uses
  %i.cm = extractelement <2 x i1> %i.ay, i64 1    ; 8 uses
  %i.cn = extractelement <2 x float> %i.d, i64 1
  %i.co = shufflevector <2 x float> %.sroa.0929.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cp = insertelement <2 x float> %i.co, float %.sroa.6932.0.copyload, i64 1
  %i.cq = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cr = insertelement <2 x float> %i.cq, float %i.e, i64 0
  %i.cs = shufflevector <2 x float> %.sroa.0964.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ct = insertelement <2 x float> %i.cs, float %.sroa.6967.0.copyload, i64 1
  br label %bb.b

bb.b:                                             ; preds = %select.unfold1070, %bb.a
  %i.cu = phi i32 [ %.promoted1990, %bb.a ], [ %i.cml, %select.unfold1070 ] ; 5 uses
  %.lcssa116111701984 = phi i32 [ %.promoted1983, %bb.a ], [ %.lcssa11611170, %select.unfold1070 ] ; 4 uses
  %i.cv = phi i32 [ %.promoted1976, %bb.a ], [ %i.jt, %select.unfold1070 ]
  %.0318 = phi i32 [ 0, %bb.a ], [ %i.ju, %select.unfold1070 ]
  %.0 = phi float [ 0.000000e+00, %bb.a ], [ %.2.ph, %select.unfold1070 ] ; 11 uses
  %i.cw = select i1 %i.cm, <2 x float> %i.bb, <2 x float> %.sroa.25.0.copyload
  %i.cx = select i1 %i.cm, <2 x float> %i.ba, <2 x float> %.sroa.23.0.copyload
  %i.cy = fsub float 1.000000e+00, %.0            ; 3 uses
  %i.cz = insertelement <2 x float> poison, float %.0, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.db = fmul <2 x float> %.sroa.27.0.copyload, %i.da ; 3 uses
  %i.dc = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer ; 13 uses
  %i.de = fmul <2 x float> %i.dd, %i.cx
  %i.df = fadd <2 x float> %i.db, %i.de           ; 2 uses
  %i.dg = fmul <2 x float> %.sroa.31.0.copyload, %i.da ; 3 uses
  %i.dh = fmul <2 x float> %i.dd, %i.cw
  %i.di = fadd <2 x float> %i.dg, %i.dh           ; 2 uses
  %i.dj = shufflevector <2 x float> %i.df, <2 x float> %i.di, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.dk = fmul <4 x float> %i.dj, %i.dj           ; 4 uses
  %shift = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2428 = fadd <4 x float> %i.dk, %shift
  %shift2430 = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2431 = fadd <4 x float> %foldExtExtBinop2428, %shift2430
  %shift2433 = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2434 = fadd <4 x float> %shift2433, %foldExtExtBinop2431
  %i.dl = extractelement <4 x float> %foldExtExtBinop2434, i64 0 ; 2 uses
  %i.dm = fcmp ogt float %i.dl, f0x057A0000
  br i1 %i.dm, label %bb.c, label %b3GetSweepTransform.exit

bb.c:                                             ; preds = %bb.b
  %sqrt.i.i.i = call float @llvm.sqrt.f32(float %i.dl)
  %i.dn = fdiv float 1.000000e+00, %sqrt.i.i.i
  %i.do = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dq = fmul <2 x float> %i.df, %i.dp
  %i.dr = fmul <2 x float> %i.di, %i.dp
  br label %b3GetSweepTransform.exit

b3GetSweepTransform.exit:                         ; preds = %bb.b, %bb.c
  %.sroa.010.0.i.i.i = phi <2 x float> [ %i.dq, %bb.c ], [ zeroinitializer, %bb.b ] ; 46 uses
  %.sroa.4.0.i.i.i = phi <2 x float> [ %i.dr, %bb.c ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.b ] ; 27 uses
  %i.ds = fmul float %i.cy, 0.000000e+00          ; 2 uses
  %i.dt = fmul <2 x float> %i.d, %i.da
  %i.du = fmul float %i.e, %.0
  %i.dv = fadd float %i.du, %i.ds                 ; 2 uses
  %i.dw = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dx = shufflevector <2 x float> %.sroa.010.0.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.011.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.010.0.i.i.i, i64 0 ; 16 uses
  %i.dy = fmul float %.sroa.6967.0.copyload, %.sroa.011.0.vec.extract.i.i.i
  %i.dz = fmul <2 x float> %.sroa.0964.0.copyload, %.sroa.4.0.i.i.i ; 2 uses
  %i.ea = extractelement <2 x float> %i.dz, i64 0
  %i.eb = fsub float %i.ea, %i.dy
  %i.ec = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = fadd <2 x float> %i.dt, %i.ed           ; 3 uses
  %i.ef = fmul <2 x float> %i.cj, %.sroa.010.0.i.i.i
  %i.eg = shufflevector <2 x float> %.sroa.010.0.i.i.i, <2 x float> %.sroa.4.0.i.i.i, <2 x i32> <i32 1, i32 2> ; 18 uses
  %i.eh = fmul <2 x float> %.sroa.0964.0.copyload, %i.eg
  %i.ei = fsub <2 x float> %i.ef, %i.eh
  %i.ej = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 11 uses
  %i.ek = fmul <2 x float> %i.ck, %i.ej
  %i.el = fadd <2 x float> %i.ek, %i.ei           ; 3 uses
  %i.em = extractelement <2 x float> %i.dz, i64 1
  %i.en = fadd float %i.em, %i.eb                 ; 2 uses
  %i.eo = fmul <2 x float> %i.eg, %i.el
  %i.ep = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> %.sroa.010.0.i.i.i, <2 x i32> <i32 0, i32 2> ; 10 uses
  %i.eq = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.er = insertelement <2 x float> %i.eq, float %i.en, i64 0
  %i.es = fmul <2 x float> %i.ep, %i.er
  %i.et = fsub <2 x float> %i.eo, %i.es
  %i.eu = fmul float %.sroa.011.0.vec.extract.i.i.i, %i.en
  %foldExtExtBinop2436 = fmul <2 x float> %.sroa.010.0.i.i.i, %i.el
  %i.ev = extractelement <2 x float> %foldExtExtBinop2436, i64 1
  %i.ew = fsub float %i.eu, %i.ev
  %i.ex = fmul <2 x float> %i.et, splat (float 2.000000e+00)
  %i.ey = fadd <2 x float> %.sroa.0964.0.copyload, %i.ex
  %i.ez = fmul float %i.ew, 2.000000e+00
  %i.fa = fadd float %.sroa.6967.0.copyload, %i.ez
  %i.fb = fsub <2 x float> %i.ee, %i.ey           ; 9 uses
  %i.fc = fsub float %i.dv, %i.fa                 ; 8 uses
  %i.fd = select i1 %i.cl, <2 x float> %i.bd, <2 x float> %.sroa.26.0.copyload
  %i.fe = select i1 %i.cl, <2 x float> %i.bc, <2 x float> %.sroa.24.0.copyload
  %i.ff = fmul <2 x float> %i.dd, %i.fe
  %i.fg = fmul <2 x float> %.sroa.28.0.copyload, %i.da ; 3 uses
  %i.fh = fadd <2 x float> %i.fg, %i.ff           ; 2 uses
  %i.fi = fmul <2 x float> %i.dd, %i.fd
  %i.fj = fmul <2 x float> %.sroa.32.0.copyload, %i.da ; 3 uses
  %i.fk = fadd <2 x float> %i.fj, %i.fi           ; 2 uses
  %i.fl = shufflevector <2 x float> %i.fh, <2 x float> %i.fk, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.fm = fmul <4 x float> %i.fl, %i.fl           ; 4 uses
  %shift2438 = shufflevector <4 x float> %i.fm, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2439 = fadd <4 x float> %i.fm, %shift2438
  %shift2441 = shufflevector <4 x float> %i.fm, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2442 = fadd <4 x float> %foldExtExtBinop2439, %shift2441
  %shift2444 = shufflevector <4 x float> %i.fm, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2445 = fadd <4 x float> %shift2444, %foldExtExtBinop2442
  %i.fn = extractelement <4 x float> %foldExtExtBinop2445, i64 0 ; 2 uses
  %i.fo = fcmp ogt float %i.fn, f0x057A0000
  br i1 %i.fo, label %bb.d, label %b3GetSweepTransform.exit421

bb.d:                                             ; preds = %b3GetSweepTransform.exit
  %sqrt.i.i.i416 = call float @llvm.sqrt.f32(float %i.fn)
  %i.fp = fdiv float 1.000000e+00, %sqrt.i.i.i416
  %i.fq = insertelement <2 x float> poison, float %i.fp, i64 0
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fs = fmul <2 x float> %i.fh, %i.fr
  %i.ft = fmul <2 x float> %i.fk, %i.fr
  br label %b3GetSweepTransform.exit421

b3GetSweepTransform.exit421:                      ; preds = %b3GetSweepTransform.exit, %bb.d
  %.sroa.010.0.i.i.i391 = phi <2 x float> [ %i.fs, %bb.d ], [ zeroinitializer, %b3GetSweepTransform.exit ] ; 11 uses
  %.sroa.4.0.i.i.i392 = phi <2 x float> [ %i.ft, %bb.d ], [ <float 0.000000e+00, float 1.000000e+00>, %b3GetSweepTransform.exit ] ; 8 uses
  %i.fu = fmul float %i.f, %i.cy
  %i.fv = fmul float %i.g, %.0
  %i.fw = fadd float %i.fv, %i.fu                 ; 2 uses
  %i.fx = fmul <2 x float> %i.l, %i.dd
  %i.fy = fmul <2 x float> %i.o, %i.da
  %i.fz = fadd <2 x float> %i.fy, %i.fx           ; 3 uses
  %.sroa.011.0.vec.extract.i.i.i411 = extractelement <2 x float> %.sroa.010.0.i.i.i391, i64 0
  %i.ga = extractelement <2 x float> %i.fz, i64 0
  %foldExtExtBinop2447 = fmul <2 x float> %.sroa.0929.0.copyload, %.sroa.4.0.i.i.i392
  %i.gb = extractelement <2 x float> %foldExtExtBinop2447, i64 0
  %i.gc = fmul float %.sroa.6932.0.copyload, %.sroa.011.0.vec.extract.i.i.i411
  %i.gd = fmul <2 x float> %i.cg, %.sroa.010.0.i.i.i391
  %i.ge = shufflevector <2 x float> %.sroa.010.0.i.i.i391, <2 x float> %.sroa.4.0.i.i.i392, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.gf = fmul <2 x float> %.sroa.0929.0.copyload, %i.ge
  %i.gg = fsub <2 x float> %i.gd, %i.gf           ; 2 uses
  %i.gh = fsub float %i.gb, %i.gc
  %i.gi = shufflevector <2 x float> %.sroa.4.0.i.i.i392, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.gj = fmul <2 x float> %i.ch, %i.gi
  %i.gk = fmul <2 x float> %i.cg, %i.gi
  %i.gl = fadd <2 x float> %i.gj, %i.gg           ; 2 uses
  %i.gm = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gn = insertelement <2 x float> %i.gm, float %i.gh, i64 0
  %i.go = fadd <2 x float> %i.gk, %i.gn           ; 2 uses
  %i.gp = fmul <2 x float> %i.ge, %i.gl
  %i.gq = shufflevector <2 x float> %.sroa.4.0.i.i.i392, <2 x float> %.sroa.010.0.i.i.i391, <2 x i32> <i32 0, i32 2>
  %i.gr = fmul <2 x float> %i.gq, %i.go
  %i.gs = fsub <2 x float> %i.gp, %i.gr
  %foldExtExtBinop2449 = fmul <2 x float> %.sroa.010.0.i.i.i391, %i.go
  %foldExtExtBinop2451 = fmul <2 x float> %.sroa.010.0.i.i.i391, %i.gl
  %shift2453 = shufflevector <2 x float> %foldExtExtBinop2451, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2454 = fsub <2 x float> %foldExtExtBinop2449, %shift2453
  %i.gt = extractelement <2 x float> %foldExtExtBinop2454, i64 0
  %i.gu = fmul <2 x float> %i.gs, splat (float 2.000000e+00)
  %i.gv = fmul float %i.gt, 2.000000e+00
  %i.gw = fadd <2 x float> %.sroa.0929.0.copyload, %i.gu
  %i.gx = fadd float %.sroa.6932.0.copyload, %i.gv
  %i.gy = shufflevector <2 x float> %i.fz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gz = insertelement <2 x float> %i.gy, float %i.fw, i64 1
  %i.ha = fsub <2 x float> %i.gz, %i.gw
  %i.hb = fsub float %i.ga, %i.gx
  %i.hc = fsub <2 x float> %i.ha, %i.fb           ; 4 uses
  %i.hd = fsub float %i.hb, %i.fc                 ; 3 uses
  %i.he = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hf = insertelement <2 x float> %i.he, float %i.hd, i64 1 ; 2 uses
  %i.hg = fmul <2 x float> %.sroa.010.0.i.i.i, %i.hf
  %i.hh = fmul <2 x float> %i.ep, %i.hc
  %i.hi = fmul <2 x float> %i.eg, %i.hc
  %i.hj = insertelement <2 x float> %i.he, float %i.hd, i64 0 ; 2 uses
  %i.hk = fmul <2 x float> %.sroa.010.0.i.i.i, %i.hj
  %i.hl = fsub <2 x float> %i.hg, %i.hi
  %i.hm = fsub <2 x float> %i.hh, %i.hk
  %i.hn = fmul <2 x float> %i.ej, %i.hj
  %i.ho = fmul <2 x float> %i.ej, %i.hf
  %i.hp = fsub <2 x float> %i.hl, %i.hn           ; 2 uses
  %i.hq = fsub <2 x float> %i.hm, %i.ho           ; 2 uses
  %i.hr = fmul <2 x float> %i.eg, %i.hp
  %i.hs = fmul <2 x float> %i.ep, %i.hq
  %i.ht = fsub <2 x float> %i.hr, %i.hs
  %foldExtExtBinop2456 = fmul <2 x float> %.sroa.010.0.i.i.i, %i.hq
  %foldExtExtBinop2458 = fmul <2 x float> %.sroa.010.0.i.i.i, %i.hp
  %shift2460 = shufflevector <2 x float> %foldExtExtBinop2458, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2461 = fsub <2 x float> %foldExtExtBinop2456, %shift2460
  %i.hu = extractelement <2 x float> %foldExtExtBinop2461, i64 0
  %i.hv = fmul <2 x float> %i.ht, splat (float 2.000000e+00)
  %i.hw = fadd <2 x float> %i.hc, %i.hv
  %i.hx = fmul float %i.hu, 2.000000e+00
  %i.hy = fadd float %i.hd, %i.hx
  %i.hz = fmul <2 x float> %i.dx, %.sroa.010.0.i.i.i391 ; 2 uses
  %shift2463 = shufflevector <2 x float> %i.hz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2464 = fsub <2 x float> %i.hz, %shift2463
  %i.ia = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> %.sroa.010.0.i.i.i, <2 x i32> <i32 0, i32 2>
  %i.ib = shufflevector <2 x float> %.sroa.010.0.i.i.i391, <2 x float> %.sroa.4.0.i.i.i392, <2 x i32> <i32 1, i32 2>
  %i.ic = fmul <2 x float> %i.ia, %i.ib
  %i.id = shufflevector <2 x float> %.sroa.010.0.i.i.i, <2 x float> %.sroa.4.0.i.i.i, <2 x i32> <i32 1, i32 2>
  %i.ie = shufflevector <2 x float> %.sroa.4.0.i.i.i392, <2 x float> %.sroa.010.0.i.i.i391, <2 x i32> <i32 0, i32 2>
  %i.if = fmul <2 x float> %i.id, %i.ie
  %i.ig = fsub <2 x float> %i.ic, %i.if
  %i.ih = fmul <2 x float> %i.ej, %.sroa.010.0.i.i.i391
  %i.ii = fadd <2 x float> %i.ih, %i.ig
  %i.ij = fmul <2 x float> %.sroa.010.0.i.i.i, %i.gi
  %i.ik = fsub <2 x float> %i.ii, %i.ij
  %i.il = fmul <2 x float> %i.dw, %.sroa.4.0.i.i.i392 ; 2 uses
  %foldExtExtBinop2473 = fadd <2 x float> %foldExtExtBinop2464, %i.il
  %i.im = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.251.8.vec.insert.i = fsub <2 x float> %foldExtExtBinop2473, %i.im
  %i.in = shufflevector <2 x float> %.sroa.010.0.i.i.i, <2 x float> %.sroa.4.0.i.i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.io = shufflevector <2 x float> %.sroa.010.0.i.i.i391, <2 x float> %.sroa.4.0.i.i.i392, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ip = fmul <4 x float> %i.in, %i.io           ; 4 uses
  %shift2478 = shufflevector <4 x float> %i.ip, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2479 = fadd <4 x float> %i.ip, %shift2478
  %shift2481 = shufflevector <4 x float> %i.ip, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2482 = fadd <4 x float> %shift2481, %foldExtExtBinop2479
  %shift2484 = shufflevector <4 x float> %i.ip, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2485 = fadd <4 x float> %shift2484, %foldExtExtBinop2482
  %i.iq = shufflevector <4 x float> %foldExtExtBinop2485, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.251.12.vec.insert.i = shufflevector <2 x float> %.sroa.251.8.vec.insert.i, <2 x float> %i.iq, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.hw, ptr %i.az, align 8
  store float %i.hy, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !16
  store <2 x float> %i.ik, ptr %.sroa.5.0..sroa_idx, align 4
  store <2 x float> %.sroa.251.12.vec.insert.i, ptr %.sroa.6.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %6, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef null, i32 noundef 0)
  %i.ir = load float, ptr %i.be, align 4, !tbaa !26 ; 8 uses
  %.sroa.0218.0.copyload = load <2 x float>, ptr %i.bg, align 8 ; 5 uses
  %.sroa.2219.0.copyload = load float, ptr %.sroa.2219.0..sroa_idx, align 8 ; 4 uses
  %i.is = fmul float %.sroa.011.0.vec.extract.i.i.i, %.sroa.2219.0.copyload
  %i.it = fmul <2 x float> %i.eg, %.sroa.0218.0.copyload
  %i.iu = shufflevector <2 x float> %.sroa.0218.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.iv = insertelement <2 x float> %i.iu, float %.sroa.2219.0.copyload, i64 1
  %i.iw = fmul <2 x float> %.sroa.010.0.i.i.i, %i.iv
  %i.ix = fsub <2 x float> %i.iw, %i.it
  %i.iy = shufflevector <2 x float> %.sroa.0218.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.iz = insertelement <2 x float> %i.iy, float %.sroa.2219.0.copyload, i64 0
  %i.ja = fmul <2 x float> %i.ej, %i.iz
  %i.jb = fmul <2 x float> %.sroa.4.0.i.i.i, %.sroa.0218.0.copyload ; 2 uses
  %i.jc = extractelement <2 x float> %i.jb, i64 0
  %i.jd = fsub float %i.jc, %i.is
  %i.je = fadd <2 x float> %i.ja, %i.ix           ; 3 uses
  %i.jf = extractelement <2 x float> %i.jb, i64 1
  %i.jg = fadd float %i.jf, %i.jd                 ; 2 uses
  %i.jh = fmul <2 x float> %i.eg, %i.je
  %i.ji = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.jj = insertelement <2 x float> %i.ji, float %i.jg, i64 0
  %i.jk = fmul <2 x float> %i.ep, %i.jj
  %i.jl = fsub <2 x float> %i.jh, %i.jk
  %i.jm = fmul float %.sroa.011.0.vec.extract.i.i.i, %i.jg
  %foldExtExtBinop2490 = fmul <2 x float> %.sroa.010.0.i.i.i, %i.je
  %i.jn = extractelement <2 x float> %foldExtExtBinop2490, i64 1
  %i.jo = fsub float %i.jm, %i.jn
  %i.jp = fmul <2 x float> %i.jl, splat (float 2.000000e+00)
  %i.jq = fadd <2 x float> %.sroa.0218.0.copyload, %i.jp ; 20 uses
  %i.jr = fmul float %i.jo, 2.000000e+00
  %i.js = fadd float %.sroa.2219.0.copyload, %i.jr ; 15 uses
  %.sroa.0207.0.copyload = load <2 x float>, ptr %6, align 8 ; 22 uses
  %.sroa.2208.0.copyload = load float, ptr %.sroa.2208.0..sroa_idx, align 8 ; 19 uses
  %.sroa.0197.0.copyload = load <2 x float>, ptr %i.bh, align 4 ; 22 uses
  %.sroa.2198.0.copyload = load float, ptr %.sroa.2198.0..sroa_idx, align 4 ; 19 uses
  %i.jt = add nsw i32 %i.cv, 1                    ; 6 uses
  %i.ju = add nuw nsw i32 %.0318, 1               ; 2 uses
  %i.jv = fcmp ugt float %i.ir, 0.000000e+00
  br i1 %i.jv, label %bb.f, label %bb.e

bb.e:                                             ; preds = %b3GetSweepTransform.exit421
  store float %i.ir, ptr %i.bf, align 4
  store i32 %i.jt, ptr %i.bi, align 4
  store i32 %.lcssa116111701984, ptr %i.bs, align 4
  store i32 %i.cu, ptr %i.bt, align 4
  %i.jw = fmul float %.sroa.011.0.vec.extract.i.i.i, %.sroa.2208.0.copyload
  %i.jx = shufflevector <2 x float> %.sroa.0207.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jy = insertelement <2 x float> %i.jx, float %.sroa.2208.0.copyload, i64 1
  %i.jz = fmul <2 x float> %.sroa.010.0.i.i.i, %i.jy
  %i.ka = fmul <2 x float> %i.eg, %.sroa.0207.0.copyload
  %i.kb = fmul float %.sroa.011.0.vec.extract.i.i.i, %.sroa.2198.0.copyload
  %i.kc = shufflevector <2 x float> %.sroa.0197.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.kd = insertelement <2 x float> %i.kc, float %.sroa.2198.0.copyload, i64 1
  %i.ke = fmul <2 x float> %.sroa.010.0.i.i.i, %i.kd
  %i.kf = fmul <2 x float> %i.eg, %.sroa.0197.0.copyload
  store i32 2, ptr %0, align 4, !tbaa !86
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !82
  %i.kg = load float, ptr %i.z, align 4, !tbaa !85 ; 2 uses
  %i.kh = fmul float %i.js, %i.kg
  %i.ki = load float, ptr %i.ab, align 4, !tbaa !85 ; 2 uses
  %i.kj = fmul float %i.js, %i.ki
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.4172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.kl = fsub <2 x float> %i.jz, %i.ka
  %i.km = insertelement <2 x float> %i.jx, float %.sroa.2208.0.copyload, i64 0
  %i.kn = fmul <2 x float> %i.ej, %i.km
  %i.ko = fmul <2 x float> %.sroa.4.0.i.i.i, %.sroa.0207.0.copyload ; 2 uses
  %i.kp = extractelement <2 x float> %i.ko, i64 0
  %i.kq = fsub float %i.kp, %i.jw
  %i.kr = fadd <2 x float> %i.kn, %i.kl           ; 3 uses
  %i.ks = extractelement <2 x float> %i.ko, i64 1
  %i.kt = fadd float %i.ks, %i.kq                 ; 2 uses
  %i.ku = fmul <2 x float> %i.eg, %i.kr
  %i.kv = shufflevector <2 x float> %i.kr, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.kw = insertelement <2 x float> %i.kv, float %i.kt, i64 0
  %i.kx = fmul <2 x float> %i.ep, %i.kw
  %i.ky = fsub <2 x float> %i.ku, %i.kx
  %i.kz = fmul float %.sroa.011.0.vec.extract.i.i.i, %i.kt
  %foldExtExtBinop2492 = fmul <2 x float> %.sroa.010.0.i.i.i, %i.kr
  %i.la = extractelement <2 x float> %foldExtExtBinop2492, i64 1
  %i.lb = fsub float %i.kz, %i.la
  %i.lc = fmul <2 x float> %i.ky, splat (float 2.000000e+00)
  %i.ld = fadd <2 x float> %.sroa.0207.0.copyload, %i.lc
  %i.le = fmul float %i.lb, 2.000000e+00
  %i.lf = fadd float %.sroa.2208.0.copyload, %i.le
  %i.lg = fadd <2 x float> %i.fb, %i.ld
  %i.lh = fadd float %i.fc, %i.lf
  %i.li = fsub <2 x float> %i.ke, %i.kf
  %i.lj = insertelement <2 x float> %i.kc, float %.sroa.2198.0.copyload, i64 0
  %i.lk = fmul <2 x float> %i.ej, %i.lj
  %i.ll = fmul <2 x float> %.sroa.4.0.i.i.i, %.sroa.0197.0.copyload ; 2 uses
  %i.lm = extractelement <2 x float> %i.ll, i64 0
  %i.ln = fsub float %i.lm, %i.kb
  %i.lo = fadd <2 x float> %i.lk, %i.li           ; 3 uses
  %i.lp = extractelement <2 x float> %i.ll, i64 1
  %i.lq = fadd float %i.lp, %i.ln                 ; 2 uses
  %i.lr = fmul <2 x float> %i.eg, %i.lo
  %i.ls = shufflevector <2 x float> %i.lo, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.lt = insertelement <2 x float> %i.ls, float %i.lq, i64 0
  %i.lu = fmul <2 x float> %i.ep, %i.lt
  %i.lv = fsub <2 x float> %i.lr, %i.lu
  %i.lw = fmul float %.sroa.011.0.vec.extract.i.i.i, %i.lq
  %foldExtExtBinop2494 = fmul <2 x float> %.sroa.010.0.i.i.i, %i.lo
  %i.lx = extractelement <2 x float> %foldExtExtBinop2494, i64 1
  %i.ly = fsub float %i.lw, %i.lx
  %i.lz = fmul <2 x float> %i.lv, splat (float 2.000000e+00)
  %i.ma = fadd <2 x float> %.sroa.0197.0.copyload, %i.lz
  %i.mb = fmul float %i.ly, 2.000000e+00
  %i.mc = fadd float %.sroa.2198.0.copyload, %i.mb
  %i.md = fadd <2 x float> %i.fb, %i.ma
  %i.me = fadd float %i.fc, %i.mc
  %i.mf = insertelement <2 x float> poison, float %i.kg, i64 0
  %i.mg = shufflevector <2 x float> %i.mf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mh = fmul <2 x float> %i.jq, %i.mg
  %i.mi = fadd <2 x float> %i.lg, %i.mh
  %i.mj = fadd float %i.lh, %i.kh
  %i.mk = insertelement <2 x float> poison, float %i.ki, i64 0
  %i.ml = shufflevector <2 x float> %i.mk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mm = fmul <2 x float> %i.jq, %i.ml
  %i.mn = fsub <2 x float> %i.md, %i.mm
  %i.mo = fsub float %i.me, %i.kj
  %i.mp = fmul <2 x float> %i.mi, splat (float 5.000000e-01)
  %i.mq = fmul <2 x float> %i.mn, splat (float 5.000000e-01)
  %i.mr = fadd <2 x float> %i.mp, %i.mq
  %i.ms = fmul float %i.mj, 5.000000e-01
  %i.mt = fmul float %i.mo, 5.000000e-01
  %i.mu = fadd float %i.ms, %i.mt
  %i.mv = fadd <2 x float> %.sroa.8970.0.copyload, %i.mr
  %i.mw = fadd float %.sroa.12975.0.copyload, %i.mu
  store <2 x float> %i.mv, ptr %i.kk, align 4
  store float %i.mw, ptr %.sroa.4172.0..sroa_idx, align 4, !tbaa !16
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.jq, ptr %i.mx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.js, ptr %.sroa.16.0..sroa_idx, align 4, !tbaa !16
  br label %.thread1087

bb.f:                                             ; preds = %b3GetSweepTransform.exit421
  %i.my = fcmp ugt float %i.ir, %i.bj
  br i1 %i.my, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store float %i.ir, ptr %i.bf, align 4
  store i32 %i.jt, ptr %i.bi, align 4
  store i32 %.lcssa116111701984, ptr %i.bs, align 4
  store i32 %i.cu, ptr %i.bt, align 4
  %i.mz = fmul float %.sroa.011.0.vec.extract.i.i.i, %.sroa.2208.0.copyload
  %i.na = shufflevector <2 x float> %.sroa.0207.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.nb = insertelement <2 x float> %i.na, float %.sroa.2208.0.copyload, i64 1
  %i.nc = fmul <2 x float> %.sroa.010.0.i.i.i, %i.nb
  %i.nd = fmul <2 x float> %i.eg, %.sroa.0207.0.copyload
  %i.ne = fmul float %.sroa.011.0.vec.extract.i.i.i, %.sroa.2198.0.copyload
  %i.nf = shufflevector <2 x float> %.sroa.0197.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ng = insertelement <2 x float> %i.nf, float %.sroa.2198.0.copyload, i64 1
  %i.nh = fmul <2 x float> %.sroa.010.0.i.i.i, %i.ng
  %i.ni = fmul <2 x float> %i.eg, %.sroa.0197.0.copyload
  store i32 3, ptr %0, align 4, !tbaa !86
  %i.nj = load float, ptr %i.z, align 4, !tbaa !85 ; 2 uses
  %i.nk = fmul float %i.js, %i.nj
  %i.nl = load float, ptr %i.ab, align 4, !tbaa !85 ; 2 uses
  %i.nm = fmul float %i.js, %i.nl
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.no = fsub <2 x float> %i.nc, %i.nd
  %i.np = insertelement <2 x float> %i.na, float %.sroa.2208.0.copyload, i64 0
  %i.nq = fmul <2 x float> %i.ej, %i.np
  %i.nr = fmul <2 x float> %.sroa.4.0.i.i.i, %.sroa.0207.0.copyload ; 2 uses
  %i.ns = extractelement <2 x float> %i.nr, i64 0
  %i.nt = fsub float %i.ns, %i.mz
  %i.nu = fadd <2 x float> %i.nq, %i.no           ; 3 uses
  %i.nv = extractelement <2 x float> %i.nr, i64 1
  %i.nw = fadd float %i.nv, %i.nt                 ; 2 uses
  %i.nx = fmul <2 x float> %i.eg, %i.nu
  %i.ny = shufflevector <2 x float> %i.nu, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.nz = insertelement <2 x float> %i.ny, float %i.nw, i64 0
  %i.oa = fmul <2 x float> %i.ep, %i.nz
  %i.ob = fsub <2 x float> %i.nx, %i.oa
  %i.oc = fmul float %.sroa.011.0.vec.extract.i.i.i, %i.nw
  %foldExtExtBinop2496 = fmul <2 x float> %.sroa.010.0.i.i.i, %i.nu
  %i.od = extractelement <2 x float> %foldExtExtBinop2496, i64 1
  %i.oe = fsub float %i.oc, %i.od
  %i.of = fmul <2 x float> %i.ob, splat (float 2.000000e+00)
  %i.og = fadd <2 x float> %.sroa.0207.0.copyload, %i.of
  %i.oh = fmul float %i.oe, 2.000000e+00
  %i.oi = fadd float %.sroa.2208.0.copyload, %i.oh
  %i.oj = fadd <2 x float> %i.fb, %i.og
  %i.ok = fadd float %i.fc, %i.oi
  %i.ol = fsub <2 x float> %i.nh, %i.ni
  %i.om = insertelement <2 x float> %i.nf, float %.sroa.2198.0.copyload, i64 0
  %i.on = fmul <2 x float> %i.ej, %i.om
  %i.oo = fmul <2 x float> %.sroa.4.0.i.i.i, %.sroa.0197.0.copyload ; 2 uses
  %i.op = extractelement <2 x float> %i.oo, i64 0
  %i.oq = fsub float %i.op, %i.ne
  %i.or = fadd <2 x float> %i.on, %i.ol           ; 3 uses
  %i.os = extractelement <2 x float> %i.oo, i64 1
  %i.ot = fadd float %i.os, %i.oq                 ; 2 uses
  %i.ou = fmul <2 x float> %i.eg, %i.or
  %i.ov = shufflevector <2 x float> %i.or, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ow = insertelement <2 x float> %i.ov, float %i.ot, i64 0
  %i.ox = fmul <2 x float> %i.ep, %i.ow
  %i.oy = fsub <2 x float> %i.ou, %i.ox
  %i.oz = fmul float %.sroa.011.0.vec.extract.i.i.i, %i.ot
  %foldExtExtBinop2498 = fmul <2 x float> %.sroa.010.0.i.i.i, %i.or
  %i.pa = extractelement <2 x float> %foldExtExtBinop2498, i64 1
  %i.pb = fsub float %i.oz, %i.pa
  %i.pc = fmul <2 x float> %i.oy, splat (float 2.000000e+00)
  %i.pd = fadd <2 x float> %.sroa.0197.0.copyload, %i.pc
  %i.pe = fmul float %i.pb, 2.000000e+00
  %i.pf = fadd float %.sroa.2198.0.copyload, %i.pe
  %i.pg = fadd <2 x float> %i.fb, %i.pd
  %i.ph = fadd float %i.fc, %i.pf
  %i.pi = insertelement <2 x float> poison, float %i.nj, i64 0
  %i.pj = shufflevector <2 x float> %i.pi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pk = fmul <2 x float> %i.jq, %i.pj
  %i.pl = fadd <2 x float> %i.oj, %i.pk
  %i.pm = fadd float %i.ok, %i.nk
  %i.pn = insertelement <2 x float> poison, float %i.nl, i64 0
  %i.po = shufflevector <2 x float> %i.pn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pp = fmul <2 x float> %i.jq, %i.po
  %i.pq = fsub <2 x float> %i.pg, %i.pp
  %i.pr = fsub float %i.ph, %i.nm
  %i.ps = fmul <2 x float> %i.pl, splat (float 5.000000e-01)
  %i.pt = fmul <2 x float> %i.pq, splat (float 5.000000e-01)
  %i.pu = fadd <2 x float> %i.ps, %i.pt
  %i.pv = fmul float %i.pm, 5.000000e-01
  %i.pw = fmul float %i.pr, 5.000000e-01
  %i.px = fadd float %i.pv, %i.pw
  %i.py = fadd <2 x float> %.sroa.8970.0.copyload, %i.pu
  %i.pz = fadd float %.sroa.12975.0.copyload, %i.px
  store <2 x float> %i.py, ptr %i.nn, align 4
  store float %i.pz, ptr %.sroa.4129.0..sroa_idx, align 4, !tbaa !16
end_hunk_0
begin_hunk_1_@b3TimeOfImpact:bb.a
bb.o:                                             ; preds = %b3UniqueCount.exit.thread.i
  %.not22.i733.i = icmp eq i32 %i.tl, %i.tp
  %or.cond.i734.i = or i1 %i.tt, %.not22.i733.i
  br i1 %or.cond.i734.i, label %bb.q, label %b3UniqueCount.exit737.i

bb.p:                                             ; preds = %b3UniqueCount.exit.thread.i
  br i1 %i.tt, label %b3UniqueCount.exit737.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br label %b3UniqueCount.exit737.i

b3UniqueCount.exit.i:                             ; preds = %bb.j
  br label %b3UniqueCount.exit737.i

b3UniqueCount.exit737.i:                          ; preds = %b3UniqueCount.exit.i, %bb.q, %bb.p, %bb.o, %b3UniqueCount.exit.thread1245.i, %bb.j
  %.0.i1242.i = phi i32 [ 0, %b3UniqueCount.exit.i ], [ %.0.i1241.i, %bb.q ], [ %i.tq, %b3UniqueCount.exit.thread1245.i ], [ 1, %bb.j ], [ %.0.i1241.i, %bb.o ], [ %.0.i1241.i, %bb.p ] ; 2 uses
  %.0.i735.i = phi i32 [ 0, %b3UniqueCount.exit.i ], [ 2, %bb.q ], [ %i.tr, %b3UniqueCount.exit.thread1245.i ], [ 1, %bb.j ], [ 3, %bb.o ], [ 1, %bb.p ] ; 2 uses
  %i.tu = select i1 %i.cm, <2 x float> %i.bb, <2 x float> %.sroa.25.0.copyload
  %i.tv = select i1 %i.cm, <2 x float> %i.ba, <2 x float> %.sroa.23.0.copyload
  %i.tw = fmul <2 x float> %i.dd, %i.tv
  %i.tx = fadd <2 x float> %i.db, %i.tw           ; 2 uses
  %i.ty = fmul <2 x float> %i.dd, %i.tu
  %i.tz = fadd <2 x float> %i.dg, %i.ty           ; 2 uses
  %i.ua = shufflevector <2 x float> %i.tx, <2 x float> %i.tz, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.ub = fmul <4 x float> %i.ua, %i.ua           ; 4 uses
  %shift2510 = shufflevector <4 x float> %i.ub, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2511 = fadd <4 x float> %i.ub, %shift2510
  %shift2513 = shufflevector <4 x float> %i.ub, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2514 = fadd <4 x float> %foldExtExtBinop2511, %shift2513
  %shift2516 = shufflevector <4 x float> %i.ub, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2517 = fadd <4 x float> %shift2516, %foldExtExtBinop2514
  %i.uc = extractelement <4 x float> %foldExtExtBinop2517, i64 0 ; 2 uses
  %i.ud = fcmp ogt float %i.uc, f0x057A0000
  br i1 %i.ud, label %bb.r, label %b3GetSweepTransform.exit731

bb.r:                                             ; preds = %b3UniqueCount.exit737.i
  %sqrt.i.i.i726 = call float @llvm.sqrt.f32(float %i.uc)
  %i.ue = fdiv float 1.000000e+00, %sqrt.i.i.i726
  %i.uf = insertelement <2 x float> poison, float %i.ue, i64 0
  %i.ug = shufflevector <2 x float> %i.uf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.uh = fmul <2 x float> %i.tx, %i.ug
  %i.ui = fmul <2 x float> %i.tz, %i.ug
  br label %b3GetSweepTransform.exit731

b3GetSweepTransform.exit731:                      ; preds = %b3UniqueCount.exit737.i, %bb.r
  %.sroa.010.0.i.i.i701 = phi <2 x float> [ %i.uh, %bb.r ], [ zeroinitializer, %b3UniqueCount.exit737.i ] ; 25 uses
  %.sroa.4.0.i.i.i702 = phi <2 x float> [ %i.ui, %bb.r ], [ <float 0.000000e+00, float 1.000000e+00>, %b3UniqueCount.exit737.i ] ; 16 uses
  %.sroa.3.8.vec.extract.i.i717 = extractelement <2 x float> %.sroa.4.0.i.i.i702, i64 0 ; 2 uses
  %.sroa.011.4.vec.extract.i.i.i718 = extractelement <2 x float> %.sroa.010.0.i.i.i701, i64 1 ; 8 uses
  %i.uj = fmul float %.sroa.6967.0.copyload, %.sroa.011.4.vec.extract.i.i.i718
  %i.uk = fmul float %.sroa.03.4.vec.extract.i.i.i, %.sroa.3.8.vec.extract.i.i717
  %i.ul = shufflevector <2 x float> %.sroa.4.0.i.i.i702, <2 x float> %.sroa.010.0.i.i.i701, <2 x i32> <i32 0, i32 2> ; 12 uses
  %i.um = fmul <2 x float> %.sroa.0964.0.copyload, %i.ul ; 2 uses
  %i.un = fmul <2 x float> %i.ck, %.sroa.010.0.i.i.i701 ; 2 uses
  %i.uo = shufflevector <2 x float> %i.um, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.up = insertelement <2 x float> %i.uo, float %i.uj, i64 0
  %i.uq = shufflevector <2 x float> %i.un, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ur = insertelement <2 x float> %i.uq, float %i.uk, i64 0
  %i.us = fsub <2 x float> %i.up, %i.ur
  %i.ut = fsub <2 x float> %i.um, %i.un
  %i.uu = shufflevector <2 x float> %.sroa.4.0.i.i.i702, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 16 uses
  %i.uv = fmul <2 x float> %.sroa.0964.0.copyload, %i.uu
  %i.uw = fmul <2 x float> %i.cj, %i.uu
  %i.ux = fadd <2 x float> %i.uv, %i.us           ; 2 uses
  %i.uy = fadd <2 x float> %i.uw, %i.ut           ; 2 uses
  %foldExtExtBinop2519 = fmul <2 x float> %.sroa.4.0.i.i.i702, %i.ux
  %shift2521 = shufflevector <2 x float> %i.uy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2522 = fmul <2 x float> %.sroa.010.0.i.i.i701, %shift2521
  %foldExtExtBinop2524 = fsub <2 x float> %foldExtExtBinop2519, %foldExtExtBinop2522
  %i.uz = extractelement <2 x float> %foldExtExtBinop2524, i64 0
  %i.va = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.uy
  %i.vb = shufflevector <2 x float> %.sroa.010.0.i.i.i701, <2 x float> %.sroa.4.0.i.i.i702, <2 x i32> <i32 1, i32 2> ; 8 uses
  %i.vc = fmul <2 x float> %i.vb, %i.ux
  %i.vd = fsub <2 x float> %i.va, %i.vc
  %i.ve = fmul float %i.uz, 2.000000e+00
  %i.vf = fadd float %.sroa.03.4.vec.extract.i.i.i, %i.ve
  %i.vg = fmul <2 x float> %i.vd, splat (float 2.000000e+00)
  %i.vh = fadd <2 x float> %i.ck, %i.vg
  %i.vi = extractelement <2 x float> %i.ee, i64 1
  %i.vj = fsub float %i.vi, %i.vf
  %i.vk = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.vl = insertelement <2 x float> %i.vk, float %i.dv, i64 0
  %i.vm = fsub <2 x float> %i.vl, %i.vh
  %i.vn = select i1 %i.cl, <2 x float> %i.bd, <2 x float> %.sroa.26.0.copyload
  %i.vo = select i1 %i.cl, <2 x float> %i.bc, <2 x float> %.sroa.24.0.copyload
  %i.vp = fmul <2 x float> %i.dd, %i.vo
  %i.vq = fadd <2 x float> %i.fg, %i.vp           ; 2 uses
  %i.vr = fmul <2 x float> %i.dd, %i.vn
  %i.vs = fadd <2 x float> %i.fj, %i.vr           ; 2 uses
  %i.vt = shufflevector <2 x float> %i.vq, <2 x float> %i.vs, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.vu = fmul <4 x float> %i.vt, %i.vt           ; 4 uses
  %shift2526 = shufflevector <4 x float> %i.vu, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2527 = fadd <4 x float> %i.vu, %shift2526
  %shift2529 = shufflevector <4 x float> %i.vu, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2530 = fadd <4 x float> %foldExtExtBinop2527, %shift2529
  %shift2532 = shufflevector <4 x float> %i.vu, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2533 = fadd <4 x float> %shift2532, %foldExtExtBinop2530
  %i.vv = extractelement <4 x float> %foldExtExtBinop2533, i64 0 ; 2 uses
  %i.vw = fcmp ogt float %i.vv, f0x057A0000
  br i1 %i.vw, label %bb.s, label %b3GetSweepTransform.exit688

bb.s:                                             ; preds = %b3GetSweepTransform.exit731
  %sqrt.i.i.i683 = call float @llvm.sqrt.f32(float %i.vv)
  %i.vx = fdiv float 1.000000e+00, %sqrt.i.i.i683
  %i.vy = insertelement <2 x float> poison, float %i.vx, i64 0
  %i.vz = shufflevector <2 x float> %i.vy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.wa = fmul <2 x float> %i.vq, %i.vz
  %i.wb = fmul <2 x float> %i.vs, %i.vz
  br label %b3GetSweepTransform.exit688

b3GetSweepTransform.exit688:                      ; preds = %b3GetSweepTransform.exit731, %bb.s
  %.sroa.010.0.i.i.i658 = phi <2 x float> [ %i.wa, %bb.s ], [ zeroinitializer, %b3GetSweepTransform.exit731 ] ; 27 uses
  %.sroa.4.0.i.i.i659 = phi <2 x float> [ %i.wb, %bb.s ], [ <float 0.000000e+00, float 1.000000e+00>, %b3GetSweepTransform.exit731 ] ; 15 uses
  %.sroa.3.8.vec.extract.i.i674 = extractelement <2 x float> %.sroa.4.0.i.i.i659, i64 0 ; 2 uses
  %.sroa.011.4.vec.extract.i.i.i675 = extractelement <2 x float> %.sroa.010.0.i.i.i658, i64 1 ; 6 uses
  %.sroa.3.12.vec.extract.i.i679 = extractelement <2 x float> %.sroa.4.0.i.i.i659, i64 1 ; 2 uses
  %i.wc = fmul float %.sroa.6932.0.copyload, %.sroa.011.4.vec.extract.i.i.i675
  %i.wd = fmul float %.sroa.03.4.vec.extract.i.i.i409, %.sroa.3.8.vec.extract.i.i674
  %i.we = shufflevector <2 x float> %.sroa.4.0.i.i.i659, <2 x float> %.sroa.010.0.i.i.i658, <2 x i32> <i32 0, i32 2> ; 12 uses
  %i.wf = fmul <2 x float> %.sroa.0929.0.copyload, %i.we ; 2 uses
  %i.wg = fmul <2 x float> %i.ch, %.sroa.010.0.i.i.i658 ; 2 uses
  %i.wh = shufflevector <2 x float> %i.wf, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.wi = insertelement <2 x float> %i.wh, float %i.wc, i64 0
  %i.wj = shufflevector <2 x float> %i.wg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.wk = insertelement <2 x float> %i.wj, float %i.wd, i64 0
  %i.wl = fsub <2 x float> %i.wi, %i.wk
  %i.wm = fsub <2 x float> %i.wf, %i.wg
  %i.wn = shufflevector <2 x float> %.sroa.4.0.i.i.i659, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 14 uses
  %i.wo = fmul <2 x float> %.sroa.0929.0.copyload, %i.wn
  %i.wp = fmul <2 x float> %i.cg, %i.wn
  %i.wq = fadd <2 x float> %i.wo, %i.wl           ; 2 uses
  %i.wr = fadd <2 x float> %i.wp, %i.wm           ; 2 uses
  %foldExtExtBinop2535 = fmul <2 x float> %.sroa.4.0.i.i.i659, %i.wq
  %shift2537 = shufflevector <2 x float> %i.wr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2538 = fmul <2 x float> %.sroa.010.0.i.i.i658, %shift2537
  %foldExtExtBinop2540 = fsub <2 x float> %foldExtExtBinop2535, %foldExtExtBinop2538
  %i.ws = extractelement <2 x float> %foldExtExtBinop2540, i64 0
  %i.wt = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.wr
  %i.wu = shufflevector <2 x float> %.sroa.010.0.i.i.i658, <2 x float> %.sroa.4.0.i.i.i659, <2 x i32> <i32 1, i32 2> ; 10 uses
  %i.wv = fmul <2 x float> %i.wu, %i.wq
  %i.ww = fsub <2 x float> %i.wt, %i.wv
  %i.wx = fmul float %i.ws, 2.000000e+00
  %i.wy = fadd float %.sroa.03.4.vec.extract.i.i.i409, %i.wx
  %i.wz = fmul <2 x float> %i.ww, splat (float 2.000000e+00)
  %i.xa = fadd <2 x float> %i.ch, %i.wz
  %i.xb = fsub float %i.fw, %i.wy
  %i.xc = fsub <2 x float> %i.fz, %i.xa
  %i.xd = fsub float %i.xb, %i.vj                 ; 4 uses
  %i.xe = fsub <2 x float> %i.xc, %i.vm           ; 4 uses
  switch i16 %.sroa.1.0.extract.trunc.i, label %b3MakeSeparationFunction.exit [
    i16 1, label %bb.t
    i16 2, label %bb.u
    i16 3, label %bb.ag
  ]

bb.t:                                             ; preds = %b3GetSweepTransform.exit688
  store i32 1, ptr %i.bp, align 8, !tbaa !39, !alias.scope !89
  store <2 x float> %i.jq, ptr %i.bl, align 8, !alias.scope !89
  store float %i.js, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !16, !alias.scope !89
  br label %b3MakeSeparationFunction.exit

bb.u:                                             ; preds = %b3GetSweepTransform.exit688
  %i.xf = icmp eq i32 %.0.i1242.i, 2
  %i.xg = icmp eq i32 %.0.i735.i, 2
  %or.cond.i = select i1 %i.xf, i1 %i.xg, i1 false
  br i1 %or.cond.i, label %bb.v, label %bb.af

bb.v:                                             ; preds = %bb.u
  %i.xh = load ptr, ptr %2, align 8, !tbaa !15, !noalias !89 ; 2 uses
  %i.xi = and i64 %.sroa.4654.0.extract.shift.i, 255
  %i.xj = getelementptr inbounds nuw [12 x i8], ptr %i.xh, i64 %i.xi ; 2 uses
  %.sroa.0563.0.copyload.i = load <2 x float>, ptr %i.xj, align 4, !noalias !89 ; 5 uses
  %.sroa.5565.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  %.sroa.5565.0.copyload.i = load float, ptr %.sroa.5565.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 3 uses
  %i.xk = getelementptr inbounds nuw [12 x i8], ptr %i.xh, i64 %.sroa.5655.0.extract.shift.i ; 2 uses
  %.sroa.0557.0.copyload.i = load <2 x float>, ptr %i.xk, align 4, !noalias !89
  %.sroa.2558.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  %.sroa.2558.0.copyload.i = load float, ptr %.sroa.2558.0..sroa_idx.i, align 4, !noalias !89
  %i.xl = fsub <2 x float> %.sroa.0557.0.copyload.i, %.sroa.0563.0.copyload.i ; 3 uses
  %i.xm = fsub float %.sroa.2558.0.copyload.i, %.sroa.5565.0.copyload.i ; 3 uses
  %i.xn = fmul <2 x float> %i.xl, %i.xl           ; 2 uses
  %shift2542 = shufflevector <2 x float> %i.xn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2543 = fadd <2 x float> %i.xn, %shift2542
  %i.xo = extractelement <2 x float> %foldExtExtBinop2543, i64 0
  %i.xp = fmul float %i.xm, %i.xm
  %i.xq = fadd float %i.xp, %i.xo                 ; 2 uses
  %i.xr = fcmp ogt float %i.xq, f0x057A0000
  br i1 %i.xr, label %bb.w, label %b3Normalize.exit723.i

bb.w:                                             ; preds = %bb.v
  %sqrt.i = call float @llvm.sqrt.f32(float %i.xq)
  %i.xs = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.xt = insertelement <2 x float> poison, float %i.xs, i64 0
  %i.xu = shufflevector <2 x float> %i.xt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xv = fmul <2 x float> %i.xl, %i.xu
  %i.xw = fmul float %i.xm, %i.xs
  br label %b3Normalize.exit723.i

b3Normalize.exit723.i:                            ; preds = %bb.w, %bb.v
  %.sroa.018.0.i717.i = phi <2 x float> [ %i.xv, %bb.w ], [ zeroinitializer, %bb.v ] ; 10 uses
  %.sroa.5.0.i718.i = phi float [ %i.xw, %bb.w ], [ 0.000000e+00, %bb.v ] ; 6 uses
  %i.xx = shufflevector <2 x float> %.sroa.018.0.i717.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %.sroa.03.0.vec.extract.i.i.i576 = extractelement <2 x float> %.sroa.018.0.i717.i, i64 0
  %foldExtExtBinop2545 = fmul <2 x float> %.sroa.4.0.i.i.i702, %.sroa.018.0.i717.i
  %i.xy = fmul float %.sroa.011.4.vec.extract.i.i.i718, %.sroa.5.0.i718.i
  %i.xz = insertelement <2 x float> %i.xx, float %.sroa.5.0.i718.i, i64 1 ; 2 uses
  %i.ya = fmul <2 x float> %i.ul, %i.xz
  %i.yb = insertelement <2 x float> poison, float %i.xy, i64 0
  %i.yc = shufflevector <2 x float> %i.yb, <2 x float> %foldExtExtBinop2545, <2 x i32> <i32 0, i32 2>
  %i.yd = fsub <2 x float> %i.yc, %i.ya           ; 2 uses
  %i.ye = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.xx ; 2 uses
  %shift2547 = shufflevector <2 x float> %i.ye, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2548 = fsub <2 x float> %i.ye, %shift2547
  %i.yf = fmul <2 x float> %i.uu, %.sroa.018.0.i717.i
  %i.yg = insertelement <2 x float> %i.xx, float %.sroa.5.0.i718.i, i64 0 ; 3 uses
  %i.yh = fmul <2 x float> %i.uu, %i.yg
  %i.yi = fadd <2 x float> %i.yf, %i.yd           ; 2 uses
  %i.yj = shufflevector <2 x float> %i.yd, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.yk = shufflevector <2 x float> %foldExtExtBinop2548, <2 x float> %i.yj, <2 x i32> <i32 0, i32 3>
  %i.yl = fadd <2 x float> %i.yh, %i.yk           ; 2 uses
  %i.ym = fmul <2 x float> %i.ul, %i.yi
  %i.yn = extractelement <2 x float> %i.yl, i64 0
  %i.yo = fmul float %.sroa.011.4.vec.extract.i.i.i718, %i.yn
  %i.yp = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.yl
  %shift2550 = shufflevector <2 x float> %i.yi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2551 = fmul <2 x float> %.sroa.4.0.i.i.i702, %shift2550
  %i.yq = extractelement <2 x float> %foldExtExtBinop2551, i64 0
  %i.yr = fsub <2 x float> %i.ym, %i.yp
  %i.ys = fsub float %i.yo, %i.yq
  %i.yt = fmul float %i.ys, 2.000000e+00
  %i.yu = fadd float %.sroa.03.0.vec.extract.i.i.i576, %i.yt ; 2 uses
  %i.yv = fmul <2 x float> %i.yr, splat (float 2.000000e+00)
  %i.yw = fadd <2 x float> %i.xz, %i.yv           ; 3 uses
  %i.yx = load ptr, ptr %3, align 8, !tbaa !15, !noalias !89 ; 2 uses
  %i.yy = zext nneg i32 %i.to to i64
  %i.yz = getelementptr inbounds nuw [12 x i8], ptr %i.yx, i64 %i.yy ; 2 uses
  %.sroa.0532.0.copyload.i = load <2 x float>, ptr %i.yz, align 4, !noalias !89 ; 5 uses
  %.sroa.5534.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yz, i64 8
  %.sroa.5534.0.copyload.i = load float, ptr %.sroa.5534.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 3 uses
  %i.za = zext nneg i32 %i.tl to i64
  %i.zb = getelementptr inbounds nuw [12 x i8], ptr %i.yx, i64 %i.za ; 2 uses
  %.sroa.0526.0.copyload.i = load <2 x float>, ptr %i.zb, align 4, !noalias !89
  %.sroa.2527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  %.sroa.2527.0.copyload.i = load float, ptr %.sroa.2527.0..sroa_idx.i, align 4, !noalias !89
  %i.zc = fsub <2 x float> %.sroa.0526.0.copyload.i, %.sroa.0532.0.copyload.i ; 3 uses
  %i.zd = fsub float %.sroa.2527.0.copyload.i, %.sroa.5534.0.copyload.i ; 3 uses
  %i.ze = fmul <2 x float> %i.zc, %i.zc           ; 2 uses
  %shift2553 = shufflevector <2 x float> %i.ze, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2554 = fadd <2 x float> %i.ze, %shift2553
  %i.zf = extractelement <2 x float> %foldExtExtBinop2554, i64 0
  %i.zg = fmul float %i.zd, %i.zd
  %i.zh = fadd float %i.zg, %i.zf                 ; 2 uses
  %i.zi = fcmp ogt float %i.zh, f0x057A0000
  br i1 %i.zi, label %bb.x, label %b3Normalize.exit714.i

bb.x:                                             ; preds = %b3Normalize.exit723.i
  %sqrt1249.i = call float @llvm.sqrt.f32(float %i.zh)
  %i.zj = fdiv float 1.000000e+00, %sqrt1249.i    ; 2 uses
  %i.zk = insertelement <2 x float> poison, float %i.zj, i64 0
  %i.zl = shufflevector <2 x float> %i.zk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zm = fmul <2 x float> %i.zc, %i.zl
  %i.zn = fmul float %i.zd, %i.zj
  br label %b3Normalize.exit714.i

b3Normalize.exit714.i:                            ; preds = %bb.x, %b3Normalize.exit723.i
  %.sroa.018.0.i708.i = phi <2 x float> [ %i.zm, %bb.x ], [ zeroinitializer, %b3Normalize.exit723.i ] ; 6 uses
  %.sroa.5.0.i709.i = phi float [ %i.zn, %bb.x ], [ 0.000000e+00, %b3Normalize.exit723.i ] ; 6 uses
  %i.zo = fmul float %.sroa.011.4.vec.extract.i.i.i675, %.sroa.5.0.i709.i
  %shift2556 = shufflevector <2 x float> %.sroa.018.0.i708.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2557 = fmul <2 x float> %.sroa.4.0.i.i.i659, %shift2556
  %i.zp = extractelement <2 x float> %foldExtExtBinop2557, i64 0
  %i.zq = fmul <2 x float> %i.we, %.sroa.018.0.i708.i
  %i.zr = shufflevector <2 x float> %.sroa.018.0.i708.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.zs = insertelement <2 x float> %i.zr, float %.sroa.5.0.i709.i, i64 0 ; 2 uses
  %i.zt = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.zs
  %i.zu = fsub float %i.zo, %i.zp
  %i.zv = fsub <2 x float> %i.zq, %i.zt           ; 2 uses
  %i.zw = fmul <2 x float> %i.wn, %.sroa.018.0.i708.i ; 2 uses
  %i.zx = fmul float %.sroa.3.12.vec.extract.i.i679, %.sroa.5.0.i709.i
  %i.zy = shufflevector <2 x float> %i.zv, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.zz = insertelement <2 x float> %i.zy, float %i.zu, i64 0
  %i.aaa = fadd <2 x float> %i.zw, %i.zz          ; 2 uses
  %i.aab = shufflevector <2 x float> %i.zw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aac = insertelement <2 x float> %i.aab, float %i.zx, i64 1
  %i.aad = fadd <2 x float> %i.aac, %i.zv         ; 2 uses
  %i.aae = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.aad
  %i.aaf = fmul <2 x float> %i.we, %i.aaa
  %i.aag = fmul <2 x float> %i.wu, %i.aaa         ; 2 uses
  %shift2559 = shufflevector <2 x float> %i.aad, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2560 = fmul <2 x float> %.sroa.010.0.i.i.i658, %shift2559
  %i.aah = fsub <2 x float> %i.aae, %i.aag
  %i.aai = shufflevector <2 x float> %i.aag, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aaj = shufflevector <2 x float> %foldExtExtBinop2560, <2 x float> %i.aai, <2 x i32> <i32 0, i32 3>
  %i.aak = fsub <2 x float> %i.aaf, %i.aaj
  %i.aal = fmul <2 x float> %i.aah, splat (float 2.000000e+00)
  %i.aam = fmul <2 x float> %i.aak, splat (float 2.000000e+00)
  %i.aan = fadd <2 x float> %i.zs, %i.aal         ; 2 uses
  %i.aao = insertelement <2 x float> %i.zr, float %.sroa.5.0.i709.i, i64 1
  %i.aap = fadd <2 x float> %i.aao, %i.aam        ; 2 uses
  %i.aaq = fmul <2 x float> %i.yw, %i.aan
  %i.aar = shufflevector <2 x float> %i.yw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aas = insertelement <2 x float> %i.aar, float %i.yu, i64 1
  %i.aat = fmul <2 x float> %i.aas, %i.aap
  %i.aau = fsub <2 x float> %i.aaq, %i.aat        ; 6 uses
  %i.aav = extractelement <2 x float> %i.aap, i64 0
  %i.aaw = fmul float %i.yu, %i.aav
  %shift2562 = shufflevector <2 x float> %i.aan, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2563 = fmul <2 x float> %i.yw, %shift2562
  %i.aax = extractelement <2 x float> %foldExtExtBinop2563, i64 0
  %i.aay = fsub float %i.aaw, %i.aax              ; 5 uses
  %i.aaz = fmul <2 x float> %i.aau, %i.aau        ; 2 uses
  %shift2565 = shufflevector <2 x float> %i.aaz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2566 = fadd <2 x float> %i.aaz, %shift2565
  %i.aba = extractelement <2 x float> %foldExtExtBinop2566, i64 0
  %i.abb = fmul float %i.aay, %i.aay
  %i.abc = fadd float %i.abb, %i.aba
  %i.abd = fcmp olt float %i.abc, f0x3B23D70B
  br i1 %i.abd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %b3Normalize.exit714.i
  store i32 1, ptr %i.bp, align 8, !tbaa !39, !alias.scope !89
  store <2 x float> %i.jq, ptr %i.bl, align 8, !alias.scope !89
  store float %i.js, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !16, !alias.scope !89
  br label %b3MakeSeparationFunction.exit

bb.z:                                             ; preds = %b3Normalize.exit714.i
  %i.abe = shufflevector <2 x float> %.sroa.0532.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.abf = insertelement <2 x float> %i.abe, float %.sroa.5534.0.copyload.i, i64 0 ; 3 uses
  %i.abg = fmul <2 x float> %i.wu, %i.abf
  %i.abh = insertelement <2 x float> %i.abe, float %.sroa.5534.0.copyload.i, i64 1 ; 2 uses
  %i.abi = fmul <2 x float> %i.we, %i.abh
  %i.abj = fmul <2 x float> %i.we, %.sroa.0532.0.copyload.i
  %i.abk = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.abf
  %i.abl = fmul <2 x float> %i.wn, %.sroa.0532.0.copyload.i
  %i.abm = fmul <2 x float> %i.wn, %i.abh
  %i.abn = shufflevector <2 x float> %.sroa.0563.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.abo = insertelement <2 x float> %i.abn, float %.sroa.5565.0.copyload.i, i64 0 ; 3 uses
  %i.abp = fmul <2 x float> %i.vb, %i.abo
  %i.abq = insertelement <2 x float> %i.abn, float %.sroa.5565.0.copyload.i, i64 1 ; 2 uses
  %i.abr = fmul <2 x float> %i.ul, %i.abq
  %i.abs = fmul <2 x float> %i.ul, %.sroa.0563.0.copyload.i
  %i.abt = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.abo
  %i.abu = fmul <2 x float> %i.uu, %.sroa.0563.0.copyload.i
  %i.abv = fmul <2 x float> %i.uu, %i.abq
  %i.abw = extractelement <2 x float> %i.aau, i64 1
  %i.abx = fsub <2 x float> %i.abg, %i.abi
  %i.aby = fsub <2 x float> %i.abj, %i.abk
  %i.abz = fadd <2 x float> %i.abl, %i.abx        ; 2 uses
  %i.aca = fadd <2 x float> %i.abm, %i.aby        ; 2 uses
  %i.acb = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.aca
  %i.acc = fmul <2 x float> %i.wu, %i.abz
  %i.acd = fsub <2 x float> %i.acb, %i.acc
  %i.ace = fmul <2 x float> %i.acd, splat (float 2.000000e+00)
  %i.acf = fadd <2 x float> %i.abf, %i.ace
  %i.acg = fsub <2 x float> %i.abp, %i.abr
  %i.ach = fsub <2 x float> %i.abs, %i.abt
  %i.aci = fadd <2 x float> %i.abu, %i.acg        ; 2 uses
  %i.acj = fadd <2 x float> %i.abv, %i.ach        ; 2 uses
  %i.ack = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.acj
  %i.acl = fmul <2 x float> %i.vb, %i.aci
  %i.acm = fsub <2 x float> %i.ack, %i.acl
  %i.acn = shufflevector <2 x float> %.sroa.4.0.i.i.i659, <2 x float> %.sroa.4.0.i.i.i702, <2 x i32> <i32 0, i32 2>
  %i.aco = shufflevector <2 x float> %i.abz, <2 x float> %i.aci, <2 x i32> <i32 0, i32 2>
  %i.acp = fmul <2 x float> %i.acn, %i.aco
  %i.acq = shufflevector <2 x float> %.sroa.010.0.i.i.i658, <2 x float> %.sroa.010.0.i.i.i701, <2 x i32> <i32 0, i32 2>
  %i.acr = shufflevector <2 x float> %i.aca, <2 x float> %i.acj, <2 x i32> <i32 1, i32 3>
  %i.acs = fmul <2 x float> %i.acq, %i.acr
  %i.act = fsub <2 x float> %i.acp, %i.acs
  %i.acu = fmul <2 x float> %i.act, splat (float 2.000000e+00)
  %i.acv = shufflevector <2 x float> %.sroa.0532.0.copyload.i, <2 x float> %.sroa.0563.0.copyload.i, <2 x i32> <i32 1, i32 3>
  %i.acw = fadd <2 x float> %i.acv, %i.acu        ; 2 uses
  %i.acx = fmul <2 x float> %i.acm, splat (float 2.000000e+00)
  %i.acy = fadd <2 x float> %i.abo, %i.acx
  %shift2568 = shufflevector <2 x float> %i.acw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2569 = fsub <2 x float> %i.acw, %shift2568
  %i.acz = extractelement <2 x float> %foldExtExtBinop2569, i64 0
  %i.ada = fsub <2 x float> %i.acf, %i.acy
  %i.adb = fadd float %i.xd, %i.acz
  %i.adc = fadd <2 x float> %i.xe, %i.ada
  %i.add = fmul float %i.adb, %i.abw
  %i.ade = shufflevector <2 x float> %i.aau, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.adf = insertelement <2 x float> %i.ade, float %i.aay, i64 0
  %i.adg = fmul <2 x float> %i.adc, %i.adf        ; 2 uses
  %i.adh = extractelement <2 x float> %i.adg, i64 1
  %i.adi = fadd float %i.adh, %i.add
  %i.adj = extractelement <2 x float> %i.adg, i64 0
  %i.adk = fadd float %i.adj, %i.adi
  %i.adl = fcmp olt float %i.adk, 0.000000e+00
  br i1 %i.adl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.adm = fneg <2 x float> %i.aau
  %i.adn = fneg float %i.aay
  %i.ado = fneg <2 x float> %.sroa.018.0.i708.i
  %i.adp = fneg float %.sroa.5.0.i709.i
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.0498.0.i = phi <2 x float> [ %i.adm, %bb.aa ], [ %i.aau, %bb.z ] ; 5 uses
  %.sroa.9503.0.i = phi float [ %i.adn, %bb.aa ], [ %i.aay, %bb.z ] ; 4 uses
  %.sroa.10.0.i = phi float [ %i.adp, %bb.aa ], [ %.sroa.5.0.i709.i, %bb.z ] ; 5 uses
  %i.adq = phi <2 x float> [ %i.ado, %bb.aa ], [ %.sroa.018.0.i708.i, %bb.z ] ; 5 uses
  %i.adr = shufflevector <2 x float> %.sroa.018.0.i717.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ads = insertelement <2 x float> %i.adr, float %.sroa.5.0.i718.i, i64 1 ; 2 uses
  %i.adt = fmul <2 x float> %.sroa.27.0.copyload, %i.ads
  %i.adu = fmul <2 x float> %i.bx, %.sroa.018.0.i717.i
  %i.adv = fmul <2 x float> %i.bz, %.sroa.018.0.i717.i
  %i.adw = fmul <2 x float> %.sroa.27.0.copyload, %i.yg
  %i.adx = fmul <2 x float> %i.by, %i.yg
  %i.ady = fmul <2 x float> %i.by, %i.ads
  %i.adz = shufflevector <2 x float> %i.adq, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.aea = fsub <2 x float> %i.adt, %i.adu
  %i.aeb = fsub <2 x float> %i.adv, %i.adw
  %i.aec = fadd <2 x float> %i.adx, %i.aea        ; 2 uses
  %i.aed = fadd <2 x float> %i.ady, %i.aeb        ; 2 uses
  %i.aee = fmul <2 x float> %i.bx, %i.aec
  %i.aef = fmul <2 x float> %i.bz, %i.aed
  %i.aeg = fsub <2 x float> %i.aee, %i.aef
  %i.aeh = fmul <2 x float> %i.aeg, splat (float 2.000000e+00)
  %i.aei = fadd <2 x float> %.sroa.018.0.i717.i, %i.aeh ; 3 uses
  %i.aej = insertelement <2 x float> %i.adq, float %.sroa.10.0.i, i64 0 ; 2 uses
  %i.aek = fmul <2 x float> %i.an, %i.aej
  %i.ael = fmul <2 x float> %i.cc, %i.adz
  %i.aem = fmul <2 x float> %i.ca, %i.adz
  %i.aen = insertelement <2 x float> %i.adq, float %.sroa.10.0.i, i64 1 ; 2 uses
  %i.aeo = fmul <2 x float> %i.an, %i.aen
  %i.aep = fsub <2 x float> %i.aek, %i.aem
  %i.aeq = fsub <2 x float> %i.ael, %i.aeo
  %i.aer = fmul <2 x float> %i.cb, %i.aen
  %i.aes = fmul <2 x float> %i.cb, %i.aej
  %i.aet = fadd <2 x float> %i.aer, %i.aep        ; 2 uses
  %i.aeu = fadd <2 x float> %i.aeq, %i.aes        ; 2 uses
  %i.aev = fmul <2 x float> %i.ca, %i.aet
  %i.aew = fmul <2 x float> %i.cc, %i.aeu
  %i.aex = fsub <2 x float> %i.aev, %i.aew
  %i.aey = fmul <2 x float> %i.aex, splat (float 2.000000e+00)
  %i.aez = fadd <2 x float> %i.adz, %i.aey        ; 3 uses
  %i.afa = shufflevector <2 x float> %i.aeu, <2 x float> %i.aed, <2 x i32> <i32 1, i32 2>
  %i.afb = fmul <2 x float> %i.cd, %i.afa
  %i.afc = shufflevector <2 x float> %i.aet, <2 x float> %i.aec, <2 x i32> <i32 0, i32 3>
  %i.afd = fmul <2 x float> %i.ce, %i.afc
  %i.afe = fsub <2 x float> %i.afb, %i.afd
  %i.aff = fmul <2 x float> %i.afe, splat (float 2.000000e+00)
  %i.afg = insertelement <2 x float> poison, float %.sroa.10.0.i, i64 0
  %i.afh = insertelement <2 x float> %i.afg, float %.sroa.5.0.i718.i, i64 1
  %i.afi = fadd <2 x float> %i.afh, %i.aff        ; 3 uses
  %i.afj = shufflevector <2 x float> %i.aei, <2 x float> %i.aez, <2 x i32> <i32 1, i32 2>
  %i.afk = fmul <2 x float> %i.afj, %i.afi        ; 2 uses
  %shift2571 = shufflevector <2 x float> %i.afk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2572 = fsub <2 x float> %i.afk, %shift2571
  %foldExtExtBinop2574 = fmul <2 x float> %i.afi, %i.aez
  %foldExtExtBinop2576 = fmul <2 x float> %i.aei, %i.afi
  %shift2578 = shufflevector <2 x float> %foldExtExtBinop2574, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2579 = fsub <2 x float> %shift2578, %foldExtExtBinop2576
  %i.afl = fmul <2 x float> %i.aei, %i.aez        ; 2 uses
  %shift2581 = shufflevector <2 x float> %i.afl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2582 = fsub <2 x float> %i.afl, %shift2581
  %i.afm = extractelement <2 x float> %foldExtExtBinop2582, i64 0
  %foldExtExtBinop2584 = fmul <2 x float> %.sroa.0498.0.i, %foldExtExtBinop2572
  %shift2586 = shufflevector <2 x float> %.sroa.0498.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2587 = fmul <2 x float> %shift2586, %foldExtExtBinop2579
  %foldExtExtBinop2589 = fadd <2 x float> %foldExtExtBinop2584, %foldExtExtBinop2587
  %i.afn = extractelement <2 x float> %foldExtExtBinop2589, i64 0
  %i.afo = fmul float %.sroa.9503.0.i, %i.afm
  %i.afp = fadd float %i.afo, %i.afn
  %i.afq = fcmp olt float %i.afp, 0.000000e+00
  br i1 %i.afq, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  store i32 1, ptr %i.bp, align 8, !tbaa !39, !alias.scope !89
  %i.afr = fmul <2 x float> %.sroa.0498.0.i, %.sroa.0498.0.i ; 2 uses
  %shift2591 = shufflevector <2 x float> %i.afr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2592 = fadd <2 x float> %i.afr, %shift2591
  %i.afs = extractelement <2 x float> %foldExtExtBinop2592, i64 0
  %i.aft = fmul float %.sroa.9503.0.i, %.sroa.9503.0.i
  %i.afu = fadd float %i.aft, %i.afs              ; 2 uses
  %i.afv = fcmp ogt float %i.afu, f0x057A0000
  br i1 %i.afv, label %bb.ad, label %b3Normalize.exit705.i

bb.ad:                                            ; preds = %bb.ac
  %sqrt1250.i = call float @llvm.sqrt.f32(float %i.afu)
  %i.afw = fdiv float 1.000000e+00, %sqrt1250.i   ; 2 uses
  %i.afx = insertelement <2 x float> poison, float %i.afw, i64 0
  %i.afy = shufflevector <2 x float> %i.afx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afz = fmul <2 x float> %.sroa.0498.0.i, %i.afy
  %i.aga = fmul float %.sroa.9503.0.i, %i.afw
  br label %b3Normalize.exit705.i

b3Normalize.exit705.i:                            ; preds = %bb.ad, %bb.ac
  %.sroa.018.0.i699.i = phi <2 x float> [ %i.afz, %bb.ad ], [ zeroinitializer, %bb.ac ] ; 2 uses
  %.sroa.5.0.i700.i = phi float [ %i.aga, %bb.ad ], [ 0.000000e+00, %bb.ac ]
  store <2 x float> %.sroa.018.0.i699.i, ptr %i.bl, align 8, !alias.scope !89
  store float %.sroa.5.0.i700.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !16, !alias.scope !89
  br label %b3MakeSeparationFunction.exit

bb.ae:                                            ; preds = %bb.ab
  store i32 2, ptr %i.bp, align 8, !tbaa !39, !alias.scope !89
  store <2 x float> %.sroa.018.0.i717.i, ptr %i.bl, align 8, !alias.scope !89
  store float %.sroa.5.0.i718.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !16, !alias.scope !89
  store <2 x float> %i.adq, ptr %i.bq, align 4, !alias.scope !89
  store float %.sroa.10.0.i, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !16, !alias.scope !89
  br label %b3MakeSeparationFunction.exit

bb.af:                                            ; preds = %bb.u
  store i32 1, ptr %i.bp, align 8, !tbaa !39, !alias.scope !89
  store <2 x float> %i.jq, ptr %i.bl, align 8, !alias.scope !89
  store float %i.js, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !16, !alias.scope !89
  br label %b3MakeSeparationFunction.exit

bb.ag:                                            ; preds = %b3GetSweepTransform.exit688
  %i.agb = icmp eq i32 %.0.i1242.i, 3
  br i1 %i.agb, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.agc = load ptr, ptr %2, align 8, !tbaa !15, !noalias !89 ; 3 uses
  %i.agd = and i64 %.sroa.4654.0.extract.shift.i, 255
  %i.age = getelementptr inbounds nuw [12 x i8], ptr %i.agc, i64 %i.agd ; 2 uses
  %.sroa.0412.0.copyload.i = load <2 x float>, ptr %i.age, align 4, !noalias !89 ; 3 uses
  %.sroa.6415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.age, i64 8
  %.sroa.6415.0.copyload.i = load float, ptr %.sroa.6415.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 2 uses
  %i.agf = getelementptr inbounds nuw [12 x i8], ptr %i.agc, i64 %.sroa.5655.0.extract.shift.i ; 2 uses
  %.sroa.0409.0.copyload.i = load <2 x float>, ptr %i.agf, align 4, !noalias !89 ; 3 uses
  %.sroa.5411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.agf, i64 8
  %.sroa.5411.0.copyload.i = load float, ptr %.sroa.5411.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 2 uses
  %i.agg = and i64 %i.tj, 255
  %i.agh = getelementptr inbounds nuw [12 x i8], ptr %i.agc, i64 %i.agg ; 2 uses
  %.sroa.0406.0.copyload.i = load <2 x float>, ptr %i.agh, align 4, !noalias !89 ; 3 uses
  %.sroa.5408.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.agh, i64 8
  %.sroa.5408.0.copyload.i = load float, ptr %.sroa.5408.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 2 uses
  %i.agi = shufflevector <2 x float> %.sroa.0406.0.copyload.i, <2 x float> %.sroa.0409.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.agj = fsub <2 x float> %i.agi, %.sroa.0412.0.copyload.i ; 3 uses
  %i.agk = shufflevector <2 x float> %.sroa.0409.0.copyload.i, <2 x float> %.sroa.0406.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.agl = fsub <2 x float> %i.agk, %.sroa.0412.0.copyload.i ; 3 uses
  %i.agm = insertelement <2 x float> poison, float %.sroa.5411.0.copyload.i, i64 0
  %i.agn = insertelement <2 x float> %i.agm, float %.sroa.5408.0.copyload.i, i64 1
  %i.ago = insertelement <2 x float> poison, float %.sroa.6415.0.copyload.i, i64 0
  %i.agp = shufflevector <2 x float> %i.ago, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agq = fsub <2 x float> %i.agn, %i.agp        ; 2 uses
  %i.agr = fmul <2 x float> %i.agq, %i.agj
  %i.ags = shufflevector <2 x float> %i.agq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.agt = fmul <2 x float> %i.agl, %i.ags
  %i.agu = fsub <2 x float> %i.agr, %i.agt        ; 3 uses
  %shift2594 = shufflevector <2 x float> %i.agl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2595 = fmul <2 x float> %i.agl, %shift2594
  %shift2597 = shufflevector <2 x float> %i.agj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2598 = fmul <2 x float> %shift2597, %i.agj
  %foldExtExtBinop2600 = fsub <2 x float> %foldExtExtBinop2595, %foldExtExtBinop2598 ; 3 uses
  %i.agv = fmul <2 x float> %i.agu, %i.agu        ; 2 uses
  %shift2602 = shufflevector <2 x float> %i.agv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2603 = fadd <2 x float> %shift2602, %i.agv
  %foldExtExtBinop2605 = fmul <2 x float> %foldExtExtBinop2600, %foldExtExtBinop2600
  %foldExtExtBinop2607 = fadd <2 x float> %foldExtExtBinop2605, %foldExtExtBinop2603
  %i.agw = extractelement <2 x float> %foldExtExtBinop2607, i64 0 ; 2 uses
  %i.agx = fcmp ogt float %i.agw, f0x057A0000
  br i1 %i.agx, label %bb.ai, label %b3Normalize.exit696.i

bb.ai:                                            ; preds = %bb.ah
  %i.agy = extractelement <2 x float> %foldExtExtBinop2600, i64 0
  %sqrt1251.i = call float @llvm.sqrt.f32(float %i.agw)
  %i.agz = fdiv float 1.000000e+00, %sqrt1251.i   ; 2 uses
  %i.aha = insertelement <2 x float> poison, float %i.agz, i64 0
  %i.ahb = shufflevector <2 x float> %i.agu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ahc = shufflevector <2 x float> %i.aha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahd = fmul <2 x float> %i.ahb, %i.ahc
  %i.ahe = fmul float %i.agy, %i.agz
  br label %b3Normalize.exit696.i

b3Normalize.exit696.i:                            ; preds = %bb.ai, %bb.ah
  %.sroa.018.0.i690.i = phi <2 x float> [ %i.ahd, %bb.ai ], [ zeroinitializer, %bb.ah ] ; 6 uses
  %.sroa.5.0.i691.i = phi float [ %i.ahe, %bb.ai ], [ 0.000000e+00, %bb.ah ] ; 5 uses
  %.sroa.03.4.vec.extract.i.i869.i = extractelement <2 x float> %.sroa.018.0.i690.i, i64 1 ; 2 uses
  %i.ahf = fadd <2 x float> %.sroa.0412.0.copyload.i, %.sroa.0409.0.copyload.i
  %i.ahg = fadd float %.sroa.6415.0.copyload.i, %.sroa.5411.0.copyload.i
  %i.ahh = fadd float %i.ahg, %.sroa.5408.0.copyload.i
  %i.ahi = fadd <2 x float> %i.ahf, %.sroa.0406.0.copyload.i
  %i.ahj = fmul <2 x float> %i.ahi, splat (float f0x3EAAAAAB) ; 7 uses
  %i.ahk = load ptr, ptr %3, align 8, !tbaa !15, !noalias !89
  %i.ahl = zext nneg i32 %i.to to i64
  %i.ahm = getelementptr inbounds nuw [12 x i8], ptr %i.ahk, i64 %i.ahl ; 2 uses
  %.sroa.0328.0.copyload.i = load <2 x float>, ptr %i.ahm, align 4, !noalias !89 ; 5 uses
  %.sroa.4329.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ahm, i64 8
  %.sroa.4329.0.copyload.i = load float, ptr %.sroa.4329.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 3 uses
  %i.ahn = fmul float %.sroa.011.4.vec.extract.i.i.i718, %.sroa.5.0.i691.i
  %i.aho = fmul float %.sroa.3.8.vec.extract.i.i717, %.sroa.03.4.vec.extract.i.i869.i
  %i.ahp = fmul <2 x float> %i.ul, %.sroa.018.0.i690.i ; 2 uses
  %i.ahq = shufflevector <2 x float> %.sroa.018.0.i690.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ahr = insertelement <2 x float> %i.ahq, float %.sroa.5.0.i691.i, i64 0 ; 2 uses
  %i.ahs = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.ahr ; 2 uses
  %i.aht = shufflevector <2 x float> %i.ahp, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ahu = insertelement <2 x float> %i.aht, float %i.ahn, i64 0
  %i.ahv = shufflevector <2 x float> %i.ahs, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ahw = insertelement <2 x float> %i.ahv, float %i.aho, i64 0
  %i.ahx = fsub <2 x float> %i.ahu, %i.ahw
  %i.ahy = fsub <2 x float> %i.ahp, %i.ahs
  %i.ahz = fmul <2 x float> %i.uu, %.sroa.018.0.i690.i
  %i.aia = insertelement <2 x float> %i.ahq, float %.sroa.5.0.i691.i, i64 1
  %i.aib = fmul <2 x float> %i.uu, %i.aia
  %i.aic = fadd <2 x float> %i.ahz, %i.ahx        ; 2 uses
  %i.aid = fadd <2 x float> %i.aib, %i.ahy        ; 2 uses
  %foldExtExtBinop2609 = fmul <2 x float> %.sroa.4.0.i.i.i702, %i.aic
  %shift2611 = shufflevector <2 x float> %i.aid, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2612 = fmul <2 x float> %.sroa.010.0.i.i.i701, %shift2611
  %foldExtExtBinop2614 = fsub <2 x float> %foldExtExtBinop2609, %foldExtExtBinop2612
  %i.aie = extractelement <2 x float> %foldExtExtBinop2614, i64 0
  %i.aif = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.aid
  %i.aig = fmul <2 x float> %i.vb, %i.aic
  %i.aih = fsub <2 x float> %i.aif, %i.aig
  %i.aii = fmul float %i.aie, 2.000000e+00
  %i.aij = fadd float %.sroa.03.4.vec.extract.i.i869.i, %i.aii
  %i.aik = fmul <2 x float> %i.aih, splat (float 2.000000e+00)
  %i.ail = fadd <2 x float> %i.ahr, %i.aik
  %i.aim = fmul float %i.ahh, f0x3EAAAAAB         ; 5 uses
  %i.ain = fmul float %.sroa.011.4.vec.extract.i.i.i675, %.sroa.4329.0.copyload.i
  %shift2616 = shufflevector <2 x float> %.sroa.0328.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2617 = fmul <2 x float> %.sroa.4.0.i.i.i659, %shift2616
  %i.aio = fmul <2 x float> %i.we, %.sroa.0328.0.copyload.i ; 2 uses
  %i.aip = shufflevector <2 x float> %.sroa.0328.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aiq = insertelement <2 x float> %i.aip, float %.sroa.4329.0.copyload.i, i64 0 ; 2 uses
  %i.air = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.aiq ; 2 uses
  %i.ais = shufflevector <2 x float> %i.aio, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ait = insertelement <2 x float> %i.ais, float %i.ain, i64 0
  %i.aiu = shufflevector <2 x float> %i.air, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aiv = shufflevector <2 x float> %foldExtExtBinop2617, <2 x float> %i.aiu, <2 x i32> <i32 0, i32 3>
  %i.aiw = fsub <2 x float> %i.ait, %i.aiv
  %i.aix = fsub <2 x float> %i.aio, %i.air
  %i.aiy = fmul <2 x float> %i.wn, %.sroa.0328.0.copyload.i
  %i.aiz = insertelement <2 x float> %i.aip, float %.sroa.4329.0.copyload.i, i64 1
  %i.aja = fmul <2 x float> %i.wn, %i.aiz
  %i.ajb = fadd <2 x float> %i.aiy, %i.aiw        ; 2 uses
  %i.ajc = fadd <2 x float> %i.aja, %i.aix        ; 2 uses
  %i.ajd = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.ajc
  %i.aje = fmul <2 x float> %i.wu, %i.ajb
  %i.ajf = fsub <2 x float> %i.ajd, %i.aje
  %i.ajg = fmul <2 x float> %i.ajf, splat (float 2.000000e+00)
  %i.ajh = fadd <2 x float> %i.aiq, %i.ajg
  %i.aji = fmul float %.sroa.011.4.vec.extract.i.i.i718, %i.aim
  %shift2619 = shufflevector <2 x float> %i.ahj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2620 = fmul <2 x float> %.sroa.4.0.i.i.i702, %shift2619
  %i.ajj = fmul <2 x float> %i.ul, %i.ahj         ; 2 uses
  %i.ajk = shufflevector <2 x float> %i.ahj, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ajl = insertelement <2 x float> %i.ajk, float %i.aim, i64 0 ; 2 uses
  %i.ajm = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.ajl ; 2 uses
  %i.ajn = shufflevector <2 x float> %i.ajj, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ajo = insertelement <2 x float> %i.ajn, float %i.aji, i64 0
  %i.ajp = shufflevector <2 x float> %i.ajm, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ajq = shufflevector <2 x float> %foldExtExtBinop2620, <2 x float> %i.ajp, <2 x i32> <i32 0, i32 3>
  %i.ajr = fsub <2 x float> %i.ajo, %i.ajq
  %i.ajs = fsub <2 x float> %i.ajj, %i.ajm
  %i.ajt = fmul <2 x float> %i.uu, %i.ahj
  %i.aju = insertelement <2 x float> %i.ajk, float %i.aim, i64 1
  %i.ajv = fmul <2 x float> %i.uu, %i.aju
  %i.ajw = fadd <2 x float> %i.ajt, %i.ajr        ; 2 uses
  %i.ajx = fadd <2 x float> %i.ajv, %i.ajs        ; 2 uses
  %i.ajy = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.ajx
  %i.ajz = fmul <2 x float> %i.vb, %i.ajw
  %i.aka = fsub <2 x float> %i.ajy, %i.ajz
  %i.akb = shufflevector <2 x float> %.sroa.4.0.i.i.i659, <2 x float> %.sroa.4.0.i.i.i702, <2 x i32> <i32 0, i32 2>
  %i.akc = shufflevector <2 x float> %i.ajb, <2 x float> %i.ajw, <2 x i32> <i32 0, i32 2>
  %i.akd = fmul <2 x float> %i.akb, %i.akc
  %i.ake = shufflevector <2 x float> %.sroa.010.0.i.i.i658, <2 x float> %.sroa.010.0.i.i.i701, <2 x i32> <i32 0, i32 2>
  %i.akf = shufflevector <2 x float> %i.ajc, <2 x float> %i.ajx, <2 x i32> <i32 1, i32 3>
  %i.akg = fmul <2 x float> %i.ake, %i.akf
  %i.akh = fsub <2 x float> %i.akd, %i.akg
  %i.aki = fmul <2 x float> %i.akh, splat (float 2.000000e+00)
  %i.akj = shufflevector <2 x float> %.sroa.0328.0.copyload.i, <2 x float> %i.ahj, <2 x i32> <i32 1, i32 3>
  %i.akk = fadd <2 x float> %i.akj, %i.aki        ; 2 uses
  %i.akl = fmul <2 x float> %i.aka, splat (float 2.000000e+00)
  %i.akm = fadd <2 x float> %i.ajl, %i.akl
  %shift2622 = shufflevector <2 x float> %i.akk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2623 = fsub <2 x float> %i.akk, %shift2622
  %i.akn = extractelement <2 x float> %foldExtExtBinop2623, i64 0
  %i.ako = fsub <2 x float> %i.ajh, %i.akm
  %i.akp = fadd float %i.xd, %i.akn
  %i.akq = fadd <2 x float> %i.xe, %i.ako
  %i.akr = fmul float %i.aij, %i.akp
  %i.aks = fmul <2 x float> %i.ail, %i.akq        ; 2 uses
  %i.akt = extractelement <2 x float> %i.aks, i64 1
  %i.aku = fadd float %i.akt, %i.akr
  %i.akv = extractelement <2 x float> %i.aks, i64 0
  %i.akw = fadd float %i.akv, %i.aku
  %i.akx = fcmp olt float %i.akw, 0.000000e+00    ; 2 uses
  %i.aky = fneg <2 x float> %.sroa.018.0.i690.i
  %i.akz = fneg float %.sroa.5.0.i691.i
  %.sroa.0402.0.i = select i1 %i.akx, <2 x float> %i.aky, <2 x float> %.sroa.018.0.i690.i ; 2 uses
  %.sroa.9405.0.i = select i1 %i.akx, float %i.akz, float %.sroa.5.0.i691.i
  store i32 3, ptr %i.bp, align 8, !tbaa !39, !alias.scope !89
  store <2 x float> %.sroa.0402.0.i, ptr %i.bl, align 8, !alias.scope !89
  store float %.sroa.9405.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !16, !alias.scope !89
  store <2 x float> %i.ahj, ptr %i.bq, align 4, !alias.scope !89
  store float %i.aim, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !16, !alias.scope !89
  br label %b3MakeSeparationFunction.exit

bb.aj:                                            ; preds = %bb.ag
  %i.ala = icmp eq i32 %.0.i735.i, 3
  br i1 %i.ala, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.alb = load ptr, ptr %3, align 8, !tbaa !15, !noalias !89 ; 3 uses
  %i.alc = zext nneg i32 %i.to to i64
  %i.ald = getelementptr inbounds nuw [12 x i8], ptr %i.alb, i64 %i.alc ; 2 uses
  %.sroa.0276.0.copyload.i = load <2 x float>, ptr %i.ald, align 4, !noalias !89 ; 3 uses
  %.sroa.6279.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ald, i64 8
  %.sroa.6279.0.copyload.i = load float, ptr %.sroa.6279.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 2 uses
  %i.ale = zext nneg i32 %i.tl to i64
  %i.alf = getelementptr inbounds nuw [12 x i8], ptr %i.alb, i64 %i.ale ; 2 uses
  %.sroa.0273.0.copyload.i = load <2 x float>, ptr %i.alf, align 4, !noalias !89 ; 3 uses
  %.sroa.5275.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.alf, i64 8
  %.sroa.5275.0.copyload.i = load float, ptr %.sroa.5275.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 2 uses
  %i.alg = and i64 %.sroa.10660.8.extract.shift.i, 255
  %i.alh = getelementptr inbounds nuw [12 x i8], ptr %i.alb, i64 %i.alg ; 2 uses
  %.sroa.0270.0.copyload.i = load <2 x float>, ptr %i.alh, align 4, !noalias !89 ; 3 uses
  %.sroa.5272.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.alh, i64 8
  %.sroa.5272.0.copyload.i = load float, ptr %.sroa.5272.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 2 uses
  %i.ali = shufflevector <2 x float> %.sroa.0270.0.copyload.i, <2 x float> %.sroa.0273.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.alj = fsub <2 x float> %i.ali, %.sroa.0276.0.copyload.i ; 3 uses
  %i.alk = shufflevector <2 x float> %.sroa.0273.0.copyload.i, <2 x float> %.sroa.0270.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.all = fsub <2 x float> %i.alk, %.sroa.0276.0.copyload.i ; 3 uses
  %i.alm = insertelement <2 x float> poison, float %.sroa.5275.0.copyload.i, i64 0
  %i.aln = insertelement <2 x float> %i.alm, float %.sroa.5272.0.copyload.i, i64 1
  %i.alo = insertelement <2 x float> poison, float %.sroa.6279.0.copyload.i, i64 0
  %i.alp = shufflevector <2 x float> %i.alo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.alq = fsub <2 x float> %i.aln, %i.alp        ; 2 uses
  %i.alr = fmul <2 x float> %i.alq, %i.alj
  %i.als = shufflevector <2 x float> %i.alq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.alt = fmul <2 x float> %i.all, %i.als
  %i.alu = fsub <2 x float> %i.alr, %i.alt        ; 3 uses
  %shift2625 = shufflevector <2 x float> %i.all, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2626 = fmul <2 x float> %i.all, %shift2625
  %shift2628 = shufflevector <2 x float> %i.alj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2629 = fmul <2 x float> %shift2628, %i.alj
  %foldExtExtBinop2631 = fsub <2 x float> %foldExtExtBinop2626, %foldExtExtBinop2629 ; 3 uses
  %i.alv = fmul <2 x float> %i.alu, %i.alu        ; 2 uses
  %shift2633 = shufflevector <2 x float> %i.alv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2634 = fadd <2 x float> %shift2633, %i.alv
  %foldExtExtBinop2636 = fmul <2 x float> %foldExtExtBinop2631, %foldExtExtBinop2631
  %foldExtExtBinop2638 = fadd <2 x float> %foldExtExtBinop2636, %foldExtExtBinop2634
  %i.alw = extractelement <2 x float> %foldExtExtBinop2638, i64 0 ; 2 uses
  %i.alx = fcmp ogt float %i.alw, f0x057A0000
  br i1 %i.alx, label %bb.al, label %b3Normalize.exit687.i

bb.al:                                            ; preds = %bb.ak
  %i.aly = extractelement <2 x float> %foldExtExtBinop2631, i64 0
  %sqrt1252.i = call float @llvm.sqrt.f32(float %i.alw)
  %i.alz = fdiv float 1.000000e+00, %sqrt1252.i   ; 2 uses
  %i.ama = insertelement <2 x float> poison, float %i.alz, i64 0
  %i.amb = shufflevector <2 x float> %i.alu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.amc = shufflevector <2 x float> %i.ama, <2 x float> poison, <2 x i32> zeroinitializer
  %i.amd = fmul <2 x float> %i.amb, %i.amc
  %i.ame = fmul float %i.aly, %i.alz
  br label %b3Normalize.exit687.i

b3Normalize.exit687.i:                            ; preds = %bb.al, %bb.ak
  %.sroa.018.0.i681.i = phi <2 x float> [ %i.amd, %bb.al ], [ zeroinitializer, %bb.ak ] ; 6 uses
  %.sroa.5.0.i682.i = phi float [ %i.ame, %bb.al ], [ 0.000000e+00, %bb.ak ] ; 5 uses
  %.sroa.03.4.vec.extract.i.i967.i = extractelement <2 x float> %.sroa.018.0.i681.i, i64 1 ; 2 uses
  %i.amf = load ptr, ptr %2, align 8, !tbaa !15, !noalias !89
  %i.amg = and i64 %.sroa.4654.0.extract.shift.i, 255
  %i.amh = getelementptr inbounds nuw [12 x i8], ptr %i.amf, i64 %i.amg ; 2 uses
  %.sroa.0220.0.copyload.i = load <2 x float>, ptr %i.amh, align 4, !noalias !89 ; 5 uses
  %.sroa.4221.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.amh, i64 8
  %.sroa.4221.0.copyload.i = load float, ptr %.sroa.4221.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 3 uses
  %i.ami = fadd <2 x float> %.sroa.0276.0.copyload.i, %.sroa.0273.0.copyload.i
  %i.amj = fadd float %.sroa.6279.0.copyload.i, %.sroa.5275.0.copyload.i
  %i.amk = fadd float %i.amj, %.sroa.5272.0.copyload.i
  %i.aml = fadd <2 x float> %i.ami, %.sroa.0270.0.copyload.i
  %i.amm = fmul <2 x float> %i.aml, splat (float f0x3EAAAAAB) ; 7 uses
  %i.amn = fmul float %.sroa.011.4.vec.extract.i.i.i675, %.sroa.5.0.i682.i
  %i.amo = fmul float %.sroa.3.8.vec.extract.i.i674, %.sroa.03.4.vec.extract.i.i967.i
  %i.amp = fmul <2 x float> %i.we, %.sroa.018.0.i681.i ; 2 uses
  %i.amq = shufflevector <2 x float> %.sroa.018.0.i681.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.amr = insertelement <2 x float> %i.amq, float %.sroa.5.0.i682.i, i64 0 ; 2 uses
  %i.ams = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.amr ; 2 uses
  %i.amt = shufflevector <2 x float> %i.amp, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.amu = insertelement <2 x float> %i.amt, float %i.amn, i64 0
  %i.amv = shufflevector <2 x float> %i.ams, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.amw = insertelement <2 x float> %i.amv, float %i.amo, i64 0
  %i.amx = fsub <2 x float> %i.amu, %i.amw
  %i.amy = fsub <2 x float> %i.amp, %i.ams
  %i.amz = fmul <2 x float> %i.wn, %.sroa.018.0.i681.i
  %i.ana = insertelement <2 x float> %i.amq, float %.sroa.5.0.i682.i, i64 1
  %i.anb = fmul <2 x float> %i.wn, %i.ana
  %i.anc = fadd <2 x float> %i.amz, %i.amx        ; 2 uses
  %i.and = fadd <2 x float> %i.anb, %i.amy        ; 2 uses
  %foldExtExtBinop2640 = fmul <2 x float> %.sroa.4.0.i.i.i659, %i.anc
  %shift2642 = shufflevector <2 x float> %i.and, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2643 = fmul <2 x float> %.sroa.010.0.i.i.i658, %shift2642
  %foldExtExtBinop2645 = fsub <2 x float> %foldExtExtBinop2640, %foldExtExtBinop2643
  %i.ane = extractelement <2 x float> %foldExtExtBinop2645, i64 0
  %i.anf = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.and
  %i.ang = fmul <2 x float> %i.wu, %i.anc
  %i.anh = fsub <2 x float> %i.anf, %i.ang
  %i.ani = fmul float %i.ane, 2.000000e+00
  %i.anj = fadd float %.sroa.03.4.vec.extract.i.i967.i, %i.ani
  %i.ank = fmul <2 x float> %i.anh, splat (float 2.000000e+00)
  %i.anl = fadd <2 x float> %i.amr, %i.ank
  %i.anm = fmul float %i.amk, f0x3EAAAAAB         ; 5 uses
  %i.ann = fmul float %.sroa.011.4.vec.extract.i.i.i718, %.sroa.4221.0.copyload.i
  %shift2647 = shufflevector <2 x float> %.sroa.0220.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2648 = fmul <2 x float> %.sroa.4.0.i.i.i702, %shift2647
  %i.ano = fmul <2 x float> %i.ul, %.sroa.0220.0.copyload.i ; 2 uses
  %i.anp = shufflevector <2 x float> %.sroa.0220.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.anq = insertelement <2 x float> %i.anp, float %.sroa.4221.0.copyload.i, i64 0 ; 2 uses
  %i.anr = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.anq ; 2 uses
  %i.ans = shufflevector <2 x float> %i.ano, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ant = insertelement <2 x float> %i.ans, float %i.ann, i64 0
  %i.anu = shufflevector <2 x float> %i.anr, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.anv = shufflevector <2 x float> %foldExtExtBinop2648, <2 x float> %i.anu, <2 x i32> <i32 0, i32 3>
  %i.anw = fsub <2 x float> %i.ant, %i.anv
  %i.anx = fsub <2 x float> %i.ano, %i.anr
  %i.any = fmul <2 x float> %i.uu, %.sroa.0220.0.copyload.i
  %i.anz = insertelement <2 x float> %i.anp, float %.sroa.4221.0.copyload.i, i64 1
  %i.aoa = fmul <2 x float> %i.uu, %i.anz
  %i.aob = fadd <2 x float> %i.any, %i.anw        ; 2 uses
  %i.aoc = fadd <2 x float> %i.aoa, %i.anx        ; 2 uses
  %i.aod = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.aoc
  %i.aoe = fmul <2 x float> %i.vb, %i.aob
  %i.aof = fsub <2 x float> %i.aod, %i.aoe
  %i.aog = fmul <2 x float> %i.aof, splat (float 2.000000e+00)
  %i.aoh = fadd <2 x float> %i.anq, %i.aog
  %i.aoi = fmul float %.sroa.011.4.vec.extract.i.i.i675, %i.anm
  %shift2650 = shufflevector <2 x float> %i.amm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2651 = fmul <2 x float> %.sroa.4.0.i.i.i659, %shift2650
  %i.aoj = fmul <2 x float> %i.we, %i.amm         ; 2 uses
  %i.aok = shufflevector <2 x float> %i.amm, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aol = insertelement <2 x float> %i.aok, float %i.anm, i64 0 ; 2 uses
  %i.aom = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.aol ; 2 uses
  %i.aon = shufflevector <2 x float> %i.aoj, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aoo = insertelement <2 x float> %i.aon, float %i.aoi, i64 0
  %i.aop = shufflevector <2 x float> %i.aom, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aoq = shufflevector <2 x float> %foldExtExtBinop2651, <2 x float> %i.aop, <2 x i32> <i32 0, i32 3>
  %i.aor = fsub <2 x float> %i.aoo, %i.aoq
  %i.aos = fsub <2 x float> %i.aoj, %i.aom
  %i.aot = fmul <2 x float> %i.wn, %i.amm
  %i.aou = insertelement <2 x float> %i.aok, float %i.anm, i64 1
  %i.aov = fmul <2 x float> %i.wn, %i.aou
  %i.aow = fadd <2 x float> %i.aot, %i.aor        ; 2 uses
  %i.aox = fadd <2 x float> %i.aov, %i.aos        ; 2 uses
  %i.aoy = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.aox
  %i.aoz = fmul <2 x float> %i.wu, %i.aow
  %i.apa = fsub <2 x float> %i.aoy, %i.aoz
  %i.apb = shufflevector <2 x float> %.sroa.4.0.i.i.i702, <2 x float> %.sroa.4.0.i.i.i659, <2 x i32> <i32 0, i32 2>
  %i.apc = shufflevector <2 x float> %i.aob, <2 x float> %i.aow, <2 x i32> <i32 0, i32 2>
  %i.apd = fmul <2 x float> %i.apb, %i.apc
  %i.ape = shufflevector <2 x float> %.sroa.010.0.i.i.i701, <2 x float> %.sroa.010.0.i.i.i658, <2 x i32> <i32 0, i32 2>
  %i.apf = shufflevector <2 x float> %i.aoc, <2 x float> %i.aox, <2 x i32> <i32 1, i32 3>
  %i.apg = fmul <2 x float> %i.ape, %i.apf
  %i.aph = fsub <2 x float> %i.apd, %i.apg
  %i.api = fmul <2 x float> %i.aph, splat (float 2.000000e+00)
  %i.apj = shufflevector <2 x float> %.sroa.0220.0.copyload.i, <2 x float> %i.amm, <2 x i32> <i32 1, i32 3>
  %i.apk = fadd <2 x float> %i.apj, %i.api        ; 2 uses
  %i.apl = fmul <2 x float> %i.apa, splat (float 2.000000e+00)
  %i.apm = fadd <2 x float> %i.aol, %i.apl
  %shift2653 = shufflevector <2 x float> %i.apk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2654 = fsub <2 x float> %i.apk, %shift2653
  %i.apn = extractelement <2 x float> %foldExtExtBinop2654, i64 0
  %i.apo = fsub <2 x float> %i.aoh, %i.apm
  %i.app = fsub float %i.apn, %i.xd
  %i.apq = fsub <2 x float> %i.apo, %i.xe
  %i.apr = fmul float %i.anj, %i.app
  %i.aps = fmul <2 x float> %i.anl, %i.apq        ; 2 uses
  %i.apt = extractelement <2 x float> %i.aps, i64 1
  %i.apu = fadd float %i.apt, %i.apr
  %i.apv = extractelement <2 x float> %i.aps, i64 0
  %i.apw = fadd float %i.apv, %i.apu
  %i.apx = fcmp olt float %i.apw, 0.000000e+00    ; 2 uses
  %i.apy = fneg <2 x float> %.sroa.018.0.i681.i
  %i.apz = fneg float %.sroa.5.0.i682.i
  %.sroa.0266.0.i = select i1 %i.apx, <2 x float> %i.apy, <2 x float> %.sroa.018.0.i681.i ; 2 uses
  %.sroa.9269.0.i = select i1 %i.apx, float %i.apz, float %.sroa.5.0.i682.i
  store i32 4, ptr %i.bp, align 8, !tbaa !39, !alias.scope !89
  store <2 x float> %.sroa.0266.0.i, ptr %i.bl, align 8, !alias.scope !89
  store float %.sroa.9269.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !16, !alias.scope !89
  store <2 x float> %i.amm, ptr %i.bq, align 4, !alias.scope !89
  store float %i.anm, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !16, !alias.scope !89
  br label %b3MakeSeparationFunction.exit

bb.am:                                            ; preds = %bb.aj
  %i.aqa = icmp eq i32 %i.tm, %.sroa.5655.0.extract.trunc.i
  %spec.select.i = select i1 %i.aqa, i32 %i.tn, i32 %.sroa.5655.0.extract.trunc.i
  %i.aqb = load ptr, ptr %2, align 8, !tbaa !15, !noalias !89 ; 2 uses
  %i.aqc = and i64 %.sroa.4654.0.extract.shift.i, 255
  %i.aqd = getelementptr inbounds nuw [12 x i8], ptr %i.aqb, i64 %i.aqc ; 2 uses
  %.sroa.0141.0.copyload.i = load <2 x float>, ptr %i.aqd, align 4, !noalias !89 ; 5 uses
  %.sroa.5143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aqd, i64 8
  %.sroa.5143.0.copyload.i = load float, ptr %.sroa.5143.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 3 uses
  %i.aqe = zext nneg i32 %spec.select.i to i64
  %i.aqf = getelementptr inbounds nuw [12 x i8], ptr %i.aqb, i64 %i.aqe ; 2 uses
  %.sroa.0139.0.copyload.i = load <2 x float>, ptr %i.aqf, align 4, !noalias !89
  %.sroa.4140.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aqf, i64 8
  %.sroa.4140.0.copyload.i = load float, ptr %.sroa.4140.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89
  %i.aqg = fsub <2 x float> %.sroa.0139.0.copyload.i, %.sroa.0141.0.copyload.i ; 3 uses
  %i.aqh = fsub float %.sroa.4140.0.copyload.i, %.sroa.5143.0.copyload.i ; 3 uses
  %i.aqi = fmul <2 x float> %i.aqg, %i.aqg        ; 2 uses
  %shift2656 = shufflevector <2 x float> %i.aqi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2657 = fadd <2 x float> %i.aqi, %shift2656
  %i.aqj = extractelement <2 x float> %foldExtExtBinop2657, i64 0
  %i.aqk = fmul float %i.aqh, %i.aqh
  %i.aql = fadd float %i.aqk, %i.aqj              ; 2 uses
  %i.aqm = fcmp ogt float %i.aql, f0x057A0000
  br i1 %i.aqm, label %bb.an, label %b3Normalize.exit678.i

bb.an:                                            ; preds = %bb.am
  %sqrt1253.i = call float @llvm.sqrt.f32(float %i.aql)
  %i.aqn = fdiv float 1.000000e+00, %sqrt1253.i   ; 2 uses
  %i.aqo = insertelement <2 x float> poison, float %i.aqn, i64 0
  %i.aqp = shufflevector <2 x float> %i.aqo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aqq = fmul <2 x float> %i.aqg, %i.aqp
  %i.aqr = fmul float %i.aqh, %i.aqn
  br label %b3Normalize.exit678.i

b3Normalize.exit678.i:                            ; preds = %bb.an, %bb.am
  %.sroa.018.0.i672.i = phi <2 x float> [ %i.aqq, %bb.an ], [ zeroinitializer, %bb.am ] ; 10 uses
  %.sroa.5.0.i673.i = phi float [ %i.aqr, %bb.an ], [ 0.000000e+00, %bb.am ] ; 6 uses
  %i.aqs = shufflevector <2 x float> %.sroa.018.0.i672.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %.sroa.03.0.vec.extract.i.i1054.i = extractelement <2 x float> %.sroa.018.0.i672.i, i64 0
  %foldExtExtBinop2659 = fmul <2 x float> %.sroa.4.0.i.i.i702, %.sroa.018.0.i672.i
  %i.aqt = fmul float %.sroa.011.4.vec.extract.i.i.i718, %.sroa.5.0.i673.i
  %i.aqu = insertelement <2 x float> %i.aqs, float %.sroa.5.0.i673.i, i64 1 ; 2 uses
  %i.aqv = fmul <2 x float> %i.ul, %i.aqu
  %i.aqw = insertelement <2 x float> poison, float %i.aqt, i64 0
  %i.aqx = shufflevector <2 x float> %i.aqw, <2 x float> %foldExtExtBinop2659, <2 x i32> <i32 0, i32 2>
  %i.aqy = fsub <2 x float> %i.aqx, %i.aqv        ; 2 uses
  %i.aqz = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.aqs ; 2 uses
  %shift2661 = shufflevector <2 x float> %i.aqz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2662 = fsub <2 x float> %i.aqz, %shift2661
  %i.ara = fmul <2 x float> %i.uu, %.sroa.018.0.i672.i
  %i.arb = insertelement <2 x float> %i.aqs, float %.sroa.5.0.i673.i, i64 0 ; 3 uses
  %i.arc = fmul <2 x float> %i.uu, %i.arb
  %i.ard = fadd <2 x float> %i.ara, %i.aqy        ; 2 uses
  %i.are = shufflevector <2 x float> %i.aqy, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.arf = shufflevector <2 x float> %foldExtExtBinop2662, <2 x float> %i.are, <2 x i32> <i32 0, i32 3>
  %i.arg = fadd <2 x float> %i.arc, %i.arf        ; 2 uses
  %i.arh = fmul <2 x float> %i.ul, %i.ard
  %i.ari = extractelement <2 x float> %i.arg, i64 0
  %i.arj = fmul float %.sroa.011.4.vec.extract.i.i.i718, %i.ari
  %i.ark = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.arg
  %shift2664 = shufflevector <2 x float> %i.ard, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2665 = fmul <2 x float> %.sroa.4.0.i.i.i702, %shift2664
  %i.arl = extractelement <2 x float> %foldExtExtBinop2665, i64 0
  %i.arm = fsub <2 x float> %i.arh, %i.ark
  %i.arn = fsub float %i.arj, %i.arl
  %i.aro = fmul float %i.arn, 2.000000e+00
  %i.arp = fadd float %.sroa.03.0.vec.extract.i.i1054.i, %i.aro ; 2 uses
  %i.arq = fmul <2 x float> %i.arm, splat (float 2.000000e+00)
  %i.arr = fadd <2 x float> %i.aqu, %i.arq        ; 3 uses
  %i.ars = icmp eq i32 %i.to, %i.tl
  %spec.select1248.i = select i1 %i.ars, i32 %i.tp, i32 %i.tl
  %i.art = load ptr, ptr %3, align 8, !tbaa !15, !noalias !89 ; 2 uses
  %i.aru = zext nneg i32 %i.to to i64
  %i.arv = getelementptr inbounds nuw [12 x i8], ptr %i.art, i64 %i.aru ; 2 uses
  %.sroa.0111.0.copyload.i = load <2 x float>, ptr %i.arv, align 4, !noalias !89 ; 5 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.arv, i64 8
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89 ; 3 uses
  %i.arw = zext nneg i32 %spec.select1248.i to i64
  %i.arx = getelementptr inbounds nuw [12 x i8], ptr %i.art, i64 %i.arw ; 2 uses
  %.sroa.0109.0.copyload.i = load <2 x float>, ptr %i.arx, align 4, !noalias !89
  %.sroa.4110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.arx, i64 8
  %.sroa.4110.0.copyload.i = load float, ptr %.sroa.4110.0..sroa_idx.i, align 4, !tbaa !16, !noalias !89
  %i.ary = fsub <2 x float> %.sroa.0109.0.copyload.i, %.sroa.0111.0.copyload.i ; 3 uses
  %i.arz = fsub float %.sroa.4110.0.copyload.i, %.sroa.5.0.copyload.i ; 3 uses
  %i.asa = fmul <2 x float> %i.ary, %i.ary        ; 2 uses
  %shift2667 = shufflevector <2 x float> %i.asa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2668 = fadd <2 x float> %i.asa, %shift2667
  %i.asb = extractelement <2 x float> %foldExtExtBinop2668, i64 0
  %i.asc = fmul float %i.arz, %i.arz
  %i.asd = fadd float %i.asc, %i.asb              ; 2 uses
  %i.ase = fcmp ogt float %i.asd, f0x057A0000
  br i1 %i.ase, label %bb.ao, label %b3Normalize.exit669.i

bb.ao:                                            ; preds = %b3Normalize.exit678.i
  %sqrt1254.i = call float @llvm.sqrt.f32(float %i.asd)
  %i.asf = fdiv float 1.000000e+00, %sqrt1254.i   ; 2 uses
  %i.asg = insertelement <2 x float> poison, float %i.asf, i64 0
  %i.ash = shufflevector <2 x float> %i.asg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.asi = fmul <2 x float> %i.ary, %i.ash
  %i.asj = fmul float %i.arz, %i.asf
  br label %b3Normalize.exit669.i

b3Normalize.exit669.i:                            ; preds = %bb.ao, %b3Normalize.exit678.i
  %.sroa.018.0.i663.i = phi <2 x float> [ %i.asi, %bb.ao ], [ zeroinitializer, %b3Normalize.exit678.i ] ; 6 uses
  %.sroa.5.0.i664.i = phi float [ %i.asj, %bb.ao ], [ 0.000000e+00, %b3Normalize.exit678.i ] ; 6 uses
  %i.ask = fmul float %.sroa.011.4.vec.extract.i.i.i675, %.sroa.5.0.i664.i
  %shift2670 = shufflevector <2 x float> %.sroa.018.0.i663.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2671 = fmul <2 x float> %.sroa.4.0.i.i.i659, %shift2670
  %i.asl = extractelement <2 x float> %foldExtExtBinop2671, i64 0
  %i.asm = fmul <2 x float> %i.we, %.sroa.018.0.i663.i
  %i.asn = shufflevector <2 x float> %.sroa.018.0.i663.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aso = insertelement <2 x float> %i.asn, float %.sroa.5.0.i664.i, i64 0 ; 2 uses
  %i.asp = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.aso
  %i.asq = fsub float %i.ask, %i.asl
  %i.asr = fsub <2 x float> %i.asm, %i.asp        ; 2 uses
  %i.ass = fmul <2 x float> %i.wn, %.sroa.018.0.i663.i ; 2 uses
  %i.ast = fmul float %.sroa.3.12.vec.extract.i.i679, %.sroa.5.0.i664.i
  %i.asu = shufflevector <2 x float> %i.asr, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.asv = insertelement <2 x float> %i.asu, float %i.asq, i64 0
  %i.asw = fadd <2 x float> %i.ass, %i.asv        ; 2 uses
  %i.asx = shufflevector <2 x float> %i.ass, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.asy = insertelement <2 x float> %i.asx, float %i.ast, i64 1
  %i.asz = fadd <2 x float> %i.asy, %i.asr        ; 2 uses
  %i.ata = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.asz
  %i.atb = fmul <2 x float> %i.we, %i.asw
  %i.atc = fmul <2 x float> %i.wu, %i.asw         ; 2 uses
  %shift2673 = shufflevector <2 x float> %i.asz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2674 = fmul <2 x float> %.sroa.010.0.i.i.i658, %shift2673
  %i.atd = fsub <2 x float> %i.ata, %i.atc
  %i.ate = shufflevector <2 x float> %i.atc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.atf = shufflevector <2 x float> %foldExtExtBinop2674, <2 x float> %i.ate, <2 x i32> <i32 0, i32 3>
  %i.atg = fsub <2 x float> %i.atb, %i.atf
  %i.ath = fmul <2 x float> %i.atd, splat (float 2.000000e+00)
  %i.ati = fmul <2 x float> %i.atg, splat (float 2.000000e+00)
  %i.atj = fadd <2 x float> %i.aso, %i.ath        ; 2 uses
  %i.atk = insertelement <2 x float> %i.asn, float %.sroa.5.0.i664.i, i64 1
  %i.atl = fadd <2 x float> %i.atk, %i.ati        ; 2 uses
  %i.atm = fmul <2 x float> %i.arr, %i.atj
  %i.atn = shufflevector <2 x float> %i.arr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ato = insertelement <2 x float> %i.atn, float %i.arp, i64 1
  %i.atp = fmul <2 x float> %i.ato, %i.atl
  %i.atq = fsub <2 x float> %i.atm, %i.atp        ; 6 uses
  %i.atr = extractelement <2 x float> %i.atl, i64 0
  %i.ats = fmul float %i.arp, %i.atr
  %shift2676 = shufflevector <2 x float> %i.atj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2677 = fmul <2 x float> %i.arr, %shift2676
  %i.att = extractelement <2 x float> %foldExtExtBinop2677, i64 0
  %i.atu = fsub float %i.ats, %i.att              ; 5 uses
  %i.atv = fmul <2 x float> %i.atq, %i.atq        ; 2 uses
  %shift2679 = shufflevector <2 x float> %i.atv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2680 = fadd <2 x float> %i.atv, %shift2679
  %i.atw = extractelement <2 x float> %foldExtExtBinop2680, i64 0
  %i.atx = fmul float %i.atu, %i.atu
  %i.aty = fadd float %i.atx, %i.atw
  %i.atz = fcmp olt float %i.aty, 2.500000e-05
  br i1 %i.atz, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %b3Normalize.exit669.i
  store i32 1, ptr %i.bp, align 8, !tbaa !39, !alias.scope !89
  store <2 x float> %i.jq, ptr %i.bl, align 8, !alias.scope !89
  store float %i.js, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !16, !alias.scope !89
  br label %b3MakeSeparationFunction.exit

bb.aq:                                            ; preds = %b3Normalize.exit669.i
  %i.aua = shufflevector <2 x float> %.sroa.0111.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aub = insertelement <2 x float> %i.aua, float %.sroa.5.0.copyload.i, i64 0 ; 3 uses
  %i.auc = fmul <2 x float> %i.wu, %i.aub
  %i.aud = insertelement <2 x float> %i.aua, float %.sroa.5.0.copyload.i, i64 1 ; 2 uses
  %i.aue = fmul <2 x float> %i.we, %i.aud
  %i.auf = fmul <2 x float> %i.we, %.sroa.0111.0.copyload.i
  %i.aug = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.aub
  %i.auh = fmul <2 x float> %i.wn, %.sroa.0111.0.copyload.i
  %i.aui = fmul <2 x float> %i.wn, %i.aud
  %i.auj = shufflevector <2 x float> %.sroa.0141.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.auk = insertelement <2 x float> %i.auj, float %.sroa.5143.0.copyload.i, i64 0 ; 3 uses
  %i.aul = fmul <2 x float> %i.vb, %i.auk
  %i.aum = insertelement <2 x float> %i.auj, float %.sroa.5143.0.copyload.i, i64 1 ; 2 uses
  %i.aun = fmul <2 x float> %i.ul, %i.aum
  %i.auo = fmul <2 x float> %i.ul, %.sroa.0141.0.copyload.i
  %i.aup = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.auk
  %i.auq = fmul <2 x float> %i.uu, %.sroa.0141.0.copyload.i
  %i.aur = fmul <2 x float> %i.uu, %i.aum
  %i.aus = extractelement <2 x float> %i.atq, i64 1
  %i.aut = fsub <2 x float> %i.auc, %i.aue
  %i.auu = fsub <2 x float> %i.auf, %i.aug
  %i.auv = fadd <2 x float> %i.auh, %i.aut        ; 2 uses
  %i.auw = fadd <2 x float> %i.aui, %i.auu        ; 2 uses
  %i.aux = fmul <2 x float> %.sroa.010.0.i.i.i658, %i.auw
  %i.auy = fmul <2 x float> %i.wu, %i.auv
  %i.auz = fsub <2 x float> %i.aux, %i.auy
  %i.ava = fmul <2 x float> %i.auz, splat (float 2.000000e+00)
  %i.avb = fadd <2 x float> %i.aub, %i.ava
  %i.avc = fsub <2 x float> %i.aul, %i.aun
  %i.avd = fsub <2 x float> %i.auo, %i.aup
  %i.ave = fadd <2 x float> %i.auq, %i.avc        ; 2 uses
  %i.avf = fadd <2 x float> %i.aur, %i.avd        ; 2 uses
  %i.avg = fmul <2 x float> %.sroa.010.0.i.i.i701, %i.avf
  %i.avh = fmul <2 x float> %i.vb, %i.ave
  %i.avi = fsub <2 x float> %i.avg, %i.avh
  %i.avj = shufflevector <2 x float> %.sroa.4.0.i.i.i659, <2 x float> %.sroa.4.0.i.i.i702, <2 x i32> <i32 0, i32 2>
  %i.avk = shufflevector <2 x float> %i.auv, <2 x float> %i.ave, <2 x i32> <i32 0, i32 2>
  %i.avl = fmul <2 x float> %i.avj, %i.avk
  %i.avm = shufflevector <2 x float> %.sroa.010.0.i.i.i658, <2 x float> %.sroa.010.0.i.i.i701, <2 x i32> <i32 0, i32 2>
  %i.avn = shufflevector <2 x float> %i.auw, <2 x float> %i.avf, <2 x i32> <i32 1, i32 3>
  %i.avo = fmul <2 x float> %i.avm, %i.avn
  %i.avp = fsub <2 x float> %i.avl, %i.avo
  %i.avq = fmul <2 x float> %i.avp, splat (float 2.000000e+00)
  %i.avr = shufflevector <2 x float> %.sroa.0111.0.copyload.i, <2 x float> %.sroa.0141.0.copyload.i, <2 x i32> <i32 1, i32 3>
  %i.avs = fadd <2 x float> %i.avr, %i.avq        ; 2 uses
  %i.avt = fmul <2 x float> %i.avi, splat (float 2.000000e+00)
  %i.avu = fadd <2 x float> %i.auk, %i.avt
  %shift2682 = shufflevector <2 x float> %i.avs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2683 = fsub <2 x float> %i.avs, %shift2682
  %i.avv = extractelement <2 x float> %foldExtExtBinop2683, i64 0
  %i.avw = fsub <2 x float> %i.avb, %i.avu
  %i.avx = fadd float %i.xd, %i.avv
  %i.avy = fadd <2 x float> %i.xe, %i.avw
  %i.avz = fmul float %i.avx, %i.aus
  %i.awa = shufflevector <2 x float> %i.atq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.awb = insertelement <2 x float> %i.awa, float %i.atu, i64 0
  %i.awc = fmul <2 x float> %i.avy, %i.awb        ; 2 uses
  %i.awd = extractelement <2 x float> %i.awc, i64 1
  %i.awe = fadd float %i.awd, %i.avz
  %i.awf = extractelement <2 x float> %i.awc, i64 0
  %i.awg = fadd float %i.awf, %i.awe
  %i.awh = fcmp olt float %i.awg, 0.000000e+00
  br i1 %i.awh, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.awi = fneg <2 x float> %i.atq
  %i.awj = fneg float %i.atu
  %i.awk = fneg <2 x float> %.sroa.018.0.i663.i
  %i.awl = fneg float %.sroa.5.0.i664.i
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sroa.8.0.i = phi float [ %i.awl, %bb.ar ], [ %.sroa.5.0.i664.i, %bb.aq ] ; 5 uses
  %.sroa.9.0.i = phi float [ %i.awj, %bb.ar ], [ %i.atu, %bb.aq ] ; 4 uses
  %.sroa.077.0.i = phi <2 x float> [ %i.awi, %bb.ar ], [ %i.atq, %bb.aq ] ; 5 uses
  %i.awm = phi <2 x float> [ %i.awk, %bb.ar ], [ %.sroa.018.0.i663.i, %bb.aq ] ; 5 uses
  %i.awn = shufflevector <2 x float> %.sroa.018.0.i672.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.awo = insertelement <2 x float> %i.awn, float %.sroa.5.0.i673.i, i64 1 ; 2 uses
  %i.awp = fmul <2 x float> %.sroa.27.0.copyload, %i.awo
  %i.awq = fmul <2 x float> %i.bx, %.sroa.018.0.i672.i
  %i.awr = fmul <2 x float> %i.bz, %.sroa.018.0.i672.i
  %i.aws = fmul <2 x float> %.sroa.27.0.copyload, %i.arb
  %i.awt = fmul <2 x float> %i.by, %i.arb
  %i.awu = fmul <2 x float> %i.by, %i.awo
  %i.awv = shufflevector <2 x float> %i.awm, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.aww = fsub <2 x float> %i.awp, %i.awq
  %i.awx = fsub <2 x float> %i.awr, %i.aws
  %i.awy = fadd <2 x float> %i.awt, %i.aww        ; 2 uses
  %i.awz = fadd <2 x float> %i.awu, %i.awx        ; 2 uses
  %i.axa = fmul <2 x float> %i.bx, %i.awy
  %i.axb = fmul <2 x float> %i.bz, %i.awz
  %i.axc = fsub <2 x float> %i.axa, %i.axb
  %i.axd = fmul <2 x float> %i.axc, splat (float 2.000000e+00)
  %i.axe = fadd <2 x float> %.sroa.018.0.i672.i, %i.axd ; 3 uses
  %i.axf = insertelement <2 x float> %i.awm, float %.sroa.8.0.i, i64 0 ; 2 uses
  %i.axg = fmul <2 x float> %i.an, %i.axf
  %i.axh = fmul <2 x float> %i.cc, %i.awv
  %i.axi = fmul <2 x float> %i.ca, %i.awv
  %i.axj = insertelement <2 x float> %i.awm, float %.sroa.8.0.i, i64 1 ; 2 uses
  %i.axk = fmul <2 x float> %i.an, %i.axj
  %i.axl = fsub <2 x float> %i.axg, %i.axi
  %i.axm = fsub <2 x float> %i.axh, %i.axk
  %i.axn = fmul <2 x float> %i.cb, %i.axj
  %i.axo = fmul <2 x float> %i.cb, %i.axf
  %i.axp = fadd <2 x float> %i.axn, %i.axl        ; 2 uses
  %i.axq = fadd <2 x float> %i.axm, %i.axo        ; 2 uses
  %i.axr = fmul <2 x float> %i.ca, %i.axp
  %i.axs = fmul <2 x float> %i.cc, %i.axq
  %i.axt = fsub <2 x float> %i.axr, %i.axs
  %i.axu = fmul <2 x float> %i.axt, splat (float 2.000000e+00)
  %i.axv = fadd <2 x float> %i.awv, %i.axu        ; 3 uses
  %i.axw = shufflevector <2 x float> %i.axq, <2 x float> %i.awz, <2 x i32> <i32 1, i32 2>
  %i.axx = fmul <2 x float> %i.cd, %i.axw
  %i.axy = shufflevector <2 x float> %i.axp, <2 x float> %i.awy, <2 x i32> <i32 0, i32 3>
  %i.axz = fmul <2 x float> %i.ce, %i.axy
  %i.aya = fsub <2 x float> %i.axx, %i.axz
  %i.ayb = fmul <2 x float> %i.aya, splat (float 2.000000e+00)
  %i.ayc = insertelement <2 x float> poison, float %.sroa.8.0.i, i64 0
  %i.ayd = insertelement <2 x float> %i.ayc, float %.sroa.5.0.i673.i, i64 1
  %i.aye = fadd <2 x float> %i.ayd, %i.ayb        ; 3 uses
  %i.ayf = shufflevector <2 x float> %i.axe, <2 x float> %i.axv, <2 x i32> <i32 1, i32 2>
  %i.ayg = fmul <2 x float> %i.ayf, %i.aye        ; 2 uses
  %shift2685 = shufflevector <2 x float> %i.ayg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2686 = fsub <2 x float> %i.ayg, %shift2685
  %foldExtExtBinop2688 = fmul <2 x float> %i.aye, %i.axv
  %foldExtExtBinop2690 = fmul <2 x float> %i.axe, %i.aye
  %shift2692 = shufflevector <2 x float> %foldExtExtBinop2688, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2693 = fsub <2 x float> %shift2692, %foldExtExtBinop2690
  %i.ayh = fmul <2 x float> %i.axe, %i.axv        ; 2 uses
  %shift2695 = shufflevector <2 x float> %i.ayh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2696 = fsub <2 x float> %i.ayh, %shift2695
  %i.ayi = extractelement <2 x float> %foldExtExtBinop2696, i64 0
  %foldExtExtBinop2698 = fmul <2 x float> %.sroa.077.0.i, %foldExtExtBinop2686
  %shift2700 = shufflevector <2 x float> %.sroa.077.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2701 = fmul <2 x float> %shift2700, %foldExtExtBinop2693
  %foldExtExtBinop2703 = fadd <2 x float> %foldExtExtBinop2698, %foldExtExtBinop2701
  %i.ayj = extractelement <2 x float> %foldExtExtBinop2703, i64 0
  %i.ayk = fmul float %.sroa.9.0.i, %i.ayi
  %i.ayl = fadd float %i.ayk, %i.ayj
  %i.aym = fcmp olt float %i.ayl, 0.000000e+00
  br i1 %i.aym, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  store i32 1, ptr %i.bp, align 8, !tbaa !39, !alias.scope !89
  %i.ayn = fmul <2 x float> %.sroa.077.0.i, %.sroa.077.0.i ; 2 uses
  %shift2705 = shufflevector <2 x float> %i.ayn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2706 = fadd <2 x float> %i.ayn, %shift2705
  %i.ayo = extractelement <2 x float> %foldExtExtBinop2706, i64 0
  %i.ayp = fmul float %.sroa.9.0.i, %.sroa.9.0.i
  %i.ayq = fadd float %i.ayp, %i.ayo              ; 2 uses
  %i.ayr = fcmp ogt float %i.ayq, f0x057A0000
  br i1 %i.ayr, label %bb.au, label %b3Normalize.exit.i

bb.au:                                            ; preds = %bb.at
  %sqrt1255.i = call float @llvm.sqrt.f32(float %i.ayq)
  %i.ays = fdiv float 1.000000e+00, %sqrt1255.i   ; 2 uses
  %i.ayt = insertelement <2 x float> poison, float %i.ays, i64 0
  %i.ayu = shufflevector <2 x float> %i.ayt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ayv = fmul <2 x float> %.sroa.077.0.i, %i.ayu
  %i.ayw = fmul float %.sroa.9.0.i, %i.ays
  br label %b3Normalize.exit.i

b3Normalize.exit.i:                               ; preds = %bb.au, %bb.at
  %.sroa.018.0.i.i = phi <2 x float> [ %i.ayv, %bb.au ], [ zeroinitializer, %bb.at ] ; 2 uses
  %.sroa.5.0.i.i = phi float [ %i.ayw, %bb.au ], [ 0.000000e+00, %bb.at ]
  store <2 x float> %.sroa.018.0.i.i, ptr %i.bl, align 8, !alias.scope !89
  store float %.sroa.5.0.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !16, !alias.scope !89
  br label %b3MakeSeparationFunction.exit

bb.av:                                            ; preds = %bb.as
  store i32 2, ptr %i.bp, align 8, !tbaa !39, !alias.scope !89
  store <2 x float> %.sroa.018.0.i672.i, ptr %i.bl, align 8, !alias.scope !89
  store float %.sroa.5.0.i673.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !16, !alias.scope !89
  store <2 x float> %i.awm, ptr %i.bq, align 4, !alias.scope !89
  store float %.sroa.8.0.i, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !16, !alias.scope !89
  br label %b3MakeSeparationFunction.exit

b3MakeSeparationFunction.exit:                    ; preds = %b3GetSweepTransform.exit688, %bb.t, %bb.y, %b3Normalize.exit705.i, %bb.ae, %bb.af, %b3Normalize.exit696.i, %b3Normalize.exit687.i, %bb.ap, %b3Normalize.exit.i, %bb.av
  %.sroa.216.0.copyload.i2138.a = phi float [ 0.000000e+00, %b3GetSweepTransform.exit688 ], [ 0.000000e+00, %bb.t ], [ 0.000000e+00, %bb.y ], [ 0.000000e+00, %b3Normalize.exit705.i ], [ %.sroa.10.0.i, %bb.ae ], [ 0.000000e+00, %bb.af ], [ %i.aim, %b3Normalize.exit696.i ], [ %i.anm, %b3Normalize.exit687.i ], [ 0.000000e+00, %bb.ap ], [ 0.000000e+00, %b3Normalize.exit.i ], [ %.sroa.8.0.i, %bb.av ] ; 3 uses
  %.sroa.015.0.copyload.i2134.a = phi <2 x float> [ zeroinitializer, %b3GetSweepTransform.exit688 ], [ zeroinitializer, %bb.t ], [ zeroinitializer, %bb.y ], [ zeroinitializer, %b3Normalize.exit705.i ], [ %i.adq, %bb.ae ], [ zeroinitializer, %bb.af ], [ %i.ahj, %b3Normalize.exit696.i ], [ %i.amm, %b3Normalize.exit687.i ], [ zeroinitializer, %bb.ap ], [ zeroinitializer, %b3Normalize.exit.i ], [ %i.awm, %bb.av ] ; 3 uses
  %.promoted1163 = phi <2 x float> [ zeroinitializer, %b3GetSweepTransform.exit688 ], [ %i.jq, %bb.t ], [ %i.jq, %bb.y ], [ %.sroa.018.0.i699.i, %b3Normalize.exit705.i ], [ %.sroa.018.0.i717.i, %bb.ae ], [ %i.jq, %bb.af ], [ %.sroa.0402.0.i, %b3Normalize.exit696.i ], [ %.sroa.0266.0.i, %b3Normalize.exit687.i ], [ %i.jq, %bb.ap ], [ %.sroa.018.0.i.i, %b3Normalize.exit.i ], [ %.sroa.018.0.i672.i, %bb.av ]
  %.promoted1162 = phi i32 [ 0, %b3GetSweepTransform.exit688 ], [ 1, %bb.t ], [ 1, %bb.y ], [ 1, %b3Normalize.exit705.i ], [ 2, %bb.ae ], [ 1, %bb.af ], [ 3, %b3Normalize.exit696.i ], [ 4, %b3Normalize.exit687.i ], [ 1, %bb.ap ], [ 1, %b3Normalize.exit.i ], [ 2, %bb.av ]
  %i.ayx = load ptr, ptr %2, align 8              ; 11 uses
  %i.ayy = load i32, ptr %i.q, align 8            ; 2 uses
  %.sroa.4.0..sroa_idx.i717.i = getelementptr inbounds nuw i8, ptr %i.ayx, i64 8 ; 3 uses
  %i.ayz = icmp sgt i32 %i.ayy, 1                 ; 3 uses
  %wide.trip.count.i726.i = zext nneg i32 %i.ayy to i64 ; 3 uses
  %i.aza = load ptr, ptr %3, align 8              ; 13 uses
  %i.azb = load i32, ptr %i.s, align 8            ; 2 uses
  %.sroa.4.0..sroa_idx.i638.i = getelementptr inbounds nuw i8, ptr %i.aza, i64 8 ; 3 uses
  %i.azc = icmp sgt i32 %i.azb, 1                 ; 3 uses
  %wide.trip.count.i647.i = zext nneg i32 %i.azb to i64 ; 3 uses
  %i.azd = add i32 %i.u, %i.cu
  br label %bb.aw

bb.aw:                                            ; preds = %.thread1067, %b3MakeSeparationFunction.exit
  %.sroa.218.0.copyload.i607 = phi float [ %.sroa.216.0.copyload.i2138.a, %b3MakeSeparationFunction.exit ], [ %.sroa.2216.0.copyload.i2151, %.thread1067 ] ; 10 uses
  %.sroa.017.0.copyload.i605 = phi <2 x float> [ %.sroa.015.0.copyload.i2134.a, %b3MakeSeparationFunction.exit ], [ %.sroa.0215.0.copyload.i2149, %.thread1067 ] ; 12 uses
  %.sroa.297.0.copyload.i = phi float [ %.sroa.216.0.copyload.i2138.a, %b3MakeSeparationFunction.exit ], [ %.sroa.297.0.copyload.i2144, %.thread1067 ] ; 8 uses
  %.sroa.096.0.copyload.i = phi <2 x float> [ %.sroa.015.0.copyload.i2134.a, %b3MakeSeparationFunction.exit ], [ %.sroa.096.0.copyload.i2141, %.thread1067 ] ; 9 uses
  %.sroa.216.0.copyload.i = phi float [ %.sroa.216.0.copyload.i2138.a, %b3MakeSeparationFunction.exit ], [ %.sroa.216.0.copyload.i2137, %.thread1067 ] ; 6 uses
  %.sroa.015.0.copyload.i = phi <2 x float> [ %.sroa.015.0.copyload.i2134.a, %b3MakeSeparationFunction.exit ], [ %.sroa.015.0.copyload.i2133, %.thread1067 ] ; 8 uses
  %i.aze = phi i32 [ %i.cu, %b3MakeSeparationFunction.exit ], [ %i.ckt, %.thread1067 ] ; 5 uses
  %.lcssa11611167 = phi i32 [ %.lcssa116111701984, %b3MakeSeparationFunction.exit ], [ %i.ckr, %.thread1067 ] ; 6 uses
  %.sroa.048.0.copyload.i1165 = phi <2 x float> [ %.promoted1163, %b3MakeSeparationFunction.exit ], [ %.sroa.048.0.copyload.i1164, %.thread1067 ] ; 25 uses
  %i.azf = phi i32 [ %.promoted1162, %b3MakeSeparationFunction.exit ], [ %i.cks, %.thread1067 ] ; 4 uses
  %.0332 = phi i32 [ 0, %b3MakeSeparationFunction.exit ], [ %i.cku, %.thread1067 ]
  %.0326 = phi float [ %i.w, %b3MakeSeparationFunction.exit ], [ %.3329, %.thread1067 ] ; 7 uses
  %i.azg = select i1 %i.cm, <2 x float> %i.bb, <2 x float> %.sroa.25.0.copyload
  %i.azh = select i1 %i.cm, <2 x float> %i.ba, <2 x float> %.sroa.23.0.copyload
  %i.azi = fsub float 1.000000e+00, %.0326        ; 3 uses
  %i.azj = insertelement <2 x float> poison, float %.0326, i64 0
  %i.azk = shufflevector <2 x float> %i.azj, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.azl = fmul <2 x float> %.sroa.27.0.copyload, %i.azk
  %i.azm = insertelement <2 x float> poison, float %i.azi, i64 0
  %i.azn = shufflevector <2 x float> %i.azm, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.azo = fmul <2 x float> %i.azn, %i.azh
  %i.azp = fadd <2 x float> %i.azl, %i.azo        ; 2 uses
  %i.azq = fmul <2 x float> %.sroa.31.0.copyload, %i.azk
  %i.azr = fmul <2 x float> %i.azn, %i.azg
  %i.azs = fadd <2 x float> %i.azq, %i.azr        ; 2 uses
  %i.azt = shufflevector <2 x float> %i.azp, <2 x float> %i.azs, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.azu = fmul <4 x float> %i.azt, %i.azt        ; 4 uses
  %shift2708 = shufflevector <4 x float> %i.azu, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2709 = fadd <4 x float> %i.azu, %shift2708
  %shift2711 = shufflevector <4 x float> %i.azu, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2712 = fadd <4 x float> %foldExtExtBinop2709, %shift2711
  %shift2714 = shufflevector <4 x float> %i.azu, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2715 = fadd <4 x float> %shift2714, %foldExtExtBinop2712
  %i.azv = extractelement <4 x float> %foldExtExtBinop2715, i64 0 ; 2 uses
  %i.azw = fcmp ogt float %i.azv, f0x057A0000
  br i1 %i.azw, label %bb.ax, label %b3GetSweepTransform.exit817

bb.ax:                                            ; preds = %bb.aw
  %sqrt.i.i.i812 = call float @llvm.sqrt.f32(float %i.azv)
  %i.azx = fdiv float 1.000000e+00, %sqrt.i.i.i812
  %i.azy = insertelement <2 x float> poison, float %i.azx, i64 0
  %i.azz = shufflevector <2 x float> %i.azy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.baa = fmul <2 x float> %i.azp, %i.azz
  %i.bab = fmul <2 x float> %i.azs, %i.azz
  br label %b3GetSweepTransform.exit817

b3GetSweepTransform.exit817:                      ; preds = %bb.aw, %bb.ax
  %.sroa.010.0.i.i.i787 = phi <2 x float> [ %i.baa, %bb.ax ], [ zeroinitializer, %bb.aw ] ; 34 uses
  %.sroa.4.0.i.i.i788 = phi <2 x float> [ %i.bab, %bb.ax ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.aw ] ; 18 uses
  %i.bac = fmul float %i.azi, 0.000000e+00        ; 2 uses
  %i.bad = fmul float %i.cn, %.0326
  %i.bae = fadd float %i.bad, %i.bac
  %.sroa.3.8.vec.extract.i.i803 = extractelement <2 x float> %.sroa.4.0.i.i.i788, i64 0 ; 4 uses
  %.sroa.011.4.vec.extract.i.i.i804 = extractelement <2 x float> %.sroa.010.0.i.i.i787, i64 1 ; 6 uses
  %.sroa.011.0.vec.extract.i.i.i807 = extractelement <2 x float> %.sroa.010.0.i.i.i787, i64 0
  %.sroa.3.12.vec.extract.i.i808 = extractelement <2 x float> %.sroa.4.0.i.i.i788, i64 1 ; 2 uses
  %i.baf = fmul <2 x float> %i.cr, %i.azk
  %i.bag = insertelement <2 x float> poison, float %i.bac, i64 0
  %i.bah = shufflevector <2 x float> %i.bag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bai = fadd <2 x float> %i.baf, %i.bah
  %i.baj = fmul float %.sroa.6967.0.copyload, %.sroa.011.4.vec.extract.i.i.i804
  %i.bak = fmul float %.sroa.03.4.vec.extract.i.i.i, %.sroa.3.8.vec.extract.i.i803
  %i.bal = shufflevector <2 x float> %.sroa.4.0.i.i.i788, <2 x float> %.sroa.010.0.i.i.i787, <2 x i32> <i32 0, i32 2> ; 12 uses
  %i.bam = fmul <2 x float> %.sroa.0964.0.copyload, %i.bal ; 2 uses
  %i.ban = fmul <2 x float> %i.ck, %.sroa.010.0.i.i.i787 ; 2 uses
  %i.bao = shufflevector <2 x float> %i.bam, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bap = insertelement <2 x float> %i.bao, float %i.baj, i64 0
  %i.baq = shufflevector <2 x float> %i.ban, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bar = insertelement <2 x float> %i.baq, float %i.bak, i64 0
  %i.bas = fsub <2 x float> %i.bap, %i.bar
  %i.bat = fsub <2 x float> %i.bam, %i.ban
  %i.bau = shufflevector <2 x float> %.sroa.4.0.i.i.i788, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 18 uses
  %i.bav = fmul <2 x float> %.sroa.0964.0.copyload, %i.bau
  %i.baw = fmul <2 x float> %i.ct, %i.bau
  %i.bax = fadd <2 x float> %i.bav, %i.bas        ; 2 uses
  %i.bay = fadd <2 x float> %i.baw, %i.bat        ; 2 uses
  %foldExtExtBinop2717 = fmul <2 x float> %.sroa.4.0.i.i.i788, %i.bax
  %shift2719 = shufflevector <2 x float> %i.bay, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2720 = fmul <2 x float> %.sroa.010.0.i.i.i787, %shift2719
  %foldExtExtBinop2722 = fsub <2 x float> %foldExtExtBinop2717, %foldExtExtBinop2720
  %i.baz = extractelement <2 x float> %foldExtExtBinop2722, i64 0
  %i.bba = fmul <2 x float> %.sroa.010.0.i.i.i787, %i.bay
  %i.bbb = shufflevector <2 x float> %.sroa.010.0.i.i.i787, <2 x float> %.sroa.4.0.i.i.i788, <2 x i32> <i32 1, i32 2> ; 14 uses
  %i.bbc = fmul <2 x float> %i.bbb, %i.bax
  %i.bbd = fsub <2 x float> %i.bba, %i.bbc
  %i.bbe = fmul float %i.baz, 2.000000e+00
  %i.bbf = fadd float %.sroa.03.4.vec.extract.i.i.i, %i.bbe
  %i.bbg = fmul <2 x float> %i.bbd, splat (float 2.000000e+00)
  %i.bbh = fadd <2 x float> %i.ck, %i.bbg
  %i.bbi = fsub float %i.bae, %i.bbf              ; 4 uses
  %i.bbj = fsub <2 x float> %i.bai, %i.bbh        ; 4 uses
  %i.bbk = select i1 %i.cl, <2 x float> %i.bd, <2 x float> %.sroa.26.0.copyload
  %i.bbl = select i1 %i.cl, <2 x float> %i.bc, <2 x float> %.sroa.24.0.copyload
  %i.bbm = fmul <2 x float> %i.azn, %i.bbl
  %i.bbn = fmul <2 x float> %.sroa.28.0.copyload, %i.azk
  %i.bbo = fadd <2 x float> %i.bbn, %i.bbm        ; 2 uses
  %i.bbp = fmul <2 x float> %i.azn, %i.bbk
  %i.bbq = fmul <2 x float> %.sroa.32.0.copyload, %i.azk
  %i.bbr = fadd <2 x float> %i.bbq, %i.bbp        ; 2 uses
  %i.bbs = shufflevector <2 x float> %i.bbo, <2 x float> %i.bbr, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.bbt = fmul <4 x float> %i.bbs, %i.bbs        ; 4 uses
  %shift2724 = shufflevector <4 x float> %i.bbt, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2725 = fadd <4 x float> %i.bbt, %shift2724
  %shift2727 = shufflevector <4 x float> %i.bbt, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2728 = fadd <4 x float> %foldExtExtBinop2725, %shift2727
  %shift2730 = shufflevector <4 x float> %i.bbt, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2731 = fadd <4 x float> %shift2730, %foldExtExtBinop2728
  %i.bbu = extractelement <4 x float> %foldExtExtBinop2731, i64 0 ; 2 uses
  %i.bbv = fcmp ogt float %i.bbu, f0x057A0000
  br i1 %i.bbv, label %bb.ay, label %b3GetSweepTransform.exit774

bb.ay:                                            ; preds = %b3GetSweepTransform.exit817
  %sqrt.i.i.i769 = call float @llvm.sqrt.f32(float %i.bbu)
  %i.bbw = fdiv float 1.000000e+00, %sqrt.i.i.i769
  %i.bbx = insertelement <2 x float> poison, float %i.bbw, i64 0
  %i.bby = shufflevector <2 x float> %i.bbx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bbz = fmul <2 x float> %i.bbo, %i.bby
  %i.bca = fmul <2 x float> %i.bbr, %i.bby
  br label %b3GetSweepTransform.exit774

b3GetSweepTransform.exit774:                      ; preds = %b3GetSweepTransform.exit817, %bb.ay
  %.sroa.010.0.i.i.i744 = phi <2 x float> [ %i.bbz, %bb.ay ], [ zeroinitializer, %b3GetSweepTransform.exit817 ] ; 32 uses
  %.sroa.4.0.i.i.i745 = phi <2 x float> [ %i.bca, %bb.ay ], [ <float 0.000000e+00, float 1.000000e+00>, %b3GetSweepTransform.exit817 ] ; 18 uses
  %i.bcb = fmul <2 x float> %i.l, %i.azn
  %i.bcc = fmul <2 x float> %i.o, %i.azk
  %i.bcd = fmul float %i.f, %i.azi
  %i.bce = fmul float %i.g, %.0326
  %i.bcf = fadd float %i.bce, %i.bcd
  %.sroa.3.8.vec.extract.i.i760 = extractelement <2 x float> %.sroa.4.0.i.i.i745, i64 0 ; 4 uses
  %.sroa.011.4.vec.extract.i.i.i761 = extractelement <2 x float> %.sroa.010.0.i.i.i744, i64 1 ; 8 uses
  %i.bcg = fadd <2 x float> %i.bcc, %i.bcb
  %i.bch = fmul float %.sroa.6932.0.copyload, %.sroa.011.4.vec.extract.i.i.i761
  %i.bci = fmul float %.sroa.03.4.vec.extract.i.i.i409, %.sroa.3.8.vec.extract.i.i760
  %i.bcj = shufflevector <2 x float> %.sroa.4.0.i.i.i745, <2 x float> %.sroa.010.0.i.i.i744, <2 x i32> <i32 0, i32 2> ; 13 uses
  %i.bck = fmul <2 x float> %.sroa.0929.0.copyload, %i.bcj ; 2 uses
  %i.bcl = fmul <2 x float> %i.ch, %.sroa.010.0.i.i.i744 ; 2 uses
  %i.bcm = shufflevector <2 x float> %i.bck, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bcn = insertelement <2 x float> %i.bcm, float %i.bch, i64 0
  %i.bco = shufflevector <2 x float> %i.bcl, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bcp = insertelement <2 x float> %i.bco, float %i.bci, i64 0
  %i.bcq = fsub <2 x float> %i.bcn, %i.bcp
  %i.bcr = fsub <2 x float> %i.bck, %i.bcl
  %i.bcs = shufflevector <2 x float> %.sroa.4.0.i.i.i745, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 20 uses
  %i.bct = fmul <2 x float> %.sroa.0929.0.copyload, %i.bcs
  %i.bcu = fmul <2 x float> %i.cp, %i.bcs
  %i.bcv = fadd <2 x float> %i.bct, %i.bcq        ; 2 uses
  %i.bcw = fadd <2 x float> %i.bcu, %i.bcr        ; 2 uses
  %foldExtExtBinop2733 = fmul <2 x float> %.sroa.4.0.i.i.i745, %i.bcv
  %shift2735 = shufflevector <2 x float> %i.bcw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2736 = fmul <2 x float> %.sroa.010.0.i.i.i744, %shift2735
  %foldExtExtBinop2738 = fsub <2 x float> %foldExtExtBinop2733, %foldExtExtBinop2736
  %i.bcx = extractelement <2 x float> %foldExtExtBinop2738, i64 0
  %i.bcy = fmul <2 x float> %.sroa.010.0.i.i.i744, %i.bcw
  %i.bcz = shufflevector <2 x float> %.sroa.010.0.i.i.i744, <2 x float> %.sroa.4.0.i.i.i745, <2 x i32> <i32 1, i32 2> ; 12 uses
  %i.bda = fmul <2 x float> %i.bcz, %i.bcv
  %i.bdb = fsub <2 x float> %i.bcy, %i.bda
  %i.bdc = fmul float %i.bcx, 2.000000e+00
  %i.bdd = fadd float %.sroa.03.4.vec.extract.i.i.i409, %i.bdc
  %i.bde = fmul <2 x float> %i.bdb, splat (float 2.000000e+00)
  %i.bdf = fadd <2 x float> %i.ch, %i.bde
  %i.bdg = fsub float %i.bcf, %i.bdd              ; 4 uses
  %i.bdh = fsub <2 x float> %i.bcg, %i.bdf        ; 4 uses
  switch i32 %i.azf, label %b3FindMinSeparation.exit [
    i32 1, label %bb.az
    i32 2, label %bb.bc
    i32 3, label %bb.bg
    i32 4, label %bb.bi
  ]

bb.az:                                            ; preds = %b3GetSweepTransform.exit774
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !16 ; 3 uses
  %.sroa.03.4.vec.extract.i.i.i593 = extractelement <2 x float> %.sroa.048.0.copyload.i1165, i64 1 ; 4 uses
  %i.bdi = shufflevector <2 x float> %.sroa.048.0.copyload.i1165, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bdj = insertelement <2 x float> %i.bdi, float %.sroa.6.0.copyload.i, i64 0 ; 6 uses
  %i.bdk = fmul <2 x float> %i.bbb, %i.bdj
  %i.bdl = insertelement <2 x float> %i.bdi, float %.sroa.6.0.copyload.i, i64 1 ; 3 uses
  %i.bdm = fmul <2 x float> %i.bal, %i.bdl
  %i.bdn = fmul <2 x float> %i.bal, %.sroa.048.0.copyload.i1165
  %i.bdo = fmul <2 x float> %.sroa.010.0.i.i.i787, %i.bdj
  %i.bdp = fsub <2 x float> %i.bdk, %i.bdm
  %i.bdq = fsub <2 x float> %i.bdn, %i.bdo
  %i.bdr = fmul <2 x float> %i.bau, %.sroa.048.0.copyload.i1165
  %i.bds = fmul <2 x float> %i.bau, %i.bdl
  %i.bdt = fsub <2 x float> %i.bdp, %i.bdr        ; 2 uses
  %i.bdu = fsub <2 x float> %i.bdq, %i.bds        ; 2 uses
  %foldExtExtBinop2740 = fmul <2 x float> %.sroa.4.0.i.i.i788, %i.bdt
  %shift2742 = shufflevector <2 x float> %i.bdu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2743 = fmul <2 x float> %.sroa.010.0.i.i.i787, %shift2742
  %foldExtExtBinop2745 = fsub <2 x float> %foldExtExtBinop2740, %foldExtExtBinop2743
  %i.bdv = extractelement <2 x float> %foldExtExtBinop2745, i64 0
  %i.bdw = fmul <2 x float> %.sroa.010.0.i.i.i787, %i.bdu
  %i.bdx = fmul <2 x float> %i.bbb, %i.bdt
  %i.bdy = fsub <2 x float> %i.bdw, %i.bdx
  %i.bdz = fmul <2 x float> %i.bdy, splat (float 2.000000e+00)
  %i.bea = fmul float %i.bdv, 2.000000e+00
  %i.beb = fadd float %.sroa.03.4.vec.extract.i.i.i593, %i.bea
  %i.bec = fadd <2 x float> %i.bdj, %i.bdz
  %i.bed = fmul float %.sroa.3.8.vec.extract.i.i760, %.sroa.03.4.vec.extract.i.i.i593
  %i.bee = fmul float %.sroa.011.4.vec.extract.i.i.i761, %.sroa.6.0.copyload.i
  %i.bef = fmul <2 x float> %.sroa.010.0.i.i.i744, %i.bdj ; 2 uses
  %i.beg = fmul <2 x float> %i.bcj, %.sroa.048.0.copyload.i1165 ; 2 uses
  %i.beh = shufflevector <2 x float> %i.bef, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bei = insertelement <2 x float> %i.beh, float %i.bed, i64 0
  %i.bej = shufflevector <2 x float> %i.beg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bek = insertelement <2 x float> %i.bej, float %i.bee, i64 0
  %i.bel = fsub <2 x float> %i.bei, %i.bek
  %i.bem = fsub <2 x float> %i.bef, %i.beg
  %i.ben = fmul <2 x float> %i.bcs, %.sroa.048.0.copyload.i1165
  %i.beo = fmul <2 x float> %i.bcs, %i.bdl
  %i.bep = fadd <2 x float> %i.ben, %i.bel        ; 2 uses
  %i.beq = fadd <2 x float> %i.beo, %i.bem        ; 2 uses
  %foldExtExtBinop2747 = fmul <2 x float> %.sroa.4.0.i.i.i745, %i.bep
  %shift2749 = shufflevector <2 x float> %i.beq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2750 = fmul <2 x float> %.sroa.010.0.i.i.i744, %shift2749
  %foldExtExtBinop2752 = fsub <2 x float> %foldExtExtBinop2747, %foldExtExtBinop2750
  %i.ber = extractelement <2 x float> %foldExtExtBinop2752, i64 0
  %i.bes = fmul <2 x float> %.sroa.010.0.i.i.i744, %i.beq
  %i.bet = fmul <2 x float> %i.bcz, %i.bep
  %i.beu = fsub <2 x float> %i.bes, %i.bet
  %i.bev = fmul <2 x float> %i.beu, splat (float 2.000000e+00)
  %i.bew = fmul float %i.ber, 2.000000e+00
  %i.bex = fsub float %i.bew, %.sroa.03.4.vec.extract.i.i.i593
  %i.bey = fsub <2 x float> %i.bev, %i.bdj
  br i1 %i.ayz, label %.lr.ph.i.i, label %b3GetPointSupport.exit.i

.lr.ph.i.i:                                       ; preds = %bb.az
  %.sroa.4.0.copyload.i.i = load float, ptr %.sroa.4.0..sroa_idx.i717.i, align 4, !tbaa !16
  %.sroa.017.0.copyload.i.i = load <2 x float>, ptr %i.ayx, align 4 ; 2 uses
  %i.bez = shufflevector <2 x float> %.sroa.017.0.copyload.i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bfa = insertelement <2 x float> %i.bez, float %.sroa.4.0.copyload.i.i, i64 0
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.ba ] ; 3 uses
  %.031.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.ba ]
  %.02530.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i ], [ %.126.i.i, %bb.ba ] ; 2 uses
  %i.bfb = getelementptr inbounds nuw [12 x i8], ptr %i.ayx, i64 %indvars.iv.i.i ; 2 uses
  %.sroa.07.0.copyload.i.i = load <2 x float>, ptr %i.bfb, align 4 ; 2 uses
  %.sroa.28.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bfb, i64 8
  %.sroa.28.0.copyload.i.i = load float, ptr %.sroa.28.0..sroa_idx.i.i, align 4
  %foldExtExtBinop2754 = fsub <2 x float> %.sroa.07.0.copyload.i.i, %.sroa.017.0.copyload.i.i
  %i.bfc = extractelement <2 x float> %foldExtExtBinop2754, i64 1
  %i.bfd = fmul float %i.beb, %i.bfc
  %i.bfe = shufflevector <2 x float> %.sroa.07.0.copyload.i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bff = insertelement <2 x float> %i.bfe, float %.sroa.28.0.copyload.i.i, i64 0
  %i.bfg = fsub <2 x float> %i.bff, %i.bfa
  %i.bfh = fmul <2 x float> %i.bec, %i.bfg        ; 2 uses
  %i.bfi = extractelement <2 x float> %i.bfh, i64 1
  %i.bfj = fadd float %i.bfi, %i.bfd
  %i.bfk = extractelement <2 x float> %i.bfh, i64 0
  %i.bfl = fadd float %i.bfk, %i.bfj              ; 2 uses
  %i.bfm = fcmp ogt float %i.bfl, %.02530.i.i     ; 2 uses
  %.126.i.i = select i1 %i.bfm, float %i.bfl, float %.02530.i.i
  %i.bfn = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %.1.i.i = select i1 %i.bfm, i32 %i.bfn, i32 %.031.i.i ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i726.i
  br i1 %exitcond.not.i.i, label %b3GetPointSupport.exit.i, label %bb.ba, !llvm.loop !1

b3GetPointSupport.exit.i:                         ; preds = %bb.ba, %bb.az
  %.0.lcssa.i.i = phi i32 [ 0, %bb.az ], [ %.1.i.i, %bb.ba ] ; 2 uses
  %.sroa.4.0.copyload.i386.i = load float, ptr %.sroa.4.0..sroa_idx.i638.i, align 4, !tbaa !16 ; 2 uses
  br i1 %i.azc, label %.lr.ph.i388.i, label %b3GetPointSupport.exit407.i

.lr.ph.i388.i:                                    ; preds = %b3GetPointSupport.exit.i
  %.sroa.017.0.copyload.i389.i = load <2 x float>, ptr %i.aza, align 4 ; 2 uses
  %i.bfo = shufflevector <2 x float> %.sroa.017.0.copyload.i389.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bfp = insertelement <2 x float> %i.bfo, float %.sroa.4.0.copyload.i386.i, i64 0
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.lr.ph.i388.i
  %indvars.iv.i395.i = phi i64 [ 1, %.lr.ph.i388.i ], [ %indvars.iv.next.i405.i, %bb.bb ] ; 3 uses
  %.031.i396.i = phi i32 [ 0, %.lr.ph.i388.i ], [ %.1.i404.i, %bb.bb ]
  %.02530.i397.i = phi float [ 0.000000e+00, %.lr.ph.i388.i ], [ %.126.i403.i, %bb.bb ] ; 2 uses
  %i.bfq = getelementptr inbounds nuw [12 x i8], ptr %i.aza, i64 %indvars.iv.i395.i ; 2 uses
  %.sroa.07.0.copyload.i398.i = load <2 x float>, ptr %i.bfq, align 4 ; 2 uses
  %.sroa.28.0..sroa_idx.i399.i = getelementptr inbounds nuw i8, ptr %i.bfq, i64 8
  %.sroa.28.0.copyload.i400.i = load float, ptr %.sroa.28.0..sroa_idx.i399.i, align 4
  %foldExtExtBinop2756 = fsub <2 x float> %.sroa.07.0.copyload.i398.i, %.sroa.017.0.copyload.i389.i
  %i.bfr = extractelement <2 x float> %foldExtExtBinop2756, i64 1
  %i.bfs = fmul float %i.bex, %i.bfr
  %i.bft = shufflevector <2 x float> %.sroa.07.0.copyload.i398.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bfu = insertelement <2 x float> %i.bft, float %.sroa.28.0.copyload.i400.i, i64 0
  %i.bfv = fsub <2 x float> %i.bfu, %i.bfp
  %i.bfw = fmul <2 x float> %i.bey, %i.bfv        ; 2 uses
  %i.bfx = extractelement <2 x float> %i.bfw, i64 1
  %i.bfy = fadd float %i.bfx, %i.bfs
  %i.bfz = extractelement <2 x float> %i.bfw, i64 0
  %i.bga = fadd float %i.bfz, %i.bfy              ; 2 uses
  %i.bgb = fcmp ogt float %i.bga, %.02530.i397.i  ; 2 uses
  %.126.i403.i = select i1 %i.bgb, float %i.bga, float %.02530.i397.i
  %i.bgc = trunc nuw nsw i64 %indvars.iv.i395.i to i32
  %.1.i404.i = select i1 %i.bgb, i32 %i.bgc, i32 %.031.i396.i ; 3 uses
  %indvars.iv.next.i405.i = add nuw nsw i64 %indvars.iv.i395.i, 1 ; 2 uses
  %exitcond.not.i406.i = icmp eq i64 %indvars.iv.next.i405.i, %wide.trip.count.i647.i
  br i1 %exitcond.not.i406.i, label %b3GetPointSupport.exit407.loopexit.i, label %bb.bb, !llvm.loop !1

b3GetPointSupport.exit407.loopexit.i:             ; preds = %bb.bb
  %.phi.trans.insert804.i = sext i32 %.1.i404.i to i64
  %.phi.trans.insert805.i = getelementptr inbounds [12 x i8], ptr %i.aza, i64 %.phi.trans.insert804.i
  %.sroa.4268.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert805.i, i64 8
  %.sroa.4268.0.copyload.pre.i = load float, ptr %.sroa.4268.0..sroa_idx.phi.trans.insert.i, align 4, !tbaa !16
  br label %b3GetPointSupport.exit407.i

b3GetPointSupport.exit407.i:                      ; preds = %b3GetPointSupport.exit.i, %b3GetPointSupport.exit407.loopexit.i
  %.sroa.4268.0.copyload.i = phi float [ %.sroa.4268.0.copyload.pre.i, %b3GetPointSupport.exit407.loopexit.i ], [ %.sroa.4.0.copyload.i386.i, %b3GetPointSupport.exit.i ] ; 3 uses
  %.0.lcssa.i387.i = phi i32 [ %.1.i404.i, %b3GetPointSupport.exit407.loopexit.i ], [ 0, %b3GetPointSupport.exit.i ] ; 2 uses
  %i.bgd = fsub <2 x float> %i.bdh, %i.bbj
  %i.bge = fsub float %i.bdg, %i.bbi
  %i.bgf = sext i32 %.0.lcssa.i.i to i64
  %i.bgg = getelementptr inbounds [12 x i8], ptr %i.ayx, i64 %i.bgf ; 2 uses
  %.sroa.0269.0.copyload.i = load <2 x float>, ptr %i.bgg, align 4 ; 5 uses
  %.sroa.4270.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bgg, i64 8
  %.sroa.4270.0.copyload.i = load float, ptr %.sroa.4270.0..sroa_idx.i, align 4, !tbaa !16 ; 3 uses
  %i.bgh = sext i32 %.0.lcssa.i387.i to i64
  %i.bgi = getelementptr inbounds [12 x i8], ptr %i.aza, i64 %i.bgh
  %.sroa.0267.0.copyload.i = load <2 x float>, ptr %i.bgi, align 4 ; 5 uses
  %i.bgj = fmul float %.sroa.011.4.vec.extract.i.i.i761, %.sroa.4268.0.copyload.i
  %shift2758 = shufflevector <2 x float> %.sroa.0267.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2759 = fmul <2 x float> %.sroa.4.0.i.i.i745, %shift2758
  %i.bgk = fmul <2 x float> %i.bcj, %.sroa.0267.0.copyload.i ; 2 uses
  %i.bgl = shufflevector <2 x float> %.sroa.0267.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bgm = insertelement <2 x float> %i.bgl, float %.sroa.4268.0.copyload.i, i64 0 ; 2 uses
  %i.bgn = fmul <2 x float> %.sroa.010.0.i.i.i744, %i.bgm ; 2 uses
  %i.bgo = shufflevector <2 x float> %i.bgk, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bgp = insertelement <2 x float> %i.bgo, float %i.bgj, i64 0
  %i.bgq = shufflevector <2 x float> %i.bgn, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bgr = shufflevector <2 x float> %foldExtExtBinop2759, <2 x float> %i.bgq, <2 x i32> <i32 0, i32 3>
  %i.bgs = fsub <2 x float> %i.bgp, %i.bgr
  %i.bgt = fsub <2 x float> %i.bgk, %i.bgn
  %i.bgu = fmul <2 x float> %i.bcs, %.sroa.0267.0.copyload.i
  %i.bgv = insertelement <2 x float> %i.bgl, float %.sroa.4268.0.copyload.i, i64 1
  %i.bgw = fmul <2 x float> %i.bcs, %i.bgv
  %i.bgx = fadd <2 x float> %i.bgu, %i.bgs        ; 2 uses
  %i.bgy = fadd <2 x float> %i.bgw, %i.bgt        ; 2 uses
  %i.bgz = fmul <2 x float> %.sroa.010.0.i.i.i744, %i.bgy
  %i.bha = fmul <2 x float> %i.bcz, %i.bgx
  %i.bhb = fsub <2 x float> %i.bgz, %i.bha
  %i.bhc = fmul <2 x float> %i.bhb, splat (float 2.000000e+00)
  %i.bhd = fadd <2 x float> %i.bgm, %i.bhc
  %i.bhe = fmul float %.sroa.011.4.vec.extract.i.i.i804, %.sroa.4270.0.copyload.i
  %shift2761 = shufflevector <2 x float> %.sroa.0269.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2762 = fmul <2 x float> %.sroa.4.0.i.i.i788, %shift2761
  %i.bhf = fmul <2 x float> %i.bal, %.sroa.0269.0.copyload.i ; 2 uses
  %i.bhg = shufflevector <2 x float> %.sroa.0269.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bhh = insertelement <2 x float> %i.bhg, float %.sroa.4270.0.copyload.i, i64 0 ; 2 uses
  %i.bhi = fmul <2 x float> %.sroa.010.0.i.i.i787, %i.bhh ; 2 uses
  %i.bhj = shufflevector <2 x float> %i.bhf, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bhk = insertelement <2 x float> %i.bhj, float %i.bhe, i64 0
  %i.bhl = shufflevector <2 x float> %i.bhi, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bhm = shufflevector <2 x float> %foldExtExtBinop2762, <2 x float> %i.bhl, <2 x i32> <i32 0, i32 3>
  %i.bhn = fsub <2 x float> %i.bhk, %i.bhm
  %i.bho = fsub <2 x float> %i.bhf, %i.bhi
  %i.bhp = fmul <2 x float> %i.bau, %.sroa.0269.0.copyload.i
  %i.bhq = insertelement <2 x float> %i.bhg, float %.sroa.4270.0.copyload.i, i64 1
  %i.bhr = fmul <2 x float> %i.bau, %i.bhq
  %i.bhs = fadd <2 x float> %i.bhp, %i.bhn        ; 2 uses
  %i.bht = fadd <2 x float> %i.bhr, %i.bho        ; 2 uses
  %i.bhu = fmul <2 x float> %.sroa.010.0.i.i.i787, %i.bht
  %i.bhv = fmul <2 x float> %i.bbb, %i.bhs
  %i.bhw = fsub <2 x float> %i.bhu, %i.bhv
  %i.bhx = shufflevector <2 x float> %.sroa.4.0.i.i.i745, <2 x float> %.sroa.4.0.i.i.i788, <2 x i32> <i32 0, i32 2>
  %i.bhy = shufflevector <2 x float> %i.bgx, <2 x float> %i.bhs, <2 x i32> <i32 0, i32 2>
  %i.bhz = fmul <2 x float> %i.bhx, %i.bhy
  %i.bia = shufflevector <2 x float> %.sroa.010.0.i.i.i744, <2 x float> %.sroa.010.0.i.i.i787, <2 x i32> <i32 0, i32 2>
  %i.bib = shufflevector <2 x float> %i.bgy, <2 x float> %i.bht, <2 x i32> <i32 1, i32 3>
  %i.bic = fmul <2 x float> %i.bia, %i.bib
  %i.bid = fsub <2 x float> %i.bhz, %i.bic
  %i.bie = fmul <2 x float> %i.bid, splat (float 2.000000e+00)
  %i.bif = shufflevector <2 x float> %.sroa.0267.0.copyload.i, <2 x float> %.sroa.0269.0.copyload.i, <2 x i32> <i32 1, i32 3>
  %i.big = fadd <2 x float> %i.bif, %i.bie        ; 2 uses
  %i.bih = fmul <2 x float> %i.bhw, splat (float 2.000000e+00)
  %i.bii = fadd <2 x float> %i.bhh, %i.bih
  %shift2764 = shufflevector <2 x float> %i.big, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2765 = fsub <2 x float> %i.big, %shift2764
  %i.bij = extractelement <2 x float> %foldExtExtBinop2765, i64 0
  %i.bik = fsub <2 x float> %i.bhd, %i.bii
  %i.bil = fadd float %i.bge, %i.bij
  %i.bim = fadd <2 x float> %i.bgd, %i.bik
  %i.bin = fmul float %.sroa.03.4.vec.extract.i.i.i593, %i.bil
  %i.bio = fmul <2 x float> %i.bdj, %i.bim        ; 2 uses
  %i.bip = extractelement <2 x float> %i.bio, i64 1
  %i.biq = fadd float %i.bip, %i.bin
  %i.bir = extractelement <2 x float> %i.bio, i64 0
  %i.bis = fadd float %i.bir, %i.biq
  br label %b3FindMinSeparation.exit

bb.bc:                                            ; preds = %b3GetSweepTransform.exit774
  %.sroa.2224.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 8 ; 4 uses
  %.sroa.03.0.vec.extract.i.i451.i = extractelement <2 x float> %.sroa.048.0.copyload.i1165, i64 0
  %i.bit = shufflevector <2 x float> %.sroa.017.0.copyload.i605, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.biu = fmul float %.sroa.011.0.vec.extract.i.i.i807, %.sroa.2224.0.copyload.i
  %i.biv = shufflevector <2 x float> %.sroa.048.0.copyload.i1165, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.biw = insertelement <2 x float> %i.biv, float %.sroa.2224.0.copyload.i, i64 1
  %i.bix = fmul <2 x float> %.sroa.010.0.i.i.i787, %i.biw
  %i.biy = fmul <2 x float> %i.bbb, %.sroa.048.0.copyload.i1165
  %i.biz = fsub <2 x float> %i.bix, %i.biy
  %i.bja = fmul float %.sroa.3.12.vec.extract.i.i808, %.sroa.03.0.vec.extract.i.i451.i
  %i.bjb = fmul float %.sroa.3.12.vec.extract.i.i808, %.sroa.2224.0.copyload.i
  %i.bjc = fmul <2 x float> %.sroa.4.0.i.i.i788, %.sroa.048.0.copyload.i1165 ; 2 uses
  %i.bjd = extractelement <2 x float> %i.bjc, i64 0
  %i.bje = fsub float %i.bjd, %i.biu
  %i.bjf = insertelement <2 x float> poison, float %i.bjb, i64 0
  %i.bjg = insertelement <2 x float> %i.bjf, float %i.bja, i64 1
  %i.bjh = fadd <2 x float> %i.bjg, %i.biz        ; 3 uses
  %i.bji = extractelement <2 x float> %i.bjc, i64 1
  %i.bjj = fadd float %i.bji, %i.bje              ; 2 uses
  %i.bjk = fmul <2 x float> %i.bbb, %i.bjh
  %i.bjl = fmul float %.sroa.3.8.vec.extract.i.i803, %i.bjj
  %i.bjm = insertelement <2 x float> %i.bjh, float %i.bjj, i64 0
  %i.bjn = fmul <2 x float> %.sroa.010.0.i.i.i787, %i.bjm ; 2 uses
  %foldExtExtBinop2767 = fmul <2 x float> %.sroa.010.0.i.i.i787, %i.bjh
  %i.bjo = insertelement <2 x float> poison, float %i.bjl, i64 0
  %i.bjp = shufflevector <2 x float> %i.bjo, <2 x float> %foldExtExtBinop2767, <2 x i32> <i32 0, i32 2>
  %i.bjq = fsub <2 x float> %i.bjk, %i.bjp
  %shift2769 = shufflevector <2 x float> %i.bjn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2770 = fsub <2 x float> %i.bjn, %shift2769
  %i.bjr = extractelement <2 x float> %foldExtExtBinop2770, i64 0
  %i.bjs = fmul <2 x float> %i.bjq, splat (float 2.000000e+00)
  %i.bjt = fmul float %i.bjr, 2.000000e+00
  %i.bju = fadd <2 x float> %.sroa.048.0.copyload.i1165, %i.bjs ; 3 uses
  %i.bjv = fadd float %.sroa.2224.0.copyload.i, %i.bjt ; 2 uses
  %foldExtExtBinop2772 = fmul <2 x float> %.sroa.4.0.i.i.i745, %.sroa.017.0.copyload.i605
  %i.bjw = fmul float %.sroa.011.4.vec.extract.i.i.i761, %.sroa.218.0.copyload.i607
  %i.bjx = insertelement <2 x float> %i.bit, float %.sroa.218.0.copyload.i607, i64 1 ; 2 uses
  %i.bjy = fmul <2 x float> %i.bcj, %i.bjx
  %i.bjz = insertelement <2 x float> poison, float %i.bjw, i64 0
  %i.bka = shufflevector <2 x float> %i.bjz, <2 x float> %foldExtExtBinop2772, <2 x i32> <i32 0, i32 2>
  %i.bkb = fsub <2 x float> %i.bka, %i.bjy        ; 2 uses
  %i.bkc = fmul <2 x float> %.sroa.010.0.i.i.i744, %i.bit ; 2 uses
  %shift2774 = shufflevector <2 x float> %i.bkc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2775 = fsub <2 x float> %i.bkc, %shift2774
  %i.bkd = fmul <2 x float> %i.bcs, %.sroa.017.0.copyload.i605
  %i.bke = insertelement <2 x float> %i.bit, float %.sroa.218.0.copyload.i607, i64 0
  %i.bkf = fmul <2 x float> %i.bcs, %i.bke
  %i.bkg = fadd <2 x float> %i.bkd, %i.bkb        ; 2 uses
  %i.bkh = shufflevector <2 x float> %i.bkb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bki = shufflevector <2 x float> %foldExtExtBinop2775, <2 x float> %i.bkh, <2 x i32> <i32 0, i32 3>
  %i.bkj = fadd <2 x float> %i.bkf, %i.bki        ; 2 uses
  %i.bkk = fmul <2 x float> %i.bcz, %i.bkj
  %shift2777 = shufflevector <2 x float> %i.bkg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2778 = fmul <2 x float> %.sroa.4.0.i.i.i745, %shift2777
  %i.bkl = fmul <2 x float> %i.bcj, %i.bkg
  %i.bkm = fmul <2 x float> %.sroa.010.0.i.i.i744, %i.bkj ; 2 uses
  %i.bkn = shufflevector <2 x float> %i.bkm, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bko = shufflevector <2 x float> %foldExtExtBinop2778, <2 x float> %i.bkn, <2 x i32> <i32 0, i32 3>
  %i.bkp = fsub <2 x float> %i.bkk, %i.bko
  %i.bkq = fsub <2 x float> %i.bkl, %i.bkm
  %i.bkr = fmul <2 x float> %i.bkp, splat (float 2.000000e+00)
  %i.bks = fmul <2 x float> %i.bkq, splat (float 2.000000e+00)
  %i.bkt = fadd <2 x float> %.sroa.017.0.copyload.i605, %i.bkr ; 2 uses
  %i.bku = fadd <2 x float> %i.bjx, %i.bks        ; 2 uses
  %i.bkv = extractelement <2 x float> %i.bkt, i64 0
  %i.bkw = fmul float %i.bjv, %i.bkv
  %shift2780 = shufflevector <2 x float> %i.bku, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2781 = fmul <2 x float> %i.bju, %shift2780
  %i.bkx = extractelement <2 x float> %foldExtExtBinop2781, i64 0
  %i.bky = fsub float %i.bkw, %i.bkx              ; 3 uses
  %i.bkz = fmul <2 x float> %i.bju, %i.bku
  %i.bla = shufflevector <2 x float> %i.bju, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.blb = insertelement <2 x float> %i.bla, float %i.bjv, i64 1
  %i.blc = fmul <2 x float> %i.blb, %i.bkt
  %i.bld = fsub <2 x float> %i.bkz, %i.blc        ; 4 uses
  %i.ble = fmul float %i.bky, %i.bky
  %i.blf = fmul <2 x float> %i.bld, %i.bld        ; 2 uses
  %i.blg = extractelement <2 x float> %i.blf, i64 1
  %i.blh = fadd float %i.blg, %i.ble
  %i.bli = extractelement <2 x float> %i.blf, i64 0
  %i.blj = fadd float %i.bli, %i.blh              ; 2 uses
  %i.blk = fcmp ogt float %i.blj, f0x057A0000
  br i1 %i.blk, label %bb.bd, label %b3Normalize.exit.i584

bb.bd:                                            ; preds = %bb.bc
  %sqrt.i587 = call float @llvm.sqrt.f32(float %i.blj)
  %i.bll = fdiv float 1.000000e+00, %sqrt.i587    ; 3 uses
  %i.blm = extractelement <2 x float> %i.bld, i64 1
  %i.bln = fmul float %i.blm, %i.bll
  %.sroa.018.0.vec.insert.i.i588 = insertelement <2 x float> poison, float %i.bln, i64 0
  %i.blo = fmul float %i.bky, %i.bll
  %.sroa.018.4.vec.insert.i.i589 = insertelement <2 x float> %.sroa.018.0.vec.insert.i.i588, float %i.blo, i64 1
  %i.blp = extractelement <2 x float> %i.bld, i64 0
  %i.blq = fmul float %i.blp, %i.bll
  br label %b3Normalize.exit.i584

b3Normalize.exit.i584:                            ; preds = %bb.bd, %bb.bc
  %.sroa.018.0.i.i585 = phi <2 x float> [ %.sroa.018.4.vec.insert.i.i589, %bb.bd ], [ zeroinitializer, %bb.bc ] ; 7 uses
  %.sroa.5.0.i.i586 = phi float [ %i.blq, %bb.bd ], [ 0.000000e+00, %bb.bc ] ; 3 uses
  %.sroa.03.4.vec.extract.i.i476.i = extractelement <2 x float> %.sroa.018.0.i.i585, i64 1 ; 3 uses
  %i.blr = shufflevector <2 x float> %.sroa.018.0.i.i585, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bls = insertelement <2 x float> %i.blr, float %.sroa.5.0.i.i586, i64 0 ; 7 uses
  %i.blt = fmul <2 x float> %i.bbb, %i.bls
  %i.blu = insertelement <2 x float> %i.blr, float %.sroa.5.0.i.i586, i64 1 ; 2 uses
  %i.blv = fmul <2 x float> %i.bal, %i.blu
  %i.blw = fmul <2 x float> %i.bal, %.sroa.018.0.i.i585
  %i.blx = fmul <2 x float> %.sroa.010.0.i.i.i787, %i.bls
  %i.bly = fsub <2 x float> %i.blt, %i.blv
  %i.blz = fsub <2 x float> %i.blw, %i.blx
  %i.bma = fmul <2 x float> %i.bau, %.sroa.018.0.i.i585
  %i.bmb = fmul <2 x float> %i.bau, %i.blu
  %i.bmc = fsub <2 x float> %i.bly, %i.bma        ; 2 uses
  %i.bmd = fsub <2 x float> %i.blz, %i.bmb        ; 2 uses
  %foldExtExtBinop2783 = fmul <2 x float> %.sroa.4.0.i.i.i788, %i.bmc
  %shift2785 = shufflevector <2 x float> %i.bmd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2786 = fmul <2 x float> %.sroa.010.0.i.i.i787, %shift2785
  %foldExtExtBinop2788 = fsub <2 x float> %foldExtExtBinop2783, %foldExtExtBinop2786
  %i.bme = extractelement <2 x float> %foldExtExtBinop2788, i64 0
  %i.bmf = fmul <2 x float> %.sroa.010.0.i.i.i787, %i.bmd
  %i.bmg = fmul <2 x float> %i.bbb, %i.bmc
  %i.bmh = fsub <2 x float> %i.bmf, %i.bmg
  %i.bmi = fmul <2 x float> %i.bmh, splat (float 2.000000e+00)
  %i.bmj = fmul float %i.bme, 2.000000e+00
  %i.bmk = fadd float %.sroa.03.4.vec.extract.i.i476.i, %i.bmj
  %i.bml = fadd <2 x float> %i.bls, %i.bmi
  br i1 %i.ayz, label %.lr.ph.i487.i, label %b3GetPointSupport.exit506.i

.lr.ph.i487.i:                                    ; preds = %b3Normalize.exit.i584
  %.sroa.4.0.copyload.i485.i = load float, ptr %.sroa.4.0..sroa_idx.i717.i, align 4, !tbaa !16
  %.sroa.017.0.copyload.i488.i = load <2 x float>, ptr %i.ayx, align 4 ; 2 uses
  %i.bmm = shufflevector <2 x float> %.sroa.017.0.copyload.i488.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bmn = insertelement <2 x float> %i.bmm, float %.sroa.4.0.copyload.i485.i, i64 0
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %.lr.ph.i487.i
  %indvars.iv.i494.i = phi i64 [ 1, %.lr.ph.i487.i ], [ %indvars.iv.next.i504.i, %bb.be ] ; 3 uses
  %.031.i495.i = phi i32 [ 0, %.lr.ph.i487.i ], [ %.1.i503.i, %bb.be ]
  %.02530.i496.i = phi float [ 0.000000e+00, %.lr.ph.i487.i ], [ %.126.i502.i, %bb.be ] ; 2 uses
  %i.bmo = getelementptr inbounds nuw [12 x i8], ptr %i.ayx, i64 %indvars.iv.i494.i ; 2 uses
  %.sroa.07.0.copyload.i497.i = load <2 x float>, ptr %i.bmo, align 4 ; 2 uses
  %.sroa.28.0..sroa_idx.i498.i = getelementptr inbounds nuw i8, ptr %i.bmo, i64 8
  %.sroa.28.0.copyload.i499.i = load float, ptr %.sroa.28.0..sroa_idx.i498.i, align 4
  %foldExtExtBinop2790 = fsub <2 x float> %.sroa.07.0.copyload.i497.i, %.sroa.017.0.copyload.i488.i
  %i.bmp = extractelement <2 x float> %foldExtExtBinop2790, i64 1
  %i.bmq = fmul float %i.bmk, %i.bmp
  %i.bmr = shufflevector <2 x float> %.sroa.07.0.copyload.i497.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bms = insertelement <2 x float> %i.bmr, float %.sroa.28.0.copyload.i499.i, i64 0
  %i.bmt = fsub <2 x float> %i.bms, %i.bmn
  %i.bmu = fmul <2 x float> %i.bml, %i.bmt        ; 2 uses
  %i.bmv = extractelement <2 x float> %i.bmu, i64 1
  %i.bmw = fadd float %i.bmv, %i.bmq
  %i.bmx = extractelement <2 x float> %i.bmu, i64 0
  %i.bmy = fadd float %i.bmx, %i.bmw              ; 2 uses
  %i.bmz = fcmp ogt float %i.bmy, %.02530.i496.i  ; 2 uses
  %.126.i502.i = select i1 %i.bmz, float %i.bmy, float %.02530.i496.i
  %i.bna = trunc nuw nsw i64 %indvars.iv.i494.i to i32
  %.1.i503.i = select i1 %i.bmz, i32 %i.bna, i32 %.031.i495.i ; 2 uses
  %indvars.iv.next.i504.i = add nuw nsw i64 %indvars.iv.i494.i, 1 ; 2 uses
  %exitcond.not.i505.i = icmp eq i64 %indvars.iv.next.i504.i, %wide.trip.count.i726.i
  br i1 %exitcond.not.i505.i, label %b3GetPointSupport.exit506.i, label %bb.be, !llvm.loop !1

b3GetPointSupport.exit506.i:                      ; preds = %bb.be, %b3Normalize.exit.i584
  %.0.lcssa.i486.i = phi i32 [ 0, %b3Normalize.exit.i584 ], [ %.1.i503.i, %bb.be ] ; 2 uses
  %i.bnb = fmul <2 x float> %i.bcz, %i.bls
  %i.bnc = shufflevector <2 x float> %.sroa.018.0.i.i585, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bnd = insertelement <2 x float> %i.bnc, float %.sroa.5.0.i.i586, i64 1 ; 2 uses
  %i.bne = fmul <2 x float> %i.bcj, %i.bnd
  %i.bnf = fmul <2 x float> %i.bcj, %.sroa.018.0.i.i585
  %i.bng = fmul <2 x float> %.sroa.010.0.i.i.i744, %i.bls
  %i.bnh = fmul <2 x float> %i.bcs, %.sroa.018.0.i.i585
  %i.bni = fmul <2 x float> %i.bcs, %i.bnd
  %i.bnj = fsub <2 x float> %i.bnb, %i.bne
  %i.bnk = fsub <2 x float> %i.bnf, %i.bng
  %i.bnl = fsub <2 x float> %i.bnj, %i.bnh        ; 2 uses
  %i.bnm = fsub <2 x float> %i.bnk, %i.bni        ; 2 uses
  %foldExtExtBinop2792 = fmul <2 x float> %.sroa.4.0.i.i.i745, %i.bnl
  %shift2794 = shufflevector <2 x float> %i.bnm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2795 = fmul <2 x float> %.sroa.010.0.i.i.i744, %shift2794
  %foldExtExtBinop2797 = fsub <2 x float> %foldExtExtBinop2792, %foldExtExtBinop2795
  %i.bnn = extractelement <2 x float> %foldExtExtBinop2797, i64 0
  %i.bno = fmul <2 x float> %.sroa.010.0.i.i.i744, %i.bnm
  %i.bnp = fmul <2 x float> %i.bcz, %i.bnl
  %i.bnq = fsub <2 x float> %i.bno, %i.bnp
  %i.bnr = fmul <2 x float> %i.bnq, splat (float 2.000000e+00)
  %i.bns = fmul float %i.bnn, 2.000000e+00
  %i.bnt = fadd float %.sroa.03.4.vec.extract.i.i476.i, %i.bns
  %i.bnu = fadd <2 x float> %i.bls, %i.bnr
  %i.bnv = fneg float %i.bnt
  %.sroa.4.0.copyload.i524.i = load float, ptr %.sroa.4.0..sroa_idx.i638.i, align 4, !tbaa !16 ; 2 uses
  br i1 %i.azc, label %.lr.ph.i526.i, label %b3GetPointSupport.exit545.i

.lr.ph.i526.i:                                    ; preds = %b3GetPointSupport.exit506.i
  %.sroa.017.0.copyload.i527.i = load <2 x float>, ptr %i.aza, align 4 ; 2 uses
  %i.bnw = shufflevector <2 x float> %.sroa.017.0.copyload.i527.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bnx = insertelement <2 x float> %i.bnw, float %.sroa.4.0.copyload.i524.i, i64 0
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.lr.ph.i526.i
  %indvars.iv.i533.i = phi i64 [ 1, %.lr.ph.i526.i ], [ %indvars.iv.next.i543.i, %bb.bf ] ; 3 uses
  %.031.i534.i = phi i32 [ 0, %.lr.ph.i526.i ], [ %.1.i542.i, %bb.bf ]
  %.02530.i535.i = phi float [ 0.000000e+00, %.lr.ph.i526.i ], [ %.126.i541.i, %bb.bf ] ; 2 uses
  %i.bny = getelementptr inbounds nuw [12 x i8], ptr %i.aza, i64 %indvars.iv.i533.i ; 2 uses
  %.sroa.07.0.copyload.i536.i = load <2 x float>, ptr %i.bny, align 4 ; 2 uses
  %.sroa.28.0..sroa_idx.i537.i = getelementptr inbounds nuw i8, ptr %i.bny, i64 8
  %.sroa.28.0.copyload.i538.i = load float, ptr %.sroa.28.0..sroa_idx.i537.i, align 4
  %foldExtExtBinop2799 = fsub <2 x float> %.sroa.07.0.copyload.i536.i, %.sroa.017.0.copyload.i527.i
  %i.bnz = extractelement <2 x float> %foldExtExtBinop2799, i64 1
  %i.boa = fmul float %i.bnz, %i.bnv
  %i.bob = shufflevector <2 x float> %.sroa.07.0.copyload.i536.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.boc = insertelement <2 x float> %i.bob, float %.sroa.28.0.copyload.i538.i, i64 0
  %i.bod = fsub <2 x float> %i.boc, %i.bnx
  %i.boe = fmul <2 x float> %i.bnu, %i.bod        ; 2 uses
  %i.bof = extractelement <2 x float> %i.boe, i64 1
  %i.bog = fsub float %i.boa, %i.bof
  %i.boh = extractelement <2 x float> %i.boe, i64 0
  %i.boi = fsub float %i.bog, %i.boh              ; 2 uses
  %i.boj = fcmp ogt float %i.boi, %.02530.i535.i  ; 2 uses
  %.126.i541.i = select i1 %i.boj, float %i.boi, float %.02530.i535.i
  %i.bok = trunc nuw nsw i64 %indvars.iv.i533.i to i32
  %.1.i542.i = select i1 %i.boj, i32 %i.bok, i32 %.031.i534.i ; 3 uses
  %indvars.iv.next.i543.i = add nuw nsw i64 %indvars.iv.i533.i, 1 ; 2 uses
  %exitcond.not.i544.i = icmp eq i64 %indvars.iv.next.i543.i, %wide.trip.count.i647.i
  br i1 %exitcond.not.i544.i, label %b3GetPointSupport.exit545.loopexit.i, label %bb.bf, !llvm.loop !1

b3GetPointSupport.exit545.loopexit.i:             ; preds = %bb.bf
  %.phi.trans.insert.i = sext i32 %.1.i542.i to i64
  %.phi.trans.insert802.i = getelementptr inbounds [12 x i8], ptr %i.aza, i64 %.phi.trans.insert.i
  %.sroa.4150.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert802.i, i64 8
  %.sroa.4150.0.copyload.pre.i = load float, ptr %.sroa.4150.0..sroa_idx.phi.trans.insert.i, align 4, !tbaa !16
  br label %b3GetPointSupport.exit545.i

b3GetPointSupport.exit545.i:                      ; preds = %b3GetPointSupport.exit506.i, %b3GetPointSupport.exit545.loopexit.i
  %.sroa.4150.0.copyload.i = phi float [ %.sroa.4150.0.copyload.pre.i, %b3GetPointSupport.exit545.loopexit.i ], [ %.sroa.4.0.copyload.i524.i, %b3GetPointSupport.exit506.i ] ; 3 uses
  %.0.lcssa.i525.i = phi i32 [ %.1.i542.i, %b3GetPointSupport.exit545.loopexit.i ], [ 0, %b3GetPointSupport.exit506.i ] ; 2 uses
  %i.bol = fsub float %i.bdg, %i.bbi
  %i.bom = sext i32 %.0.lcssa.i486.i to i64
  %i.bon = getelementptr inbounds [12 x i8], ptr %i.ayx, i64 %i.bom ; 2 uses
  %.sroa.0151.0.copyload.i = load <2 x float>, ptr %i.bon, align 4 ; 5 uses
  %.sroa.4152.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bon, i64 8
  %.sroa.4152.0.copyload.i = load float, ptr %.sroa.4152.0..sroa_idx.i, align 4, !tbaa !16 ; 3 uses
  %i.boo = sext i32 %.0.lcssa.i525.i to i64
  %i.bop = getelementptr inbounds [12 x i8], ptr %i.aza, i64 %i.boo
  %.sroa.0149.0.copyload.i = load <2 x float>, ptr %i.bop, align 4 ; 5 uses
  %i.boq = fsub <2 x float> %i.bdh, %i.bbj
  %i.bor = fmul float %.sroa.011.4.vec.extract.i.i.i761, %.sroa.4150.0.copyload.i
  %shift2801 = shufflevector <2 x float> %.sroa.0149.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2802 = fmul <2 x float> %.sroa.4.0.i.i.i745, %shift2801
  %i.bos = fmul <2 x float> %i.bcj, %.sroa.0149.0.copyload.i ; 2 uses
  %i.bot = shufflevector <2 x float> %.sroa.0149.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bou = insertelement <2 x float> %i.bot, float %.sroa.4150.0.copyload.i, i64 0 ; 2 uses
  %i.bov = fmul <2 x float> %.sroa.010.0.i.i.i744, %i.bou ; 2 uses
  %i.bow = shufflevector <2 x float> %i.bos, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.box = insertelement <2 x float> %i.bow, float %i.bor, i64 0
  %i.boy = shufflevector <2 x float> %i.bov, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.boz = shufflevector <2 x float> %foldExtExtBinop2802, <2 x float> %i.boy, <2 x i32> <i32 0, i32 3>
  %i.bpa = fsub <2 x float> %i.box, %i.boz
  %i.bpb = fsub <2 x float> %i.bos, %i.bov
  %i.bpc = fmul <2 x float> %i.bcs, %.sroa.0149.0.copyload.i
  %i.bpd = insertelement <2 x float> %i.bot, float %.sroa.4150.0.copyload.i, i64 1
  %i.bpe = fmul <2 x float> %i.bcs, %i.bpd
  %i.bpf = fadd <2 x float> %i.bpc, %i.bpa        ; 2 uses
  %i.bpg = fadd <2 x float> %i.bpe, %i.bpb        ; 2 uses
  %i.bph = fmul <2 x float> %.sroa.010.0.i.i.i744, %i.bpg
  %i.bpi = fmul <2 x float> %i.bcz, %i.bpf
  %i.bpj = fsub <2 x float> %i.bph, %i.bpi
  %i.bpk = fmul <2 x float> %i.bpj, splat (float 2.000000e+00)
  %i.bpl = fadd <2 x float> %i.bou, %i.bpk
  %i.bpm = fmul float %.sroa.011.4.vec.extract.i.i.i804, %.sroa.4152.0.copyload.i
  %shift2804 = shufflevector <2 x float> %.sroa.0151.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2805 = fmul <2 x float> %.sroa.4.0.i.i.i788, %shift2804
  %i.bpn = fmul <2 x float> %i.bal, %.sroa.0151.0.copyload.i ; 2 uses
  %i.bpo = shufflevector <2 x float> %.sroa.0151.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bpp = insertelement <2 x float> %i.bpo, float %.sroa.4152.0.copyload.i, i64 0 ; 2 uses
  %i.bpq = fmul <2 x float> %.sroa.010.0.i.i.i787, %i.bpp ; 2 uses
  %i.bpr = shufflevector <2 x float> %i.bpn, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bps = insertelement <2 x float> %i.bpr, float %i.bpm, i64 0
  %i.bpt = shufflevector <2 x float> %i.bpq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bpu = shufflevector <2 x float> %foldExtExtBinop2805, <2 x float> %i.bpt, <2 x i32> <i32 0, i32 3>
  %i.bpv = fsub <2 x float> %i.bps, %i.bpu
  %i.bpw = fsub <2 x float> %i.bpn, %i.bpq
  %i.bpx = fmul <2 x float> %i.bau, %.sroa.0151.0.copyload.i
  %i.bpy = insertelement <2 x float> %i.bpo, float %.sroa.4152.0.copyload.i, i64 1
  %i.bpz = fmul <2 x float> %i.bau, %i.bpy
  %i.bqa = fadd <2 x float> %i.bpx, %i.bpv        ; 2 uses
  %i.bqb = fadd <2 x float> %i.bpz, %i.bpw        ; 2 uses
  %i.bqc = fmul <2 x float> %.sroa.010.0.i.i.i787, %i.bqb
  %i.bqd = fmul <2 x float> %i.bbb, %i.bqa
  %i.bqe = fsub <2 x float> %i.bqc, %i.bqd
  %i.bqf = shufflevector <2 x float> %.sroa.4.0.i.i.i745, <2 x float> %.sroa.4.0.i.i.i788, <2 x i32> <i32 0, i32 2>
  %i.bqg = shufflevector <2 x float> %i.bpf, <2 x float> %i.bqa, <2 x i32> <i32 0, i32 2>
  %i.bqh = fmul <2 x float> %i.bqf, %i.bqg
  %i.bqi = shufflevector <2 x float> %.sroa.010.0.i.i.i744, <2 x float> %.sroa.010.0.i.i.i787, <2 x i32> <i32 0, i32 2>
  %i.bqj = shufflevector <2 x float> %i.bpg, <2 x float> %i.bqb, <2 x i32> <i32 1, i32 3>
  %i.bqk = fmul <2 x float> %i.bqi, %i.bqj
  %i.bql = fsub <2 x float> %i.bqh, %i.bqk
  %i.bqm = fmul <2 x float> %i.bql, splat (float 2.000000e+00)
  %i.bqn = shufflevector <2 x float> %.sroa.0149.0.copyload.i, <2 x float> %.sroa.0151.0.copyload.i, <2 x i32> <i32 1, i32 3>
  %i.bqo = fadd <2 x float> %i.bqn, %i.bqm        ; 2 uses
  %i.bqp = fmul <2 x float> %i.bqe, splat (float 2.000000e+00)
  %i.bqq = fadd <2 x float> %i.bpp, %i.bqp
  %shift2807 = shufflevector <2 x float> %i.bqo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2808 = fsub <2 x float> %i.bqo, %shift2807
  %i.bqr = extractelement <2 x float> %foldExtExtBinop2808, i64 0
  %i.bqs = fsub <2 x float> %i.bpl, %i.bqq
  %i.bqt = fadd float %i.bol, %i.bqr
  %i.bqu = fadd <2 x float> %i.boq, %i.bqs
  %i.bqv = fmul float %.sroa.03.4.vec.extract.i.i476.i, %i.bqt
  %i.bqw = fmul <2 x float> %i.bls, %i.bqu        ; 2 uses
  %i.bqx = extractelement <2 x float> %i.bqw, i64 1
  %i.bqy = fadd float %i.bqx, %i.bqv
  %i.bqz = extractelement <2 x float> %i.bqw, i64 0
  %i.bra = fadd float %i.bqz, %i.bqy
  br label %b3FindMinSeparation.exit

bb.bg:                                            ; preds = %b3GetSweepTransform.exit774
  %.sroa.2105.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 8 ; 3 uses
  %i.brb = fmul float %.sroa.011.4.vec.extract.i.i.i804, %.sroa.2105.0.copyload.i
  %.sroa.03.4.vec.extract.i.i596.i = extractelement <2 x float> %.sroa.048.0.copyload.i1165, i64 1 ; 2 uses
  %i.brc = fmul float %.sroa.3.8.vec.extract.i.i803, %.sroa.03.4.vec.extract.i.i596.i
  %.sroa.03.4.vec.extract.i.i606.i = extractelement <2 x float> %.sroa.096.0.copyload.i, i64 1 ; 2 uses
  %i.brd = fmul <2 x float> %i.bal, %.sroa.048.0.copyload.i1165 ; 2 uses
  %i.bre = shufflevector <2 x float> %.sroa.048.0.copyload.i1165, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.brf = insertelement <2 x float> %i.bre, float %.sroa.2105.0.copyload.i, i64 0 ; 2 uses
  %i.brg = fmul <2 x float> %.sroa.010.0.i.i.i787, %i.brf ; 2 uses
  %i.brh = shufflevector <2 x float> %i.brd, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bri = insertelement <2 x float> %i.brh, float %i.brb, i64 0
  %i.brj = shufflevector <2 x float> %i.brg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.brk = insertelement <2 x float> %i.brj, float %i.brc, i64 0
  %i.brl = fsub <2 x float> %i.bri, %i.brk
  %i.brm = fsub <2 x float> %i.brd, %i.brg
  %i.brn = fmul <2 x float> %i.bau, %.sroa.048.0.copyload.i1165
  %i.bro = insertelement <2 x float> %i.bre, float %.sroa.2105.0.copyload.i, i64 1
  %i.brp = fmul <2 x float> %i.bau, %i.bro
  %i.brq = fadd <2 x float> %i.brn, %i.brl        ; 2 uses
  %i.brr = fadd <2 x float> %i.brp, %i.brm        ; 2 uses
  %foldExtExtBinop2810 = fmul <2 x float> %.sroa.4.0.i.i.i788, %i.brq
  %shift2812 = shufflevector <2 x float> %i.brr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2813 = fmul <2 x float> %.sroa.010.0.i.i.i787, %shift2812
  %foldExtExtBinop2815 = fsub <2 x float> %foldExtExtBinop2810, %foldExtExtBinop2813
  %i.brs = extractelement <2 x float> %foldExtExtBinop2815, i64 0
  %i.brt = fmul <2 x float> %.sroa.010.0.i.i.i787, %i.brr
  %i.bru = fmul <2 x float> %i.bbb, %i.brq
  %i.brv = fsub <2 x float> %i.brt, %i.bru
  %i.brw = fmul float %i.brs, 2.000000e+00
  %i.brx = fadd float %.sroa.03.4.vec.extract.i.i596.i, %i.brw ; 4 uses
  %i.bry = fmul <2 x float> %i.brv, splat (float 2.000000e+00)
  %i.brz = fadd <2 x float> %i.brf, %i.bry        ; 5 uses
  %i.bsa = fmul float %.sroa.011.4.vec.extract.i.i.i804, %.sroa.297.0.copyload.i
  %i.bsb = fmul float %.sroa.3.8.vec.extract.i.i803, %.sroa.03.4.vec.extract.i.i606.i
  %i.bsc = fmul <2 x float> %i.bal, %.sroa.096.0.copyload.i ; 2 uses
  %i.bsd = shufflevector <2 x float> %.sroa.096.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bse = insertelement <2 x float> %i.bsd, float %.sroa.297.0.copyload.i, i64 0 ; 2 uses
  %i.bsf = fmul <2 x float> %.sroa.010.0.i.i.i787, %i.bse ; 2 uses
  %i.bsg = shufflevector <2 x float> %i.bsc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bsh = insertelement <2 x float> %i.bsg, float %i.bsa, i64 0
  %i.bsi = shufflevector <2 x float> %i.bsf, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bsj = insertelement <2 x float> %i.bsi, float %i.bsb, i64 0
  %i.bsk = fsub <2 x float> %i.bsh, %i.bsj
  %i.bsl = fsub <2 x float> %i.bsc, %i.bsf
  %i.bsm = fmul <2 x float> %i.bau, %.sroa.096.0.copyload.i
  %i.bsn = insertelement <2 x float> %i.bsd, float %.sroa.297.0.copyload.i, i64 1
  %i.bso = fmul <2 x float> %i.bau, %i.bsn
  %i.bsp = fadd <2 x float> %i.bsm, %i.bsk        ; 2 uses
  %i.bsq = fadd <2 x float> %i.bso, %i.bsl        ; 2 uses
  %foldExtExtBinop2817 = fmul <2 x float> %.sroa.4.0.i.i.i788, %i.bsp
  %shift2819 = shufflevector <2 x float> %i.bsq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2820 = fmul <2 x float> %.sroa.010.0.i.i.i787, %shift2819
  %foldExtExtBinop2822 = fsub <2 x float> %foldExtExtBinop2817, %foldExtExtBinop2820
  %i.bsr = extractelement <2 x float> %foldExtExtBinop2822, i64 0
  %i.bss = fmul <2 x float> %.sroa.010.0.i.i.i787, %i.bsq
  %i.bst = fmul <2 x float> %i.bbb, %i.bsp
  %i.bsu = fsub <2 x float> %i.bss, %i.bst
  %i.bsv = fmul float %i.bsr, 2.000000e+00
  %i.bsw = fadd float %.sroa.03.4.vec.extract.i.i606.i, %i.bsv
  %i.bsx = fmul <2 x float> %i.bsu, splat (float 2.000000e+00)
  %i.bsy = fadd <2 x float> %i.bse, %i.bsx
  %i.bsz = fadd float %i.bbi, %i.bsw
  %i.bta = fadd <2 x float> %i.bbj, %i.bsy
  %i.btb = fmul <2 x float> %i.bcz, %i.brz
  %i.btc = shufflevector <2 x float> %i.brz, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.btd = insertelement <2 x float> %i.btc, float %i.brx, i64 0 ; 2 uses
  %i.bte = fmul <2 x float> %i.bcj, %i.btd
  %i.btf = insertelement <2 x float> %i.btc, float %i.brx, i64 1 ; 2 uses
  %i.btg = fmul <2 x float> %i.bcj, %i.btf
  %i.bth = fmul <2 x float> %.sroa.010.0.i.i.i744, %i.brz
  %i.bti = fsub <2 x float> %i.btb, %i.bte
  %i.btj = fsub <2 x float> %i.btg, %i.bth
  %i.btk = fmul <2 x float> %i.bcs, %i.btf
  %i.btl = fmul <2 x float> %i.bcs, %i.btd
  %i.btm = fsub <2 x float> %i.bti, %i.btk        ; 2 uses
  %i.btn = fsub <2 x float> %i.btj, %i.btl        ; 2 uses
  %foldExtExtBinop2824 = fmul <2 x float> %.sroa.4.0.i.i.i745, %i.btm
  %shift2826 = shufflevector <2 x float> %i.btn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2827 = fmul <2 x float> %.sroa.010.0.i.i.i744, %shift2826
  %foldExtExtBinop2829 = fsub <2 x float> %foldExtExtBinop2824, %foldExtExtBinop2827
  %i.bto = extractelement <2 x float> %foldExtExtBinop2829, i64 0
  %i.btp = fmul <2 x float> %.sroa.010.0.i.i.i744, %i.btn
  %i.btq = fmul <2 x float> %i.bcz, %i.btm
  %i.btr = fsub <2 x float> %i.btp, %i.btq
  %i.bts = fmul <2 x float> %i.btr, splat (float 2.000000e+00)
  %i.btt = fmul float %i.bto, 2.000000e+00
  %i.btu = fadd float %i.brx, %i.btt
  %i.btv = fadd <2 x float> %i.brz, %i.bts
  %i.btw = fneg float %i.btu
  %.sroa.4.0.copyload.i639.i = load float, ptr %.sroa.4.0..sroa_idx.i638.i, align 4, !tbaa !16 ; 2 uses
  br i1 %i.azc, label %.lr.ph.i641.i, label %b3GetPointSupport.exit660.i

.lr.ph.i641.i:                                    ; preds = %bb.bg
  %.sroa.017.0.copyload.i642.i = load <2 x float>, ptr %i.aza, align 4 ; 2 uses
  %i.btx = shufflevector <2 x float> %.sroa.017.0.copyload.i642.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bty = insertelement <2 x float> %i.btx, float %.sroa.4.0.copyload.i639.i, i64 0
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.lr.ph.i641.i
  %indvars.iv.i648.i = phi i64 [ 1, %.lr.ph.i641.i ], [ %indvars.iv.next.i658.i, %bb.bh ] ; 3 uses
  %.031.i649.i = phi i32 [ 0, %.lr.ph.i641.i ], [ %.1.i657.i, %bb.bh ]
  %.02530.i650.i = phi float [ 0.000000e+00, %.lr.ph.i641.i ], [ %.126.i656.i, %bb.bh ] ; 2 uses
  %i.btz = getelementptr inbounds nuw [12 x i8], ptr %i.aza, i64 %indvars.iv.i648.i ; 2 uses
  %.sroa.07.0.copyload.i651.i = load <2 x float>, ptr %i.btz, align 4 ; 2 uses
  %.sroa.28.0..sroa_idx.i652.i = getelementptr inbounds nuw i8, ptr %i.btz, i64 8
  %.sroa.28.0.copyload.i653.i = load float, ptr %.sroa.28.0..sroa_idx.i652.i, align 4
  %foldExtExtBinop2831 = fsub <2 x float> %.sroa.07.0.copyload.i651.i, %.sroa.017.0.copyload.i642.i
  %i.bua = extractelement <2 x float> %foldExtExtBinop2831, i64 1
  %i.bub = fmul float %i.bua, %i.btw
  %i.buc = shufflevector <2 x float> %.sroa.07.0.copyload.i651.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bud = insertelement <2 x float> %i.buc, float %.sroa.28.0.copyload.i653.i, i64 0
  %i.bue = fsub <2 x float> %i.bud, %i.bty
  %i.buf = fmul <2 x float> %i.btv, %i.bue        ; 2 uses
  %i.bug = extractelement <2 x float> %i.buf, i64 1
  %i.buh = fsub float %i.bub, %i.bug
  %i.bui = extractelement <2 x float> %i.buf, i64 0
  %i.buj = fsub float %i.buh, %i.bui              ; 2 uses
  %i.buk = fcmp ogt float %i.buj, %.02530.i650.i  ; 2 uses
  %.126.i656.i = select i1 %i.buk, float %i.buj, float %.02530.i650.i
  %i.bul = trunc nuw nsw i64 %indvars.iv.i648.i to i32
  %.1.i657.i = select i1 %i.buk, i32 %i.bul, i32 %.031.i649.i ; 3 uses
  %indvars.iv.next.i658.i = add nuw nsw i64 %indvars.iv.i648.i, 1 ; 2 uses
  %exitcond.not.i659.i = icmp eq i64 %indvars.iv.next.i658.i, %wide.trip.count.i647.i
  br i1 %exitcond.not.i659.i, label %b3GetPointSupport.exit660.i.loopexit, label %bb.bh, !llvm.loop !1

b3GetPointSupport.exit660.i.loopexit:             ; preds = %bb.bh
  %.phi.trans.insert2145 = sext i32 %.1.i657.i to i64
  %.phi.trans.insert2146 = getelementptr inbounds [12 x i8], ptr %i.aza, i64 %.phi.trans.insert2145
  %.sroa.271.0..sroa_idx.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.phi.trans.insert2146, i64 8
  %.sroa.271.0.copyload.i.pre = load float, ptr %.sroa.271.0..sroa_idx.i.phi.trans.insert, align 4
  br label %b3GetPointSupport.exit660.i

b3GetPointSupport.exit660.i:                      ; preds = %bb.bg, %b3GetPointSupport.exit660.i.loopexit
  %.sroa.271.0.copyload.i = phi float [ %.sroa.271.0.copyload.i.pre, %b3GetPointSupport.exit660.i.loopexit ], [ %.sroa.4.0.copyload.i639.i, %bb.bg ] ; 3 uses
  %.0.lcssa.i640.i = phi i32 [ %.1.i657.i, %b3GetPointSupport.exit660.i.loopexit ], [ 0, %bb.bg ] ; 2 uses
  %i.bum = sext i32 %.0.lcssa.i640.i to i64
  %i.bun = getelementptr inbounds [12 x i8], ptr %i.aza, i64 %i.bum
  %.sroa.070.0.copyload.i = load <2 x float>, ptr %i.bun, align 4 ; 4 uses
  %.sroa.03.4.vec.extract.i.i663.i = extractelement <2 x float> %.sroa.070.0.copyload.i, i64 1 ; 2 uses
  %i.buo = fmul float %.sroa.011.4.vec.extract.i.i.i761, %.sroa.271.0.copyload.i
  %i.bup = fmul float %.sroa.3.8.vec.extract.i.i760, %.sroa.03.4.vec.extract.i.i663.i
  %i.buq = fmul <2 x float> %i.bcj, %.sroa.070.0.copyload.i ; 2 uses
  %i.bur = shufflevector <2 x float> %.sroa.070.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bus = insertelement <2 x float> %i.bur, float %.sroa.271.0.copyload.i, i64 0 ; 2 uses
  %i.but = fmul <2 x float> %.sroa.010.0.i.i.i744, %i.bus ; 2 uses
  %i.buu = shufflevector <2 x float> %i.buq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.buv = insertelement <2 x float> %i.buu, float %i.buo, i64 0
  %i.buw = shufflevector <2 x float> %i.but, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bux = insertelement <2 x float> %i.buw, float %i.bup, i64 0
  %i.buy = fsub <2 x float> %i.buv, %i.bux
  %i.buz = fsub <2 x float> %i.buq, %i.but
  %i.bva = fmul <2 x float> %i.bcs, %.sroa.070.0.copyload.i
  %i.bvb = insertelement <2 x float> %i.bur, float %.sroa.271.0.copyload.i, i64 1
  %i.bvc = fmul <2 x float> %i.bcs, %i.bvb
  %i.bvd = fadd <2 x float> %i.bva, %i.buy        ; 2 uses
  %i.bve = fadd <2 x float> %i.bvc, %i.buz        ; 2 uses
  %foldExtExtBinop2833 = fmul <2 x float> %.sroa.4.0.i.i.i745, %i.bvd
  %shift2835 = shufflevector <2 x float> %i.bve, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2836 = fmul <2 x float> %.sroa.010.0.i.i.i744, %shift2835
  %foldExtExtBinop2838 = fsub <2 x float> %foldExtExtBinop2833, %foldExtExtBinop2836
  %i.bvf = extractelement <2 x float> %foldExtExtBinop2838, i64 0
  %i.bvg = fmul <2 x float> %.sroa.010.0.i.i.i744, %i.bve
  %i.bvh = fmul <2 x float> %i.bcz, %i.bvd
  %i.bvi = fsub <2 x float> %i.bvg, %i.bvh
  %i.bvj = fmul float %i.bvf, 2.000000e+00
  %i.bvk = fadd float %.sroa.03.4.vec.extract.i.i663.i, %i.bvj
  %i.bvl = fmul <2 x float> %i.bvi, splat (float 2.000000e+00)
  %i.bvm = fadd <2 x float> %i.bus, %i.bvl
  %i.bvn = fadd float %i.bdg, %i.bvk
  %i.bvo = fadd <2 x float> %i.bdh, %i.bvm
  %i.bvp = fsub float %i.bvn, %i.bsz
  %i.bvq = fsub <2 x float> %i.bvo, %i.bta
  %i.bvr = fmul float %i.brx, %i.bvp
  %i.bvs = fmul <2 x float> %i.brz, %i.bvq        ; 2 uses
  %i.bvt = extractelement <2 x float> %i.bvs, i64 1
  %i.bvu = fadd float %i.bvt, %i.bvr
  %i.bvv = extractelement <2 x float> %i.bvs, i64 0
  %i.bvw = fadd float %i.bvv, %i.bvu
  br label %b3FindMinSeparation.exit

bb.bi:                                            ; preds = %b3GetSweepTransform.exit774
  %.sroa.249.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 8 ; 3 uses
  %.sroa.03.4.vec.extract.i.i693.i = extractelement <2 x float> %.sroa.048.0.copyload.i1165, i64 1 ; 2 uses
  %i.bvx = fmul float %.sroa.011.4.vec.extract.i.i.i761, %.sroa.249.0.copyload.i
  %i.bvy = fmul float %.sroa.3.8.vec.extract.i.i760, %.sroa.03.4.vec.extract.i.i693.i
  %i.bvz = fmul <2 x float> %i.bcj, %.sroa.048.0.copyload.i1165 ; 2 uses
  %i.bwa = shufflevector <2 x float> %.sroa.048.0.copyload.i1165, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bwb = insertelement <2 x float> %i.bwa, float %.sroa.249.0.copyload.i, i64 0 ; 2 uses
  %i.bwc = fmul <2 x float> %.sroa.010.0.i.i.i744, %i.bwb ; 2 uses
  %i.bwd = shufflevector <2 x float> %i.bvz, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bwe = insertelement <2 x float> %i.bwd, float %i.bvx, i64 0
  %i.bwf = shufflevector <2 x float> %i.bwc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bwg = insertelement <2 x float> %i.bwf, float %i.bvy, i64 0
  %i.bwh = fsub <2 x float> %i.bwe, %i.bwg
  %i.bwi = fsub <2 x float> %i.bvz, %i.bwc
  %i.bwj = fmul <2 x float> %i.bcs, %.sroa.048.0.copyload.i1165
  %i.bwk = insertelement <2 x float> %i.bwa, float %.sroa.249.0.copyload.i, i64 1
  %i.bwl = fmul <2 x float> %i.bcs, %i.bwk
  %i.bwm = fadd <2 x float> %i.bwj, %i.bwh        ; 2 uses
  %i.bwn = fadd <2 x float> %i.bwl, %i.bwi        ; 2 uses
  %foldExtExtBinop2840 = fmul <2 x float> %.sroa.4.0.i.i.i745, %i.bwm
  %shift2842 = shufflevector <2 x float> %i.bwn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2843 = fmul <2 x float> %.sroa.010.0.i.i.i744, %shift2842
  %foldExtExtBinop2845 = fsub <2 x float> %foldExtExtBinop2840, %foldExtExtBinop2843
  %i.bwo = extractelement <2 x float> %foldExtExtBinop2845, i64 0
  %i.bwp = fmul <2 x float> %.sroa.010.0.i.i.i744, %i.bwn
  %i.bwq = fmul <2 x float> %i.bcz, %i.bwm
  %i.bwr = fsub <2 x float> %i.bwp, %i.bwq
  %i.bws = fmul float %i.bwo, 2.000000e+00
  %i.bwt = fadd float %.sroa.03.4.vec.extract.i.i693.i, %i.bws ; 4 uses
  %i.bwu = fmul <2 x float> %i.bwr, splat (float 2.000000e+00)
  %i.bwv = fadd <2 x float> %i.bwb, %i.bwu        ; 5 uses
  %i.bww = fmul <2 x float> %i.bbb, %i.bwv
  %i.bwx = shufflevector <2 x float> %i.bwv, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bwy = insertelement <2 x float> %i.bwx, float %i.bwt, i64 0 ; 2 uses
  %i.bwz = fmul <2 x float> %i.bal, %i.bwy
  %i.bxa = insertelement <2 x float> %i.bwx, float %i.bwt, i64 1 ; 2 uses
  %i.bxb = fmul <2 x float> %i.bal, %i.bxa
  %i.bxc = fmul <2 x float> %.sroa.010.0.i.i.i787, %i.bwv
  %i.bxd = fsub <2 x float> %i.bww, %i.bwz
  %i.bxe = fsub <2 x float> %i.bxb, %i.bxc
  %i.bxf = fmul <2 x float> %i.bau, %i.bxa
  %i.bxg = fmul <2 x float> %i.bau, %i.bwy
  %i.bxh = fsub <2 x float> %i.bxd, %i.bxf        ; 2 uses
  %i.bxi = fsub <2 x float> %i.bxe, %i.bxg        ; 2 uses
  %foldExtExtBinop2847 = fmul <2 x float> %.sroa.4.0.i.i.i788, %i.bxh
  %shift2849 = shufflevector <2 x float> %i.bxi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2850 = fmul <2 x float> %.sroa.010.0.i.i.i787, %shift2849
  %foldExtExtBinop2852 = fsub <2 x float> %foldExtExtBinop2847, %foldExtExtBinop2850
  %i.bxj = extractelement <2 x float> %foldExtExtBinop2852, i64 0
  %i.bxk = fmul <2 x float> %.sroa.010.0.i.i.i787, %i.bxi
  %i.bxl = fmul <2 x float> %i.bbb, %i.bxh
  %i.bxm = fsub <2 x float> %i.bxk, %i.bxl
  %i.bxn = fmul <2 x float> %i.bxm, splat (float 2.000000e+00)
  %i.bxo = fmul float %i.bxj, 2.000000e+00
  %i.bxp = fadd float %i.bwt, %i.bxo
  %i.bxq = fadd <2 x float> %i.bwv, %i.bxn
  %i.bxr = fneg float %i.bxp
  %.sroa.4.0.copyload.i718.i = load float, ptr %.sroa.4.0..sroa_idx.i717.i, align 4, !tbaa !16 ; 2 uses
  br i1 %i.ayz, label %.lr.ph.i720.i, label %b3GetPointSupport.exit739.i

.lr.ph.i720.i:                                    ; preds = %bb.bi
  %.sroa.017.0.copyload.i721.i = load <2 x float>, ptr %i.ayx, align 4 ; 2 uses
  %i.bxs = shufflevector <2 x float> %.sroa.017.0.copyload.i721.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bxt = insertelement <2 x float> %i.bxs, float %.sroa.4.0.copyload.i718.i, i64 0
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.lr.ph.i720.i
  %indvars.iv.i727.i = phi i64 [ 1, %.lr.ph.i720.i ], [ %indvars.iv.next.i737.i, %bb.bj ] ; 3 uses
  %.031.i728.i = phi i32 [ 0, %.lr.ph.i720.i ], [ %.1.i736.i, %bb.bj ]
  %.02530.i729.i = phi float [ 0.000000e+00, %.lr.ph.i720.i ], [ %.126.i735.i, %bb.bj ] ; 2 uses
  %i.bxu = getelementptr inbounds nuw [12 x i8], ptr %i.ayx, i64 %indvars.iv.i727.i ; 2 uses
  %.sroa.07.0.copyload.i730.i = load <2 x float>, ptr %i.bxu, align 4 ; 2 uses
  %.sroa.28.0..sroa_idx.i731.i = getelementptr inbounds nuw i8, ptr %i.bxu, i64 8
  %.sroa.28.0.copyload.i732.i = load float, ptr %.sroa.28.0..sroa_idx.i731.i, align 4
  %foldExtExtBinop2854 = fsub <2 x float> %.sroa.07.0.copyload.i730.i, %.sroa.017.0.copyload.i721.i
  %i.bxv = extractelement <2 x float> %foldExtExtBinop2854, i64 1
  %i.bxw = fmul float %i.bxv, %i.bxr
  %i.bxx = shufflevector <2 x float> %.sroa.07.0.copyload.i730.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bxy = insertelement <2 x float> %i.bxx, float %.sroa.28.0.copyload.i732.i, i64 0
  %i.bxz = fsub <2 x float> %i.bxy, %i.bxt
  %i.bya = fmul <2 x float> %i.bxq, %i.bxz        ; 2 uses
  %i.byb = extractelement <2 x float> %i.bya, i64 1
  %i.byc = fsub float %i.bxw, %i.byb
  %i.byd = extractelement <2 x float> %i.bya, i64 0
  %i.bye = fsub float %i.byc, %i.byd              ; 2 uses
  %i.byf = fcmp ogt float %i.bye, %.02530.i729.i  ; 2 uses
  %.126.i735.i = select i1 %i.byf, float %i.bye, float %.02530.i729.i
  %i.byg = trunc nuw nsw i64 %indvars.iv.i727.i to i32
  %.1.i736.i = select i1 %i.byf, i32 %i.byg, i32 %.031.i728.i ; 3 uses
  %indvars.iv.next.i737.i = add nuw nsw i64 %indvars.iv.i727.i, 1 ; 2 uses
  %exitcond.not.i738.i = icmp eq i64 %indvars.iv.next.i737.i, %wide.trip.count.i726.i
  br i1 %exitcond.not.i738.i, label %b3GetPointSupport.exit739.i.loopexit, label %bb.bj, !llvm.loop !1

b3GetPointSupport.exit739.i.loopexit:             ; preds = %bb.bj
  %.phi.trans.insert = sext i32 %.1.i736.i to i64
  %.phi.trans.insert2129 = getelementptr inbounds [12 x i8], ptr %i.ayx, i64 %.phi.trans.insert
  %.sroa.223.0..sroa_idx.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.phi.trans.insert2129, i64 8
  %.sroa.223.0.copyload.i.pre = load float, ptr %.sroa.223.0..sroa_idx.i.phi.trans.insert, align 4
  br label %b3GetPointSupport.exit739.i

b3GetPointSupport.exit739.i:                      ; preds = %bb.bi, %b3GetPointSupport.exit739.i.loopexit
  %.sroa.223.0.copyload.i = phi float [ %.sroa.223.0.copyload.i.pre, %b3GetPointSupport.exit739.i.loopexit ], [ %.sroa.4.0.copyload.i718.i, %bb.bi ] ; 3 uses
  %.0.lcssa.i719.i = phi i32 [ %.1.i736.i, %b3GetPointSupport.exit739.i.loopexit ], [ 0, %bb.bi ] ; 2 uses
  %i.byh = sext i32 %.0.lcssa.i719.i to i64
  %i.byi = getelementptr inbounds [12 x i8], ptr %i.ayx, i64 %i.byh
  %.sroa.022.0.copyload.i = load <2 x float>, ptr %i.byi, align 4 ; 5 uses
  %i.byj = fmul float %.sroa.011.4.vec.extract.i.i.i804, %.sroa.223.0.copyload.i
  %shift2856 = shufflevector <2 x float> %.sroa.022.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2857 = fmul <2 x float> %.sroa.4.0.i.i.i788, %shift2856
  %i.byk = fmul <2 x float> %i.bal, %.sroa.022.0.copyload.i ; 2 uses
  %i.byl = shufflevector <2 x float> %.sroa.022.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bym = insertelement <2 x float> %i.byl, float %.sroa.223.0.copyload.i, i64 0 ; 2 uses
  %i.byn = fmul <2 x float> %.sroa.010.0.i.i.i787, %i.bym ; 2 uses
  %i.byo = shufflevector <2 x float> %i.byk, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.byp = insertelement <2 x float> %i.byo, float %i.byj, i64 0
  %i.byq = shufflevector <2 x float> %i.byn, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.byr = shufflevector <2 x float> %foldExtExtBinop2857, <2 x float> %i.byq, <2 x i32> <i32 0, i32 3>
  %i.bys = fsub <2 x float> %i.byp, %i.byr
  %i.byt = fsub <2 x float> %i.byk, %i.byn
  %i.byu = fmul <2 x float> %i.bau, %.sroa.022.0.copyload.i
  %i.byv = insertelement <2 x float> %i.byl, float %.sroa.223.0.copyload.i, i64 1
  %i.byw = fmul <2 x float> %i.bau, %i.byv
  %i.byx = fadd <2 x float> %i.byu, %i.bys        ; 2 uses
  %i.byy = fadd <2 x float> %i.byw, %i.byt        ; 2 uses
  %i.byz = fmul <2 x float> %.sroa.010.0.i.i.i787, %i.byy
  %i.bza = fmul <2 x float> %i.bbb, %i.byx
  %i.bzb = fsub <2 x float> %i.byz, %i.bza
  %i.bzc = fmul <2 x float> %i.bzb, splat (float 2.000000e+00)
  %i.bzd = fadd <2 x float> %i.bym, %i.bzc
  %i.bze = fadd <2 x float> %i.bbj, %i.bzd
  %i.bzf = fmul float %.sroa.011.4.vec.extract.i.i.i761, %.sroa.216.0.copyload.i
  %shift2859 = shufflevector <2 x float> %.sroa.015.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2860 = fmul <2 x float> %.sroa.4.0.i.i.i745, %shift2859
  %i.bzg = fmul <2 x float> %i.bcj, %.sroa.015.0.copyload.i ; 2 uses
  %i.bzh = shufflevector <2 x float> %.sroa.015.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bzi = insertelement <2 x float> %i.bzh, float %.sroa.216.0.copyload.i, i64 0 ; 2 uses
  %i.bzj = fmul <2 x float> %.sroa.010.0.i.i.i744, %i.bzi ; 2 uses
  %i.bzk = shufflevector <2 x float> %i.bzg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bzl = insertelement <2 x float> %i.bzk, float %i.bzf, i64 0
  %i.bzm = shufflevector <2 x float> %i.bzj, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bzn = shufflevector <2 x float> %foldExtExtBinop2860, <2 x float> %i.bzm, <2 x i32> <i32 0, i32 3>
  %i.bzo = fsub <2 x float> %i.bzl, %i.bzn
  %i.bzp = fsub <2 x float> %i.bzg, %i.bzj
  %i.bzq = fmul <2 x float> %i.bcs, %.sroa.015.0.copyload.i
  %i.bzr = insertelement <2 x float> %i.bzh, float %.sroa.216.0.copyload.i, i64 1
  %i.bzs = fmul <2 x float> %i.bcs, %i.bzr
  %i.bzt = fadd <2 x float> %i.bzq, %i.bzo        ; 2 uses
  %i.bzu = fadd <2 x float> %i.bzs, %i.bzp        ; 2 uses
  %i.bzv = fmul <2 x float> %.sroa.010.0.i.i.i744, %i.bzu
  %i.bzw = fmul <2 x float> %i.bcz, %i.bzt
  %i.bzx = fsub <2 x float> %i.bzv, %i.bzw
  %i.bzy = fmul <2 x float> %i.bzx, splat (float 2.000000e+00)
  %i.bzz = fadd <2 x float> %i.bzi, %i.bzy
  %i.caa = shufflevector <2 x float> %.sroa.4.0.i.i.i788, <2 x float> %.sroa.4.0.i.i.i745, <2 x i32> <i32 0, i32 2>
  %i.cab = shufflevector <2 x float> %i.byx, <2 x float> %i.bzt, <2 x i32> <i32 0, i32 2>
  %i.cac = fmul <2 x float> %i.caa, %i.cab
  %i.cad = shufflevector <2 x float> %.sroa.010.0.i.i.i787, <2 x float> %.sroa.010.0.i.i.i744, <2 x i32> <i32 0, i32 2>
  %i.cae = shufflevector <2 x float> %i.byy, <2 x float> %i.bzu, <2 x i32> <i32 1, i32 3>
  %i.caf = fmul <2 x float> %i.cad, %i.cae
  %i.cag = fsub <2 x float> %i.cac, %i.caf
  %i.cah = fmul <2 x float> %i.cag, splat (float 2.000000e+00)
  %i.cai = shufflevector <2 x float> %.sroa.022.0.copyload.i, <2 x float> %.sroa.015.0.copyload.i, <2 x i32> <i32 1, i32 3>
  %i.caj = fadd <2 x float> %i.cai, %i.cah
  %i.cak = insertelement <2 x float> poison, float %i.bbi, i64 0
  %i.cal = insertelement <2 x float> %i.cak, float %i.bdg, i64 1
  %i.cam = fadd <2 x float> %i.cal, %i.caj        ; 2 uses
  %i.can = fadd <2 x float> %i.bdh, %i.bzz
  %shift2862 = shufflevector <2 x float> %i.cam, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2863 = fsub <2 x float> %i.cam, %shift2862
  %i.cao = extractelement <2 x float> %foldExtExtBinop2863, i64 0
  %i.cap = fsub <2 x float> %i.bze, %i.can
  %i.caq = fmul float %i.bwt, %i.cao
  %i.car = fmul <2 x float> %i.bwv, %i.cap        ; 2 uses
  %i.cas = extractelement <2 x float> %i.car, i64 1
  %i.cat = fadd float %i.cas, %i.caq
  %i.cau = extractelement <2 x float> %i.car, i64 0
  %i.cav = fadd float %i.cau, %i.cat
  br label %b3FindMinSeparation.exit

b3FindMinSeparation.exit:                         ; preds = %b3GetSweepTransform.exit774, %b3GetPointSupport.exit407.i, %b3GetPointSupport.exit545.i, %b3GetPointSupport.exit660.i, %b3GetPointSupport.exit739.i
  %.sroa.297.0.copyload.i2142 = phi float [ %.sroa.297.0.copyload.i, %b3GetSweepTransform.exit774 ], [ %.sroa.297.0.copyload.i, %b3GetPointSupport.exit407.i ], [ %.sroa.218.0.copyload.i607, %b3GetPointSupport.exit545.i ], [ %.sroa.297.0.copyload.i, %b3GetPointSupport.exit660.i ], [ %.sroa.297.0.copyload.i, %b3GetPointSupport.exit739.i ] ; 2 uses
  %.sroa.096.0.copyload.i2139 = phi <2 x float> [ %.sroa.096.0.copyload.i, %b3GetSweepTransform.exit774 ], [ %.sroa.096.0.copyload.i, %b3GetPointSupport.exit407.i ], [ %.sroa.017.0.copyload.i605, %b3GetPointSupport.exit545.i ], [ %.sroa.096.0.copyload.i, %b3GetPointSupport.exit660.i ], [ %.sroa.096.0.copyload.i, %b3GetPointSupport.exit739.i ] ; 2 uses
  %.sroa.216.0.copyload.i2135 = phi float [ %.sroa.216.0.copyload.i, %b3GetSweepTransform.exit774 ], [ %.sroa.216.0.copyload.i, %b3GetPointSupport.exit407.i ], [ %.sroa.218.0.copyload.i607, %b3GetPointSupport.exit545.i ], [ %.sroa.297.0.copyload.i, %b3GetPointSupport.exit660.i ], [ %.sroa.216.0.copyload.i, %b3GetPointSupport.exit739.i ] ; 2 uses
  %.sroa.015.0.copyload.i2131 = phi <2 x float> [ %.sroa.015.0.copyload.i, %b3GetSweepTransform.exit774 ], [ %.sroa.015.0.copyload.i, %b3GetPointSupport.exit407.i ], [ %.sroa.017.0.copyload.i605, %b3GetPointSupport.exit545.i ], [ %.sroa.096.0.copyload.i, %b3GetPointSupport.exit660.i ], [ %.sroa.015.0.copyload.i, %b3GetPointSupport.exit739.i ] ; 2 uses
  %.01059 = phi i32 [ undef, %b3GetSweepTransform.exit774 ], [ %.0.lcssa.i.i, %b3GetPointSupport.exit407.i ], [ %.0.lcssa.i486.i, %b3GetPointSupport.exit545.i ], [ -1, %b3GetPointSupport.exit660.i ], [ %.0.lcssa.i719.i, %b3GetPointSupport.exit739.i ] ; 2 uses
  %.01058 = phi i32 [ undef, %b3GetSweepTransform.exit774 ], [ %.0.lcssa.i387.i, %b3GetPointSupport.exit407.i ], [ %.0.lcssa.i525.i, %b3GetPointSupport.exit545.i ], [ %.0.lcssa.i640.i, %b3GetPointSupport.exit660.i ], [ -1, %b3GetPointSupport.exit739.i ] ; 2 uses
  %.0.i = phi float [ 0.000000e+00, %b3GetSweepTransform.exit774 ], [ %i.bis, %b3GetPointSupport.exit407.i ], [ %i.bra, %b3GetPointSupport.exit545.i ], [ %i.bvw, %b3GetPointSupport.exit660.i ], [ %i.cav, %b3GetPointSupport.exit739.i ] ; 3 uses
  %i.caw = fsub float %.0.i, %i.ag
  %i.cax = fcmp ogt float %i.caw, %i.ah
  br i1 %i.cax, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %b3FindMinSeparation.exit
  %i.cay = shufflevector <2 x float> %.sroa.010.0.i.i.i, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  store float %i.ir, ptr %i.bf, align 4
  store i32 %i.jt, ptr %i.bi, align 4
  %i.caz = shufflevector <2 x float> %.sroa.010.0.i.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cba = insertelement <2 x float> poison, float %.sroa.2208.0.copyload, i64 0
  %i.cbb = insertelement <2 x float> %i.cba, float %.sroa.2198.0.copyload, i64 1
  %i.cbc = fmul <2 x float> %i.caz, %i.cbb
  %i.cbd = shufflevector <2 x float> %.sroa.0207.0.copyload, <2 x float> %.sroa.0197.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.cbe = insertelement <4 x float> %i.cbd, float %.sroa.2208.0.copyload, i64 0
  %i.cbf = insertelement <4 x float> %i.cbe, float %.sroa.2198.0.copyload, i64 2 ; 3 uses
  %i.cbg = fmul <4 x float> %i.cay, %i.cbf
  %i.cbh = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> %.sroa.010.0.i.i.i, <4 x i32> <i32 0, i32 3, i32 0, i32 3> ; 2 uses
  %i.cbi = shufflevector <2 x float> %.sroa.0207.0.copyload, <2 x float> %.sroa.0197.0.copyload, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.cbj = fmul <4 x float> %i.cbh, %i.cbi
  %i.cbk = fsub <4 x float> %i.cbg, %i.cbj        ; 2 uses
  %i.cbl = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cbm = shufflevector <2 x float> %.sroa.0207.0.copyload, <2 x float> %.sroa.0197.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.cbn = fmul <2 x float> %i.cbl, %i.cbm
  %i.cbo = fsub <2 x float> %i.cbn, %i.cbc
  %i.cbp = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.cbq = shufflevector <4 x float> %i.cbd, <4 x float> %i.cbf, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.cbr = fmul <4 x float> %i.cbp, %i.cbq
  %i.cbs = fmul <4 x float> %i.cbp, %i.cbf
  %i.cbt = shufflevector <4 x float> %i.cbk, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
end_hunk_1
begin_hunk_2_@b3TimeOfImpact:bb.a
  %i.cdd = shufflevector <2 x float> %.sroa.0207.0.copyload, <2 x float> %.sroa.0197.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.cde = fmul <2 x float> %i.cdc, %i.cdd
  %i.cdf = fsub <2 x float> %i.cde, %i.cct
  %i.cdg = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.cdh = shufflevector <4 x float> %i.ccu, <4 x float> %i.ccw, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.cdi = fmul <4 x float> %i.cdg, %i.cdh
  %i.cdj = fmul <4 x float> %i.cdg, %i.ccw
  %i.cdk = shufflevector <4 x float> %i.cdb, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.cdl = shufflevector <2 x float> %i.cdf, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.cdm = shufflevector <4 x float> %i.cdk, <4 x float> %i.cdl, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.cdn = fadd <4 x float> %i.cdj, %i.cdm        ; 3 uses
  %i.cdo = fadd <4 x float> %i.cdi, %i.cdb        ; 3 uses
  %i.cdp = shufflevector <4 x float> %i.cdn, <4 x float> %i.cdo, <2 x i32> <i32 1, i32 4>
  %i.cdq = fmul <2 x float> %.sroa.010.0.i.i.i, %i.cdp ; 2 uses
  %i.cdr = fmul <4 x float> %i.ccy, %i.cdo
  %i.cds = shufflevector <2 x float> %.sroa.010.0.i.i.i, <2 x float> %.sroa.4.0.i.i.i, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.cdt = fmul <4 x float> %i.cds, %i.cdn
  %i.cdu = fsub <4 x float> %i.cdr, %i.cdt
  %i.cdv = fmul <4 x float> %i.cdu, splat (float 2.000000e+00)
  %i.cdw = shufflevector <4 x float> %i.cdn, <4 x float> %i.cdo, <2 x i32> <i32 3, i32 6>
  %i.cdx = fmul <2 x float> %.sroa.010.0.i.i.i, %i.cdw ; 2 uses
  %i.cdy = shufflevector <2 x float> %i.cdq, <2 x float> %i.cdx, <2 x i32> <i32 0, i32 2>
  %i.cdz = shufflevector <2 x float> %i.cdq, <2 x float> %i.cdx, <2 x i32> <i32 1, i32 3>
  %i.cea = fsub <2 x float> %i.cdy, %i.cdz
  %i.ceb = fadd <4 x float> %i.ccz, %i.cdv
  store i32 %.lcssa11611167, ptr %i.bs, align 4
  store i32 %i.aze, ptr %i.bt, align 4
  store i32 1, ptr %0, align 4, !tbaa !86
  br label %.thread1090

bb.bo:                                            ; preds = %bb.bm
  %i.cec = fcmp ugt float %i.ccn, %i.bj
  br i1 %i.cec, label %.preheader.preheader, label %bb.bp

.preheader.preheader:                             ; preds = %bb.bo
  %i.ced = add i32 %.lcssa11611167, 50
  br label %.preheader

bb.bp:                                            ; preds = %bb.bo
  %i.cee = shufflevector <2 x float> %.sroa.010.0.i.i.i, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  store float %i.ir, ptr %i.bf, align 4
  store i32 %i.jt, ptr %i.bi, align 4
  %i.cef = shufflevector <2 x float> %.sroa.010.0.i.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ceg = insertelement <2 x float> poison, float %.sroa.2208.0.copyload, i64 0
  %i.ceh = insertelement <2 x float> %i.ceg, float %.sroa.2198.0.copyload, i64 1
  %i.cei = fmul <2 x float> %i.cef, %i.ceh
  %i.cej = shufflevector <2 x float> %.sroa.0207.0.copyload, <2 x float> %.sroa.0197.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.cek = insertelement <4 x float> %i.cej, float %.sroa.2208.0.copyload, i64 0
  %i.cel = insertelement <4 x float> %i.cek, float %.sroa.2198.0.copyload, i64 2 ; 3 uses
  %i.cem = fmul <4 x float> %i.cee, %i.cel
  %i.cen = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> %.sroa.010.0.i.i.i, <4 x i32> <i32 0, i32 3, i32 0, i32 3> ; 2 uses
  %i.ceo = shufflevector <2 x float> %.sroa.0207.0.copyload, <2 x float> %.sroa.0197.0.copyload, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.cep = fmul <4 x float> %i.cen, %i.ceo
  %i.ceq = fsub <4 x float> %i.cem, %i.cep        ; 2 uses
  %i.cer = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ces = shufflevector <2 x float> %.sroa.0207.0.copyload, <2 x float> %.sroa.0197.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.cet = fmul <2 x float> %i.cer, %i.ces
  %i.ceu = fsub <2 x float> %i.cet, %i.cei
  %i.cev = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.cew = shufflevector <4 x float> %i.cej, <4 x float> %i.cel, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.cex = fmul <4 x float> %i.cev, %i.cew
  %i.cey = fmul <4 x float> %i.cev, %i.cel
  %i.cez = shufflevector <4 x float> %i.ceq, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.cfa = shufflevector <2 x float> %i.ceu, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.cfb = shufflevector <4 x float> %i.cez, <4 x float> %i.cfa, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.cfc = fadd <4 x float> %i.cey, %i.cfb        ; 3 uses
  %i.cfd = fadd <4 x float> %i.cex, %i.ceq        ; 3 uses
  %i.cfe = shufflevector <4 x float> %i.cfc, <4 x float> %i.cfd, <2 x i32> <i32 1, i32 4>
  %i.cff = fmul <2 x float> %.sroa.010.0.i.i.i, %i.cfe ; 2 uses
  %i.cfg = fmul <4 x float> %i.cen, %i.cfd
  %i.cfh = shufflevector <2 x float> %.sroa.010.0.i.i.i, <2 x float> %.sroa.4.0.i.i.i, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.cfi = fmul <4 x float> %i.cfh, %i.cfc
  %i.cfj = fsub <4 x float> %i.cfg, %i.cfi
  %i.cfk = fmul <4 x float> %i.cfj, splat (float 2.000000e+00)
  %i.cfl = shufflevector <4 x float> %i.cfc, <4 x float> %i.cfd, <2 x i32> <i32 3, i32 6>
  %i.cfm = fmul <2 x float> %.sroa.010.0.i.i.i, %i.cfl ; 2 uses
  %i.cfn = shufflevector <2 x float> %i.cff, <2 x float> %i.cfm, <2 x i32> <i32 0, i32 2>
  %i.cfo = shufflevector <2 x float> %i.cff, <2 x float> %i.cfm, <2 x i32> <i32 1, i32 3>
  %i.cfp = fsub <2 x float> %i.cfn, %i.cfo
  %i.cfq = fadd <4 x float> %i.ceo, %i.cfk
  store i32 %.lcssa11611167, ptr %i.bs, align 4
  store i32 %i.aze, ptr %i.bt, align 4
  store i32 3, ptr %0, align 4, !tbaa !86
  br label %.thread1090

.preheader:                                       ; preds = %.preheader.preheader, %bb.bt
  %i.cfr = phi i32 [ %i.cgb, %bb.bt ], [ %.lcssa11611167, %.preheader.preheader ]
  %.0345 = phi float [ %.0345..0348, %bb.bt ], [ %.0326, %.preheader.preheader ] ; 3 uses
  %.0342 = phi float [ %.0348..0342, %bb.bt ], [ %.0, %.preheader.preheader ] ; 4 uses
  %.0341 = phi i32 [ %i.cgc, %bb.bt ], [ 0, %.preheader.preheader ] ; 2 uses
  %.0338 = phi float [ %..0338, %bb.bt ], [ %i.ccn, %.preheader.preheader ] ; 3 uses
  %.0335 = phi float [ %.0335., %bb.bt ], [ %.0.i, %.preheader.preheader ] ; 2 uses
  %i.cfs = and i32 %.0341, 1
  %.not = icmp eq i32 %i.cfs, 0
  br i1 %.not, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.preheader
  %i.cft = fsub float %i.ag, %.0338
  %i.cfu = fsub float %.0345, %.0342
  %i.cfv = fmul float %i.cfu, %i.cft
  %i.cfw = fsub float %.0335, %.0338
  %i.cfx = fdiv float %i.cfv, %i.cfw
  %i.cfy = fadd float %.0342, %i.cfx
  br label %bb.bs

bb.br:                                            ; preds = %.preheader
  %i.cfz = fadd float %.0345, %.0342
  %i.cga = fmul float %i.cfz, 5.000000e-01
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.0348 = phi float [ %i.cfy, %bb.bq ], [ %i.cga, %bb.br ] ; 4 uses
  %i.cgb = add nsw i32 %i.cfr, 1                  ; 3 uses
  %i.cgc = add nuw nsw i32 %.0341, 1              ; 3 uses
  %i.cgd = call fastcc float @b3EvaluateSeparation(ptr noundef %7, i32 noundef %.01059, i32 noundef %.01058, float noundef %.0348) ; 4 uses
  %i.cge = fsub float %i.cgd, %i.ag
  %i.cgf = call float @llvm.fabs.f32(float %i.cge)
  %i.cgg = fcmp ugt float %i.cgf, %i.ah
  br i1 %i.cgg, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.cgh = fcmp ogt float %i.cgd, %i.ag           ; 4 uses
  %.0345..0348 = select i1 %i.cgh, float %.0345, float %.0348
  %.0348..0342 = select i1 %i.cgh, float %.0348, float %.0342
  %..0338 = select i1 %i.cgh, float %i.cgd, float %.0338
  %.0335. = select i1 %i.cgh, float %.0335, float %i.cgd
  %i.cgi = icmp eq i32 %i.cgc, 50
  br i1 %i.cgi, label %.thread1067, label %.preheader

bb.bu:                                            ; preds = %bb.bs
  %i.cgj = icmp eq i32 %i.cgc, 49
  %i.cgk = icmp eq i32 %i.azf, 2
  %or.cond = and i1 %i.cgk, %i.cgj
  br i1 %or.cond, label %bb.bv, label %.thread1067

bb.bv:                                            ; preds = %bb.bu
  %i.cgl = load float, ptr %i.v, align 8, !tbaa !84
  %i.cgm = select i1 %i.cm, <2 x float> %i.bb, <2 x float> %.sroa.25.0.copyload
  %i.cgn = select i1 %i.cm, <2 x float> %i.ba, <2 x float> %.sroa.23.0.copyload
  %i.cgo = fmul <2 x float> %i.dd, %i.cgn
  %i.cgp = fadd <2 x float> %i.db, %i.cgo         ; 2 uses
  %i.cgq = fmul <2 x float> %i.dd, %i.cgm
  %i.cgr = fadd <2 x float> %i.dg, %i.cgq         ; 2 uses
  %i.cgs = shufflevector <2 x float> %i.cgp, <2 x float> %i.cgr, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.cgt = fmul <4 x float> %i.cgs, %i.cgs        ; 4 uses
  %shift2865 = shufflevector <4 x float> %i.cgt, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2866 = fadd <4 x float> %i.cgt, %shift2865
  %shift2868 = shufflevector <4 x float> %i.cgt, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2869 = fadd <4 x float> %foldExtExtBinop2866, %shift2868
  %shift2871 = shufflevector <4 x float> %i.cgt, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2872 = fadd <4 x float> %shift2871, %foldExtExtBinop2869
  %i.cgu = extractelement <4 x float> %foldExtExtBinop2872, i64 0 ; 2 uses
  %i.cgv = fcmp ogt float %i.cgu, f0x057A0000
  br i1 %i.cgv, label %bb.bw, label %b3GetSweepTransform.exit903

bb.bw:                                            ; preds = %bb.bv
  %sqrt.i.i.i898 = call float @llvm.sqrt.f32(float %i.cgu)
  %i.cgw = fdiv float 1.000000e+00, %sqrt.i.i.i898
  %i.cgx = insertelement <2 x float> poison, float %i.cgw, i64 0
  %i.cgy = shufflevector <2 x float> %i.cgx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cgz = fmul <2 x float> %i.cgp, %i.cgy
  %i.cha = fmul <2 x float> %i.cgr, %i.cgy
  br label %b3GetSweepTransform.exit903

b3GetSweepTransform.exit903:                      ; preds = %bb.bv, %bb.bw
  %.sroa.010.0.i.i.i873 = phi <2 x float> [ %i.cgz, %bb.bw ], [ zeroinitializer, %bb.bv ] ; 5 uses
  %.sroa.4.0.i.i.i874 = phi <2 x float> [ %i.cha, %bb.bw ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.bv ] ; 4 uses
  %.sroa.3.8.vec.extract.i.i889 = extractelement <2 x float> %.sroa.4.0.i.i.i874, i64 0
  %.sroa.011.0.vec.extract.i.i.i893 = extractelement <2 x float> %.sroa.010.0.i.i.i873, i64 0
  %i.chb = select i1 %i.cl, <2 x float> %i.bd, <2 x float> %.sroa.26.0.copyload
  %i.chc = select i1 %i.cl, <2 x float> %i.bc, <2 x float> %.sroa.24.0.copyload
  %i.chd = fmul <2 x float> %i.dd, %i.chc
  %i.che = fadd <2 x float> %i.fg, %i.chd         ; 2 uses
  %i.chf = fmul <2 x float> %i.dd, %i.chb
  %i.chg = fadd <2 x float> %i.fj, %i.chf         ; 2 uses
  %i.chh = shufflevector <2 x float> %i.che, <2 x float> %i.chg, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.chi = fmul <4 x float> %i.chh, %i.chh        ; 4 uses
  %shift2874 = shufflevector <4 x float> %i.chi, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2875 = fadd <4 x float> %i.chi, %shift2874
  %shift2877 = shufflevector <4 x float> %i.chi, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2878 = fadd <4 x float> %foldExtExtBinop2875, %shift2877
  %shift2880 = shufflevector <4 x float> %i.chi, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2881 = fadd <4 x float> %shift2880, %foldExtExtBinop2878
  %i.chj = extractelement <4 x float> %foldExtExtBinop2881, i64 0 ; 2 uses
  %i.chk = fcmp ogt float %i.chj, f0x057A0000
  br i1 %i.chk, label %bb.bx, label %b3GetSweepTransform.exit860

bb.bx:                                            ; preds = %b3GetSweepTransform.exit903
  %sqrt.i.i.i855 = call float @llvm.sqrt.f32(float %i.chj)
  %i.chl = fdiv float 1.000000e+00, %sqrt.i.i.i855
  %i.chm = insertelement <2 x float> poison, float %i.chl, i64 0
  %i.chn = shufflevector <2 x float> %i.chm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cho = fmul <2 x float> %i.che, %i.chn
  %i.chp = fmul <2 x float> %i.chg, %i.chn
  br label %b3GetSweepTransform.exit860

b3GetSweepTransform.exit860:                      ; preds = %b3GetSweepTransform.exit903, %bb.bx
  %.sroa.010.0.i.i.i830 = phi <2 x float> [ %i.cho, %bb.bx ], [ zeroinitializer, %b3GetSweepTransform.exit903 ] ; 5 uses
  %.sroa.4.0.i.i.i831 = phi <2 x float> [ %i.chp, %bb.bx ], [ <float 0.000000e+00, float 1.000000e+00>, %b3GetSweepTransform.exit903 ] ; 5 uses
  %.sroa.011.4.vec.extract.i.i.i847 = extractelement <2 x float> %.sroa.010.0.i.i.i830, i64 1
  %.sroa.226.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 8 ; 4 uses
  %i.chq = shufflevector <2 x float> %.sroa.017.0.copyload.i605, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.chr = fmul float %.sroa.011.0.vec.extract.i.i.i893, %.sroa.226.0.copyload.i
  %i.chs = shufflevector <2 x float> %.sroa.048.0.copyload.i1165, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cht = insertelement <2 x float> %i.chs, float %.sroa.226.0.copyload.i, i64 1
  %i.chu = fmul <2 x float> %.sroa.010.0.i.i.i873, %i.cht
  %i.chv = shufflevector <2 x float> %.sroa.010.0.i.i.i873, <2 x float> %.sroa.4.0.i.i.i874, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.chw = fmul <2 x float> %i.chv, %.sroa.048.0.copyload.i1165
  %i.chx = fsub <2 x float> %i.chu, %i.chw
  %i.chy = shufflevector <2 x float> %.sroa.4.0.i.i.i874, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.chz = insertelement <2 x float> %i.chs, float %.sroa.226.0.copyload.i, i64 0
  %i.cia = fmul <2 x float> %i.chy, %i.chz
  %i.cib = fmul <2 x float> %.sroa.4.0.i.i.i874, %.sroa.048.0.copyload.i1165 ; 2 uses
  %i.cic = extractelement <2 x float> %i.cib, i64 0
  %i.cid = fsub float %i.cic, %i.chr
  %i.cie = fadd <2 x float> %i.cia, %i.chx        ; 3 uses
  %i.cif = extractelement <2 x float> %i.cib, i64 1
  %i.cig = fadd float %i.cif, %i.cid              ; 2 uses
  %i.cih = fmul <2 x float> %i.chv, %i.cie
  %i.cii = fmul float %.sroa.3.8.vec.extract.i.i889, %i.cig
  %i.cij = insertelement <2 x float> %i.cie, float %i.cig, i64 0
  %i.cik = fmul <2 x float> %.sroa.010.0.i.i.i873, %i.cij ; 2 uses
  %foldExtExtBinop2883 = fmul <2 x float> %.sroa.010.0.i.i.i873, %i.cie
  %i.cil = insertelement <2 x float> poison, float %i.cii, i64 0
  %i.cim = shufflevector <2 x float> %i.cil, <2 x float> %foldExtExtBinop2883, <2 x i32> <i32 0, i32 2>
  %i.cin = fsub <2 x float> %i.cih, %i.cim
  %shift2885 = shufflevector <2 x float> %i.cik, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2886 = fsub <2 x float> %i.cik, %shift2885
  %i.cio = extractelement <2 x float> %foldExtExtBinop2886, i64 0
  %i.cip = fmul <2 x float> %i.cin, splat (float 2.000000e+00)
  %i.ciq = fmul float %i.cio, 2.000000e+00
  %i.cir = fadd <2 x float> %.sroa.048.0.copyload.i1165, %i.cip ; 3 uses
  %i.cis = fadd float %.sroa.226.0.copyload.i, %i.ciq ; 2 uses
  %foldExtExtBinop2888 = fmul <2 x float> %.sroa.4.0.i.i.i831, %.sroa.017.0.copyload.i605
  %i.cit = fmul float %.sroa.011.4.vec.extract.i.i.i847, %.sroa.218.0.copyload.i607
  %i.ciu = shufflevector <2 x float> %.sroa.4.0.i.i.i831, <2 x float> %.sroa.010.0.i.i.i830, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.civ = insertelement <2 x float> %i.chq, float %.sroa.218.0.copyload.i607, i64 1 ; 2 uses
  %i.ciw = fmul <2 x float> %i.ciu, %i.civ
  %i.cix = insertelement <2 x float> poison, float %i.cit, i64 0
  %i.ciy = shufflevector <2 x float> %i.cix, <2 x float> %foldExtExtBinop2888, <2 x i32> <i32 0, i32 2>
  %i.ciz = fsub <2 x float> %i.ciy, %i.ciw        ; 2 uses
  %i.cja = fmul <2 x float> %.sroa.010.0.i.i.i830, %i.chq ; 2 uses
  %shift2890 = shufflevector <2 x float> %i.cja, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2891 = fsub <2 x float> %i.cja, %shift2890
  %i.cjb = shufflevector <2 x float> %.sroa.4.0.i.i.i831, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cjc = fmul <2 x float> %i.cjb, %.sroa.017.0.copyload.i605
  %i.cjd = insertelement <2 x float> %i.chq, float %.sroa.218.0.copyload.i607, i64 0
  %i.cje = fmul <2 x float> %i.cjb, %i.cjd
  %i.cjf = fadd <2 x float> %i.cjc, %i.ciz        ; 2 uses
  %i.cjg = shufflevector <2 x float> %i.ciz, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cjh = shufflevector <2 x float> %foldExtExtBinop2891, <2 x float> %i.cjg, <2 x i32> <i32 0, i32 3>
  %i.cji = fadd <2 x float> %i.cje, %i.cjh        ; 2 uses
  %i.cjj = shufflevector <2 x float> %.sroa.010.0.i.i.i830, <2 x float> %.sroa.4.0.i.i.i831, <2 x i32> <i32 1, i32 2>
  %i.cjk = fmul <2 x float> %i.cjj, %i.cji
  %shift2893 = shufflevector <2 x float> %i.cjf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2894 = fmul <2 x float> %.sroa.4.0.i.i.i831, %shift2893
  %i.cjl = fmul <2 x float> %i.ciu, %i.cjf
  %i.cjm = fmul <2 x float> %.sroa.010.0.i.i.i830, %i.cji ; 2 uses
  %i.cjn = shufflevector <2 x float> %i.cjm, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cjo = shufflevector <2 x float> %foldExtExtBinop2894, <2 x float> %i.cjn, <2 x i32> <i32 0, i32 3>
  %i.cjp = fsub <2 x float> %i.cjk, %i.cjo
  %i.cjq = fsub <2 x float> %i.cjl, %i.cjm
  %i.cjr = fmul <2 x float> %i.cjp, splat (float 2.000000e+00)
  %i.cjs = fmul <2 x float> %i.cjq, splat (float 2.000000e+00)
  %i.cjt = fadd <2 x float> %.sroa.017.0.copyload.i605, %i.cjr ; 2 uses
  %i.cju = fadd <2 x float> %i.civ, %i.cjs        ; 2 uses
  %i.cjv = extractelement <2 x float> %i.cjt, i64 0
  %i.cjw = fmul float %i.cis, %i.cjv
  %shift2896 = shufflevector <2 x float> %i.cju, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2897 = fmul <2 x float> %i.cir, %shift2896
  %i.cjx = extractelement <2 x float> %foldExtExtBinop2897, i64 0
  %i.cjy = fsub float %i.cjw, %i.cjx              ; 3 uses
  %i.cjz = fmul <2 x float> %i.cir, %i.cju
  %i.cka = shufflevector <2 x float> %i.cir, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ckb = insertelement <2 x float> %i.cka, float %i.cis, i64 1
  %i.ckc = fmul <2 x float> %i.ckb, %i.cjt
  %i.ckd = fsub <2 x float> %i.cjz, %i.ckc        ; 4 uses
  %i.cke = fmul float %i.cjy, %i.cjy
  %i.ckf = fmul <2 x float> %i.ckd, %i.ckd        ; 2 uses
  %i.ckg = extractelement <2 x float> %i.ckf, i64 1
  %i.ckh = fadd float %i.ckg, %i.cke
  %i.cki = extractelement <2 x float> %i.ckf, i64 0
  %i.ckj = fadd float %i.cki, %i.ckh              ; 2 uses
  %i.ckk = fcmp ogt float %i.ckj, f0x057A0000
  br i1 %i.ckk, label %bb.by, label %b3ForceFixedAxis.exit

bb.by:                                            ; preds = %b3GetSweepTransform.exit860
  %sqrt.i611 = call float @llvm.sqrt.f32(float %i.ckj)
  %i.ckl = fdiv float 1.000000e+00, %sqrt.i611    ; 3 uses
  %i.ckm = extractelement <2 x float> %i.ckd, i64 1
  %i.ckn = fmul float %i.ckm, %i.ckl
  %.sroa.018.0.vec.insert.i.i612 = insertelement <2 x float> poison, float %i.ckn, i64 0
  %i.cko = fmul float %i.cjy, %i.ckl
  %.sroa.018.4.vec.insert.i.i613 = insertelement <2 x float> %.sroa.018.0.vec.insert.i.i612, float %i.cko, i64 1
  %i.ckp = extractelement <2 x float> %i.ckd, i64 0
  %i.ckq = fmul float %i.ckp, %i.ckl
  br label %b3ForceFixedAxis.exit

b3ForceFixedAxis.exit:                            ; preds = %b3GetSweepTransform.exit860, %bb.by
  %.sroa.018.0.i.i609 = phi <2 x float> [ %.sroa.018.4.vec.insert.i.i613, %bb.by ], [ zeroinitializer, %b3GetSweepTransform.exit860 ] ; 2 uses
  %.sroa.5.0.i.i610 = phi float [ %i.ckq, %bb.by ], [ 0.000000e+00, %b3GetSweepTransform.exit860 ]
  store i32 1, ptr %i.bp, align 8, !tbaa !39
  store <2 x float> %.sroa.018.0.i.i609, ptr %i.bl, align 8
  store float %.sroa.5.0.i.i610, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bq, i8 0, i64 12, i1 false)
  br label %.thread1067

.thread1067:                                      ; preds = %bb.bt, %b3ForceFixedAxis.exit, %bb.bu
  %.sroa.2216.0.copyload.i2151 = phi float [ 0.000000e+00, %b3ForceFixedAxis.exit ], [ %.sroa.218.0.copyload.i607, %bb.bu ], [ %.sroa.218.0.copyload.i607, %bb.bt ]
  %.sroa.0215.0.copyload.i2149 = phi <2 x float> [ zeroinitializer, %b3ForceFixedAxis.exit ], [ %.sroa.017.0.copyload.i605, %bb.bu ], [ %.sroa.017.0.copyload.i605, %bb.bt ]
  %.sroa.297.0.copyload.i2144 = phi float [ 0.000000e+00, %b3ForceFixedAxis.exit ], [ %.sroa.297.0.copyload.i2142, %bb.bu ], [ %.sroa.297.0.copyload.i2142, %bb.bt ]
  %.sroa.096.0.copyload.i2141 = phi <2 x float> [ zeroinitializer, %b3ForceFixedAxis.exit ], [ %.sroa.096.0.copyload.i2139, %bb.bu ], [ %.sroa.096.0.copyload.i2139, %bb.bt ]
  %.sroa.216.0.copyload.i2137 = phi float [ 0.000000e+00, %b3ForceFixedAxis.exit ], [ %.sroa.216.0.copyload.i2135, %bb.bu ], [ %.sroa.216.0.copyload.i2135, %bb.bt ]
  %.sroa.015.0.copyload.i2133 = phi <2 x float> [ zeroinitializer, %b3ForceFixedAxis.exit ], [ %.sroa.015.0.copyload.i2131, %bb.bu ], [ %.sroa.015.0.copyload.i2131, %bb.bt ]
  %i.ckr = phi i32 [ %i.cgb, %b3ForceFixedAxis.exit ], [ %i.cgb, %bb.bu ], [ %i.ced, %bb.bt ] ; 2 uses
  %.sroa.048.0.copyload.i1164 = phi <2 x float> [ %.sroa.018.0.i.i609, %b3ForceFixedAxis.exit ], [ %.sroa.048.0.copyload.i1165, %bb.bu ], [ %.sroa.048.0.copyload.i1165, %bb.bt ]
  %i.cks = phi i32 [ 1, %b3ForceFixedAxis.exit ], [ %i.azf, %bb.bu ], [ %i.azf, %bb.bt ]
  %.3329 = phi float [ %i.cgl, %b3ForceFixedAxis.exit ], [ %.0348, %bb.bu ], [ %.0326, %bb.bt ]
  %i.ckt = add nsw i32 %i.aze, 1
  %i.cku = add nuw nsw i32 %.0332, 1              ; 2 uses
  %i.ckv = icmp eq i32 %i.cku, %i.u
  br i1 %i.ckv, label %select.unfold1070, label %bb.aw

.thread1090:                                      ; preds = %bb.bp, %bb.bn, %bb.bk
  %.0.lcssa2194.sink = phi float [ %.0, %bb.bp ], [ %.0, %bb.bn ], [ %i.ccl, %bb.bk ]
  %i.ckw = phi <4 x float> [ %i.cfq, %bb.bp ], [ %i.ceb, %bb.bn ], [ %i.cck, %bb.bk ] ; 2 uses
  %i.ckx = phi <2 x float> [ %i.cfp, %bb.bp ], [ %i.cea, %bb.bn ], [ %i.ccj, %bb.bk ]
  store float %.0.lcssa2194.sink, ptr %i.a, align 4, !tbaa !82
  %i.cky = fmul <2 x float> %i.ckx, splat (float 2.000000e+00)
  %i.ckz = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cla = load float, ptr %i.ckz, align 4, !tbaa !87
  %i.clb = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.clc = load float, ptr %i.clb, align 4, !tbaa !88 ; 2 uses
  %i.cld = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cle = insertelement <2 x float> poison, float %.sroa.2208.0.copyload, i64 0
  %i.clf = insertelement <2 x float> %i.cle, float %.sroa.2198.0.copyload, i64 1
  %i.clg = fadd <2 x float> %i.clf, %i.cky
  %i.clh = insertelement <2 x float> poison, float %i.fc, i64 0
  %i.cli = shufflevector <2 x float> %i.clh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.clj = fadd <2 x float> %i.cli, %i.clg        ; 2 uses
  %i.clk = insertelement <2 x float> poison, float %i.js, i64 0
  %i.cll = shufflevector <2 x float> %i.clk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.clm = insertelement <2 x float> poison, float %i.cla, i64 0 ; 2 uses
  %i.cln = insertelement <2 x float> %i.clm, float %i.clc, i64 1
  %i.clo = fmul <2 x float> %i.cll, %i.cln        ; 2 uses
  %i.clp = fadd <2 x float> %i.clj, %i.clo
  %i.clq = fsub <2 x float> %i.clj, %i.clo
  %i.clr = shufflevector <2 x float> %i.clp, <2 x float> %i.clq, <2 x i32> <i32 0, i32 3>
  %i.cls = fmul <2 x float> %i.clr, splat (float 5.000000e-01) ; 2 uses
  %shift2899 = shufflevector <2 x float> %i.cls, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2900 = fadd <2 x float> %i.cls, %shift2899
  %i.clt = extractelement <2 x float> %foldExtExtBinop2900, i64 0
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.clu = shufflevector <4 x float> %i.ckw, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.clv = fadd <2 x float> %i.fb, %i.clu
  %i.clw = shufflevector <4 x float> %i.ckw, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.clx = fadd <2 x float> %i.fb, %i.clw
  %i.cly = shufflevector <2 x float> %i.clm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.clz = fmul <2 x float> %i.jq, %i.cly
  %i.cma = fadd <2 x float> %i.clx, %i.clz
  %i.cmb = insertelement <2 x float> poison, float %i.clc, i64 0
  %i.cmc = shufflevector <2 x float> %i.cmb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cmd = fmul <2 x float> %i.jq, %i.cmc
  %i.cme = fsub <2 x float> %i.clv, %i.cmd
  %i.cmf = fmul <2 x float> %i.cma, splat (float 5.000000e-01)
  %i.cmg = fmul <2 x float> %i.cme, splat (float 5.000000e-01)
  %i.cmh = fadd <2 x float> %i.cmf, %i.cmg
  %i.cmi = fadd <2 x float> %.sroa.8970.0.copyload, %i.cmh
  %i.cmj = fadd float %.sroa.12975.0.copyload, %i.clt
  store <2 x float> %i.cmi, ptr %i.cld, align 4
  store float %i.cmj, ptr %.sroa.417.0..sroa_idx, align 4, !tbaa !16
  %i.cmk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.jq, ptr %i.cmk, align 4
  %.sroa.16.0..sroa_idx236 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.js, ptr %.sroa.16.0..sroa_idx236, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %.thread1087

select.unfold1070:                                ; preds = %bb.bl, %.thread1067
  %i.cml = phi i32 [ %i.aze, %bb.bl ], [ %i.azd, %.thread1067 ]
  %.lcssa11611170 = phi i32 [ %.lcssa11611167, %bb.bl ], [ %i.ckr, %.thread1067 ]
  %.2.ph = phi float [ %.0326, %bb.bl ], [ %.0, %.thread1067 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.b

.thread1087:                                      ; preds = %bb.i, %bb.g, %bb.e, %.thread1090
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc float @b3EvaluateSeparation(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, i32 noundef %2, float noundef %3) unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.b3Transform, align 8        ; 19 uses
  %5 = alloca %struct.b3Transform, align 8        ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @b3GetSweepTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %4, ptr noundef nonnull %i.a, float noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 84
  call void @b3GetSweepTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %5, ptr noundef nonnull %i.b, float noundef %3)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39
  switch i32 %i.d, label %bb.g [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.0166.0.copyload = load <2 x float>, ptr %i.e, align 8 ; 2 uses
  %.sroa.4167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.sroa.4167.0.copyload = load float, ptr %.sroa.4167.0..sroa_idx, align 8, !tbaa !16
  %i.f = load ptr, ptr %0, align 8, !tbaa !37
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = sext i32 %1 to i64
  %i.i = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.i, align 4 ; 5 uses
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2163.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0468.0.copyload = load <2 x float>, ptr %4, align 8 ; 2 uses
  %.sroa.4469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4469.0.copyload = load float, ptr %.sroa.4469.0..sroa_idx, align 8
  %.sroa.5470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.5470.0.copyload = load <2 x float>, ptr %.sroa.5470.0..sroa_idx, align 4 ; 6 uses
  %.sroa.6471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  %.sroa.6471.0.copyload = load <2 x float>, ptr %.sroa.6471.0..sroa_idx, align 4 ; 5 uses
  %.sroa.011.4.vec.extract.i.i = extractelement <2 x float> %.sroa.5470.0.copyload, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !38
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = sext i32 %2 to i64
  %i.n = getelementptr inbounds [12 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %.sroa.0154.0.copyload = load <2 x float>, ptr %i.n, align 4 ; 5 uses
  %.sroa.2155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.2155.0.copyload = load float, ptr %.sroa.2155.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0464.0.copyload = load <2 x float>, ptr %5, align 8 ; 2 uses
  %.sroa.4465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.4465.0.copyload = load float, ptr %.sroa.4465.0..sroa_idx, align 8
  %.sroa.5466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.5466.0.copyload = load <2 x float>, ptr %.sroa.5466.0..sroa_idx, align 4 ; 6 uses
  %.sroa.6467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  %.sroa.6467.0.copyload = load <2 x float>, ptr %.sroa.6467.0..sroa_idx, align 4 ; 5 uses
  %.sroa.011.4.vec.extract.i.i229 = extractelement <2 x float> %.sroa.5466.0.copyload, i64 1
  %i.o = fmul float %.sroa.2163.0.copyload, %.sroa.011.4.vec.extract.i.i
  %shift = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %.sroa.6471.0.copyload
  %i.p = shufflevector <2 x float> %.sroa.6471.0.copyload, <2 x float> %.sroa.5470.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.q = fmul <2 x float> %.sroa.0162.0.copyload, %i.p ; 2 uses
  %i.r = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.s = insertelement <2 x float> %i.r, float %.sroa.2163.0.copyload, i64 0 ; 2 uses
  %i.t = fmul <2 x float> %i.s, %.sroa.5470.0.copyload ; 2 uses
  %i.u = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.v = insertelement <2 x float> %i.u, float %i.o, i64 0
  %i.w = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.x = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.w, <2 x i32> <i32 0, i32 3>
  %i.y = fsub <2 x float> %i.v, %i.x
  %i.z = fsub <2 x float> %i.q, %i.t
  %i.aa = shufflevector <2 x float> %.sroa.6471.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ab = fmul <2 x float> %.sroa.0162.0.copyload, %i.aa
  %i.ac = insertelement <2 x float> %i.r, float %.sroa.2163.0.copyload, i64 1
  %i.ad = fmul <2 x float> %i.ac, %i.aa
  %i.ae = fadd <2 x float> %i.ab, %i.y            ; 2 uses
  %i.af = fadd <2 x float> %i.ad, %i.z            ; 2 uses
  %i.ag = fmul <2 x float> %.sroa.5470.0.copyload, %i.af
  %i.ah = shufflevector <2 x float> %.sroa.5470.0.copyload, <2 x float> %.sroa.6471.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.ai = fmul <2 x float> %i.ah, %i.ae
  %i.aj = fsub <2 x float> %i.ag, %i.ai
  %i.ak = fmul <2 x float> %i.aj, splat (float 2.000000e+00)
  %i.al = fadd <2 x float> %i.s, %i.ak
  %i.am = shufflevector <2 x float> %.sroa.0468.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.an = insertelement <2 x float> %i.am, float %.sroa.4469.0.copyload, i64 0
  %i.ao = fadd <2 x float> %i.an, %i.al
  %i.ap = fmul float %.sroa.2155.0.copyload, %.sroa.011.4.vec.extract.i.i229
  %shift474 = shufflevector <2 x float> %.sroa.0154.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop475 = fmul <2 x float> %shift474, %.sroa.6467.0.copyload
  %i.aq = shufflevector <2 x float> %.sroa.6467.0.copyload, <2 x float> %.sroa.5466.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ar = fmul <2 x float> %.sroa.0154.0.copyload, %i.aq ; 2 uses
  %i.as = shufflevector <2 x float> %.sroa.0154.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.at = insertelement <2 x float> %i.as, float %.sroa.2155.0.copyload, i64 0 ; 2 uses
  %i.au = fmul <2 x float> %i.at, %.sroa.5466.0.copyload ; 2 uses
  %i.av = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aw = insertelement <2 x float> %i.av, float %i.ap, i64 0
  %i.ax = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ay = shufflevector <2 x float> %foldExtExtBinop475, <2 x float> %i.ax, <2 x i32> <i32 0, i32 3>
  %i.az = fsub <2 x float> %i.aw, %i.ay
  %i.ba = fsub <2 x float> %i.ar, %i.au
  %i.bb = shufflevector <2 x float> %.sroa.6467.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bc = fmul <2 x float> %.sroa.0154.0.copyload, %i.bb
  %i.bd = insertelement <2 x float> %i.as, float %.sroa.2155.0.copyload, i64 1
  %i.be = fmul <2 x float> %i.bd, %i.bb
  %i.bf = fadd <2 x float> %i.bc, %i.az           ; 2 uses
  %i.bg = fadd <2 x float> %i.be, %i.ba           ; 2 uses
  %i.bh = fmul <2 x float> %.sroa.5466.0.copyload, %i.bg
  %i.bi = shufflevector <2 x float> %.sroa.5466.0.copyload, <2 x float> %.sroa.6467.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.bj = fmul <2 x float> %i.bi, %i.bf
  %i.bk = fsub <2 x float> %i.bh, %i.bj
  %i.bl = fmul <2 x float> %i.bk, splat (float 2.000000e+00)
  %i.bm = fadd <2 x float> %i.at, %i.bl
  %i.bn = shufflevector <2 x float> %.sroa.6467.0.copyload, <2 x float> %.sroa.6471.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.bo = shufflevector <2 x float> %i.bf, <2 x float> %i.ae, <2 x i32> <i32 0, i32 2>
  %i.bp = fmul <2 x float> %i.bn, %i.bo
  %i.bq = shufflevector <2 x float> %.sroa.5466.0.copyload, <2 x float> %.sroa.5470.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.br = shufflevector <2 x float> %i.bg, <2 x float> %i.af, <2 x i32> <i32 1, i32 3>
  %i.bs = fmul <2 x float> %i.bq, %i.br
  %i.bt = fsub <2 x float> %i.bp, %i.bs
  %i.bu = fmul <2 x float> %i.bt, splat (float 2.000000e+00)
  %i.bv = shufflevector <2 x float> %.sroa.0154.0.copyload, <2 x float> %.sroa.0162.0.copyload, <2 x i32> <i32 1, i32 3>
end_hunk_2
