Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/chroma?download=true
inline.NumInlined: 261
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@llvm.fmuladd.f32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui10xyz_to_rgbERKNSt3__15arrayINS_5ArrayIfLm2EEELm4EEEf(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.nanogui::Matrix") align 4 captures(none) initializes((0, 36)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"struct.nanogui::Matrix", align 8  ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZN7nanogui10rgb_to_xyzERKNSt3__15arrayINS_5ArrayIfLm2EEELm4EEEf(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Matrix") align 4 %3, ptr noundef nonnull align 4 dereferenceable(32) %1, float noundef %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = load <2 x float>, ptr %i.b, align 8, !tbaa !10, !noalias !18 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.g = load float, ptr %i.a, align 4, !tbaa !10, !noalias !18 ; 3 uses
  %i.h = load float, ptr %i.c, align 8, !tbaa !10, !noalias !18
  %i.i = fneg float %i.h                          ; 3 uses
  %i.j = extractelement <2 x float> %i.e, i64 1   ; 2 uses
  %i.k = fmul float %i.j, %i.i
  %i.l = extractelement <2 x float> %i.e, i64 0   ; 3 uses
  %i.m = fmul float %i.l, %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.o = load <2 x float>, ptr %i.f, align 4, !tbaa !10, !noalias !18 ; 2 uses
  %i.p = load float, ptr %i.d, align 8, !tbaa !10, !noalias !18 ; 2 uses
  %i.q = extractelement <2 x float> %i.o, i64 0   ; 2 uses
  %i.r = fneg float %i.q                          ; 2 uses
  %i.s = fmul float %i.j, %i.r
  %i.t = tail call float @llvm.fmuladd.f32(float %i.l, float %i.p, float %i.s) ; 2 uses
  %i.u = tail call float @llvm.fmuladd.f32(float %i.g, float %i.p, float %i.k)
  %i.v = tail call float @llvm.fmuladd.f32(float %i.g, float %i.q, float %i.m) ; 2 uses
  %i.w = load <2 x float>, ptr %3, align 8, !tbaa !10, !noalias !18 ; 5 uses
  %i.x = fneg float %i.u                          ; 2 uses
  %i.y = load <2 x float>, ptr %i.n, align 4, !tbaa !10, !noalias !18 ; 3 uses
  %i.z = extractelement <2 x float> %i.w, i64 1
  %i.aa = fmul float %i.z, %i.x
  %i.ab = extractelement <2 x float> %i.w, i64 0
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.t, float %i.aa)
  %i.ad = extractelement <2 x float> %i.y, i64 1
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.v, float %i.ac) ; 2 uses
  %i.af = fcmp oeq float %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !18
  br label %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit

bb.c:                                             ; preds = %bb.a
  %i.ag = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.ah = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ai = fdiv float 1.000000e+00, %i.ae          ; 2 uses
  %i.aj = fneg float %i.l
  %i.ak = insertelement <4 x float> poison, float %i.i, i64 0
  %i.al = insertelement <4 x float> %i.ak, float %i.r, i64 1
  %i.am = insertelement <4 x float> %i.al, float %i.aj, i64 3
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.ao = fmul <4 x float> %i.ag, %i.an
  %i.ap = shufflevector <2 x float> %i.o, <2 x float> %i.e, <4 x i32> <i32 1, i32 1, i32 0, i32 3>
  %i.aq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> %i.ap, <4 x float> %i.ao) ; 4 uses
  %i.ar = fneg float %i.g
  %i.as = shufflevector <2 x float> %i.w, <2 x float> %i.y, <2 x i32> <i32 1, i32 3>
  %i.at = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x float> %i.as, %i.au
  %i.aw = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.e, <2 x float> %i.av) ; 2 uses
  %i.ay = fneg <4 x float> %i.aq
  %i.az = insertelement <4 x float> %i.ay, float %i.t, i64 0
  %i.ba = shufflevector <4 x float> %i.az, <4 x float> %i.aq, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.bb = insertelement <4 x float> %i.ba, float %i.x, i64 3
  %i.bc = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.be = fmul <4 x float> %i.bb, %i.bd
  store <4 x float> %i.be, ptr %0, align 4, !tbaa !10, !alias.scope !18
  %i.bf = fneg <2 x float> %i.ax
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bh = shufflevector <4 x float> %i.aq, <4 x float> %i.bg, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.bi = insertelement <4 x float> %i.bh, float %i.v, i64 2
  %i.bj = fneg <4 x float> %i.aq
  %i.bk = shufflevector <4 x float> %i.bi, <4 x float> %i.bj, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.bl = fmul <4 x float> %i.bk, %i.bd
  %i.bm = extractelement <2 x float> %i.ax, i64 0
  %i.bn = fmul float %i.bm, %i.ai
  br label %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit

