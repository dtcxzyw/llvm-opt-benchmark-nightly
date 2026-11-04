Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/hough?download=true
inline.NumInlined: 2522
inline.NumDeleted: 933
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 26
begin_hunk_0
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
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv737.i = phi i64 [ %indvars.iv.next738.i, %scalar.ph ], [ %indvars.iv737.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.1292619.us.i = phi i32 [ %i.dn, %scalar.ph ], [ %.1292619.us.i.ph, %scalar.ph.preheader ]
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv737.i
  %i.dk = load i8, ptr %gep.i, align 1, !tbaa !36
  %i.dl = icmp ne i8 %i.dk, 0
  %i.dm = zext i1 %i.dl to i32
  %i.dn = add nsw i32 %.1292619.us.i, %i.dm       ; 2 uses
  %indvars.iv.next738.i = add nuw nsw i64 %indvars.iv737.i, 1 ; 2 uses
  %exitcond741.not.i = icmp eq i64 %indvars.iv.next738.i, %wide.trip.count740.i
  br i1 %exitcond741.not.i, label %._crit_edge621.us.i, label %scalar.ph, !llvm.loop !194

._crit_edge621.us.i:                              ; preds = %scalar.ph, %middle.block
  %.lcssa142 = phi i32 [ %i.dj, %middle.block ], [ %i.dn, %scalar.ph ] ; 5 uses
  %indvars.iv.next743.i = add nuw nsw i64 %indvars.iv742.i, 1 ; 2 uses
  %exitcond746.not.i = icmp eq i64 %indvars.iv.next743.i, %wide.trip.count745.i
  br i1 %exitcond746.not.i, label %._crit_edge624.i, label %.preheader572.us.i, !llvm.loop !195

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit399.i

._crit_edge624.i:                                 ; preds = %._crit_edge621.us.i
  %i.dp = zext nneg i32 %.lcssa142 to i64         ; 4 uses
  %i.dq = icmp slt i32 %.lcssa142, 0
  br i1 %i.dq, label %bb.x, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.x:                                             ; preds = %._crit_edge624.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #23
          to label %.noexc349.i unwind label %bb.ad

.noexc349.i:                                      ; preds = %bb.x
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %._crit_edge624.i
  %.not.i.i.i.i346.i = icmp eq i32 %.lcssa142, 0  ; 2 uses
  br i1 %.not.i.i.i.i346.i, label %.preheader567.preheader.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.dr = shl nuw nsw i64 %i.dp, 2                ; 2 uses
  %i.ds = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #25
          to label %.noexc350.i unwind label %bb.ad ; 6 uses

.noexc350.i:                                      ; preds = %bb.y
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dp ; 3 uses
  store i32 0, ptr %i.ds, align 4, !tbaa !41
  %i.du = add nsw i64 %i.dp, -1                   ; 3 uses
  %i.dv = icmp eq i64 %i.du, 0                    ; 2 uses
  br i1 %i.dv, label %bb.z, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc350.i
  %i.dw = getelementptr i8, ptr %i.ds, i64 4
  %.idx.i.i.i.i.i.i.i347.i = shl nuw nsw i64 %i.du, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.dw, i8 0, i64 %.idx.i.i.i.i.i.i.i347.i, i1 false), !tbaa !41
  br label %bb.z

bb.z:                                             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc350.i
  %i.dx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #25
          to label %.noexc358.i unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit395.thread.i ; 5 uses

.noexc358.i:                                      ; preds = %bb.z
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.dp ; 2 uses
  store i32 0, ptr %i.dx, align 4, !tbaa !41
  br i1 %i.dv, label %.preheader567.preheader.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i353.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i353.i: ; preds = %.noexc358.i
  %i.dz = getelementptr i8, ptr %i.dx, i64 4
  %.idx.i.i.i.i.i.i.i354.i = shl nuw nsw i64 %i.du, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.dz, i8 0, i64 %.idx.i.i.i.i.i.i.i354.i, i1 false), !tbaa !41
  br label %.preheader567.preheader.i

