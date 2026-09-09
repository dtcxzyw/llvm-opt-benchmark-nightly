Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/dec_group?download=true
inline.NumInlined: 2848
inline.NumDeleted: 1074
loop-unroll.NumCompletelyUnrolled: 609
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 661
begin_hunk_0_@_ZN3jxl6N_AVX215DecodeGroupImplERKNS_11FrameHeaderEPNS_8GetBlockEPNS_13GroupDecCacheEPNS_18PassesDecoderStateEmmRNS_19RenderPipelineInputEPNS_4jpeg8JPEGDataENS_8DrawModeE:bb.a
  %.idx402 = shl i64 %i.aha, 5
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %.idx402
  %i.ahm = load i32, ptr %10, align 8, !tbaa !255
  %i.ahn = mul i64 %i.sv, %i.agy
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.agg, i64 %i.ahn
  %i.ahp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.agy
  %i.ahq = load i64, ptr %i.ahp, align 8, !tbaa !191
  call fastcc void @_ZN3jxl6N_AVX212_GLOBAL__N_117TransformToPixelsENS_14AcStrategyTypeEPfS3_mS3_(i32 noundef %i.ahm, ptr noundef %i.aho, ptr noundef %i.ahl, i64 noundef %i.ahq, ptr noundef %i.agw) #50
  br label %bb.as

bb.as:                                            ; preds = %bb.ap, %bb.aq, %bb.ar
  %.0.add = add nuw nsw i64 %.0.idx533, 4         ; 2 uses
  %.not399 = icmp eq i64 %.0.add, 12
  br i1 %.not399, label %.loopexit504, label %bb.ap

.loopexit504:                                     ; preds = %bb.an, %bb.as, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #48
  br label %.backedge

