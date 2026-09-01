Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/aruco_detector?download=true
inline.NumInlined: 4513
inline.NumDeleted: 1557
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN2cv29ParallelLoopBodyLambdaWrapperD0Ev:bb.a

_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #31, !inline_history !533
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv29ParallelLoopBodyLambdaWrapperclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !157
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #32
  unreachable

_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit:     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !154
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 4 dereferenceable(8) %1), !inline_history !795
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_5aruco13ArucoDetector17ArucoDetectorImpl13detectMarkersERKNS0_11_InputArrayERKNS0_12_OutputArrayESD_SD_SD_SD_NS5_14DictionaryModeEEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  tail call void @_ZZN2cv5aruco13ArucoDetector17ArucoDetectorImpl13detectMarkersERKNS_11_InputArrayERKNS_12_OutputArrayES8_S8_S8_S8_NS0_14DictionaryModeEENKUlRKNS_5RangeEE_clESC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_5aruco13ArucoDetector17ArucoDetectorImpl13detectMarkersERKNS0_11_InputArrayERKNS0_12_OutputArrayESD_SD_SD_SD_NS5_14DictionaryModeEEUlS3_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv5aruco13ArucoDetector17ArucoDetectorImpl13detectMarkersERKNS1_11_InputArrayERKNS1_12_OutputArrayESA_SA_SA_SA_NS2_14DictionaryModeEEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv5aruco13ArucoDetector17ArucoDetectorImpl13detectMarkersERKNS_11_InputArrayERKNS_12_OutputArrayES8_S8_S8_S8_NS0_14DictionaryModeEEUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !548
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv5aruco13ArucoDetector17ArucoDetectorImpl13detectMarkersERKNS1_11_InputArrayERKNS1_12_OutputArrayESA_SA_SA_SA_NS2_14DictionaryModeEEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !417
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv5aruco13ArucoDetector17ArucoDetectorImpl13detectMarkersERKNS1_11_InputArrayERKNS1_12_OutputArrayESA_SA_SA_SA_NS2_14DictionaryModeEEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !796
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv5aruco13ArucoDetector17ArucoDetectorImpl13detectMarkersERKNS1_11_InputArrayERKNS1_12_OutputArrayESA_SA_SA_SA_NS2_14DictionaryModeEEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv5aruco13ArucoDetector17ArucoDetectorImpl13detectMarkersERKNS1_11_InputArrayERKNS1_12_OutputArrayESA_SA_SA_SA_NS2_14DictionaryModeEEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN2cv5aruco13ArucoDetector17ArucoDetectorImpl13detectMarkersERKNS_11_InputArrayERKNS_12_OutputArrayES8_S8_S8_S8_NS0_14DictionaryModeEENKUlRKNS_5RangeEE_clESC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 13 uses
  %5 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %10 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %13 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %14 = alloca [5 x %"class.std::vector.28"], align 16 ; 20 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %17 = alloca [4 x %"class.cv::Point3_"], align 16 ; 13 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !147    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !149
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %14, i64 96 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %14, i64 104 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 432
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 224
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 36 ; 2 uses
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %17, i64 44 ; 3 uses
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %17, i64 12 ; 2 uses
  %.sroa.26.0..sroa_idx.1.i = getelementptr inbounds nuw i8, ptr %17, i64 20 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  %.sroa.26.0..sroa_idx.2.i = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 112 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 72 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 88 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.au = sext i32 %i.a to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2cv5arucoL21_refineCandidateLinesERSt6vectorINS_6Point_IiEESaIS3_EERS1_INS2_IfEESaIS7_EE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN2cv5arucoL21_refineCandidateLinesERSt6vectorINS_6Point_IiEESaIS3_EERS1_INS2_IfEESaIS7_EE.exit
  %indvars.iv = phi i64 [ %i.au, %.lr.ph ], [ %indvars.iv.next, %_ZN2cv5arucoL21_refineCandidateLinesERSt6vectorINS_6Point_IiEESaIS3_EERS1_INS2_IfEESaIS7_EE.exit ] ; 3 uses
  %i.av = load ptr, ptr %0, align 8, !tbaa !797, !nonnull !65, !align !536
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !93
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %indvars.iv ; 4 uses
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !799, !nonnull !65, !align !536
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !84
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %indvars.iv ; 8 uses
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !424 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !424 ; 3 uses
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 10 uses
  %i.bh = icmp ugt i64 %i.bg, 9223372036854775800
  br i1 %i.bh, label %.noexc.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #32
  unreachable

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq ptr %i.bd, %i.bb
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEC2IN9__gnu_cxx17__normal_iteratorIPNS1_IiEES_IS8_SaIS8_EEEEvEET_SD_RKS3_.exit.thread.i, label %.lr.ph.i.i.i.i.preheader.i.i.i

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEC2IN9__gnu_cxx17__normal_iteratorIPNS1_IiEES_IS8_SaIS8_EEEEvEET_SD_RKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr null, i64 %i.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %14, i8 0, i64 120, i1 false)
  br label %.preheader154.thread.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i
  %i.bj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #34 ; 15 uses
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i
  %.013.i.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bj, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bb, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %i.bk = load <2 x i32>, ptr %.sroa.08.012.i.i.i.i.i.i.i, align 4, !tbaa !41
  %i.bl = sitofp <2 x i32> %i.bk to <2 x float>
  store <2 x float> %i.bl, ptr %.013.i.i.i.i.i.i.i, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bd
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEC2IN9__gnu_cxx17__normal_iteratorIPNS1_IiEES_IS8_SaIS8_EEEEvEET_SD_RKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !800

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEC2IN9__gnu_cxx17__normal_iteratorIPNS1_IiEES_IS8_SaIS8_EEEEvEET_SD_RKS3_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.bc, align 8, !tbaa !423
  %.pre225.i = load ptr, ptr %i.ax, align 8, !tbaa !97
  %i.bo = icmp eq ptr %.pre.i, %.pre225.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %14, i8 0, i64 120, i1 false)
  br i1 %i.bo, label %.preheader154.thread.i.loopexit, label %.preheader155.i

