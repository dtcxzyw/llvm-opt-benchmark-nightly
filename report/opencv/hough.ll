Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/hough?download=true
inline.NumInlined: 2522
inline.NumDeleted: 933
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 26
begin_hunk_0
@_ZZN2cvL12HoughCirclesERKNS_11_InputArrayERKNS_12_OutputArrayEiddddiiidE16__cv_check__2281 = internal constant %"struct.cv::detail::CheckContext" { ptr @.str.26, ptr @.str.1, i32 2281, i32 0, ptr @.str.27, ptr @.str.3, ptr @.str.28 }, align 8
@.str.27 = private unnamed_addr constant [29 x i8] c"Wrong type of output circles\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"type == CV_32FC3 || type == CV_32FC4\00", align 1
@.str.29 = private unnamed_addr constant [83 x i8] c"!_image.empty() && _image.type() == CV_8UC1 && (_image.isMat() || _image.isUMat())\00", align 1
@__func__._ZN2cvL12HoughCirclesERKNS_11_InputArrayERKNS_12_OutputArrayEiddddiiid = private unnamed_addr constant [13 x i8] c"HoughCircles\00", align 1
@.str.30 = private unnamed_addr constant [62 x i8] c"dp, min_dist and canny_threshold must be all positive numbers\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"acc_threshold must be a positive number\00", align 1
@.str.32 = private unnamed_addr constant [80 x i8] c"when using HOUGH_GRADIENT_ALT method, param2 parameter must be smaller than 1.0\00", align 1
@.str.33 = private unnamed_addr constant [93 x i8] c"Unrecognized method id. Actually supported methods are HOUGH_GRADIENT and HOUGH_GRADIENT_ALT\00", align 1
@_ZTVN2cv24HoughCirclesAccumInvokerE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv24HoughCirclesAccumInvokerE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv24HoughCirclesAccumInvokerD0Ev, ptr @_ZNK2cv24HoughCirclesAccumInvokerclERKNS_5RangeE] }, comdat, align 8
@_ZTIN2cv24HoughCirclesAccumInvokerE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv24HoughCirclesAccumInvokerE, ptr @_ZTIN2cv16ParallelLoopBodyE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN2cv24HoughCirclesAccumInvokerE = linkonce_odr hidden constant [32 x i8] c"N2cv24HoughCirclesAccumInvokerE\00", comdat, align 1
@_ZTIN2cv16ParallelLoopBodyE = external constant ptr
@_ZTVN2cv30HoughCirclesFindCentersInvokerE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv30HoughCirclesFindCentersInvokerE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv30HoughCirclesFindCentersInvokerD0Ev, ptr @_ZNK2cv30HoughCirclesFindCentersInvokerclERKNS_5RangeE] }, comdat, align 8
@_ZTIN2cv30HoughCirclesFindCentersInvokerE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv30HoughCirclesFindCentersInvokerE, ptr @_ZTIN2cv16ParallelLoopBodyE }, comdat, align 8
@_ZTSN2cv30HoughCirclesFindCentersInvokerE = linkonce_odr hidden constant [38 x i8] c"N2cv30HoughCirclesFindCentersInvokerE\00", comdat, align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@_ZTVN2cv32HoughCircleEstimateRadiusInvokerINS_11NZPointListEEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv32HoughCircleEstimateRadiusInvokerINS_11NZPointListEEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv32HoughCircleEstimateRadiusInvokerINS_11NZPointListEED0Ev, ptr @_ZNK2cv32HoughCircleEstimateRadiusInvokerINS_11NZPointListEEclERKNS_5RangeE] }, comdat, align 8
@.str.37 = private unnamed_addr constant [9 x i8] c"nzSz > 0\00", align 1
@__func__._ZN2cv32HoughCircleEstimateRadiusInvokerINS_11NZPointListEEC2ERKS1_iRKSt6vectorIiSaIiEERS5_INS_15EstimatedCircleESaISA_EEiiiifRSt15recursive_mutex = private unnamed_addr constant [33 x i8] c"HoughCircleEstimateRadiusInvoker\00", align 1
@_ZTIN2cv32HoughCircleEstimateRadiusInvokerINS_11NZPointListEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv32HoughCircleEstimateRadiusInvokerINS_11NZPointListEEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, comdat, align 8
@_ZTSN2cv32HoughCircleEstimateRadiusInvokerINS_11NZPointListEEE = linkonce_odr hidden constant [59 x i8] c"N2cv32HoughCircleEstimateRadiusInvokerINS_11NZPointListEEE\00", comdat, align 1
@_ZTVN2cv32HoughCircleEstimateRadiusInvokerINS_10NZPointSetEEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv32HoughCircleEstimateRadiusInvokerINS_10NZPointSetEEE, ptr @_ZN2cv16ParallelLoopBodyD2Ev, ptr @_ZN2cv32HoughCircleEstimateRadiusInvokerINS_10NZPointSetEED0Ev, ptr @_ZNK2cv32HoughCircleEstimateRadiusInvokerINS_10NZPointSetEEclERKNS_5RangeE] }, comdat, align 8
@_ZTIN2cv32HoughCircleEstimateRadiusInvokerINS_10NZPointSetEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv32HoughCircleEstimateRadiusInvokerINS_10NZPointSetEEE, ptr @_ZTIN2cv16ParallelLoopBodyE }, comdat, align 8
@_ZTSN2cv32HoughCircleEstimateRadiusInvokerINS_10NZPointSetEEE = linkonce_odr hidden constant [58 x i8] c"N2cv32HoughCircleEstimateRadiusInvokerINS_10NZPointSetEEE\00", comdat, align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@__const._ZN2cvL15HoughCirclesAltERKNS_3MatERSt6vectorINS_15EstimatedCircleESaIS4_EEdddddd.n33 = private unnamed_addr constant [8 x [2 x i32]] [[2 x i32] [i32 -1, i32 -1], [2 x i32] [i32 -1, i32 0], [2 x i32] [i32 -1, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 1, i32 -1], [2 x i32] [i32 0, i32 -1]], align 16
@.str.39 = private unnamed_addr constant [28 x i8] c"mdata[p.y*mstep + p.x] == 1\00", align 1
@__func__._ZN2cvL15HoughCirclesAltERKNS_3MatERSt6vectorINS_15EstimatedCircleESaIS4_EEdddddd = private unnamed_addr constant [16 x i8] c"HoughCirclesAlt\00", align 1
@_ZTVN2cv29ParallelLoopBodyLambdaWrapperE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2cv29ParallelLoopBodyLambdaWrapperE, ptr @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev, ptr @_ZN2cv29ParallelLoopBodyLambdaWrapperD0Ev, ptr @_ZNK2cv29ParallelLoopBodyLambdaWrapperclERKNS_5RangeE] }, comdat, align 8
@_ZTIN2cv29ParallelLoopBodyLambdaWrapperE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv29ParallelLoopBodyLambdaWrapperE, ptr @_ZTIN2cv16ParallelLoopBodyE }, comdat, align 8
@_ZTSN2cv29ParallelLoopBodyLambdaWrapperE = linkonce_odr hidden constant [37 x i8] c"N2cv29ParallelLoopBodyLambdaWrapperE\00", comdat, align 1
@"_ZTIZN2cvL15HoughCirclesAltERKNS_3MatERSt6vectorINS_15EstimatedCircleESaIS4_EEddddddE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN2cvL15HoughCirclesAltERKNS_3MatERSt6vectorINS_15EstimatedCircleESaIS4_EEddddddE3$_0" }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@"_ZTSZN2cvL15HoughCirclesAltERKNS_3MatERSt6vectorINS_15EstimatedCircleESaIS4_EEddddddE3$_0" = internal constant [86 x i8] c"ZN2cvL15HoughCirclesAltERKNS_3MatERSt6vectorINS_15EstimatedCircleESaIS4_EEddddddE3$_0\00", align 1
@.str.40 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.43 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN2cv10HoughLinesERKNS_11_InputArrayERKNS_12_OutputArrayEddiddddb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef %2, double noundef %3, i32 noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, i1 noundef zeroext %9) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.10", align 1 ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.10", align 1 ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator.10", align 1 ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 14 uses
  %19 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %19, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv10HoughLinesERKNS_11_InputArrayERKNS_12_OutputArrayEddiddddbE25__cv_trace_location_fn927)
  %i.a = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray9fixedTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.b = invoke noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.d unwind label %bb.e       ; 4 uses