.loopexit609:                                     ; preds = %.loopexit505, %bb.y, %bb.ac, %.loopexit
  %.sroa.0445.13.jt1 = phi i32 [ 1, %.loopexit ], [ %i.tw, %.loopexit505 ], [ 1, %bb.y ], [ 1, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #48
  br label %_ZNK3jxl5RectTImE8IsInsideERKS1_.exit.thread

.backedge:                                        ; preds = %bb.w, %.loopexit504
  %.4.jt28 = phi i64 [ %i.ty, %.loopexit504 ], [ %.2536, %bb.w ] ; 2 uses
  %.3377.jt28 = add i64 %.1375535, %i.sn          ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #48
  %i.ahr = icmp ult i64 %.3377.jt28, %i.az
  br i1 %i.ahr, label %bb.v, label %.critedge.thread, !llvm.loop !852

.critedge.thread:                                 ; preds = %.backedge, %bb.v, %.lr.ph547
  %.1375.lcssa = phi i64 [ %.0374545, %.lr.ph547 ], [ %.1375535, %bb.v ], [ %.3377.jt28, %.backedge ]
  %.2.lcssa = phi i64 [ %.1546, %.lr.ph547 ], [ %.2536, %bb.v ], [ %.4.jt28, %.backedge ] ; 2 uses
  %i.ahs = add nuw nsw i64 %.0379544, 1           ; 2 uses
  %exitcond574.not = icmp eq i64 %i.ahs, %i.jq
  br i1 %exitcond574.not, label %.critedge416, label %.lr.ph547, !llvm.loop !853

.critedge416:                                     ; preds = %.critedge.thread, %.preheader509
  %.1.lcssa = phi i64 [ %.0359552, %.preheader509 ], [ %.2.lcssa, %.critedge.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #48
  %i.aht = add nuw i64 %.0372551, 1               ; 2 uses
  %exitcond575.not = icmp eq i64 %i.aht, %i.bc
  br i1 %exitcond575.not, label %_ZNK3jxl5RectTImE8IsInsideERKS1_.exit.thread, label %bb.u, !llvm.loop !854

_ZNK3jxl5RectTImE8IsInsideERKS1_.exit.thread:     ; preds = %.critedge416, %.critedge414, %bb.s, %bb.t, %.critedge416.preheader, %.loopexit609
  %.sroa.0445.18 = phi i32 [ 0, %.critedge416.preheader ], [ %.sroa.0445.13.jt1, %.loopexit609 ], [ 1, %.critedge414 ], [ 1, %bb.t ], [ 1, %bb.s ], [ 0, %.critedge416 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #48
  br label %.critedge412

.critedge412:                                     ; preds = %bb.i, %bb.l, %bb.m, %bb.q, %bb.b, %bb.g, %bb.d, %bb.e, %bb.f, %bb.c, %_ZNK3jxl16ColorCorrelation16IsJPEGCompatibleEv.exit, %_ZNK3jxl5RectTImE8IsInsideERKS1_.exit.thread
  %.sroa.0445.19 = phi i32 [ %.sroa.0445.18, %_ZNK3jxl5RectTImE8IsInsideERKS1_.exit.thread ], [ 1, %_ZNK3jxl16ColorCorrelation16IsJPEGCompatibleEv.exit ], [ 1, %bb.c ], [ 1, %bb.g ], [ 1, %bb.d ], [ 1, %bb.b ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %bb.q ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  ret i32 %.sroa.0445.19
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN3jxl6N_AVX212_GLOBAL__N_117TransformToPixelsENS_14AcStrategyTypeEPfS3_mS3_(i32 noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #5 {
bb.a:
  %5 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %6 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %7 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %8 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %9 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %10 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %11 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %12 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %13 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %14 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %15 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %16 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %17 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %18 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %19 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %20 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %21 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %22 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %23 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %24 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %25 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %26 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %27 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %28 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %29 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %30 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %31 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %32 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %33 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %34 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %35 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %36 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %37 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %38 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %39 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %40 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %41 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %42 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %43 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %44 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %45 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %46 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %47 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %48 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %49 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %50 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %51 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %52 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %53 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %54 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %55 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %56 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %57 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %58 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %59 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %60 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %61 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %62 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %63 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %64 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %65 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %66 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %67 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %68 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %69 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %70 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %71 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %72 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %73 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %74 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %75 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %76 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %77 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %78 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %79 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %80 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %81 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %i.a = alloca [4 x float], align 16             ; 4 uses
  %82 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %83 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %84 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %85 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %86 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %87 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %88 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %89 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %90 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %91 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %92 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %93 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %94 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %95 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %96 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  switch i32 %0, label %bb.ae [
    i32 1, label %bb.b
    i32 13, label %bb.d
    i32 12, label %bb.e
    i32 3, label %bb.h
    i32 2, label %.preheader586
    i32 4, label %bb.i
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 8, label %bb.l
    i32 9, label %bb.m
    i32 10, label %bb.n
    i32 11, label %bb.o
    i32 5, label %bb.p
    i32 0, label %bb.q
    i32 14, label %bb.r
    i32 15, label %bb.s
    i32 16, label %bb.t
    i32 17, label %bb.u
    i32 19, label %bb.v
    i32 20, label %bb.w
    i32 18, label %bb.x
    i32 22, label %bb.y
    i32 23, label %bb.z
    i32 21, label %bb.aa
    i32 25, label %bb.ab
    i32 26, label %bb.ac
    i32 24, label %bb.ad
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %97 = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.c = load <2 x float>, ptr %1, align 4, !tbaa !256 ; 3 uses
  %i.d = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %98 = load float, ptr %97, align 4, !tbaa !256
  %99 = load float, ptr %i.b, align 4, !tbaa !256
  %i.e = fadd <2 x float> %i.d, %i.c
  %i.f = fsub <2 x float> %i.d, %i.c
  %i.g = shufflevector <2 x float> %i.e, <2 x float> %i.f, <4 x i32> <i32 0, i32 0, i32 3, i32 3> ; 2 uses
  %100 = insertelement <4 x float> poison, float %99, i64 0
  %i.h = shufflevector <4 x float> %100, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.i = fadd <4 x float> %i.g, %i.h
  %i.j = fsub <4 x float> %i.g, %i.h
  %i.k = shufflevector <4 x float> %i.i, <4 x float> %i.j, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 2 uses
  %101 = insertelement <4 x float> poison, float %98, i64 0
  %102 = shufflevector <4 x float> %101, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.l = fadd <4 x float> %i.k, %102
  %i.m = fsub <4 x float> %i.k, %102
  %i.n = shufflevector <4 x float> %i.l, <4 x float> %i.m, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x float> %i.n, ptr %i.a, align 16, !tbaa !256
  %invariant.gep650.1 = getelementptr i8, ptr %2, i64 16 ; 4 uses
  br label %.split.us.3.1

bb.c:                                             ; preds = %.split.us.3.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  br label %bb.ae

.split.us.3.1:                                    ; preds = %bb.b, %.split.us.3.1
  %i.o = phi i1 [ true, %bb.b ], [ false, %.split.us.3.1 ]
  %.0293661 = phi i64 [ 0, %bb.b ], [ 1, %.split.us.3.1 ] ; 3 uses
  %.idx307 = shl nuw nsw i64 %.0293661, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx307 ; 2 uses
  %.idx313 = shl nuw nsw i64 %.0293661, 5
  %invariant.gep644 = getelementptr inbounds nuw i8, ptr %1, i64 %.idx313 ; 56 uses
  %i.q = shl nuw nsw i64 %.0293661, 2             ; 5 uses
  %i.r = or disjoint i64 %i.q, 1
  %i.s = mul i64 %i.r, %3
  %i.t = getelementptr [4 x i8], ptr %2, i64 %i.s ; 2 uses
  %i.u = mul i64 %i.q, %3                         ; 2 uses
  %i.v = getelementptr [4 x i8], ptr %2, i64 %i.u ; 6 uses
  %i.w = load float, ptr %i.p, align 8, !tbaa !256
  %gep643.1 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 8
  %i.x = load float, ptr %gep643.1, align 4, !tbaa !256
  %i.y = fadd float %i.x, 0.000000e+00
  %gep643.2 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 16
  %i.z = load float, ptr %gep643.2, align 4, !tbaa !256
  %i.aa = fadd float %i.y, %i.z
  %gep643.3 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 24
  %i.ab = load float, ptr %gep643.3, align 4, !tbaa !256
  %i.ac = fadd float %i.aa, %i.ab
  %gep647.1 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 64 ; 2 uses
  %i.ad = load float, ptr %gep647.1, align 4, !tbaa !256
  %i.ae = fadd float %i.ac, %i.ad
  %gep643.1.1 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 72
  %i.af = load float, ptr %gep643.1.1, align 4, !tbaa !256
  %i.ag = fadd float %i.ae, %i.af
  %gep643.2.1 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 80
  %i.ah = load float, ptr %gep643.2.1, align 4, !tbaa !256
  %i.ai = fadd float %i.ag, %i.ah
  %gep643.3.1 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 88
  %i.aj = load float, ptr %gep643.3.1, align 4, !tbaa !256
  %i.ak = fadd float %i.ai, %i.aj
  %gep647.2 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 128 ; 2 uses
  %i.al = load float, ptr %gep647.2, align 4, !tbaa !256
  %i.am = fadd float %i.ak, %i.al
  %gep643.1.2 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 136
  %i.an = load float, ptr %gep643.1.2, align 4, !tbaa !256
  %i.ao = fadd float %i.am, %i.an
  %gep643.2.2 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 144
  %i.ap = load float, ptr %gep643.2.2, align 4, !tbaa !256
  %i.aq = fadd float %i.ao, %i.ap
  %gep643.3.2 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 152
  %i.ar = load float, ptr %gep643.3.2, align 4, !tbaa !256
  %i.as = fadd float %i.aq, %i.ar
  %gep647.3 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 192 ; 2 uses
  %i.at = load float, ptr %gep647.3, align 4, !tbaa !256
  %i.au = fadd float %i.as, %i.at
  %gep643.1.3 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 200
  %i.av = load float, ptr %gep643.1.3, align 4, !tbaa !256
  %i.aw = fadd float %i.au, %i.av
  %gep643.2.3 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 208
  %i.ax = load float, ptr %gep643.2.3, align 4, !tbaa !256
  %i.ay = fadd float %i.aw, %i.ax
  %gep643.3.3 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 216
  %i.az = load float, ptr %gep643.3.3, align 4, !tbaa !256
  %i.ba = fadd float %i.ay, %i.az
  %i.bb = fneg float %i.ba
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.bb, float 6.250000e-02, float %i.w) ; 2 uses
  %i.bd = getelementptr i8, ptr %i.t, i64 4       ; 16 uses
  store float %i.bc, ptr %i.bd, align 4, !tbaa !256
  %i.be = load float, ptr %invariant.gep644, align 4, !tbaa !256
  %i.bf = fadd float %i.be, %i.bc
  store float %i.bf, ptr %i.v, align 4, !tbaa !256
  %gep654.us.1 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 8
  %i.bg = load float, ptr %gep654.us.1, align 4, !tbaa !256
  %i.bh = load float, ptr %i.bd, align 4, !tbaa !256
  %i.bi = fadd float %i.bg, %i.bh
  %i.bj = getelementptr i8, ptr %i.v, i64 4
  store float %i.bi, ptr %i.bj, align 4, !tbaa !256
  %gep654.us.2 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 16
  %i.bk = load float, ptr %gep654.us.2, align 4, !tbaa !256
  %i.bl = load float, ptr %i.bd, align 4, !tbaa !256
  %i.bm = fadd float %i.bk, %i.bl
  %i.bn = getelementptr i8, ptr %i.v, i64 8
  store float %i.bm, ptr %i.bn, align 4, !tbaa !256
  %gep654.us.3 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 24
  %i.bo = load float, ptr %gep654.us.3, align 4, !tbaa !256
  %i.bp = load float, ptr %i.bd, align 4, !tbaa !256
  %i.bq = fadd float %i.bo, %i.bp
  %i.br = getelementptr i8, ptr %i.v, i64 12
  store float %i.bq, ptr %i.br, align 4, !tbaa !256
  %i.bs = or disjoint i64 %i.q, 1
  %i.bt = mul i64 %i.bs, %3                       ; 2 uses
  %gep651.1 = getelementptr [4 x i8], ptr %2, i64 %i.bt ; 3 uses
  %i.bu = load float, ptr %gep647.1, align 4, !tbaa !256
  %i.bv = load float, ptr %i.bd, align 4, !tbaa !256
  %i.bw = fadd float %i.bu, %i.bv
  store float %i.bw, ptr %gep651.1, align 4, !tbaa !256
  %gep654.2.1 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 80
  %i.bx = load float, ptr %gep654.2.1, align 4, !tbaa !256
  %i.by = load float, ptr %i.bd, align 4, !tbaa !256
  %i.bz = fadd float %i.bx, %i.by
  %i.ca = getelementptr i8, ptr %gep651.1, i64 8
  store float %i.bz, ptr %i.ca, align 4, !tbaa !256
  %gep654.3.1 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 88
  %i.cb = load float, ptr %gep654.3.1, align 4, !tbaa !256
  %i.cc = load float, ptr %i.bd, align 4, !tbaa !256
  %i.cd = fadd float %i.cb, %i.cc
  %i.ce = getelementptr i8, ptr %gep651.1, i64 12
  store float %i.cd, ptr %i.ce, align 4, !tbaa !256
  %i.cf = or disjoint i64 %i.q, 2
  %i.cg = mul i64 %i.cf, %3                       ; 2 uses
  %gep651.2 = getelementptr [4 x i8], ptr %2, i64 %i.cg ; 4 uses
  %i.ch = load float, ptr %gep647.2, align 4, !tbaa !256
  %i.ci = load float, ptr %i.bd, align 4, !tbaa !256
  %i.cj = fadd float %i.ch, %i.ci
  store float %i.cj, ptr %gep651.2, align 4, !tbaa !256
  %gep654.us.1.2 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 136
  %i.ck = load float, ptr %gep654.us.1.2, align 4, !tbaa !256
  %i.cl = load float, ptr %i.bd, align 4, !tbaa !256
  %i.cm = fadd float %i.ck, %i.cl
  %i.cn = getelementptr i8, ptr %gep651.2, i64 4
  store float %i.cm, ptr %i.cn, align 4, !tbaa !256
  %gep654.us.2.2 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 144
  %i.co = load float, ptr %gep654.us.2.2, align 4, !tbaa !256
  %i.cp = load float, ptr %i.bd, align 4, !tbaa !256
  %i.cq = fadd float %i.co, %i.cp
  %i.cr = getelementptr i8, ptr %gep651.2, i64 8
  store float %i.cq, ptr %i.cr, align 4, !tbaa !256
  %gep654.us.3.2 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 152
  %i.cs = load float, ptr %gep654.us.3.2, align 4, !tbaa !256
  %i.ct = load float, ptr %i.bd, align 4, !tbaa !256
  %i.cu = fadd float %i.cs, %i.ct
  %i.cv = getelementptr i8, ptr %gep651.2, i64 12
  store float %i.cu, ptr %i.cv, align 4, !tbaa !256
  %i.cw = or disjoint i64 %i.q, 3
  %i.cx = mul i64 %i.cw, %3                       ; 2 uses
  %gep651.3 = getelementptr [4 x i8], ptr %2, i64 %i.cx ; 4 uses
  %i.cy = load float, ptr %gep647.3, align 4, !tbaa !256
  %i.cz = load float, ptr %i.bd, align 4, !tbaa !256
  %i.da = fadd float %i.cy, %i.cz
  store float %i.da, ptr %gep651.3, align 4, !tbaa !256
  %gep654.us.1.3 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 200
  %i.db = load float, ptr %gep654.us.1.3, align 4, !tbaa !256
  %i.dc = load float, ptr %i.bd, align 4, !tbaa !256
  %i.dd = fadd float %i.db, %i.dc
  %i.de = getelementptr i8, ptr %gep651.3, i64 4
  store float %i.dd, ptr %i.de, align 4, !tbaa !256
  %gep654.us.2.3 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 208
  %i.df = load float, ptr %gep654.us.2.3, align 4, !tbaa !256
  %i.dg = load float, ptr %i.bd, align 4, !tbaa !256
  %i.dh = fadd float %i.df, %i.dg
  %i.di = getelementptr i8, ptr %gep651.3, i64 8
  store float %i.dh, ptr %i.di, align 4, !tbaa !256
  %gep654.us.3.3 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 216
  %i.dj = load float, ptr %gep654.us.3.3, align 4, !tbaa !256
  %i.dk = load float, ptr %i.bd, align 4, !tbaa !256
  %i.dl = fadd float %i.dj, %i.dk
  %i.dm = getelementptr i8, ptr %gep651.3, i64 12
  store float %i.dl, ptr %i.dm, align 4, !tbaa !256
  %i.dn = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 72
  %i.do = load float, ptr %i.dn, align 4, !tbaa !256
  %i.dp = load float, ptr %i.bd, align 4, !tbaa !256
  %i.dq = fadd float %i.do, %i.dp
  store float %i.dq, ptr %i.v, align 4, !tbaa !256
  %i.dr = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !256
  %invariant.gep646.1 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 4
  %gep643.1.1702 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 12
  %i.dt = load float, ptr %gep643.1.1702, align 4, !tbaa !256
  %i.du = fadd float %i.dt, 0.000000e+00
  %gep643.2.1704 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 20
  %i.dv = load float, ptr %gep643.2.1704, align 4, !tbaa !256
  %i.dw = fadd float %i.du, %i.dv
  %gep643.3.1706 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 28
  %i.dx = load float, ptr %gep643.3.1706, align 4, !tbaa !256
  %i.dy = fadd float %i.dw, %i.dx
  %gep647.1.1 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 68 ; 2 uses
  %i.dz = load float, ptr %gep647.1.1, align 4, !tbaa !256
  %i.ea = fadd float %i.dy, %i.dz
  %gep643.1.1.1 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 76
  %i.eb = load float, ptr %gep643.1.1.1, align 4, !tbaa !256
  %i.ec = fadd float %i.ea, %i.eb
  %gep643.2.1.1 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 84
  %i.ed = load float, ptr %gep643.2.1.1, align 4, !tbaa !256
  %i.ee = fadd float %i.ec, %i.ed
  %gep643.3.1.1 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 92
  %i.ef = load float, ptr %gep643.3.1.1, align 4, !tbaa !256
  %i.eg = fadd float %i.ee, %i.ef
  %gep647.2.1 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 132 ; 2 uses
  %i.eh = load float, ptr %gep647.2.1, align 4, !tbaa !256
  %i.ei = fadd float %i.eg, %i.eh
  %gep643.1.2.1 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 140
  %i.ej = load float, ptr %gep643.1.2.1, align 4, !tbaa !256
  %i.ek = fadd float %i.ei, %i.ej
  %gep643.2.2.1 = getelementptr inbounds nuw i8, ptr %invariant.gep644, i64 148
  %i.el = load float, ptr %gep643.2.2.1, align 4, !tbaa !256
  %i.em = fadd float %i.ek, %i.el
end_hunk_0
begin_hunk_1_@_ZN3jxl6N_AVX212_GLOBAL__N_117TransformToPixelsENS_14AcStrategyTypeEPfS3_mS3_:bb.a
  store <4 x float> %i.sp, ptr %i.po, align 4, !tbaa !223, !alias.scope !1270, !noalias !1269
  store <4 x float> %i.ss, ptr %i.pp, align 4, !tbaa !223, !alias.scope !1271, !noalias !1269
  store <4 x float> %i.st, ptr %i.pq, align 4, !tbaa !223, !alias.scope !1272, !noalias !1269
  store <8 x float> %i.ug, ptr %i.pj, align 4, !tbaa !223, !alias.scope !1273, !noalias !1269
  store <8 x float> %i.uh, ptr %i.pk, align 4, !tbaa !223, !alias.scope !1273, !noalias !1269
  store <8 x float> %i.uk, ptr %i.pl, align 4, !tbaa !223, !alias.scope !1273, !noalias !1269
  store <8 x float> %i.ul, ptr %i.pm, align 4, !tbaa !223, !alias.scope !1273, !noalias !1269
  br label %bb.ae

bb.g:                                             ; preds = %bb.g, %bb.e
  %i.pr = phi i1 [ true, %bb.e ], [ false, %bb.g ]
  %.0283621.sroa.phi.sroa.speculated = phi float [ %i.pg, %bb.e ], [ %i.ph, %bb.g ]
  %.0283621 = phi i64 [ 0, %bb.e ], [ 1, %bb.g ]  ; 2 uses
  %.idx301 = shl nuw nsw i64 %.0283621, 5
  %invariant.gep = getelementptr inbounds nuw i8, ptr %1, i64 %.idx301 ; 19 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4
  %i.pt = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 12
  %i.pu = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 20
  %i.pv = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 28
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !256
  %gep611.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 64
  %i.px = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 72
  %i.py = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 80
  %i.pz = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 88
  %i.qa = load float, ptr %i.pz, align 4, !tbaa !256
  %i.qb = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 92
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !256
  %gep611.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 128
  %i.qd = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 136
  %i.qe = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 144
  %i.qf = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 152
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !256
  %i.qh = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 156
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !256
  %gep611.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 192
  %i.qj = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 200
  %i.qk = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 208
  %i.ql = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 216
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !256
  %i.qn = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 220
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !256
  %i.qp = mul nuw nsw i64 %i.pi, %.0283621
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.qp ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  store float %.0283621.sroa.phi.sroa.speculated, ptr %4, align 4, !tbaa !256, !alias.scope !1274, !noalias !1269
  store float %i.pw, ptr %gep.7.i.i329, align 4, !tbaa !256, !alias.scope !1274, !noalias !1269
  store float %i.qa, ptr %gep.6.1.i.i336, align 4, !tbaa !256, !alias.scope !1274, !noalias !1269
  store float %i.qc, ptr %gep.7.1.i.i337, align 4, !tbaa !256, !alias.scope !1274, !noalias !1269
  store float %i.qg, ptr %gep.6.2.i.i344, align 4, !tbaa !256, !alias.scope !1274, !noalias !1269
  store float %i.qi, ptr %gep.7.2.i.i345, align 4, !tbaa !256, !alias.scope !1274, !noalias !1269
  %i.qr = load <2 x float>, ptr %i.ps, align 4, !tbaa !256
  %i.qs = load <2 x float>, ptr %gep611.1, align 4, !tbaa !256
  %i.qt = load <2 x float>, ptr %gep611.2, align 4, !tbaa !256
  %i.qu = load <2 x float>, ptr %gep611.3, align 4, !tbaa !256
  %i.qv = shufflevector <2 x float> %i.qs, <2 x float> %i.qt, <8 x i32> <i32 0, i32 2, i32 poison, i32 poison, i32 1, i32 3, i32 poison, i32 poison>
  %i.qw = shufflevector <2 x float> %i.qu, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qx = shufflevector <8 x float> %i.qv, <8 x float> %i.qw, <8 x i32> <i32 0, i32 1, i32 8, i32 poison, i32 4, i32 5, i32 9, i32 poison>
  %i.qy = shufflevector <2 x float> %i.qr, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qz = shufflevector <8 x float> %i.qx, <8 x float> %i.qy, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 4, i32 5, i32 6, i32 9>
  store <8 x float> %i.qz, ptr %invariant.gep.1.i.i330, align 4, !tbaa !256, !alias.scope !1274, !noalias !1269
  %i.ra = load <2 x float>, ptr %i.pt, align 4, !tbaa !256
  %i.rb = load <2 x float>, ptr %i.px, align 4, !tbaa !256
  %i.rc = load <2 x float>, ptr %i.qd, align 4, !tbaa !256
  %i.rd = load <2 x float>, ptr %i.qj, align 4, !tbaa !256
  %i.re = shufflevector <2 x float> %i.rb, <2 x float> %i.rc, <8 x i32> <i32 0, i32 2, i32 poison, i32 poison, i32 1, i32 3, i32 poison, i32 poison>
  %i.rf = shufflevector <2 x float> %i.rd, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rg = shufflevector <8 x float> %i.re, <8 x float> %i.rf, <8 x i32> <i32 0, i32 1, i32 8, i32 poison, i32 4, i32 5, i32 9, i32 poison>
  %i.rh = shufflevector <2 x float> %i.ra, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ri = shufflevector <8 x float> %i.rg, <8 x float> %i.rh, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 4, i32 5, i32 6, i32 9>
  store <8 x float> %i.ri, ptr %gep.2.1.i.i332, align 4, !tbaa !256, !alias.scope !1274, !noalias !1269
  %i.rj = load <2 x float>, ptr %i.pu, align 4, !tbaa !256
  %i.rk = load <2 x float>, ptr %i.py, align 4, !tbaa !256
  %i.rl = load <2 x float>, ptr %i.qe, align 4, !tbaa !256
  %i.rm = load <2 x float>, ptr %i.qk, align 4, !tbaa !256
  %i.rn = shufflevector <2 x float> %i.rk, <2 x float> %i.rl, <8 x i32> <i32 0, i32 2, i32 poison, i32 poison, i32 1, i32 3, i32 poison, i32 poison>
  %i.ro = shufflevector <2 x float> %i.rm, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rp = shufflevector <8 x float> %i.rn, <8 x float> %i.ro, <8 x i32> <i32 0, i32 1, i32 8, i32 poison, i32 4, i32 5, i32 9, i32 poison>
  %i.rq = shufflevector <2 x float> %i.rj, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rr = shufflevector <8 x float> %i.rp, <8 x float> %i.rq, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 4, i32 5, i32 6, i32 9>
  store <8 x float> %i.rr, ptr %gep.4.1.i.i334, align 4, !tbaa !256, !alias.scope !1274, !noalias !1269
  store float %i.qm, ptr %gep.6.3.i.i352, align 4, !tbaa !256, !alias.scope !1274, !noalias !1269
  store float %i.qo, ptr %gep.7.3.i.i353, align 4, !tbaa !256, !alias.scope !1274, !noalias !1269
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  %i.rs = load <4 x float>, ptr %4, align 4, !tbaa !223, !alias.scope !1279, !noalias !1280 ; 2 uses
  %i.rt = load <4 x float>, ptr %gep.2.i.i, align 4, !tbaa !223, !alias.scope !1279, !noalias !1280 ; 2 uses
  %i.ru = load <4 x float>, ptr %gep.4.i.i, align 4, !tbaa !223, !alias.scope !1279, !noalias !1280 ; 2 uses
  %i.rv = load <4 x float>, ptr %gep.6.i.i, align 4, !tbaa !223, !alias.scope !1279, !noalias !1280
  %i.rw = load <4 x float>, ptr %gep.1.i.i326, align 4, !tbaa !223, !alias.scope !1281, !noalias !1280 ; 2 uses
  %i.rx = load <4 x float>, ptr %gep.3.i.i327, align 4, !tbaa !223, !alias.scope !1281, !noalias !1280 ; 2 uses
  %i.ry = load <4 x float>, ptr %gep.5.i.i328, align 4, !tbaa !223, !alias.scope !1281, !noalias !1280 ; 2 uses
  %i.rz = load <4 x float>, ptr %gep.7.i.i329, align 4, !tbaa !223, !alias.scope !1281, !noalias !1280
  %i.sa = fadd <4 x float> %i.rs, %i.ru           ; 2 uses
  %i.sb = fsub <4 x float> %i.rs, %i.ru           ; 2 uses
  %i.sc = fadd <4 x float> %i.rt, %i.rv           ; 2 uses
  %i.sd = fmul <4 x float> %i.rt, splat (float f0x3FB504F3) ; 2 uses
  %i.se = fadd <4 x float> %i.sd, %i.sc           ; 2 uses
  %i.sf = fsub <4 x float> %i.sd, %i.sc           ; 2 uses
  %i.sg = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.se, <4 x float> splat (float f0x3F0A8BD4), <4 x float> %i.sa) ; 2 uses
  %i.sh = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.se, <4 x float> splat (float f0xBF0A8BD4), <4 x float> %i.sa) ; 2 uses
  %i.si = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.sf, <4 x float> splat (float f0x3FA73D75), <4 x float> %i.sb) ; 2 uses
  %i.sj = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.sf, <4 x float> splat (float f0xBFA73D75), <4 x float> %i.sb) ; 2 uses
  %i.sk = fadd <4 x float> %i.ry, %i.rz
  %i.sl = fadd <4 x float> %i.rx, %i.ry           ; 2 uses
  %i.sm = fadd <4 x float> %i.rw, %i.rx           ; 2 uses
  %i.sn = fmul <4 x float> %i.rw, splat (float f0x3FB504F3) ; 2 uses
  %i.so = fadd <4 x float> %i.sn, %i.sl           ; 3 uses
  %i.sp = fsub <4 x float> %i.sn, %i.sl           ; 3 uses
  %i.sq = fadd <4 x float> %i.sm, %i.sk           ; 2 uses
  %i.sr = fmul <4 x float> %i.sm, splat (float f0x3FB504F3) ; 2 uses
  %i.ss = fadd <4 x float> %i.sr, %i.sq           ; 3 uses
  %i.st = fsub <4 x float> %i.sr, %i.sq           ; 3 uses
  %i.su = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ss, <4 x float> splat (float f0x3F0A8BD4), <4 x float> %i.so) ; 2 uses
  %i.sv = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ss, <4 x float> splat (float f0xBF0A8BD4), <4 x float> %i.so) ; 2 uses
  %i.sw = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.st, <4 x float> splat (float f0x3FA73D75), <4 x float> %i.sp) ; 2 uses
  %i.sx = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.st, <4 x float> splat (float f0xBFA73D75), <4 x float> %i.sp) ; 2 uses
  %i.sy = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.su, <4 x float> splat (float f0x3F0281F7), <4 x float> %i.sg) ; 4 uses
  %i.sz = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.su, <4 x float> splat (float f0xBF0281F7), <4 x float> %i.sg) ; 4 uses
  %i.ta = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.sw, <4 x float> splat (float f0x3F19F1BD), <4 x float> %i.si) ; 4 uses
  %i.tb = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.sw, <4 x float> splat (float f0xBF19F1BD), <4 x float> %i.si) ; 4 uses
  %i.tc = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.sx, <4 x float> splat (float f0x3F6664D7), <4 x float> %i.sj) ; 4 uses
  %i.td = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.sx, <4 x float> splat (float f0xBF6664D7), <4 x float> %i.sj) ; 4 uses
  %i.te = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.sv, <4 x float> splat (float f0x402406CF), <4 x float> %i.sh) ; 4 uses
  %i.tf = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.sv, <4 x float> splat (float f0xC02406CF), <4 x float> %i.sh) ; 4 uses
  %i.tg = shufflevector <4 x float> %i.sy, <4 x float> %i.ta, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.th = shufflevector <4 x float> %i.tg, <4 x float> %i.tc, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ti = shufflevector <4 x float> %i.th, <4 x float> %i.te, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x float> %i.ti, ptr %4, align 4, !tbaa !256, !alias.scope !1274, !noalias !1269
  %bc32.i = bitcast <4 x float> %i.tf to <4 x i32>
  %i.tj = extractelement <4 x i32> %bc32.i, i64 0
  store i32 %i.tj, ptr %gep.1.i.i326, align 4, !tbaa !256, !alias.scope !1274, !noalias !1269
  %.sroa.48.80.vec.extract883 = extractelement <4 x float> %i.td, i64 0
  store float %.sroa.48.80.vec.extract883, ptr %gep.1.1.i.i331, align 4, !tbaa !256, !alias.scope !1274, !noalias !1269
  %.sroa.61.96.vec.extract895 = extractelement <4 x float> %i.tb, i64 0
  store float %.sroa.61.96.vec.extract895, ptr %gep.1.2.i.i339, align 4, !tbaa !256, !alias.scope !1274, !noalias !1269
  %i.tk = shufflevector <4 x float> %i.te, <4 x float> %i.tf, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.tl = shufflevector <4 x float> %i.tk, <4 x float> %i.td, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.tm = shufflevector <4 x float> %i.tl, <4 x float> %i.tb, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x float> %i.tm, ptr %gep.2.3.i.i348, align 4, !tbaa !256, !alias.scope !1274, !noalias !1269
  %i.tn = shufflevector <4 x float> %i.te, <4 x float> %i.tf, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.to = shufflevector <4 x float> %i.tn, <4 x float> %i.td, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.tp = shufflevector <4 x float> %i.to, <4 x float> %i.tb, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x float> %i.tp, ptr %gep.4.3.i.i350, align 4, !tbaa !256, !alias.scope !1274, !noalias !1269
  %i.tq = shufflevector <4 x float> %i.te, <4 x float> %i.tf, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.tr = shufflevector <4 x float> %i.tq, <4 x float> %i.td, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.ts = shufflevector <4 x float> %i.tr, <4 x float> %i.tb, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x float> %i.ts, ptr %gep.6.3.i.i352, align 4, !tbaa !256, !alias.scope !1274, !noalias !1269
  %i.tt = shufflevector <4 x float> %i.sz, <4 x float> %i.sy, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.tu = shufflevector <4 x float> %i.tt, <4 x float> %i.ta, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.tv = shufflevector <4 x float> %i.tu, <4 x float> %i.tc, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x float> %i.tv, ptr %gep.1.3.i.i347, align 4, !tbaa !256, !alias.scope !1274, !noalias !1269
  %i.tw = shufflevector <4 x float> %i.sz, <4 x float> %i.sy, <4 x i32> <i32 1, i32 6, i32 poison, i32 poison>
  %i.tx = shufflevector <4 x float> %i.tw, <4 x float> %i.ta, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.ty = shufflevector <4 x float> %i.tx, <4 x float> %i.tc, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x float> %i.ty, ptr %gep.3.3.i.i349, align 4, !tbaa !256, !alias.scope !1274, !noalias !1269
  %i.tz = shufflevector <4 x float> %i.sz, <4 x float> %i.sy, <4 x i32> <i32 2, i32 7, i32 poison, i32 poison>
  %i.ua = shufflevector <4 x float> %i.tz, <4 x float> %i.ta, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.ub = shufflevector <4 x float> %i.ua, <4 x float> %i.tc, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x float> %i.ub, ptr %gep.5.3.i.i351, align 4, !tbaa !256, !alias.scope !1274, !noalias !1269
  %.sroa.74906.124.vec.extract917 = extractelement <4 x float> %i.sz, i64 3
  store float %.sroa.74906.124.vec.extract917, ptr %gep.7.3.i.i353, align 4, !tbaa !256, !alias.scope !1274, !noalias !1269
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  %i.uc = load <8 x float>, ptr %4, align 4, !tbaa !223, !alias.scope !1286, !noalias !1287 ; 2 uses
  %i.ud = load <8 x float>, ptr %gep.4.i.i, align 4, !tbaa !223, !alias.scope !1286, !noalias !1287 ; 2 uses
  %i.ue = load <8 x float>, ptr %gep.2.i.i, align 4, !tbaa !223, !alias.scope !1286, !noalias !1287 ; 2 uses
  %i.uf = load <8 x float>, ptr %gep.6.i.i, align 4, !tbaa !223, !alias.scope !1286, !noalias !1287
  %i.ug = fadd <8 x float> %i.uc, %i.ud           ; 3 uses
  %i.uh = fsub <8 x float> %i.uc, %i.ud           ; 3 uses
  %i.ui = fadd <8 x float> %i.ue, %i.uf           ; 2 uses
  %i.uj = fmul <8 x float> %i.ue, splat (float f0x3FB504F3) ; 2 uses
  %i.uk = fadd <8 x float> %i.uj, %i.ui           ; 3 uses
  %i.ul = fsub <8 x float> %i.uj, %i.ui           ; 3 uses
  %i.um = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.uk, <8 x float> splat (float f0x3F0A8BD4), <8 x float> %i.ug)
  %i.un = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.uk, <8 x float> splat (float f0xBF0A8BD4), <8 x float> %i.ug)
  store <8 x float> %i.um, ptr %i.qq, align 1, !tbaa !223, !alias.scope !1288, !noalias !1289
  %i.uo = getelementptr inbounds nuw i8, ptr %i.qq, i64 %.idx.i12.i.i.i.i.i355
  store <8 x float> %i.un, ptr %i.uo, align 1, !tbaa !223, !alias.scope !1288, !noalias !1289
  %i.up = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ul, <8 x float> splat (float f0x3FA73D75), <8 x float> %i.uh)
  %i.uq = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ul, <8 x float> splat (float f0xBFA73D75), <8 x float> %i.uh)
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %3
  store <8 x float> %i.up, ptr %i.ur, align 1, !tbaa !223, !alias.scope !1288, !noalias !1289
  %i.us = getelementptr inbounds nuw i8, ptr %i.qq, i64 %.idx29.i.i.i.i.i.i356
  store <8 x float> %i.uq, ptr %i.us, align 1, !tbaa !223, !alias.scope !1288, !noalias !1289
  br i1 %i.pr, label %bb.g, label %bb.f, !llvm.loop !960

