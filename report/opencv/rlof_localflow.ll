Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/rlof_localflow?download=true
inline.NumInlined: 1717
inline.NumDeleted: 364
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0
$_ZTIN2cv7optflow27HorizontalCrossSegmentationE = comdat any

$_ZTSN2cv7optflow27HorizontalCrossSegmentationE = comdat any

$_ZTVN2cv7optflow3plk6radial14TrackerInvokerE = comdat any

$_ZTIN2cv7optflow3plk6radial14TrackerInvokerE = comdat any

$_ZTSN2cv7optflow3plk6radial14TrackerInvokerE = comdat any

$_ZTVN2cv7optflow5beplk6radial14TrackerInvokerE = comdat any

$_ZTIN2cv7optflow5beplk6radial14TrackerInvokerE = comdat any

$_ZTSN2cv7optflow5beplk6radial14TrackerInvokerE = comdat any

$_ZTVN2cv7optflow3plk3ica14TrackerInvokerE = comdat any

$_ZTIN2cv7optflow3plk3ica14TrackerInvokerE = comdat any

$_ZTSN2cv7optflow3plk3ica14TrackerInvokerE = comdat any

$_ZTVN2cv7optflow5beplk3ica14TrackerInvokerE = comdat any

$_ZTIN2cv7optflow5beplk3ica14TrackerInvokerE = comdat any

$_ZTSN2cv7optflow5beplk3ica14TrackerInvokerE = comdat any

$_ZTVN2cv7optflow4rlof6radial14TrackerInvokerE = comdat any

$_ZTIN2cv7optflow4rlof6radial14TrackerInvokerE = comdat any

$_ZTSN2cv7optflow4rlof6radial14TrackerInvokerE = comdat any

$_ZTVN2cv7optflow6berlof6radial14TrackerInvokerE = comdat any

$_ZTIN2cv7optflow6berlof6radial14TrackerInvokerE = comdat any

$_ZTSN2cv7optflow6berlof6radial14TrackerInvokerE = comdat any

$_ZTVN2cv7optflow4rlof3ica14TrackerInvokerE = comdat any

$_ZTIN2cv7optflow4rlof3ica14TrackerInvokerE = comdat any

$_ZTSN2cv7optflow4rlof3ica14TrackerInvokerE = comdat any

$_ZTVN2cv7optflow6berlof3ica14TrackerInvokerE = comdat any

$_ZTIN2cv7optflow6berlof3ica14TrackerInvokerE = comdat any

$_ZTSN2cv7optflow6berlof3ica14TrackerInvokerE = comdat any

$_ZZN2cv11_InputArrayC1INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174 = comdat any