_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit:    ; preds = %bb.b, %bb.c
  %.sink.i = phi float [ 0.000000e+00, %bb.b ], [ %i.bn, %bb.c ]
  %i.bo = phi <4 x float> [ zeroinitializer, %bb.b ], [ %i.bl, %bb.c ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %i.bo, ptr %i.bp, align 4, !tbaa !10, !alias.scope !18
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %.sink.i, ptr %i.bq, align 4, !tbaa !10, !alias.scope !18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef <2 x float> @_ZN7nanogui9white_d65Ev() local_unnamed_addr #5 {
bb.a:
  ret <2 x float> <float 3.127100e-01, float 3.290200e-01>
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef <2 x float> @_ZN7nanogui12white_centerEv() local_unnamed_addr #5 {
bb.a:
  ret <2 x float> splat (float 3.333330e-01)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef <2 x float> @_ZN7nanogui7white_cEv() local_unnamed_addr #5 {
bb.a:
  ret <2 x float> <float 3.100000e-01, float 3.160000e-01>
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef <2 x float> @_ZN7nanogui9white_dciEv() local_unnamed_addr #5 {
bb.a:
  ret <2 x float> <float 3.140000e-01, float 3.510000e-01>
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN7nanogui13rec709_chromaEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::__1::array") align 4 captures(none) initializes((0, 32)) %0) local_unnamed_addr #6 {
bb.a:
  store <4 x float> <float 6.400000e-01, float 3.300000e-01, float 3.000000e-01, float 6.000000e-01>, ptr %0, align 4, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> <float 1.500000e-01, float 6.000000e-02>, ptr %i.a, align 4, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> <float 3.127100e-01, float 3.290200e-01>, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN7nanogui12adobe_chromaEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::__1::array") align 4 captures(none) initializes((0, 32)) %0) local_unnamed_addr #6 {
bb.a:
  store <4 x float> <float 6.400000e-01, float 3.300000e-01, float 2.100000e-01, float f0x3F35C28F>, ptr %0, align 4, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> <float 1.500000e-01, float 6.000000e-02>, ptr %i.a, align 4, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> <float 3.127100e-01, float 3.290200e-01>, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN7nanogui16pro_photo_chromaEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::__1::array") align 4 captures(none) initializes((0, 32)) %0) local_unnamed_addr #7 {
bb.a:
  store <4 x float> <float 7.346990e-01, float 2.653010e-01, float 1.595970e-01, float 8.404030e-01>, ptr %0, align 4, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> <float 3.659800e-02, float 1.050000e-04, float 3.457040e-01, float 3.585400e-01>, ptr %i.a, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN7nanogui17display_p3_chromaEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::__1::array") align 4 captures(none) initializes((0, 32)) %0) local_unnamed_addr #6 {
bb.a:
  store <4 x float> <float 6.800000e-01, float 3.200000e-01, float 2.650000e-01, float f0x3F30A3D7>, ptr %0, align 4, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> <float 1.500000e-01, float 6.000000e-02>, ptr %i.a, align 4, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> <float 3.127100e-01, float 3.290200e-01>, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN7nanogui13dci_p3_chromaEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::__1::array") align 4 captures(none) initializes((0, 32)) %0) local_unnamed_addr #6 {
bb.a:
  store <4 x float> <float 6.800000e-01, float 3.200000e-01, float 2.650000e-01, float f0x3F30A3D7>, ptr %0, align 4, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> <float 1.500000e-01, float 6.000000e-02>, ptr %i.a, align 4, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> <float 3.140000e-01, float 3.510000e-01>, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN7nanogui13bt2020_chromaEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::__1::array") align 4 captures(none) initializes((0, 32)) %0) local_unnamed_addr #6 {
bb.a:
  store <4 x float> <float 7.080000e-01, float 2.920000e-01, float 1.700000e-01, float f0x3F4C0831>, ptr %0, align 4, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> <float 1.310000e-01, float 4.600000e-02>, ptr %i.a, align 4, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> <float 3.127100e-01, float 3.290200e-01>, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN7nanogui13bt2100_chromaEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::__1::array") align 4 captures(none) initializes((0, 32)) %0) local_unnamed_addr #6 {
bb.a:
  store <4 x float> <float 7.080000e-01, float 2.920000e-01, float 1.700000e-01, float f0x3F4C0831>, ptr %0, align 4, !tbaa !10, !alias.scope !21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> <float 1.310000e-01, float 4.600000e-02>, ptr %i.a, align 4, !tbaa !10, !alias.scope !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> <float 3.127100e-01, float 3.290200e-01>, ptr %i.b, align 4, !alias.scope !21
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui23chroma_to_rec709_matrixERKNSt3__15arrayINS_5ArrayIfLm2EEELm4EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.nanogui::Matrix") align 4 captures(none) initializes((0, 36)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) local_unnamed_addr #8 {
bb.a:
  %2 = alloca %"struct.nanogui::Matrix", align 8  ; 10 uses
  %3 = alloca %"struct.std::__1::array", align 16 ; 6 uses
  %4 = alloca %"struct.nanogui::Matrix", align 8  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store <4 x float> <float 6.400000e-01, float 3.300000e-01, float 3.000000e-01, float 6.000000e-01>, ptr %3, align 16, !tbaa !10, !alias.scope !26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <2 x float> <float 1.500000e-01, float 6.000000e-02>, ptr %i.a, align 16, !tbaa !10, !alias.scope !26
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  store <2 x float> <float 3.127100e-01, float 3.290200e-01>, ptr %i.b, align 8, !alias.scope !26
  call void @_ZN7nanogui10xyz_to_rgbERKNSt3__15arrayINS_5ArrayIfLm2EEELm4EEEf(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Matrix") align 4 %2, ptr noundef nonnull align 4 dereferenceable(32) %3, float noundef 1.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @_ZN7nanogui10rgb_to_xyzERKNSt3__15arrayINS_5ArrayIfLm2EEELm4EEEf(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Matrix") align 4 %4, ptr noundef nonnull align 4 dereferenceable(32) %1, float noundef 1.000000e+00)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %6 = load float, ptr %i.e, align 8, !tbaa !10, !noalias !27 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 28
  %7 = load <2 x float>, ptr %2, align 8, !tbaa !10, !noalias !27 ; 3 uses
  %8 = load float, ptr %i.d, align 4, !tbaa !10, !noalias !27 ; 2 uses
  %9 = load <2 x float>, ptr %4, align 8, !tbaa !10, !noalias !27 ; 2 uses
  %i.l = load <1 x float>, ptr %i.g, align 4
  %10 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %6, i64 0 ; 2 uses
  %11 = shufflevector <2 x float> %9, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %12 = shufflevector <4 x float> %11, <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %13 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> %12, <4 x float> zeroinitializer)
  %14 = shufflevector <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, <4 x float> %11, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %15 = load <2 x float>, ptr %i.j, align 8, !tbaa !10, !noalias !27 ; 2 uses
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %17 = shufflevector <2 x float> %7, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %18 = shufflevector <4 x float> %17, <4 x float> %10, <4 x i32> <i32 poison, i32 0, i32 1, i32 4>
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = load <4 x float>, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 20
  %21 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %22 = load <2 x float>, ptr %i.f, align 4, !tbaa !10, !noalias !27 ; 3 uses
  %23 = extractelement <2 x float> %22, i64 0
  %24 = shufflevector <2 x float> %7, <2 x float> %22, <4 x i32> <i32 2, i32 3, i32 poison, i32 0>
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %26 = load <2 x float>, ptr %i.i, align 8, !tbaa !10, !noalias !27 ; 3 uses
  %i.n = load float, ptr %21, align 8, !tbaa !10, !noalias !27
  %27 = load <2 x float>, ptr %20, align 4, !tbaa !10, !noalias !27 ; 2 uses
  %28 = shufflevector <2 x float> %27, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.o = extractelement <2 x float> %26, i64 0
  %29 = shufflevector <2 x float> %27, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %30 = shufflevector <4 x float> %i.m, <4 x float> %29, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %31 = getelementptr inbounds nuw i8, ptr %4, i64 28
  %32 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.p = load <2 x float>, ptr %i.h, align 8, !tbaa !10, !noalias !27 ; 3 uses
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %33 = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.q, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.r = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %33, <4 x float> %14, <4 x float> %13)
  %34 = load <2 x float>, ptr %i.k, align 4, !tbaa !10, !noalias !27 ; 4 uses
  %35 = shufflevector <2 x float> %34, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %36 = shufflevector <4 x float> %35, <4 x float> %18, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.s = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %36, <4 x float> %16, <4 x float> %i.r) ; 2 uses
  %37 = shufflevector <4 x float> %24, <4 x float> %i.q, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %38 = shufflevector <4 x float> %i.s, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 3, i32 7>
  %39 = insertelement <2 x float> %7, float %8, i64 1
  %40 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %41 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %39, <2 x float> %40, <2 x float> zeroinitializer)
  %42 = shufflevector <2 x float> %22, <2 x float> %i.p, <2 x i32> <i32 0, i32 2>
  %43 = shufflevector <1 x float> %i.l, <1 x float> poison, <2 x i32> zeroinitializer
  %44 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %42, <2 x float> %43, <2 x float> %41)
  %45 = shufflevector <2 x float> %26, <2 x float> %34, <2 x i32> <i32 0, i32 2>
  %46 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %47 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %45, <2 x float> %46, <2 x float> %44)
  store <2 x float> %47, ptr %0, align 4, !tbaa !10, !alias.scope !27
  %48 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %37, <4 x float> %30, <4 x float> %38) ; 2 uses
  %49 = shufflevector <2 x float> %26, <2 x float> %34, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %50 = insertelement <4 x float> %49, float %8, i64 3
  %51 = insertelement <4 x float> %48, float 0.000000e+00, i64 3
  %i.t = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %50, <4 x float> %28, <4 x float> %51) ; 2 uses
  %52 = shufflevector <4 x float> %i.s, <4 x float> %i.t, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  store <4 x float> %52, ptr %5, align 4, !tbaa !10, !alias.scope !27
  %53 = tail call float @llvm.fmuladd.f32(float %6, float %i.n, float 0.000000e+00)
  %54 = load float, ptr %31, align 4, !tbaa !10, !noalias !27 ; 2 uses
  %55 = extractelement <4 x float> %48, i64 3
  %56 = tail call float @llvm.fmuladd.f32(float %23, float %54, float %55)
  %57 = insertelement <2 x float> poison, float %54, i64 0
  %58 = shufflevector <2 x float> %57, <2 x float> poison, <2 x i32> zeroinitializer
  %59 = shufflevector <4 x float> %i.t, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %60 = insertelement <2 x float> %59, float %53, i64 1
  %61 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %58, <2 x float> %60)
  %62 = load float, ptr %32, align 8, !tbaa !10, !noalias !27 ; 2 uses
  %63 = tail call float @llvm.fmuladd.f32(float %i.o, float %62, float %56)
  store float %63, ptr %i.c, align 4, !tbaa !10, !alias.scope !27
  %64 = insertelement <2 x float> poison, float %62, i64 0
  %65 = shufflevector <2 x float> %64, <2 x float> poison, <2 x i32> zeroinitializer
  %66 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %34, <2 x float> %65, <2 x float> %61)
  store <2 x float> %66, ptr %25, align 4, !tbaa !10, !alias.scope !27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui24chroma_from_wp_primariesEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::__1::array") align 4 captures(none) initializes((0, 32)) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i32 %1, 10
  br i1 %i.a, label %_ZN7nanogui8ituth2736chromaENS0_14ColorPrimariesE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i8 @_ZN7nanogui8ituth27317from_wp_primariesEi(i32 noundef %1) ; 2 uses
  switch i8 %i.b, label %bb.c [
    i8 1, label %_ZN7nanogui8ituth2736chromaENS0_14ColorPrimariesE.exit
    i8 2, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.f
    i8 6, label %bb.g
    i8 7, label %bb.g
    i8 8, label %bb.h
    i8 9, label %bb.i
    i8 10, label %bb.j
    i8 11, label %bb.k
    i8 12, label %bb.l
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !15, !noalias !30
  %i.d = zext nneg i8 %i.b to i32
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.16, i32 noundef %i.d) #19, !noalias !30 ; 0 uses
  br label %_ZN7nanogui8ituth2736chromaENS0_14ColorPrimariesE.exit