.preheader155.i:                                  ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEC2IN9__gnu_cxx17__normal_iteratorIPNS1_IiEES_IS8_SaIS8_EEEEvEET_SD_RKS3_.exit.i, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit.i
  %i.bp = phi i64 [ %i.dy, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit.i ], [ 0, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEC2IN9__gnu_cxx17__normal_iteratorIPNS1_IiEES_IS8_SaIS8_EEEEvEET_SD_RKS3_.exit.i ]
  %.066177.i = phi i32 [ %.268.3.i, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit.i ], [ 4, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEC2IN9__gnu_cxx17__normal_iteratorIPNS1_IiEES_IS8_SaIS8_EEEEvEET_SD_RKS3_.exit.i ]
  %.069176.i = phi i32 [ %i.dx, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit.i ], [ 0, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEC2IN9__gnu_cxx17__normal_iteratorIPNS1_IiEES_IS8_SaIS8_EEEEvEET_SD_RKS3_.exit.i ] ; 2 uses
  %i.bq = phi <4 x i32> [ %.fr, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit.i ], [ <i32 -1, i32 0, i32 0, i32 0>, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEC2IN9__gnu_cxx17__normal_iteratorIPNS1_IiEES_IS8_SaIS8_EEEEvEET_SD_RKS3_.exit.i ]
  %i.br = load ptr, ptr %i.ba, align 8, !tbaa !88
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bp ; 3 uses
  %18 = load <2 x float>, ptr %i.bs, align 4      ; 2 uses
  %i.bt = load <8 x float>, ptr %i.br, align 4    ; 2 uses
  %i.bu = shufflevector <8 x float> %i.bt, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bv = shufflevector <2 x float> %18, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bw = fcmp oeq <4 x float> %i.bu, %i.bv
  %i.bx = shufflevector <8 x float> %i.bt, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.by = fcmp oeq <4 x float> %i.bx, %19
  %i.bz = select <4 x i1> %i.bw, <4 x i1> %i.by, <4 x i1> zeroinitializer ; 5 uses
  %i.ca = extractelement <4 x i1> %i.bz, i64 0
  %spec.select310.i = select i1 %i.ca, i32 0, i32 %.066177.i
  %i.cb = extractelement <4 x i1> %i.bz, i64 1
  %.268.1.i = select i1 %i.cb, i32 1, i32 %spec.select310.i
  %i.cc = extractelement <4 x i1> %i.bz, i64 2
  %.268.2.i = select i1 %i.cc, i32 2, i32 %.268.1.i
  %i.cd = insertelement <4 x i32> poison, i32 %.069176.i, i64 0
  %i.ce = shufflevector <4 x i32> %i.cd, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cf = select <4 x i1> %i.bz, <4 x i32> %i.ce, <4 x i32> %i.bq
  %.fr = freeze <4 x i32> %i.cf                   ; 4 uses
  %i.cg = extractelement <4 x i1> %i.bz, i64 3
  %.268.3.i = select i1 %i.cg, i32 3, i32 %.268.2.i ; 2 uses
  %i.ch = zext nneg i32 %.268.3.i to i64
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %14, i64 %i.ch ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 5 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !135 ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 5 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !91 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ck, %i.cm
  br i1 %.not.i.i, label %bb.d, label %bb.c