@.str = private unnamed_addr constant [64 x i8] c"img.depth() == CV_8U && winSize.width > 2 && winSize.height > 2\00", align 1
@__func__._ZN2cv7optflowL28buildOpticalFlowPyramidScaleERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEibiibPf = private unnamed_addr constant [29 x i8] c"buildOpticalFlowPyramidScale\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"/opt-bench/work/opencv/opencv_contrib/modules/optflow/src/rlof/rlof_localflow.cpp\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"dims <= 2\00", align 1
@__func__._ZNK2cv8MatShapeclEv = private unnamed_addr constant [11 x i8] c"operator()\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"/opt-bench/work/opencv/opencv/modules/core/include/opencv2/core/mat.inl.hpp\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"depth == CV_8U\00", align 1
@__func__._ZN2cv12_GLOBAL__N_114calcSharrDerivERKNS_3MatERS1_ = private unnamed_addr constant [15 x i8] c"calcSharrDeriv\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"winSizes[0] <= winSizes[1]\00", align 1
@__func__._ZN2cv7optflowL24calcLocalOpticalFlowCoreEPNS_3PtrINS0_12CImageBufferEEES4_RKNS_11_InputArrayERKNS_17_InputOutputArrayERKNS0_24RLOFOpticalFlowParameterE = private unnamed_addr constant [25 x i8] c"calcLocalOpticalFlowCore\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"param.maxLevel >= 0 && iWinSize > 2\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"(npoints = prevPtsMat.checkVector(2, CV_32F, true)) >= 0\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"nextPtsMat.checkVector(2, CV_32F, true) == npoints\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZTVN2cv7optflow27HorizontalCrossSegmentationE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv7optflow27HorizontalCrossSegmentationE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv7optflow27HorizontalCrossSegmentationD0Ev, ptr @_ZNK2cv7optflow27HorizontalCrossSegmentationclERKNS_5RangeE] }, comdat, align 8
@_ZTIN2cv7optflow27HorizontalCrossSegmentationE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv7optflow27HorizontalCrossSegmentationE, ptr @_ZTIN2cv16ParallelLoopBodyE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN2cv7optflow27HorizontalCrossSegmentationE = linkonce_odr hidden constant [43 x i8] c"N2cv7optflow27HorizontalCrossSegmentationE\00", comdat, align 1
@_ZTIN2cv16ParallelLoopBodyE = external constant ptr
@_ZTVN2cv7optflow3plk6radial14TrackerInvokerE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv7optflow3plk6radial14TrackerInvokerE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv7optflow3plk6radial14TrackerInvokerD0Ev, ptr @_ZNK2cv7optflow3plk6radial14TrackerInvokerclERKNS_5RangeE] }, comdat, align 8
@_ZTIN2cv7optflow3plk6radial14TrackerInvokerE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv7optflow3plk6radial14TrackerInvokerE, ptr @_ZTIN2cv16ParallelLoopBodyE }, comdat, align 8
@_ZTSN2cv7optflow3plk6radial14TrackerInvokerE = linkonce_odr hidden constant [41 x i8] c"N2cv7optflow3plk6radial14TrackerInvokerE\00", comdat, align 1
@_ZTVN2cv7optflow5beplk6radial14TrackerInvokerE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv7optflow5beplk6radial14TrackerInvokerE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv7optflow5beplk6radial14TrackerInvokerD0Ev, ptr @_ZNK2cv7optflow5beplk6radial14TrackerInvokerclERKNS_5RangeE] }, comdat, align 8
@_ZTIN2cv7optflow5beplk6radial14TrackerInvokerE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv7optflow5beplk6radial14TrackerInvokerE, ptr @_ZTIN2cv16ParallelLoopBodyE }, comdat, align 8
@_ZTSN2cv7optflow5beplk6radial14TrackerInvokerE = linkonce_odr hidden constant [43 x i8] c"N2cv7optflow5beplk6radial14TrackerInvokerE\00", comdat, align 1
@_ZTVN2cv7optflow3plk3ica14TrackerInvokerE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv7optflow3plk3ica14TrackerInvokerE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv7optflow3plk3ica14TrackerInvokerD0Ev, ptr @_ZNK2cv7optflow3plk3ica14TrackerInvokerclERKNS_5RangeE] }, comdat, align 8
@_ZTIN2cv7optflow3plk3ica14TrackerInvokerE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv7optflow3plk3ica14TrackerInvokerE, ptr @_ZTIN2cv16ParallelLoopBodyE }, comdat, align 8
@_ZTSN2cv7optflow3plk3ica14TrackerInvokerE = linkonce_odr hidden constant [38 x i8] c"N2cv7optflow3plk3ica14TrackerInvokerE\00", comdat, align 1
@_ZTVN2cv7optflow5beplk3ica14TrackerInvokerE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv7optflow5beplk3ica14TrackerInvokerE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv7optflow5beplk3ica14TrackerInvokerD0Ev, ptr @_ZNK2cv7optflow5beplk3ica14TrackerInvokerclERKNS_5RangeE] }, comdat, align 8
@_ZTIN2cv7optflow5beplk3ica14TrackerInvokerE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv7optflow5beplk3ica14TrackerInvokerE, ptr @_ZTIN2cv16ParallelLoopBodyE }, comdat, align 8
@_ZTSN2cv7optflow5beplk3ica14TrackerInvokerE = linkonce_odr hidden constant [40 x i8] c"N2cv7optflow5beplk3ica14TrackerInvokerE\00", comdat, align 1
@_ZTVN2cv7optflow4rlof6radial14TrackerInvokerE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv7optflow4rlof6radial14TrackerInvokerE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv7optflow4rlof6radial14TrackerInvokerD0Ev, ptr @_ZNK2cv7optflow4rlof6radial14TrackerInvokerclERKNS_5RangeE] }, comdat, align 8
@_ZTIN2cv7optflow4rlof6radial14TrackerInvokerE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv7optflow4rlof6radial14TrackerInvokerE, ptr @_ZTIN2cv16ParallelLoopBodyE }, comdat, align 8
@_ZTSN2cv7optflow4rlof6radial14TrackerInvokerE = linkonce_odr hidden constant [42 x i8] c"N2cv7optflow4rlof6radial14TrackerInvokerE\00", comdat, align 1
@_ZTVN2cv7optflow6berlof6radial14TrackerInvokerE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv7optflow6berlof6radial14TrackerInvokerE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv7optflow6berlof6radial14TrackerInvokerD0Ev, ptr @_ZNK2cv7optflow6berlof6radial14TrackerInvokerclERKNS_5RangeE] }, comdat, align 8
@_ZTIN2cv7optflow6berlof6radial14TrackerInvokerE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv7optflow6berlof6radial14TrackerInvokerE, ptr @_ZTIN2cv16ParallelLoopBodyE }, comdat, align 8
@_ZTSN2cv7optflow6berlof6radial14TrackerInvokerE = linkonce_odr hidden constant [44 x i8] c"N2cv7optflow6berlof6radial14TrackerInvokerE\00", comdat, align 1
@_ZTVN2cv7optflow4rlof3ica14TrackerInvokerE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv7optflow4rlof3ica14TrackerInvokerE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv7optflow4rlof3ica14TrackerInvokerD0Ev, ptr @_ZNK2cv7optflow4rlof3ica14TrackerInvokerclERKNS_5RangeE] }, comdat, align 8
@_ZTIN2cv7optflow4rlof3ica14TrackerInvokerE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv7optflow4rlof3ica14TrackerInvokerE, ptr @_ZTIN2cv16ParallelLoopBodyE }, comdat, align 8
@_ZTSN2cv7optflow4rlof3ica14TrackerInvokerE = linkonce_odr hidden constant [39 x i8] c"N2cv7optflow4rlof3ica14TrackerInvokerE\00", comdat, align 1
@_ZTVN2cv7optflow6berlof3ica14TrackerInvokerE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv7optflow6berlof3ica14TrackerInvokerE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv7optflow6berlof3ica14TrackerInvokerD0Ev, ptr @_ZNK2cv7optflow6berlof3ica14TrackerInvokerclERKNS_5RangeE] }, comdat, align 8
@_ZTIN2cv7optflow6berlof3ica14TrackerInvokerE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv7optflow6berlof3ica14TrackerInvokerE, ptr @_ZTIN2cv16ParallelLoopBodyE }, comdat, align 8
@_ZTSN2cv7optflow6berlof3ica14TrackerInvokerE = linkonce_odr hidden constant [41 x i8] c"N2cv7optflow6berlof3ica14TrackerInvokerE\00", comdat, align 1
@_ZZN2cv11_InputArrayC1INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174 = linkonce_odr constant %"struct.cv::detail::CheckContext" { ptr @.str.13, ptr @.str.4, i32 174, i32 3, ptr @.str.14, ptr @.str.15, ptr @.str.16 }, comdat, align 8
@.str.13 = private unnamed_addr constant [81 x i8] c"cv::_InputArray::_InputArray(const std::vector<_Tp> &) [_Tp = cv::Point_<float>]\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"Must not be larger than INT_MAX\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"vec.size()\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"static_cast<size_t>(std::numeric_limits<int>::max())\00", align 1

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN2cv7optflow12CImageBuffer12buildPyramidENS_5Size_IiEEiPfb(ptr noundef nonnull align 8 dereferenceable(469) %0, i64 %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.b = load i8, ptr %i.a, align 4, !tbaa !24, !range !25, !noundef !26
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 3 uses
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.0.pre = load i32, ptr %i.d, align 8, !tbaa !27
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.f, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.g, align 4, !tbaa !30
  store i32 16842752, ptr %5, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.e, ptr %i.h, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.j, align 8
  store i32 33882112, ptr %6, align 8, !tbaa !32
  store ptr %0, ptr %i.i, align 8, !tbaa !33
  %i.k = call fastcc noundef i32 @_ZN2cv7optflowL28buildOpticalFlowPyramidScaleERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEibiibPf(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 %1, i32 noundef %2, ptr noundef %3) ; 2 uses
  store i32 %i.k, ptr %i.d, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.m, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 0, ptr %i.n, align 4, !tbaa !30
  store i32 16842752, ptr %7, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.l, ptr %i.o, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.q, align 8
  store i32 33882112, ptr %8, align 8, !tbaa !32
  store ptr %0, ptr %i.p, align 8, !tbaa !33
  %i.r = call fastcc noundef i32 @_ZN2cv7optflowL28buildOpticalFlowPyramidScaleERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEibiibPf(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 %1, i32 noundef %2, ptr noundef %3) ; 2 uses
  store i32 %i.r, ptr %i.d, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c, %bb.d
  %.0 = phi i32 [ %.0.pre, %._crit_edge ], [ %i.k, %bb.c ], [ %i.r, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN2cv7optflowL28buildOpticalFlowPyramidScaleERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEibiibPf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 23 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %10 = alloca %"class.cv::Size_", align 4        ; 8 uses
  %11 = alloca %"class.cv::Point_", align 4       ; 8 uses
  %12 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %13 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %14 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %15 = alloca %"class.cv::Size_", align 8        ; 13 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %19 = alloca %"class.cv::Rect_", align 8        ; 7 uses
  %20 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %21 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %22 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %23 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %24 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %.sroa.0.0.extract.trunc = trunc i64 %2 to i32  ; 15 uses
  %.sroa.32.0.extract.shift = lshr i64 %2, 32
  %25 = bitcast i64 %2 to <2 x i32>
  %26 = bitcast i64 %2 to <2 x i32>
  %.sroa.32.0.extract.trunc = trunc nuw i64 %.sroa.32.0.extract.shift to i32 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0), !noalias !245
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !245
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  %i.e = load i32, ptr %7, align 8, !tbaa !34
  %i.f = and i32 %i.e, 31
  %i.g = icmp eq i32 %i.f, 0
  %i.h = icmp sgt i32 %.sroa.0.0.extract.trunc, 2
  %or.cond = select i1 %i.g, i1 %i.h, i1 false
  %i.i = icmp sgt i32 %.sroa.32.0.extract.trunc, 2
  %or.cond5 = select i1 %or.cond, i1 %i.i, i1 false
  br i1 %or.cond5, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv7optflowL28buildOpticalFlowPyramidScaleERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEibiibPf, ptr noundef nonnull @.str.1, i32 noundef 264) #21
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %8, align 8, !tbaa !38     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.o = load i64, ptr %i.m, align 8, !tbaa !39
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.k, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.br