bb.d:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !15, !noalias !30
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.17, i64 50, i64 1, ptr %i.f) #20, !noalias !30 ; 0 uses
  br label %_ZN7nanogui8ituth2736chromaENS0_14ColorPrimariesE.exit

bb.e:                                             ; preds = %bb.b
  br label %_ZN7nanogui8ituth2736chromaENS0_14ColorPrimariesE.exit

bb.f:                                             ; preds = %bb.b
  br label %_ZN7nanogui8ituth2736chromaENS0_14ColorPrimariesE.exit

bb.g:                                             ; preds = %bb.b, %bb.b
  br label %_ZN7nanogui8ituth2736chromaENS0_14ColorPrimariesE.exit

bb.h:                                             ; preds = %bb.b
  br label %_ZN7nanogui8ituth2736chromaENS0_14ColorPrimariesE.exit

bb.i:                                             ; preds = %bb.b
  br label %_ZN7nanogui8ituth2736chromaENS0_14ColorPrimariesE.exit

bb.j:                                             ; preds = %bb.b
  br label %_ZN7nanogui8ituth2736chromaENS0_14ColorPrimariesE.exit

bb.k:                                             ; preds = %bb.b
  br label %_ZN7nanogui8ituth2736chromaENS0_14ColorPrimariesE.exit