bb.h:                                             ; preds = %bb.a
  %.idx29.i.i.i.i.i.i373 = shl i64 %3, 3          ; 4 uses
  %.idx.i12.i.i.i.i.i372 = mul i64 %3, 12         ; 4 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.uu = load <2 x float>, ptr %1, align 4, !tbaa !256 ; 3 uses
  %i.uv = shufflevector <2 x float> %i.uu, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.uw = fadd <2 x float> %i.uv, %i.uu
  %i.ux = fsub <2 x float> %i.uv, %i.uu
  %i.uy = shufflevector <2 x float> %i.uw, <2 x float> %i.ux, <4 x i32> <i32 0, i32 0, i32 3, i32 3> ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %103 = load float, ptr %i.uz, align 4, !tbaa !256
  %104 = insertelement <4 x float> poison, float %103, i64 0
  %i.va = shufflevector <4 x float> %104, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.vb = fadd <4 x float> %i.uy, %i.va
  %i.vc = fsub <4 x float> %i.uy, %i.va
  %i.vd = shufflevector <4 x float> %i.vb, <4 x float> %i.vc, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 2 uses
  %105 = getelementptr inbounds nuw i8, ptr %1, i64 36
  %106 = load float, ptr %105, align 4, !tbaa !256
  %107 = insertelement <4 x float> poison, float %106, i64 0
  %108 = shufflevector <4 x float> %107, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ve = fadd <4 x float> %i.vd, %108            ; 2 uses
  %i.vf = fsub <4 x float> %i.vd, %108            ; 2 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.vg = load float, ptr %gep.1, align 4, !tbaa !256
  %.sroa.0739.4.vec.insert = insertelement <4 x float> %i.ve, float %i.vg, i64 1
  %gep.2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.vh = load float, ptr %gep.2, align 4, !tbaa !256
  %.sroa.0739.8.vec.insert = insertelement <4 x float> %.sroa.0739.4.vec.insert, float %i.vh, i64 2
  %gep.3 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.vi = load float, ptr %gep.3, align 4, !tbaa !256
  %.sroa.0739.12.vec.insert = insertelement <4 x float> %.sroa.0739.8.vec.insert, float %i.vi, i64 3 ; 2 uses
  %gep593.1 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.vj = tail call <7 x float> @llvm.masked.load.v7f32.p0(ptr nonnull align 4 %gep593.1, <7 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>, <7 x float> poison), !tbaa !256
  %i.vk = shufflevector <7 x float> %i.vj, <7 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %gep593.2 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.vl = tail call <7 x float> @llvm.masked.load.v7f32.p0(ptr nonnull align 4 %gep593.2, <7 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>, <7 x float> poison), !tbaa !256
  %i.vm = shufflevector <7 x float> %i.vl, <7 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %gep593.3 = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.vn = tail call <7 x float> @llvm.masked.load.v7f32.p0(ptr nonnull align 4 %gep593.3, <7 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>, <7 x float> poison), !tbaa !256
  %i.vo = shufflevector <7 x float> %i.vn, <7 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  %i.vp = fadd <4 x float> %.sroa.0739.12.vec.insert, %i.vm ; 2 uses
  %i.vq = fsub <4 x float> %.sroa.0739.12.vec.insert, %i.vm ; 2 uses
  %i.vr = fadd <4 x float> %i.vk, %i.vo           ; 2 uses
  %i.vs = fmul <4 x float> %i.vk, splat (float f0x3FB504F3) ; 2 uses
  %i.vt = fadd <4 x float> %i.vs, %i.vr           ; 2 uses
  %i.vu = fsub <4 x float> %i.vs, %i.vr           ; 2 uses
  %i.vv = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.vt, <4 x float> splat (float f0x3F0A8BD4), <4 x float> %i.vp) ; 4 uses
  %i.vw = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.vt, <4 x float> splat (float f0xBF0A8BD4), <4 x float> %i.vp) ; 4 uses
  %i.vx = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.vu, <4 x float> splat (float f0x3FA73D75), <4 x float> %i.vq) ; 4 uses
  %i.vy = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.vu, <4 x float> splat (float f0xBFA73D75), <4 x float> %i.vq) ; 4 uses
  %.sroa.0739.4.vec.insert757 = shufflevector <4 x float> %i.vv, <4 x float> %i.vx, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %.sroa.26772.20.vec.insert = shufflevector <4 x float> %i.vv, <4 x float> %i.vx, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %.sroa.46.36.vec.insert = shufflevector <4 x float> %i.vv, <4 x float> %i.vx, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %.sroa.66829.52.vec.insert = shufflevector <4 x float> %i.vv, <4 x float> %i.vx, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %.sroa.0739.8.vec.insert763 = shufflevector <4 x float> %.sroa.0739.4.vec.insert757, <4 x float> %i.vy, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %.sroa.26772.24.vec.insert = shufflevector <4 x float> %.sroa.26772.20.vec.insert, <4 x float> %i.vy, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %.sroa.46.40.vec.insert = shufflevector <4 x float> %.sroa.46.36.vec.insert, <4 x float> %i.vy, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %.sroa.66829.56.vec.insert = shufflevector <4 x float> %.sroa.66829.52.vec.insert, <4 x float> %i.vy, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %.sroa.0739.12.vec.insert769 = shufflevector <4 x float> %.sroa.0739.8.vec.insert763, <4 x float> %i.vw, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %.sroa.26772.28.vec.insert = shufflevector <4 x float> %.sroa.26772.24.vec.insert, <4 x float> %i.vw, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %.sroa.46.44.vec.insert = shufflevector <4 x float> %.sroa.46.40.vec.insert, <4 x float> %i.vw, <4 x i32> <i32 0, i32 1, i32 2, i32 6> ; 2 uses
  %.sroa.66829.60.vec.insert = shufflevector <4 x float> %.sroa.66829.56.vec.insert, <4 x float> %i.vw, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  %i.vz = fadd <4 x float> %.sroa.0739.12.vec.insert769, %.sroa.46.44.vec.insert ; 2 uses
  %i.wa = fsub <4 x float> %.sroa.0739.12.vec.insert769, %.sroa.46.44.vec.insert ; 2 uses
  %i.wb = fadd <4 x float> %.sroa.26772.28.vec.insert, %.sroa.66829.60.vec.insert ; 2 uses
  %i.wc = fmul <4 x float> %.sroa.26772.28.vec.insert, splat (float f0x3FB504F3) ; 2 uses
  %i.wd = fadd <4 x float> %i.wc, %i.wb           ; 2 uses
  %i.we = fsub <4 x float> %i.wc, %i.wb           ; 2 uses
  %i.wf = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.wd, <4 x float> splat (float f0x3F0A8BD4), <4 x float> %i.vz)
  %i.wg = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.wd, <4 x float> splat (float f0xBF0A8BD4), <4 x float> %i.vz)
  store <4 x float> %i.wf, ptr %2, align 1, !tbaa !223, !alias.scope !1295, !noalias !1296
  %i.wh = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i12.i.i.i.i.i372
  store <4 x float> %i.wg, ptr %i.wh, align 1, !tbaa !223, !alias.scope !1297, !noalias !1296
  %i.wi = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.we, <4 x float> splat (float f0x3FA73D75), <4 x float> %i.wa)
  %i.wj = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.we, <4 x float> splat (float f0xBFA73D75), <4 x float> %i.wa)
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %3
  store <4 x float> %i.wi, ptr %i.wk, align 1, !tbaa !223, !alias.scope !1295, !noalias !1296
  %i.wl = getelementptr inbounds nuw i8, ptr %2, i64 %.idx29.i.i.i.i.i.i373
  store <4 x float> %i.wj, ptr %i.wl, align 1, !tbaa !223, !alias.scope !1297, !noalias !1296
  %.sroa.0.4.vec.extract = extractelement <4 x float> %i.vf, i64 1
  %.sroa.0739.0.vec.insert747 = insertelement <4 x float> poison, float %.sroa.0.4.vec.extract, i64 0
  %gep.1.1691 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.wm = load float, ptr %gep.1.1691, align 4, !tbaa !256
  %.sroa.0739.4.vec.insert755 = insertelement <4 x float> %.sroa.0739.0.vec.insert747, float %i.wm, i64 1
  %gep.2.1692 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.wn = load float, ptr %gep.2.1692, align 4, !tbaa !256
  %.sroa.0739.8.vec.insert761 = insertelement <4 x float> %.sroa.0739.4.vec.insert755, float %i.wn, i64 2
  %gep.3.1693 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.wo = load float, ptr %gep.3.1693, align 4, !tbaa !256
  %.sroa.0739.12.vec.insert767 = insertelement <4 x float> %.sroa.0739.8.vec.insert761, float %i.wo, i64 3 ; 2 uses
  %gep593.1.1 = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.wp = tail call <7 x float> @llvm.masked.load.v7f32.p0(ptr nonnull align 4 %gep593.1.1, <7 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>, <7 x float> poison), !tbaa !256
  %i.wq = shufflevector <7 x float> %i.wp, <7 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %gep593.2.1 = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.wr = tail call <7 x float> @llvm.masked.load.v7f32.p0(ptr nonnull align 4 %gep593.2.1, <7 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>, <7 x float> poison), !tbaa !256
  %i.ws = shufflevector <7 x float> %i.wr, <7 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %gep593.3.1 = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.wt = tail call <7 x float> @llvm.masked.load.v7f32.p0(ptr nonnull align 4 %gep593.3.1, <7 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>, <7 x float> poison), !tbaa !256
  %i.wu = shufflevector <7 x float> %i.wt, <7 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.wv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  %i.ww = fadd <4 x float> %.sroa.0739.12.vec.insert767, %i.ws ; 2 uses
  %i.wx = fsub <4 x float> %.sroa.0739.12.vec.insert767, %i.ws ; 2 uses
  %i.wy = fadd <4 x float> %i.wq, %i.wu           ; 2 uses
  %i.wz = fmul <4 x float> %i.wq, splat (float f0x3FB504F3) ; 2 uses
  %i.xa = fadd <4 x float> %i.wz, %i.wy           ; 2 uses
  %i.xb = fsub <4 x float> %i.wz, %i.wy           ; 2 uses
  %i.xc = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.xa, <4 x float> splat (float f0x3F0A8BD4), <4 x float> %i.ww) ; 4 uses
  %i.xd = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.xa, <4 x float> splat (float f0xBF0A8BD4), <4 x float> %i.ww) ; 4 uses
  %i.xe = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.xb, <4 x float> splat (float f0x3FA73D75), <4 x float> %i.wx) ; 4 uses
  %i.xf = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.xb, <4 x float> splat (float f0xBFA73D75), <4 x float> %i.wx) ; 4 uses
  %.sroa.0739.4.vec.insert759 = shufflevector <4 x float> %i.xc, <4 x float> %i.xe, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %.sroa.26772.20.vec.insert784 = shufflevector <4 x float> %i.xc, <4 x float> %i.xe, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %.sroa.46.36.vec.insert812 = shufflevector <4 x float> %i.xc, <4 x float> %i.xe, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %.sroa.66829.52.vec.insert841 = shufflevector <4 x float> %i.xc, <4 x float> %i.xe, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %.sroa.0739.8.vec.insert765 = shufflevector <4 x float> %.sroa.0739.4.vec.insert759, <4 x float> %i.xf, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %.sroa.26772.24.vec.insert790 = shufflevector <4 x float> %.sroa.26772.20.vec.insert784, <4 x float> %i.xf, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %.sroa.46.40.vec.insert818 = shufflevector <4 x float> %.sroa.46.36.vec.insert812, <4 x float> %i.xf, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %.sroa.66829.56.vec.insert847 = shufflevector <4 x float> %.sroa.66829.52.vec.insert841, <4 x float> %i.xf, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %.sroa.0739.12.vec.insert771 = shufflevector <4 x float> %.sroa.0739.8.vec.insert765, <4 x float> %i.xd, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %.sroa.26772.28.vec.insert796 = shufflevector <4 x float> %.sroa.26772.24.vec.insert790, <4 x float> %i.xd, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %.sroa.46.44.vec.insert824 = shufflevector <4 x float> %.sroa.46.40.vec.insert818, <4 x float> %i.xd, <4 x i32> <i32 0, i32 1, i32 2, i32 6> ; 2 uses
  %.sroa.66829.60.vec.insert853 = shufflevector <4 x float> %.sroa.66829.56.vec.insert847, <4 x float> %i.xd, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.xg = fadd <4 x float> %.sroa.0739.12.vec.insert771, %.sroa.46.44.vec.insert824 ; 2 uses
  %i.xh = fsub <4 x float> %.sroa.0739.12.vec.insert771, %.sroa.46.44.vec.insert824 ; 2 uses
  %i.xi = fadd <4 x float> %.sroa.26772.28.vec.insert796, %.sroa.66829.60.vec.insert853 ; 2 uses
  %i.xj = fmul <4 x float> %.sroa.26772.28.vec.insert796, splat (float f0x3FB504F3) ; 2 uses
  %i.xk = fadd <4 x float> %i.xj, %i.xi           ; 2 uses
  %i.xl = fsub <4 x float> %i.xj, %i.xi           ; 2 uses
  %i.xm = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.xk, <4 x float> splat (float f0x3F0A8BD4), <4 x float> %i.xg)
  %i.xn = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.xk, <4 x float> splat (float f0xBF0A8BD4), <4 x float> %i.xg)
  store <4 x float> %i.xm, ptr %i.wv, align 1, !tbaa !223, !alias.scope !1295, !noalias !1299
  %i.xo = getelementptr inbounds nuw i8, ptr %i.wv, i64 %.idx.i12.i.i.i.i.i372
  store <4 x float> %i.xn, ptr %i.xo, align 1, !tbaa !223, !alias.scope !1297, !noalias !1299
  %i.xp = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.xl, <4 x float> splat (float f0x3FA73D75), <4 x float> %i.xh)
  %i.xq = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.xl, <4 x float> splat (float f0xBFA73D75), <4 x float> %i.xh)
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.wv, i64 %3
  store <4 x float> %i.xp, ptr %i.xr, align 1, !tbaa !223, !alias.scope !1295, !noalias !1299
  %i.xs = getelementptr inbounds nuw i8, ptr %i.wv, i64 %.idx29.i.i.i.i.i.i373
  store <4 x float> %i.xq, ptr %i.xs, align 1, !tbaa !223, !alias.scope !1297, !noalias !1299
  %.idx1204 = shl i64 %3, 4
  %i.xt = getelementptr inbounds nuw i8, ptr %2, i64 %.idx1204 ; 5 uses
  %.sroa.0.8.vec.extract = extractelement <4 x float> %i.vf, i64 2
  %.sroa.0739.0.vec.insert.1 = insertelement <4 x float> poison, float %.sroa.0.8.vec.extract, i64 0
  %gep.1.1 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.xu = load float, ptr %gep.1.1, align 4, !tbaa !256
  %.sroa.0739.4.vec.insert.1 = insertelement <4 x float> %.sroa.0739.0.vec.insert.1, float %i.xu, i64 1
  %gep.2.1 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.xv = load float, ptr %gep.2.1, align 4, !tbaa !256
  %.sroa.0739.8.vec.insert.1 = insertelement <4 x float> %.sroa.0739.4.vec.insert.1, float %i.xv, i64 2
  %gep.3.1 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.xw = load float, ptr %gep.3.1, align 4, !tbaa !256
  %.sroa.0739.12.vec.insert.1 = insertelement <4 x float> %.sroa.0739.8.vec.insert.1, float %i.xw, i64 3 ; 2 uses
  %gep593.1.11196 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.xx = tail call <7 x float> @llvm.masked.load.v7f32.p0(ptr nonnull align 4 %gep593.1.11196, <7 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>, <7 x float> poison), !tbaa !256
  %i.xy = shufflevector <7 x float> %i.xx, <7 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %gep593.2.11197 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.xz = tail call <7 x float> @llvm.masked.load.v7f32.p0(ptr nonnull align 4 %gep593.2.11197, <7 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>, <7 x float> poison), !tbaa !256
  %i.ya = shufflevector <7 x float> %i.xz, <7 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %gep593.3.11198 = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.yb = tail call <7 x float> @llvm.masked.load.v7f32.p0(ptr nonnull align 4 %gep593.3.11198, <7 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>, <7 x float> poison), !tbaa !256
  %i.yc = shufflevector <7 x float> %i.yb, <7 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.yd = fadd <4 x float> %.sroa.0739.12.vec.insert.1, %i.ya ; 2 uses
  %i.ye = fsub <4 x float> %.sroa.0739.12.vec.insert.1, %i.ya ; 2 uses
  %i.yf = fadd <4 x float> %i.xy, %i.yc           ; 2 uses
  %i.yg = fmul <4 x float> %i.xy, splat (float f0x3FB504F3) ; 2 uses
  %i.yh = fadd <4 x float> %i.yg, %i.yf           ; 2 uses
  %i.yi = fsub <4 x float> %i.yg, %i.yf           ; 2 uses
  %i.yj = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.yh, <4 x float> splat (float f0x3F0A8BD4), <4 x float> %i.yd) ; 4 uses
  %i.yk = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.yh, <4 x float> splat (float f0xBF0A8BD4), <4 x float> %i.yd) ; 4 uses
  %i.yl = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.yi, <4 x float> splat (float f0x3FA73D75), <4 x float> %i.ye) ; 4 uses
  %i.ym = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.yi, <4 x float> splat (float f0xBFA73D75), <4 x float> %i.ye) ; 4 uses
  %.sroa.0739.4.vec.insert757.1 = shufflevector <4 x float> %i.yj, <4 x float> %i.yl, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %.sroa.26772.20.vec.insert.1 = shufflevector <4 x float> %i.yj, <4 x float> %i.yl, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %.sroa.46.36.vec.insert.1 = shufflevector <4 x float> %i.yj, <4 x float> %i.yl, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %.sroa.66829.52.vec.insert.1 = shufflevector <4 x float> %i.yj, <4 x float> %i.yl, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %.sroa.0739.8.vec.insert763.1 = shufflevector <4 x float> %.sroa.0739.4.vec.insert757.1, <4 x float> %i.ym, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %.sroa.26772.24.vec.insert.1 = shufflevector <4 x float> %.sroa.26772.20.vec.insert.1, <4 x float> %i.ym, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %.sroa.46.40.vec.insert.1 = shufflevector <4 x float> %.sroa.46.36.vec.insert.1, <4 x float> %i.ym, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %.sroa.66829.56.vec.insert.1 = shufflevector <4 x float> %.sroa.66829.52.vec.insert.1, <4 x float> %i.ym, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %.sroa.0739.12.vec.insert769.1 = shufflevector <4 x float> %.sroa.0739.8.vec.insert763.1, <4 x float> %i.yk, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %.sroa.26772.28.vec.insert.1 = shufflevector <4 x float> %.sroa.26772.24.vec.insert.1, <4 x float> %i.yk, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %.sroa.46.44.vec.insert.1 = shufflevector <4 x float> %.sroa.46.40.vec.insert.1, <4 x float> %i.yk, <4 x i32> <i32 0, i32 1, i32 2, i32 6> ; 2 uses
  %.sroa.66829.60.vec.insert.1 = shufflevector <4 x float> %.sroa.66829.56.vec.insert.1, <4 x float> %i.yk, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.yn = fadd <4 x float> %.sroa.0739.12.vec.insert769.1, %.sroa.46.44.vec.insert.1 ; 2 uses
  %i.yo = fsub <4 x float> %.sroa.0739.12.vec.insert769.1, %.sroa.46.44.vec.insert.1 ; 2 uses
  %i.yp = fadd <4 x float> %.sroa.26772.28.vec.insert.1, %.sroa.66829.60.vec.insert.1 ; 2 uses
  %i.yq = fmul <4 x float> %.sroa.26772.28.vec.insert.1, splat (float f0x3FB504F3) ; 2 uses
  %i.yr = fadd <4 x float> %i.yq, %i.yp           ; 2 uses
  %i.ys = fsub <4 x float> %i.yq, %i.yp           ; 2 uses
  %i.yt = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.yr, <4 x float> splat (float f0x3F0A8BD4), <4 x float> %i.yn)
  %i.yu = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.yr, <4 x float> splat (float f0xBF0A8BD4), <4 x float> %i.yn)
  store <4 x float> %i.yt, ptr %i.xt, align 1, !tbaa !223, !alias.scope !1295, !noalias !1300
  %i.yv = getelementptr inbounds nuw i8, ptr %i.xt, i64 %.idx.i12.i.i.i.i.i372
  store <4 x float> %i.yu, ptr %i.yv, align 1, !tbaa !223, !alias.scope !1297, !noalias !1300
  %i.yw = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ys, <4 x float> splat (float f0x3FA73D75), <4 x float> %i.yo)
  %i.yx = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ys, <4 x float> splat (float f0xBFA73D75), <4 x float> %i.yo)
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.xt, i64 %3
  store <4 x float> %i.yw, ptr %i.yy, align 1, !tbaa !223, !alias.scope !1295, !noalias !1300
  %i.yz = getelementptr inbounds nuw i8, ptr %i.xt, i64 %.idx29.i.i.i.i.i.i373
  store <4 x float> %i.yx, ptr %i.yz, align 1, !tbaa !223, !alias.scope !1297, !noalias !1300
  %.sroa.0.12.vec.extract = extractelement <4 x float> %i.ve, i64 3
  %.sroa.0739.0.vec.insert747.1 = insertelement <4 x float> poison, float %.sroa.0.12.vec.extract, i64 0
  %gep.1.1691.1 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.za = load float, ptr %gep.1.1691.1, align 4, !tbaa !256
  %.sroa.0739.4.vec.insert755.1 = insertelement <4 x float> %.sroa.0739.0.vec.insert747.1, float %i.za, i64 1
  %gep.2.1692.1 = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.zb = load float, ptr %gep.2.1692.1, align 4, !tbaa !256
  %.sroa.0739.8.vec.insert761.1 = insertelement <4 x float> %.sroa.0739.4.vec.insert755.1, float %i.zb, i64 2
  %gep.3.1693.1 = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.zc = load float, ptr %gep.3.1693.1, align 4, !tbaa !256
  %.sroa.0739.12.vec.insert767.1 = insertelement <4 x float> %.sroa.0739.8.vec.insert761.1, float %i.zc, i64 3 ; 2 uses
  %gep593.1.1.1 = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.zd = tail call <7 x float> @llvm.masked.load.v7f32.p0(ptr nonnull align 4 %gep593.1.1.1, <7 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>, <7 x float> poison), !tbaa !256
  %i.ze = shufflevector <7 x float> %i.zd, <7 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %gep593.2.1.1 = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.zf = tail call <7 x float> @llvm.masked.load.v7f32.p0(ptr nonnull align 4 %gep593.2.1.1, <7 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>, <7 x float> poison), !tbaa !256
end_hunk_1