.preheader154.i:                                  ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit.i
  %i.cn = icmp eq <4 x i32> %.fr, splat (i32 -1)
  %i.co = bitcast <4 x i1> %i.cn to i4
  %.not = icmp eq i4 %i.co, 0
  br i1 %.not, label %bb.g, label %.preheader154.thread.i.loopexit

bb.c:                                             ; preds = %.preheader155.i
  %i.cp = load i64, ptr %i.bs, align 4
  store i64 %i.cp, ptr %i.ck, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  store ptr %i.cq, ptr %i.cj, align 8, !tbaa !135
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit.i

bb.d:                                             ; preds = %.preheader155.i
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !88 ; 7 uses
  %i.cs = ptrtoint ptr %i.ck to i64               ; 2 uses
  %i.ct = ptrtoint ptr %i.cr to i64               ; 3 uses
  %i.cu = sub i64 %i.cs, %i.ct                    ; 4 uses
  %i.cv = icmp eq i64 %i.cu, 9223372036854775800
  br i1 %i.cv, label %bb.e, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #32
          to label %.noexc.i unwind label %.loopexit.split-lp157.i

.noexc.i:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.cw = ashr exact i64 %i.cu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cw, i64 1)
  %i.cx = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cw ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %i.cw
  %i.cz = call i64 @llvm.umin.i64(i64 %i.cx, i64 1152921504606846975)
  %i.da = select i1 %i.cy, i64 1152921504606846975, i64 %i.cz ; 3 uses
  %.not.i.i.i100.i = icmp ne i64 %i.da, 0
  call void @llvm.assume(i1 %.not.i.i.i100.i)
  %i.db = shl nuw nsw i64 %i.da, 3
  %i.dc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #34
          to label %.noexc101.i unwind label %.loopexit156.i ; 8 uses

.noexc101.i:                                      ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cu
  %i.de = load i64, ptr %i.bs, align 4
  store i64 %i.de, ptr %i.dd, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.cr, %i.ck
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc101.i
  %i.df = ptrtoaddr ptr %i.dc to i64
  %i.dg = add i64 %i.cs, -8
  %i.dh = sub i64 %i.dg, %i.ct                    ; 2 uses
  %i.di = lshr i64 %i.dh, 3
  %i.dj = add nuw nsw i64 %i.di, 1                ; 2 uses
  %min.iters.check372 = icmp ult i64 %i.dh, 24
  %i.dk = sub i64 %i.ct, %i.df
  %diff.check370 = icmp ugt i64 %i.dk, -32
  %or.cond = or i1 %min.iters.check372, %diff.check370
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader392, label %vector.ph373

vector.ph373:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec374 = and i64 %i.dj, 4611686018427387900  ; 3 uses
  %i.dl = shl i64 %n.vec374, 3                    ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dc, i64 %i.dl  ; 2 uses
  %i.dn = getelementptr i8, ptr %i.cr, i64 %i.dl
  br label %vector.body375

vector.body375:                                   ; preds = %vector.body375, %vector.ph373
  %index376 = phi i64 [ 0, %vector.ph373 ], [ %index.next381, %vector.body375 ] ; 2 uses
  %i.do = shl i64 %index376, 3                    ; 2 uses
  %next.gep377 = getelementptr i8, ptr %i.dc, i64 %i.do ; 2 uses
  %next.gep378 = getelementptr i8, ptr %i.cr, i64 %i.do ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !801)
  call void @llvm.experimental.noalias.scope.decl(metadata !804)
  %i.dp = getelementptr i8, ptr %next.gep378, i64 16
  %wide.load379 = load <2 x i64>, ptr %next.gep378, align 4, !alias.scope !804, !noalias !801
  %wide.load380 = load <2 x i64>, ptr %i.dp, align 4, !alias.scope !804, !noalias !801
  %i.dq = getelementptr i8, ptr %next.gep377, i64 16
  store <2 x i64> %wide.load379, ptr %next.gep377, align 4, !alias.scope !801, !noalias !804
  store <2 x i64> %wide.load380, ptr %i.dq, align 4, !alias.scope !801, !noalias !804
  %index.next381 = add nuw i64 %index376, 4       ; 2 uses
  %i.dr = icmp eq i64 %index.next381, %n.vec374
  br i1 %i.dr, label %middle.block382, label %vector.body375, !llvm.loop !806