bb.d:                                             ; preds = %bb.c
  switch i32 %i.b, label %.invoke [
    i32 69, label %bb.f
    i32 37, label %bb.f
  ]

bb.e:                                             ; preds = %bb.g, %.invoke, %bb.k, %bb.j, %bb.i, %bb.c, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt6vectorIN2cv11hough_indexESaIS1_EED2Ev.exit403.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %.merged544.i, %_ZNSt6vectorIN2cv11hough_indexESaIS1_EED2Ev.exit403.i ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  resume { ptr, i32 } %eh.lpad-body

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.b
  %.0 = phi i32 [ %i.b, %bb.d ], [ 37, %bb.b ], [ %i.b, %bb.d ] ; 6 uses
  %i.d = fcmp oeq double %5, 0.000000e+00
  %i.e = fcmp oeq double %6, 0.000000e+00
  %or.cond3 = and i1 %i.d, %i.e
  %i.f = insertelement <2 x double> poison, double %3, i64 0
  %i.g = insertelement <2 x double> %i.f, double %2, i64 1
  %i.h = fptrunc <2 x double> %i.g to <2 x float> ; 10 uses
  br i1 %or.cond3, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = extractelement <2 x float> %i.h, i64 0
  %i.j = extractelement <2 x float> %i.h, i64 1
  invoke fastcc void @_ZN2cvL18HoughLinesStandardERKNS_11_InputArrayERKNS_12_OutputArrayEiffiiddb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %.0, float noundef %i.j, float noundef %i.i, i32 noundef %4, double noundef %7, double noundef %8, i1 noundef zeroext %9)
          to label %bb.ci unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.k = insertelement <2 x double> poison, double %5, i64 0
  %i.l = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.k) ; 2 uses
  %i.m = insertelement <2 x double> poison, double %6, i64 0
  %i.n = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.m) ; 9 uses
  %i.o = icmp eq i32 %.0, 37
  switch i32 %.0, label %.invoke [
    i32 69, label %bb.i
    i32 37, label %bb.i
  ]