bb.i:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.q = add i32 %3, 1                            ; 2 uses
  invoke void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 1, i32 noundef %i.q, i32 noundef 0, i32 noundef -1, i1 noundef zeroext true, i32 noundef 0)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.r = load i32, ptr %7, align 8, !tbaa !34
  %i.s = and i32 %i.r, 32768
  %.not209 = icmp eq i32 %i.s, 0
  br i1 %.not209, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store i32 0, ptr %10, align 4, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  store i32 0, ptr %i.t, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  store i32 0, ptr %11, align 4, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  store i32 0, ptr %i.u, align 4, !tbaa !42
  invoke void @_ZNK2cv3Mat9locateROIERNS_5Size_IiEERNS_6Point_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef nonnull align 4 dereferenceable(8) %11)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.v = load i32, ptr %11, align 4, !tbaa !41    ; 2 uses
  %.not = icmp slt i32 %i.v, %.sroa.0.0.extract.trunc
  br i1 %.not, label %.critedge206, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = load i32, ptr %i.u, align 4, !tbaa !42   ; 2 uses
  %.not168 = icmp slt i32 %i.w, %.sroa.32.0.extract.trunc
  br i1 %.not168, label %.critedge206, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !43
  %i.z = add nuw i32 %i.v, %.sroa.0.0.extract.trunc
  %i.aa = add i32 %i.z, %i.y
  %i.ab = load i32, ptr %10, align 4, !tbaa !29
  %.not169 = icmp sgt i32 %i.aa, %i.ab
  br i1 %.not169, label %.critedge206, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !44
  %i.ae = add nuw i32 %i.w, %.sroa.32.0.extract.trunc
  %i.af = add i32 %i.ae, %i.ad
  %i.ag = load i32, ptr %i.t, align 4, !tbaa !30
  %.not170 = icmp sgt i32 %i.af, %i.ag
  br i1 %.not170, label %.critedge206, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv12_OutputArray9getMatRefEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ai = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ah, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.t unwind label %bb.s       ; 0 uses