bb.l:                                             ; preds = %bb.b
  br label %_ZN7nanogui8ituth2736chromaENS0_14ColorPrimariesE.exit

_ZN7nanogui8ituth2736chromaENS0_14ColorPrimariesE.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sink.i.sink = phi <2 x float> [ <float 3.127100e-01, float 3.290200e-01>, %bb.a ], [ <float 3.127100e-01, float 3.290200e-01>, %bb.b ], [ <float 3.127100e-01, float 3.290200e-01>, %bb.l ], [ <float 3.140000e-01, float 3.510000e-01>, %bb.k ], [ splat (float 3.333330e-01), %bb.j ], [ <float 3.127100e-01, float 3.290200e-01>, %bb.i ], [ <float 3.100000e-01, float 3.160000e-01>, %bb.h ], [ <float 3.127100e-01, float 3.290200e-01>, %bb.g ], [ <float 3.127100e-01, float 3.290200e-01>, %bb.f ], [ <float 3.100000e-01, float 3.160000e-01>, %bb.e ], [ <float 3.127100e-01, float 3.290200e-01>, %bb.d ], [ <float 3.127100e-01, float 3.290200e-01>, %bb.c ]
  %i.g = phi <4 x float> [ <float 6.400000e-01, float 3.300000e-01, float 2.100000e-01, float f0x3F35C28F>, %bb.a ], [ <float 6.400000e-01, float 3.300000e-01, float 3.000000e-01, float 6.000000e-01>, %bb.b ], [ <float 6.800000e-01, float 3.200000e-01, float 2.650000e-01, float f0x3F30A3D7>, %bb.l ], [ <float 6.800000e-01, float 3.200000e-01, float 2.650000e-01, float f0x3F30A3D7>, %bb.k ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.j ], [ <float 7.080000e-01, float 2.920000e-01, float 1.700000e-01, float f0x3F4C0831>, %bb.i ], [ <float 6.810000e-01, float 3.190000e-01, float 2.430000e-01, float f0x3F3126E9>, %bb.h ], [ <float 6.300000e-01, float 3.400000e-01, float 3.100000e-01, float 5.950000e-01>, %bb.g ], [ <float 6.400000e-01, float 3.300000e-01, float 2.900000e-01, float 6.000000e-01>, %bb.f ], [ <float 6.700000e-01, float 3.300000e-01, float 2.100000e-01, float f0x3F35C28F>, %bb.e ], [ <float 6.400000e-01, float 3.300000e-01, float 3.000000e-01, float 6.000000e-01>, %bb.d ], [ <float 6.400000e-01, float 3.300000e-01, float 3.000000e-01, float 6.000000e-01>, %bb.c ]
  %i.h = phi <2 x float> [ <float 1.500000e-01, float 6.000000e-02>, %bb.a ], [ <float 1.500000e-01, float 6.000000e-02>, %bb.b ], [ <float 1.500000e-01, float 6.000000e-02>, %bb.l ], [ <float 1.500000e-01, float 6.000000e-02>, %bb.k ], [ zeroinitializer, %bb.j ], [ <float 1.310000e-01, float 4.600000e-02>, %bb.i ], [ <float 1.450000e-01, float 4.900000e-02>, %bb.h ], [ <float 1.550000e-01, float 7.000000e-02>, %bb.g ], [ <float 1.500000e-01, float 6.000000e-02>, %bb.f ], [ <float 1.400000e-01, float 8.000000e-02>, %bb.e ], [ <float 1.500000e-01, float 6.000000e-02>, %bb.d ], [ <float 1.500000e-01, float 6.000000e-02>, %bb.c ]
  store <4 x float> %i.g, ptr %0, align 4, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.h, ptr %i.i, align 4, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> %.sink.i.sink, ptr %i.j, align 4
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden void @_ZN7nanogui8ituth2736chromaENS0_14ColorPrimariesE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::__1::array") align 4 captures(none) initializes((0, 32)) %0, i8 noundef zeroext %1) local_unnamed_addr #9 {
bb.a:
  switch i8 %1, label %bb.b [
    i8 1, label %bb.m
    i8 2, label %bb.c
    i8 4, label %bb.d
    i8 5, label %bb.e
    i8 6, label %bb.f
    i8 7, label %bb.f
    i8 8, label %bb.g
    i8 9, label %bb.h
    i8 10, label %bb.i
    i8 11, label %bb.j
    i8 12, label %bb.k
    i8 22, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.b = zext i8 %1 to i32
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.16, i32 noundef %i.b) #19 ; 0 uses
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.17, i64 50, i64 1, ptr %i.d) #20 ; 0 uses
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  br label %bb.m