.invoke:                                          ; preds = %bb.h, %bb.d
  %i.p = phi i32 [ %i.b, %bb.d ], [ %.0, %bb.h ]
  %i.q = phi ptr [ @_ZZN2cv10HoughLinesERKNS_11_InputArrayERKNS_12_OutputArrayEddiddddbE15__cv_check__933, %bb.d ], [ @_ZZN2cvL14HoughLinesSDivERKNS_11_InputArrayERKNS_12_OutputArrayEiffiiiiddE15__cv_check__265, %bb.h ]
  invoke void @_ZN2cv6detail20check_failed_MatTypeEiRKNS0_12CheckContextE(i32 noundef %i.p, ptr noundef nonnull align 8 dereferenceable(48) %i.q) #23
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

bb.i:                                             ; preds = %bb.h, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.r = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %.noexc31 unwind label %bb.e

.noexc31:                                         ; preds = %bb.i
  %i.s = icmp eq i32 %i.r, 65536
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc31
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !23, !noalias !215
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %i.u)
          to label %_ZNK2cv11_InputArray6getMatEi.exit.i unwind label %bb.e

bb.k:                                             ; preds = %.noexc31
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit.i unwind label %bb.e

_ZNK2cv11_InputArray6getMatEi.exit.i:             ; preds = %bb.k, %bb.j
  %i.v = mul i32 %i.n, %i.l                       ; 6 uses
  %i.w = load i32, ptr %10, align 8, !tbaa !31
  %i.x = and i32 %i.w, 4095
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZNKSt6vectorIN2cv11hough_indexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cvL14HoughLinesSDivERKNS_11_InputArrayERKNS_12_OutputArrayEiffiiiidd, ptr noundef nonnull @.str.1, i32 noundef 288) #23
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.p:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %11, align 8, !tbaa !35   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.p
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !36
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.o
  %.pn.i = phi { ptr, i32 } [ %i.z, %bb.o ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.aa, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %_ZNSt6vectorIN2cv11hough_indexESaIS1_EED2Ev.exit403.i

_ZNKSt6vectorIN2cv11hough_indexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %_ZNK2cv11_InputArray6getMatEi.exit.i
  %i.ag = call i32 @llvm.smin.i32(i32 %4, i32 255) ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !37 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !38
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !39 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !40 ; 3 uses
  %i.ap = fdiv <2 x float> splat (float 1.000000e+00), %i.h ; 3 uses
  %i.aq = insertelement <2 x i32> poison, i32 %i.n, i64 0
  %i.ar = insertelement <2 x i32> %i.aq, i32 %i.l, i64 1
  %i.as = sitofp <2 x i32> %i.ar to <2 x float>   ; 2 uses
  %i.at = fdiv <2 x float> %i.h, %i.as            ; 4 uses
  %i.au = fdiv <2 x float> splat (float 1.000000e+00), %i.at ; 2 uses
  %i.av = sitofp i32 %i.am to double              ; 2 uses
  %i.aw = sitofp i32 %i.ao to double              ; 2 uses
  %i.ax = fmul nnan double %i.aw, %i.aw
  %i.ay = call double @llvm.fmuladd.f64(double %i.av, double %i.av, double %i.ax)
  %sqrt.i = call double @llvm.sqrt.f64(double %i.ay)
  %i.az = fpext <2 x float> %i.ap to <2 x double> ; 2 uses
  %i.ba = insertelement <2 x double> <double f0x401921FB54442D18, double poison>, double %sqrt.i, i64 1
  %i.bb = fmul <2 x double> %i.ba, %i.az
  %i.bc = call <2 x double> @llvm.floor.v2f64(<2 x double> %i.bb)
  %i.bd = fptosi <2 x double> %i.bc to <2 x i32>  ; 3 uses
  %i.be = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #25
          to label %bb.q unwind label %bb.t       ; 15 uses

bb.q:                                             ; preds = %_ZNKSt6vectorIN2cv11hough_indexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  store i32 %i.ag, ptr %i.be, align 4, !tbaa !41
  %.sroa.6453.0..sroa_idx454.i = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %.sroa.6453.0..sroa_idx454.i, align 4, !tbaa !43
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12 ; 15 uses
  %i.bg = extractelement <2 x i32> %i.bd, i64 0   ; 6 uses
  %i.bh = mul i32 %i.bg, 5
  %i.bi = mul i32 %i.bh, %i.n                     ; 6 uses
  %i.bj = sext i32 %i.bi to i64                   ; 3 uses
  %i.bk = icmp slt i32 %i.bi, 0
  br i1 %i.bk, label %bb.r, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #23
          to label %.noexc341.i unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit401.thread545.i

.noexc341.i:                                      ; preds = %bb.r
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.q
  %.not.i.i.i.i340.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i.i340.i, label %._crit_edge.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.bl = shl nuw nsw i64 %i.bj, 2
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #25
          to label %.noexc342.i unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit401.thread545.i ; 7 uses

.noexc342.i:                                      ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bj
  store float 0.000000e+00, ptr %i.bm, align 4, !tbaa !43
  %i.bo = add nsw i64 %i.bj, -1                   ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.preheader.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc342.i
  %i.bq = getelementptr i8, ptr %i.bm, i64 4
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bo, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bq, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !43
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc342.i
  %wide.trip.count.i = zext nneg i32 %i.bi to i64 ; 2 uses
  %i.br = extractelement <2 x float> %i.at, i64 0 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.bs = icmp eq i32 %i.bi, 1
  br i1 %i.bs, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.bt = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bu = uitofp nneg i32 %i.bt to float
  %i.bv = fmul float %i.br, %i.bu
  %i.bw = fmul float %i.bv, 2.000000e-01
  %i.bx = call noundef float @cosf(float noundef %i.bw) #22
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.i
  store float %i.bx, ptr %i.by, align 4, !tbaa !43
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.bz = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.ca = uitofp nneg i32 %i.bz to float
  %i.cb = fmul float %i.br, %i.ca
  %i.cc = fmul float %i.cb, 2.000000e-01
  %i.cd = call noundef float @cosf(float noundef %i.cc) #22
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.next.i
  store float %i.cd, ptr %i.ce, align 4, !tbaa !43
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !192

bb.t:                                             ; preds = %_ZNKSt6vectorIN2cv11hough_indexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv11hough_indexESaIS1_EED2Ev.exit403.i

_ZNSt6vectorIfSaIfEED2Ev.exit401.thread545.i:     ; preds = %bb.s, %bb.r
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit401.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod191 = trunc i32 %i.bi to i1
  call void @llvm.assume(i1 %lcmp.mod191)
  %i.ch = trunc nuw nsw i64 %indvars.iv.i.epil.init to i32
  %i.ci = uitofp nneg i32 %i.ch to float
  %i.cj = fmul float %i.br, %i.ci
  %i.ck = fmul float %i.cj, 2.000000e-01
  %i.cl = call noundef float @cosf(float noundef %i.ck) #22
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.i.epil.init
  store float %i.cl, ptr %i.cm, align 4, !tbaa !43
  br label %._crit_edge.i.loopexit

._crit_edge.i.loopexit:                           ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %i.cn = ptrtoint ptr %i.bn to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.10449.0845.i = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.cn, %._crit_edge.i.loopexit ] ; 2 uses
  %.sroa.0445.0842.i = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.bm, %._crit_edge.i.loopexit ] ; 7 uses
  %i.co = extractelement <2 x i32> %i.bd, i64 1   ; 3 uses
  %i.cp = mul nsw i32 %i.co, %i.bg                ; 5 uses
  %i.cq = sext i32 %i.cp to i64                   ; 3 uses
  %i.cr = icmp slt i32 %i.cp, 0
  br i1 %i.cr, label %bb.u, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.u:                                             ; preds = %._crit_edge.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #23
          to label %.noexc344.i unwind label %bb.w