bb.r:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.br

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.af

.critedge206:                                     ; preds = %bb.m, %bb.n, %bb.o, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %.critedge206
  %i.al = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv12_OutputArray9getMatRefEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0)
          to label %bb.u unwind label %bb.x       ; 8 uses

bb.u:                                             ; preds = %.critedge
  %i.am = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.al)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  br i1 %i.am, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.an = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat9adjustROIEiiii(ptr noundef nonnull align 8 dereferenceable(208) %i.al, i32 noundef %.sroa.32.0.extract.trunc, i32 noundef %.sroa.32.0.extract.trunc, i32 noundef %.sroa.0.0.extract.trunc, i32 noundef %.sroa.0.0.extract.trunc)
          to label %bb.y unwind label %bb.x       ; 0 uses

bb.x:                                             ; preds = %bb.ad, %bb.ab, %bb.w, %bb.u, %.critedge
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.ap = load i32, ptr %i.al, align 8, !tbaa !34
  %i.aq = and i32 %i.ap, 4095
  %i.ar = load i32, ptr %7, align 8, !tbaa !34
  %i.as = and i32 %i.ar, 4095                     ; 2 uses
  %.not171 = icmp eq i32 %i.aq, %i.as
  %i.at = shl nuw nsw i32 %.sroa.0.0.extract.trunc, 1 ; 2 uses
  br i1 %.not171, label %bb.z, label %._crit_edge