.preheader567.preheader.i:                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i, %.noexc358.i, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i353.i
  %.sroa.10436.0507.i = phi ptr [ %i.dt, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i353.i ], [ %i.dt, %.noexc358.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 4 uses
  %.sroa.0432.0499.i = phi ptr [ %i.ds, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i353.i ], [ %i.ds, %.noexc358.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 5 uses
  %.sroa.0425.0.i = phi ptr [ %i.dx, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i353.i ], [ %i.dx, %.noexc358.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 5 uses
  %.sroa.10429.0.i = phi ptr [ %i.dy, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i353.i ], [ %i.dy, %.noexc358.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 4 uses
  %i.ea = extractelement <2 x double> %i.az, i64 0
  %i.eb = extractelement <2 x float> %i.ap, i64 0
  %i.ec = extractelement <2 x float> %i.h, i64 0  ; 2 uses
  %i.ed = extractelement <2 x float> %i.h, i64 1
  br label %.preheader567.i

.preheader567.i:                                  ; preds = %._crit_edge637.i, %.preheader567.preheader.i
  %indvars.iv753.i = phi i64 [ 0, %.preheader567.preheader.i ], [ %indvars.iv.next754.i, %._crit_edge637.i ] ; 3 uses
  %.0288641.i = phi i32 [ 0, %.preheader567.preheader.i ], [ %.2290.i, %._crit_edge637.i ]
  %i.ee = mul nsw i64 %indvars.iv753.i, %i.cx
  %i.ef = trunc nuw nsw i64 %indvars.iv753.i to i32 ; 2 uses
  %i.eg = uitofp nneg i32 %i.ef to float
  %i.eh = fadd float %i.eg, 5.000000e-01          ; 2 uses
  %i.ei = fpext float %i.eh to double             ; 2 uses
  %i.ej = fmul nnan double %i.ei, %i.ei
  %invariant.gep912.i = getelementptr i8, ptr %i.ai, i64 %i.ee
  br label %bb.aa

.preheader565.i.loopexit:                         ; preds = %._crit_edge637.i
  %i.ek = zext nneg i32 %.lcssa142 to i64
  br label %.preheader565.i

.preheader565.i:                                  ; preds = %.preheader565.i.loopexit, %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i
  %.sroa.10429.0896.i = phi ptr [ null, %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i ], [ %.sroa.10429.0.i, %.preheader565.i.loopexit ] ; 4 uses
  %.sroa.0425.0891.i = phi ptr [ null, %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i ], [ %.sroa.0425.0.i, %.preheader565.i.loopexit ] ; 8 uses
  %.sroa.0432.0499884.i = phi ptr [ null, %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i ], [ %.sroa.0432.0499.i, %.preheader565.i.loopexit ] ; 8 uses
  %.sroa.10436.0507878.i = phi ptr [ null, %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i ], [ %.sroa.10436.0507.i, %.preheader565.i.loopexit ] ; 4 uses
  %.0291.lcssa848851877.i = phi i64 [ 0, %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i ], [ %i.ek, %.preheader565.i.loopexit ] ; 2 uses
  %.not.i.i.i.i346852876.i = phi i1 [ true, %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit.i ], [ %.not.i.i.i.i346.i, %.preheader565.i.loopexit ]
  %i.el = icmp sgt <2 x i32> %i.bd, zeroinitializer ; 2 uses
  %i.em = extractelement <2 x i1> %i.el, i64 0    ; 2 uses
  %i.en = extractelement <2 x i1> %i.el, i64 1    ; 2 uses
  %or.cond921.i = select i1 %i.en, i1 %i.em, i1 false
  br i1 %or.cond921.i, label %.preheader564.us.preheader.i, label %._crit_edge650.thread.i

.preheader564.us.preheader.i:                     ; preds = %.preheader565.i
  %i.eo = zext nneg i32 %i.bg to i64              ; 4 uses
  %wide.trip.count766.i = zext nneg i32 %i.co to i64
  %min.iters.check146 = icmp ult i32 %i.bg, 8
  %n.vec148 = and i64 %i.eo, 2147483640           ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %4, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n158 = icmp eq i64 %n.vec148, %i.eo
  br label %.preheader564.us.i

.preheader564.us.i:                               ; preds = %._crit_edge646.us.i, %.preheader564.us.preheader.i
  %indvars.iv763.i = phi i64 [ 0, %.preheader564.us.preheader.i ], [ %indvars.iv.next764.i, %._crit_edge646.us.i ] ; 2 uses
  %.0282649.us.i = phi i32 [ 0, %.preheader564.us.preheader.i ], [ %spec.select338.us.i.lcssa, %._crit_edge646.us.i ] ; 2 uses
  %i.ep = mul nuw nsw i64 %indvars.iv763.i, %i.eo
  %invariant.gep914.i = getelementptr inbounds nuw i8, ptr %.sroa.0439.0.i, i64 %i.ep ; 2 uses
  br i1 %min.iters.check146, label %scalar.ph145.preheader, label %vector.ph147

vector.ph147:                                     ; preds = %.preheader564.us.i
  %i.eq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0282649.us.i, i64 0
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph147
  %index150 = phi i64 [ 0, %vector.ph147 ], [ %index.next155, %vector.body149 ] ; 2 uses
  %vec.phi151 = phi <4 x i32> [ %i.eq, %vector.ph147 ], [ %i.ez, %vector.body149 ]
  %vec.phi152 = phi <4 x i32> [ zeroinitializer, %vector.ph147 ], [ %i.fa, %vector.body149 ]
  %i.er = getelementptr inbounds nuw i8, ptr %invariant.gep914.i, i64 %index150 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %wide.load153 = load <4 x i8>, ptr %i.er, align 1, !tbaa !36
  %wide.load154 = load <4 x i8>, ptr %i.es, align 1, !tbaa !36
  %i.et = zext <4 x i8> %wide.load153 to <4 x i32>
  %i.eu = zext <4 x i8> %wide.load154 to <4 x i32>
  %i.ev = icmp slt <4 x i32> %broadcast.splat, %i.et
  %i.ew = icmp slt <4 x i32> %broadcast.splat, %i.eu
  %i.ex = zext <4 x i1> %i.ev to <4 x i32>
  %i.ey = zext <4 x i1> %i.ew to <4 x i32>
  %i.ez = add <4 x i32> %vec.phi151, %i.ex        ; 2 uses
  %i.fa = add <4 x i32> %vec.phi152, %i.ey        ; 2 uses
  %index.next155 = add nuw i64 %index150, 8       ; 2 uses
  %i.fb = icmp eq i64 %index.next155, %n.vec148
  br i1 %i.fb, label %middle.block156, label %vector.body149, !llvm.loop !196

middle.block156:                                  ; preds = %vector.body149
  %bin.rdx157 = add <4 x i32> %i.fa, %i.ez
  %i.fc = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx157) ; 2 uses
  br i1 %cmp.n158, label %._crit_edge646.us.i, label %scalar.ph145.preheader

scalar.ph145.preheader:                           ; preds = %.preheader564.us.i, %middle.block156
  %indvars.iv758.i.ph = phi i64 [ 0, %.preheader564.us.i ], [ %n.vec148, %middle.block156 ]
  %.1283644.us.i.ph = phi i32 [ %.0282649.us.i, %.preheader564.us.i ], [ %i.fc, %middle.block156 ]
  br label %scalar.ph145

scalar.ph145:                                     ; preds = %scalar.ph145.preheader, %scalar.ph145
  %indvars.iv758.i = phi i64 [ %indvars.iv.next759.i, %scalar.ph145 ], [ %indvars.iv758.i.ph, %scalar.ph145.preheader ] ; 2 uses
  %.1283644.us.i = phi i32 [ %spec.select338.us.i, %scalar.ph145 ], [ %.1283644.us.i.ph, %scalar.ph145.preheader ]
  %gep915.i = getelementptr inbounds nuw i8, ptr %invariant.gep914.i, i64 %indvars.iv758.i
  %i.fd = load i8, ptr %gep915.i, align 1, !tbaa !36
  %i.fe = zext i8 %i.fd to i32
  %i.ff = icmp slt i32 %4, %i.fe
  %i.fg = zext i1 %i.ff to i32
  %spec.select338.us.i = add nsw i32 %.1283644.us.i, %i.fg ; 2 uses
  %indvars.iv.next759.i = add nuw nsw i64 %indvars.iv758.i, 1 ; 2 uses
  %exitcond762.not.i = icmp eq i64 %indvars.iv.next759.i, %i.eo
  br i1 %exitcond762.not.i, label %._crit_edge646.us.i, label %scalar.ph145, !llvm.loop !197

._crit_edge646.us.i:                              ; preds = %scalar.ph145, %middle.block156
  %spec.select338.us.i.lcssa = phi i32 [ %i.fc, %middle.block156 ], [ %spec.select338.us.i, %scalar.ph145 ] ; 2 uses
  %indvars.iv.next764.i = add nuw nsw i64 %indvars.iv763.i, 1 ; 2 uses
  %exitcond767.not.i = icmp eq i64 %indvars.iv.next764.i, %wide.trip.count766.i
  br i1 %exitcond767.not.i, label %._crit_edge650.i, label %.preheader564.us.i, !llvm.loop !198

bb.aa:                                            ; preds = %.loopexit566.i, %.preheader567.i
  %indvars.iv748.i = phi i64 [ 0, %.preheader567.i ], [ %indvars.iv.next749.i, %.loopexit566.i ] ; 3 uses
  %.1289634.i = phi i32 [ %.0288641.i, %.preheader567.i ], [ %.2290.i, %.loopexit566.i ] ; 3 uses
  %gep913.i = getelementptr i8, ptr %invariant.gep912.i, i64 %indvars.iv748.i
  %i.fh = load i8, ptr %gep913.i, align 1, !tbaa !36
  %.not.i = icmp eq i8 %i.fh, 0
  br i1 %.not.i, label %.loopexit566.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fi = sext i32 %.1289634.i to i64             ; 2 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %.sroa.0432.0499.i, i64 %i.fi
  %i.fk = trunc nuw nsw i64 %indvars.iv748.i to i32 ; 2 uses
  store i32 %i.fk, ptr %i.fj, align 4, !tbaa !41
  %i.fl = getelementptr inbounds [4 x i8], ptr %.sroa.0425.0.i, i64 %i.fi
  store i32 %i.ef, ptr %i.fl, align 4, !tbaa !41
  %i.fm = add nsw i32 %.1289634.i, 1              ; 2 uses
  %i.fn = uitofp nneg i32 %i.fk to float
  %i.fo = fadd float %i.fn, 5.000000e-01          ; 2 uses
  %i.fp = invoke noundef float @_ZN2cv9fastAtan2Eff(float noundef %i.eh, float noundef %i.fo)
          to label %bb.ac unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit393.thread.i

bb.ac:                                            ; preds = %bb.ab
  %i.fq = fmul float %i.fp, f0x3C8EFA35
  %i.fr = call noundef float @llvm.fabs.f32(float %i.fq) ; 2 uses
  %i.fs = fpext float %i.fo to double             ; 2 uses
  %i.ft = call double @llvm.fmuladd.f64(double %i.fs, double %i.fs, double %i.ej)
  %sqrt561.i = call double @llvm.sqrt.f64(double %i.ft)
  %i.fu = fptrunc double %sqrt561.i to float      ; 2 uses
  %i.fv = fpext float %i.fr to double
  %i.fw = fadd double %i.fv, f0x3FF921FB54442D18
  %i.fx = fmul double %i.fw, %i.ea
  %i.fy = call double @llvm.floor.f64(double %i.fx)
  %i.fz = fptosi double %i.fy to i32
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds i8, ptr %.sroa.0439.0.i, i64 %i.ga ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !36
  %i.gd = add i8 %i.gc, 1
  store i8 %i.gd, ptr %i.gb, align 1, !tbaa !36
  %i.ge = fdiv float %i.ed, %i.fu                 ; 2 uses
  %i.gf = fcmp olt float %i.ge, %i.ec
  %i.gg = select i1 %i.gf, float %i.ge, float %i.ec ; 4 uses
  %i.gh = fpext float %i.gg to double
  %i.gi = fdiv double f0x400921FB54442D18, %i.gh
  %i.gj = call double @llvm.floor.f64(double %i.gi)
  %i.gk = fptosi double %i.gj to i32              ; 2 uses
  %i.gl = icmp sgt i32 %i.gk, 1
  br i1 %i.gl, label %.lr.ph632.preheader.i, label %.loopexit566.i

.lr.ph632.preheader.i:                            ; preds = %bb.ac
  %i.gm = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.gn = insertelement <2 x float> %i.gm, float %i.fu, i64 1
  %i.go = fmul <2 x float> %i.ap, %i.gn           ; 2 uses
  %i.gp = fadd float %i.gg, %i.fr
  %i.gq = fmul float %i.eb, %i.gp
  %i.gr = extractelement <2 x float> %i.go, i64 0
  %i.gs = extractelement <2 x float> %i.go, i64 1
  br label %.lr.ph632.i

.lr.ph632.i:                                      ; preds = %bb.ap, %.lr.ph632.preheader.i
  %.0253630.i = phi float [ %i.hz, %bb.ap ], [ %i.gq, %.lr.ph632.preheader.i ] ; 2 uses
  %.0254629.pn.i = phi float [ %.0254629.i, %bb.ap ], [ f0xBFC90FDB, %.lr.ph632.preheader.i ]
  %.0255628.i = phi i32 [ %i.gz, %bb.ap ], [ -1, %.lr.ph632.preheader.i ]
  %.0297626.i = phi i32 [ %i.hy, %bb.ap ], [ 1, %.lr.ph632.preheader.i ]
  %.0254629.i = fadd float %i.gg, %.0254629.pn.i  ; 2 uses
  %i.gt = call noundef float @cosf(float noundef %.0254629.i) #22
  %i.gu = fmul float %i.gs, %i.gt
  %i.gv = fptosi float %i.gu to i32
  %i.gw = mul nsw i32 %i.bg, %i.gv
  %i.gx = call float @llvm.floor.f32(float %.0253630.i)
  %i.gy = fptosi float %i.gx to i32
  %i.gz = add nsw i32 %i.gw, %i.gy                ; 5 uses
  %i.ha = icmp sgt i32 %i.gz, -1
  br i1 %i.ha, label %bb.aj, label %bb.ae

bb.ad:                                            ; preds = %bb.y, %bb.x
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit397.i

_ZNSt6vectorIiSaIiEED2Ev.exit395.thread.i:        ; preds = %bb.z
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ae:                                            ; preds = %.lr.ph632.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cvL14HoughLinesSDivERKNS_11_InputArrayERKNS_12_OutputArrayEiffiiiidd, ptr noundef nonnull @.str.1, i32 noundef 369) #23
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362.i

bb.ai:                                            ; preds = %bb.af
  %i.he = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hf = load ptr, ptr %13, align 8, !tbaa !35   ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.hh = icmp eq ptr %i.hf, %i.hg
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360.i: ; preds = %bb.ai
  %i.hi = load i64, ptr %i.hg, align 8, !tbaa !36
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360.i, %bb.ah
  %.pn325.i = phi { ptr, i32 } [ %i.hd, %bb.ah ], [ %i.he, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360.i ], [ %i.he, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit393.i

bb.aj:                                            ; preds = %.lr.ph632.i
  %i.hk = icmp slt i32 %i.gz, %i.cp
  br i1 %i.hk, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
end_hunk_0