.noexc344.i:                                      ; preds = %bb.u
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %._crit_edge.i
  %.not.i.i.i.i343.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i.i.i343.i, label %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #25
          to label %.noexc345.i unwind label %bb.w ; 3 uses

.noexc345.i:                                      ; preds = %bb.v
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cq
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cs, i8 0, i64 %i.cq, i1 false)
  %i.cu = ptrtoint ptr %i.ct to i64
  br label %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i

_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i:          ; preds = %.noexc345.i, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.0439.0.i = phi ptr [ %i.cs, %.noexc345.i ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 10 uses
  %.sroa.12.0.i = phi i64 [ %i.cu, %.noexc345.i ], [ 0, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %i.cv = icmp sgt i32 %i.ao, 0
  %i.cw = icmp sgt i32 %i.am, 0
  %or.cond920.i = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %or.cond920.i, label %.preheader572.us.preheader.i, label %.preheader565.i

.preheader572.us.preheader.i:                     ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i
  %sext838.i = shl i64 %i.ak, 32
  %i.cx = ashr exact i64 %sext838.i, 32           ; 2 uses
  %wide.trip.count745.i = zext nneg i32 %i.ao to i64 ; 2 uses
  %wide.trip.count740.i = zext nneg i32 %i.am to i64 ; 4 uses
  %min.iters.check = icmp ult i32 %i.am, 8
  %n.vec = and i64 %wide.trip.count740.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count740.i
  br label %.preheader572.us.i

.preheader572.us.i:                               ; preds = %._crit_edge621.us.i, %.preheader572.us.preheader.i
  %indvars.iv742.i = phi i64 [ 0, %.preheader572.us.preheader.i ], [ %indvars.iv.next743.i, %._crit_edge621.us.i ] ; 2 uses
  %.0291623.us.i = phi i32 [ 0, %.preheader572.us.preheader.i ], [ %.lcssa142, %._crit_edge621.us.i ] ; 2 uses
  %i.cy = mul nsw i64 %indvars.iv742.i, %i.cx
  %invariant.gep.i = getelementptr i8, ptr %i.ai, i64 %i.cy ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader572.us.i
  %i.cz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0291623.us.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cz, %vector.ph ], [ %i.dg, %vector.body ]
  %vec.phi143 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dh, %vector.body ]
  %i.da = getelementptr i8, ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 4
  %wide.load = load <4 x i8>, ptr %i.da, align 1, !tbaa !36
  %wide.load144 = load <4 x i8>, ptr %i.db, align 1, !tbaa !36
  %i.dc = icmp ne <4 x i8> %wide.load, zeroinitializer
  %i.dd = icmp ne <4 x i8> %wide.load144, zeroinitializer
  %i.de = zext <4 x i1> %i.dc to <4 x i32>
  %i.df = zext <4 x i1> %i.dd to <4 x i32>
  %i.dg = add <4 x i32> %vec.phi, %i.de           ; 2 uses
  %i.dh = add <4 x i32> %vec.phi143, %i.df        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !193

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.dh, %i.dg
  %i.dj = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge621.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader572.us.i, %middle.block
  %indvars.iv737.i.ph = phi i64 [ 0, %.preheader572.us.i ], [ %n.vec, %middle.block ]
  %.1292619.us.i.ph = phi i32 [ %.0291623.us.i, %.preheader572.us.i ], [ %i.dj, %middle.block ]
end_hunk_0