._crit_edge:                                      ; preds = %bb.y
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !43
  %.pre273 = add nsw i32 %.pre, %i.at
  br label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !43
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !43
  %i.ay = add nsw i32 %i.ax, %i.at                ; 3 uses
  %.not172 = icmp eq i32 %i.av, %i.ay
  br i1 %.not172, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !44
  %i.bb = shl nuw nsw i32 %.sroa.32.0.extract.trunc, 1
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !44
  %i.be = add nsw i32 %i.bd, %i.bb
  %.not173 = icmp eq i32 %i.ba, %i.be
  br i1 %.not173, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge, %bb.aa, %bb.z
  %.pre-phi274 = phi i32 [ %.pre273, %._crit_edge ], [ %i.ay, %bb.aa ], [ %i.ay, %bb.z ]
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !44
  %i.bh = shl nuw nsw i32 %.sroa.32.0.extract.trunc, 1
  %i.bi = add nsw i32 %i.bg, %i.bh
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.al, i32 noundef %i.bi, i32 noundef %.pre-phi274, i32 noundef %i.as)
          to label %bb.ac unwind label %bb.x

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 0, ptr %i.bj, align 8, !tbaa !29
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 0, ptr %i.bk, align 4, !tbaa !30
  store i32 16842752, ptr %12, align 8, !tbaa !32
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %7, ptr %i.bl, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 0, ptr %i.bn, align 8
  store i32 33619968, ptr %13, align 8, !tbaa !32
  store ptr %i.al, ptr %i.bm, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef %.sroa.32.0.extract.trunc, i32 noundef %.sroa.32.0.extract.trunc, i32 noundef %.sroa.0.0.extract.trunc, i32 noundef %.sroa.0.0.extract.trunc, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.bo = sub nsw i32 0, %.sroa.32.0.extract.trunc ; 2 uses
  %i.bp = sub nsw i32 0, %.sroa.0.0.extract.trunc ; 2 uses
  %i.bq = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat9adjustROIEiiii(ptr noundef nonnull align 8 dereferenceable(208) %i.al, i32 noundef %i.bo, i32 noundef %i.bo, i32 noundef %i.bp, i32 noundef %i.bp)
          to label %bb.af unwind label %bb.x      ; 0 uses