bb.f:                                             ; preds = %bb.a, %bb.a
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink = phi <2 x float> [ <float 3.127100e-01, float 3.290200e-01>, %bb.l ], [ <float 3.127100e-01, float 3.290200e-01>, %bb.k ], [ <float 3.140000e-01, float 3.510000e-01>, %bb.j ], [ splat (float 3.333330e-01), %bb.i ], [ <float 3.127100e-01, float 3.290200e-01>, %bb.h ], [ <float 3.100000e-01, float 3.160000e-01>, %bb.g ], [ <float 3.127100e-01, float 3.290200e-01>, %bb.f ], [ <float 3.127100e-01, float 3.290200e-01>, %bb.e ], [ <float 3.100000e-01, float 3.160000e-01>, %bb.d ], [ <float 3.127100e-01, float 3.290200e-01>, %bb.c ], [ <float 3.127100e-01, float 3.290200e-01>, %bb.b ], [ <float 3.127100e-01, float 3.290200e-01>, %bb.a ]
  %i.e = phi <4 x float> [ <float 6.300000e-01, float 3.400000e-01, float 2.950000e-01, float 6.050000e-01>, %bb.l ], [ <float 6.800000e-01, float 3.200000e-01, float 2.650000e-01, float f0x3F30A3D7>, %bb.k ], [ <float 6.800000e-01, float 3.200000e-01, float 2.650000e-01, float f0x3F30A3D7>, %bb.j ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.i ], [ <float 7.080000e-01, float 2.920000e-01, float 1.700000e-01, float f0x3F4C0831>, %bb.h ], [ <float 6.810000e-01, float 3.190000e-01, float 2.430000e-01, float f0x3F3126E9>, %bb.g ], [ <float 6.300000e-01, float 3.400000e-01, float 3.100000e-01, float 5.950000e-01>, %bb.f ], [ <float 6.400000e-01, float 3.300000e-01, float 2.900000e-01, float 6.000000e-01>, %bb.e ], [ <float 6.700000e-01, float 3.300000e-01, float 2.100000e-01, float f0x3F35C28F>, %bb.d ], [ <float 6.400000e-01, float 3.300000e-01, float 3.000000e-01, float 6.000000e-01>, %bb.c ], [ <float 6.400000e-01, float 3.300000e-01, float 3.000000e-01, float 6.000000e-01>, %bb.b ], [ <float 6.400000e-01, float 3.300000e-01, float 3.000000e-01, float 6.000000e-01>, %bb.a ]
  %i.f = phi <2 x float> [ <float 1.550000e-01, float 7.700000e-02>, %bb.l ], [ <float 1.500000e-01, float 6.000000e-02>, %bb.k ], [ <float 1.500000e-01, float 6.000000e-02>, %bb.j ], [ zeroinitializer, %bb.i ], [ <float 1.310000e-01, float 4.600000e-02>, %bb.h ], [ <float 1.450000e-01, float 4.900000e-02>, %bb.g ], [ <float 1.550000e-01, float 7.000000e-02>, %bb.f ], [ <float 1.500000e-01, float 6.000000e-02>, %bb.e ], [ <float 1.400000e-01, float 8.000000e-02>, %bb.d ], [ <float 1.500000e-01, float 6.000000e-02>, %bb.c ], [ <float 1.500000e-01, float 6.000000e-02>, %bb.b ], [ <float 1.500000e-01, float 6.000000e-02>, %bb.a ]
  store <4 x float> %i.e, ptr %0, align 4, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.f, ptr %i.g, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> %.sink, ptr %i.h, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext range(i8 1, 13) i8 @_ZN7nanogui8ituth27317from_wp_primariesEi(i32 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__1::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 9
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZNSt3__19to_stringEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %2, i32 noundef %0)
          to label %bb.c unwind label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit12.thread

bb.c:                                             ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0, ptr noundef nonnull @.str.18)
          to label %bb.d unwind label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ; 2 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false), !noalias !33
  invoke void @_ZNSt11logic_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt16invalid_argument, i64 16), ptr %i.b, align 8, !tbaa !12
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #18
          to label %bb.j unwind label %bb.f

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit12.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.f = load i8, ptr %1, align 8
  %i.g = trunc i8 %i.f to i1
  br i1 %i.g, label %bb.g, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.j = load i64, ptr %1, align 8
  %i.k = and i64 %i.j, -2
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.k) #21
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.g, %bb.f
  %i.l = load i8, ptr %2, align 8
  %i.m = trunc i8 %i.l to i1
  br i1 %i.m, label %.split, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit12

end_hunk_0