middle.block382:                                  ; preds = %vector.body375
  %cmp.n383 = icmp eq i64 %i.dj, %n.vec374
  br i1 %cmp.n383, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader392

.lr.ph.i.i.i.i.i.i.preheader392:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block382
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dm, %middle.block382 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dn, %middle.block382 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader392, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader392 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader392 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !801)
  call void @llvm.experimental.noalias.scope.decl(metadata !804)
  %i.ds = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !804, !noalias !801
  store i64 %i.ds, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !801, !noalias !804
  %i.dt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dt, %i.ck
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !807

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block382, %.noexc101.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dc, %.noexc101.i ], [ %i.dm, %middle.block382 ], [ %i.du, %.lr.ph.i.i.i.i.i.i ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cu) #33
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.dc, ptr %i.ci, align 8, !tbaa !88
  store ptr %i.dv, ptr %i.cj, align 8, !tbaa !135
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.da ; 2 uses
  store ptr %i.dw, ptr %i.cl, align 8, !tbaa !91
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit.i

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit.i: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.c
  %.pre226.i = phi ptr [ %i.dv, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.cq, %bb.c ]
  %.promoted.i = phi ptr [ %i.dw, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.cm, %bb.c ]
  %i.dx = add i32 %.069176.i, 1                   ; 2 uses
  %i.dy = zext i32 %i.dx to i64                   ; 2 uses
  %i.dz = load ptr, ptr %i.bc, align 8, !tbaa !423
  %i.ea = load ptr, ptr %i.ax, align 8, !tbaa !97
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = ashr exact i64 %i.ed, 3
  %i.ef = icmp ugt i64 %i.ee, %i.dy
  br i1 %i.ef, label %.preheader155.i, label %.preheader154.i, !llvm.loop !808

.loopexit156.i:                                   ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit158.i = landingpad { ptr, i32 }
          cleanup
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bg
  br label %bb.ay

.loopexit.split-lp157.i:                          ; preds = %bb.e
  %lpad.loopexit.split-lp159.i = landingpad { ptr, i32 }
          cleanup
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bg
  br label %bb.ay

bb.g:                                             ; preds = %.preheader154.i
  %i.ei = load ptr, ptr %i.f, align 16, !tbaa !133 ; 3 uses
  %i.ej = load ptr, ptr %i.g, align 8, !tbaa !133
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit.i, label %.lr.ph.i

.preheader154.thread.i.loopexit:                  ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEC2IN9__gnu_cxx17__normal_iteratorIPNS1_IiEES_IS8_SaIS8_EEEEvEET_SD_RKS3_.exit.i, %.preheader154.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bg
  br label %.preheader154.thread.i

.preheader154.thread.i:                           ; preds = %.preheader154.thread.i.loopexit, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEC2IN9__gnu_cxx17__normal_iteratorIPNS1_IiEES_IS8_SaIS8_EEEEvEET_SD_RKS3_.exit.thread.i
  %.sroa.11.0273285.i = phi ptr [ %i.bi, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEC2IN9__gnu_cxx17__normal_iteratorIPNS1_IiEES_IS8_SaIS8_EEEEvEET_SD_RKS3_.exit.thread.i ], [ %i.el, %.preheader154.thread.i.loopexit ]
  %.sroa.0142.0275284.i = phi ptr [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEC2IN9__gnu_cxx17__normal_iteratorIPNS1_IiEES_IS8_SaIS8_EEEEvEET_SD_RKS3_.exit.thread.i ], [ %i.bj, %.preheader154.thread.i.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.73, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.preheader154.thread.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv5arucoL21_refineCandidateLinesERSt6vectorINS_6Point_IiEESaIS3_EERS1_INS2_IfEESaIS7_EE, ptr noundef nonnull @.str.1, i32 noundef 636) #32
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %.preheader154.thread.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

end_hunk_0