bb.ae:                                            ; preds = %bb.ac
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.br

bb.af:                                            ; preds = %bb.t, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !45 ; 6 uses
  %i.bu = icmp slt i32 %i.bt, 3
  br i1 %i.bu, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.as

.noexc:                                           ; preds = %bb.ag
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.4, i32 noundef 109) #21
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %.noexc
  unreachable

bb.ai:                                            ; preds = %.noexc
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = load ptr, ptr %5, align 8, !tbaa !38    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ai
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !39
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.body

bb.aj:                                            ; preds = %bb.af
  %i.cb = icmp sgt i32 %i.bt, 0
  br i1 %i.cb, label %bb.ak, label %.thread.i

.thread.i:                                        ; preds = %bb.aj
  %i.cc = icmp eq i32 %i.bt, 0
  %i.cd = zext i1 %i.cc to i32
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 84
  %i.cf = icmp eq i32 %i.bt, 2
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %7, i64 88
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 8
  %.val = load i32, ptr %i.ce, align 4            ; 2 uses
  %i.cg = select i1 %i.cf, i32 %.sroa.gep.val, i32 %.val ; 2 uses
  %.not.i = icmp eq i32 %i.bt, 1
  br i1 %.not.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %.thread.i
  %i.ch = phi i32 [ %i.cd, %.thread.i ], [ %i.cg, %bb.ak ]
  %i.ci = icmp sgt i32 %i.bt, -1
  %i.cj = zext i1 %i.ci to i32
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.ck = phi i32 [ %i.ch, %bb.al ], [ %i.cg, %bb.ak ]
  %i.cl = phi i32 [ %i.cj, %bb.al ], [ %.val, %bb.ak ]
  %.sroa.2.0.insert.ext.i = zext i32 %i.cl to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ck to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.cm = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv12_OutputArray9getMatRefEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0)
          to label %bb.an unwind label %bb.at

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(208) %i.cm)
          to label %bb.ao unwind label %bb.at

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %16)
          to label %.preheader unwind label %bb.au

.preheader:                                       ; preds = %bb.ao
  %.not179219 = icmp slt i32 %3, 0
  br i1 %.not179219, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %.preheader
  %i.cn = shl nuw nsw i32 %.sroa.0.0.extract.trunc, 1 ; 2 uses
  %i.co = shl nuw nsw i32 %.sroa.32.0.extract.trunc, 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %19, i64 12
  %i.cs = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %20, i64 20
  %i.cu = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %22, i64 20
  %i.cz = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.dc = sub nsw i32 0, %.sroa.32.0.extract.trunc ; 2 uses
  %i.dd = sub nsw i32 0, %.sroa.0.0.extract.trunc ; 2 uses
  %i.de = load <2 x float>, ptr %4, align 4, !tbaa !47
  %i.df = load <2 x i32>, ptr %15, align 8, !tbaa !48
  %i.dg = add nsw <2 x i32> %i.df, splat (i32 1)
  %i.dh = sitofp <2 x i32> %i.dg to <2 x float>
  %i.di = fdiv <2 x float> %i.dh, %i.de
  %i.dj = fptosi <2 x float> %i.di to <2 x i32>   ; 2 uses
  store <2 x i32> %i.dj, ptr %15, align 8
  %i.dk = icmp sgt <2 x i32> %i.dj, %26           ; 2 uses
  %i.dl = extractelement <2 x i1> %i.dk, i64 0
  %i.dm = extractelement <2 x i1> %i.dk, i64 1
  %or.cond204.peel = select i1 %i.dl, i1 %i.dm, i1 false
  br i1 %or.cond204.peel, label %bb.aq, label %.loopexit253

bb.aq:                                            ; preds = %bb.ap
  %i.dn = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %bb.ar unwind label %.loopexit210.loopexit.split-lp ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  %exitcond.peel.not = icmp eq i32 %3, 0
  br i1 %exitcond.peel.not, label %.loopexit, label %.peel.next

bb.as:                                            ; preds = %bb.ag
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.at:                                            ; preds = %bb.an, %bb.am
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.au:                                            ; preds = %bb.ao
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.peel.next:                                       ; preds = %bb.ar, %bb.bo
  %.0132220 = phi i32 [ %i.ew, %bb.bo ], [ 1, %bb.ar ] ; 4 uses
  %i.dr = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv12_OutputArray9getMatRefEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %.0132220)
          to label %bb.av unwind label %bb.ay     ; 9 uses

bb.av:                                            ; preds = %.peel.next
  %i.ds = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.dr)
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av
  br i1 %i.ds, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dt = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat9adjustROIEiiii(ptr noundef nonnull align 8 dereferenceable(208) %i.dr, i32 noundef %.sroa.32.0.extract.trunc, i32 noundef %.sroa.32.0.extract.trunc, i32 noundef %.sroa.0.0.extract.trunc, i32 noundef %.sroa.0.0.extract.trunc)
          to label %bb.az unwind label %bb.ay     ; 0 uses

bb.ay:                                            ; preds = %bb.bg, %bb.bc, %bb.ax, %bb.av, %.peel.next
  %lpad.loopexit231 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit210

bb.az:                                            ; preds = %bb.ax, %bb.aw
  %i.du = load i32, ptr %i.dr, align 8, !tbaa !34
  %i.dv = and i32 %i.du, 4095
  %i.dw = load i32, ptr %7, align 8, !tbaa !34
  %i.dx = and i32 %i.dw, 4095                     ; 2 uses
  %.not181 = icmp eq i32 %i.dv, %i.dx
  br i1 %.not181, label %bb.ba, label %._crit_edge263

._crit_edge263:                                   ; preds = %bb.az
  %.pre264 = load i32, ptr %i.cp, align 4, !tbaa !30
  %.pre266 = load i32, ptr %15, align 8, !tbaa !29
  %.pre270 = add nsw i32 %.pre266, %i.cn
  br label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !43
  %i.ea = load i32, ptr %15, align 8, !tbaa !29   ; 2 uses
  %i.eb = add nsw i32 %i.ea, %i.cn                ; 3 uses
  %.not182 = icmp eq i32 %i.dz, %i.eb
  %.pre265 = load i32, ptr %i.cp, align 4, !tbaa !30 ; 4 uses
  br i1 %.not182, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !44
  %i.ee = add nsw i32 %.pre265, %i.co
  %.not183 = icmp eq i32 %i.ed, %i.ee
  br i1 %.not183, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge263, %bb.bb, %bb.ba
  %.pre-phi = phi i32 [ %.pre270, %._crit_edge263 ], [ %i.eb, %bb.bb ], [ %i.eb, %bb.ba ]
  %i.ef = phi i32 [ %.pre264, %._crit_edge263 ], [ %.pre265, %bb.bb ], [ %.pre265, %bb.ba ]
  %i.eg = add nsw i32 %i.ef, %i.co
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.dr, i32 noundef %i.eg, i32 noundef %.pre-phi, i32 noundef %i.dx)
          to label %._crit_edge267 unwind label %bb.ay

._crit_edge267:                                   ; preds = %bb.bc
  %.pre268 = load i32, ptr %15, align 8, !tbaa !29
  %.pre269 = load i32, ptr %i.cp, align 4, !tbaa !30
  br label %bb.bd

bb.bd:                                            ; preds = %._crit_edge267, %bb.bb
  %i.eh = phi i32 [ %.pre269, %._crit_edge267 ], [ %.pre265, %bb.bb ]
  %i.ei = phi i32 [ %.pre268, %._crit_edge267 ], [ %i.ea, %bb.bb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  store i64 %2, ptr %19, align 8
  store i32 %i.ei, ptr %i.cq, align 8, !tbaa !50
  store i32 %i.eh, ptr %i.cr, align 4, !tbaa !51
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %i.dr, ptr noundef nonnull align 4 dereferenceable(16) %19)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit unwind label %bb.bh

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit:               ; preds = %bb.bd
  %i.ej = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %18)
          to label %bb.be unwind label %bb.bi     ; 0 uses

bb.be:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  store i32 0, ptr %i.cs, align 8, !tbaa !29
  store i32 0, ptr %i.ct, align 4, !tbaa !30
  store i32 16842752, ptr %20, align 8, !tbaa !32
  store ptr %16, ptr %i.cu, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  store i64 0, ptr %i.cw, align 8
  store i32 33619968, ptr %21, align 8, !tbaa !32
  store ptr %17, ptr %i.cv, align 8, !tbaa !33
  invoke void @_ZN2cv7pyrDownERKNS_11_InputArrayERKNS_12_OutputArrayERKNS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 4 dereferenceable(8) %15, i32 noundef 4)
          to label %bb.bf unwind label %bb.bk

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  store i32 0, ptr %i.cx, align 8, !tbaa !29
  store i32 0, ptr %i.cy, align 4, !tbaa !30
  store i32 16842752, ptr %22, align 8, !tbaa !32
  store ptr %17, ptr %i.cz, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  store i64 0, ptr %i.db, align 8
  store i32 33619968, ptr %23, align 8, !tbaa !32
  store ptr %i.dr, ptr %i.da, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %24, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %23, i32 noundef %.sroa.32.0.extract.trunc, i32 noundef %.sroa.32.0.extract.trunc, i32 noundef %.sroa.0.0.extract.trunc, i32 noundef %.sroa.0.0.extract.trunc, i32 noundef 20, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.bg unwind label %bb.bl

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  %i.ek = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat9adjustROIEiiii(ptr noundef nonnull align 8 dereferenceable(208) %i.dr, i32 noundef %i.dc, i32 noundef %i.dc, i32 noundef %i.dd, i32 noundef %i.dd)
          to label %bb.bm unwind label %bb.ay     ; 0 uses

bb.bh:                                            ; preds = %bb.bd
  %lpad.loopexit235 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  %lpad.loopexit240 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #20
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn184 = phi { ptr, i32 } [ %lpad.loopexit240, %bb.bi ], [ %lpad.loopexit235, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %.loopexit210

bb.bk:                                            ; preds = %bb.be
  %lpad.loopexit245 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %.loopexit210

bb.bl:                                            ; preds = %bb.bf
  %lpad.loopexit250 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  br label %.loopexit210

bb.bm:                                            ; preds = %bb.bg
  %i.el = load <2 x i32>, ptr %15, align 8, !tbaa !48
  %i.em = add nsw <2 x i32> %i.el, splat (i32 1)
  %i.en = sitofp <2 x i32> %i.em to <2 x float>
  %i.eo = load <2 x float>, ptr %4, align 4, !tbaa !47
  %i.ep = fdiv <2 x float> %i.en, %i.eo
  %i.eq = fptosi <2 x float> %i.ep to <2 x i32>   ; 2 uses
  store <2 x i32> %i.eq, ptr %15, align 8
  %i.er = icmp sgt <2 x i32> %i.eq, %25           ; 2 uses
  %i.es = extractelement <2 x i1> %i.er, i64 0
  %i.et = extractelement <2 x i1> %i.er, i64 1
  %or.cond204 = select i1 %i.es, i1 %i.et, i1 false
  br i1 %or.cond204, label %bb.bn, label %.loopexit253

.loopexit253:                                     ; preds = %bb.bm, %bb.ap
  %.0132220.lcssa225 = phi i32 [ 0, %bb.ap ], [ %.0132220, %bb.bm ] ; 2 uses
  %i.eu = add nuw nsw i32 %.0132220.lcssa225, 1
  invoke void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 1, i32 noundef %i.eu, i32 noundef 0, i32 noundef -1, i1 noundef zeroext true, i32 noundef 0)
          to label %.loopexit unwind label %.loopexit.split-lp

.loopexit210.loopexit:                            ; preds = %bb.bn
  %lpad.loopexit254 = landingpad { ptr, i32 }
end_hunk_0
