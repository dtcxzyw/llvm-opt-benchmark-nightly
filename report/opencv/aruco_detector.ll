Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/aruco_detector?download=true
inline.NumInlined: 4511
inline.NumDeleted: 1555
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd:bb.a
  unreachable

_ZNSt14_Function_baseD2Ev.exit8:                  ; preds = %.body, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !179    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !180  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i) #31
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 208 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !179
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit:  ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !181
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #33
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @log2f(float noundef) local_unnamed_addr #19

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #20

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_5arucoL24_detectInitialCandidatesERKNS0_3MatERSt6vectorIS9_INS0_6Point_IfEESaISB_EESaISD_EERS9_IS9_INSA_IiEESaISH_EESaISJ_EERKNS5_18DetectorParametersEE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::vector.39", align 8    ; 13 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %7 = alloca %"class.std::vector.77", align 8    ; 13 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %11 = alloca %"class.std::vector.28", align 8   ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %15 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %16 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !218   ; 6 uses
  %.val2 = load i32, ptr %1, align 4, !tbaa !147  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i32, ptr %i.a, align 4, !tbaa !148 ; 2 uses
  %i.b = icmp slt i32 %.val2, %.val3
  br i1 %i.b, label %.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv5arucoL24_detectInitialCandidatesERKNS0_3MatERSt6vectorIS5_INS0_6Point_IfEESaIS7_EESaIS9_EERS5_IS5_INS6_IiEESaISD_EESaISF_EERKNS1_18DetectorParametersEE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESS_E4typeEOST_DpOSU_.exit"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.af = sext i32 %.val2 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.am, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.am ] ; 4 uses
  %i.ag = load ptr, ptr %.val, align 8, !tbaa !545, !nonnull !83, !align !271 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !205
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !206
  %i.ak = trunc nsw i64 %indvars.iv.i.i.i to i32
  %i.al = mul nsw i32 %i.aj, %i.ak
  %i.am = add nsw i32 %i.al, %i.ah                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %14) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !546, !nonnull !83, !align !271
  store i32 0, ptr %i.d, align 8, !tbaa !86
  store i32 0, ptr %i.e, align 4, !tbaa !87
  store i32 16842752, ptr %15, align 8, !tbaa !89
  store ptr %i.an, ptr %i.f, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  store i64 0, ptr %i.h, align 8
  store i32 33619968, ptr %16, align 8, !tbaa !89
  store ptr %14, ptr %i.g, align 8, !tbaa !90
  %i.ao = icmp sgt i32 %i.am, 2
  br i1 %i.ao, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.53, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv5arucoL10_thresholdERKNS_11_InputArrayERKNS_12_OutputArrayEid, ptr noundef nonnull @.str.1, i32 noundef 121) #32
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc.i.i.i
  unreachable

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %12, align 8, !tbaa !44   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !45
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %.body.i.i.i

bb.f:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %.val, align 8, !tbaa !545, !nonnull !83, !align !271
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !547
  %spec.select.i.i.i.i = or i32 %i.am, 1
  invoke void @_ZN2cv17adaptiveThresholdERKNS_11_InputArrayERKNS_12_OutputArrayEdiiid(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %16, double noundef 2.550000e+02, i32 noundef 0, i32 noundef 1, i32 noundef %spec.select.i.i.i.i, double noundef %i.ax)
          to label %_ZN2cv5arucoL10_thresholdERKNS_11_InputArrayERKNS_12_OutputArrayEid.exit.i.i.i unwind label %.loopexit.i.i.i

_ZN2cv5arucoL10_thresholdERKNS_11_InputArrayERKNS_12_OutputArrayEid.exit.i.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  %i.ay = load ptr, ptr %i.i, align 8, !tbaa !548, !nonnull !83, !align !271
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !208
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %indvars.iv.i.i.i ; 3 uses
  %i.bb = load ptr, ptr %i.j, align 8, !tbaa !549, !nonnull !83, !align !271
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !210
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %indvars.iv.i.i.i ; 3 uses
  %i.be = load ptr, ptr %.val, align 8, !tbaa !545, !nonnull !83, !align !271 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load <4 x double>, ptr %i.bf, align 8, !tbaa !195 ; 6 uses
  %i.bh = fcmp ogt <4 x double> %i.bg, zeroinitializer
  %i.bi = fcmp oge <4 x double> %i.bg, zeroinitializer
  %i.bj = shufflevector <4 x i1> %i.bh, <4 x i1> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.bk = bitcast <4 x i1> %i.bj to i4
  %i.bl = icmp eq i4 %i.bk, -1
  br i1 %i.bl, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZN2cv5arucoL10_thresholdERKNS_11_InputArrayERKNS_12_OutputArrayEid.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.54, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv5arucoL19_findMarkerContoursERKNS_3MatERSt6vectorIS4_INS_6Point_IfEESaIS6_EESaIS8_EERS4_IS4_INS5_IiEESaISC_EESaISE_EEddddi, ptr noundef nonnull @.str.1, i32 noundef 137) #32
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21.i.i.i

bb.k:                                             ; preds = %bb.h
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22.i.i.i: ; preds = %bb.k
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !45
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21.i.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22.i.i.i, %bb.j
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.bm, %bb.j ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22.i.i.i ], [ %i.bn, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %.body25.i.i.i

bb.l:                                             ; preds = %_ZN2cv5arucoL10_thresholdERKNS_11_InputArrayERKNS_12_OutputArrayEid.exit.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 180
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !550 ; 2 uses
  %i.bv = load i32, ptr %i.k, align 4, !tbaa !67
  %i.bw = load i32, ptr %i.l, align 8, !tbaa !67
  %i.bx = call i32 @llvm.smax.i32(i32 %i.bv, i32 %i.bw)
  %i.by = sitofp i32 %i.bx to double              ; 2 uses
  %17 = extractelement <4 x double> %i.bg, i64 0
  %18 = fmul double %17, %i.by
  %19 = fptoui double %18 to i32
  %i.bz = extractelement <4 x double> %i.bg, i64 1
  %20 = fmul double %i.bz, %i.by
  %i.ca = fptoui double %20 to i32
  %.not.i.i.i.i = icmp eq i32 %i.bu, 0
  %i.cb = shl nsw i32 %i.bu, 2
  %spec.select.i24.i.i.i = select i1 %.not.i.i.i.i, i32 %19, i32 %i.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store i32 0, ptr %i.m, align 8, !tbaa !86
  store i32 0, ptr %i.n, align 4, !tbaa !87
  store i32 16842752, ptr %5, align 8, !tbaa !89
  store ptr %14, ptr %i.o, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i64 0, ptr %i.q, align 8
  store i32 -2113667036, ptr %6, align 8, !tbaa !89
  store ptr %4, ptr %i.p, align 8, !tbaa !90
  invoke void @_ZN2cv12findContoursERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_6Point_IiEE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 1, i32 noundef 1, i64 0)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.cc = load ptr, ptr %i.r, align 8, !tbaa !110 ; 3 uses
  %i.cd = load ptr, ptr %4, align 8, !tbaa !109   ; 3 uses
  %.not161.i.i.i.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not161.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.m
  %i.ce = zext i32 %spec.select.i24.i.i.i to i64
  %i.cf = zext i32 %i.ca to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.ck = extractelement <4 x double> %i.bg, i64 2
  %i.cl = extractelement <4 x double> %i.bg, i64 3
  br label %bb.q

._crit_edge.i.i.i.i:                              ; preds = %bb.ai, %bb.m
  %.lcssa143.i.i.i.i = phi ptr [ %i.cc, %bb.m ], [ %i.ie, %bb.ai ] ; 2 uses
  %.lcssa136.i.i.i.i = phi ptr [ %i.cd, %bb.m ], [ %i.id, %bb.ai ] ; 3 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %.lcssa136.i.i.i.i, %.lcssa143.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %._crit_edge.i.i.i.i, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.cs, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i.i.i.i.i ], [ %.lcssa136.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.cm = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !113 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !114
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cr) #33
  br label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cs, %.lcssa143.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !109
  br label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %._crit_edge.i.i.i.i
  %i.ct = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %.lcssa136.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i1.i.i.i.i.i, label %bb.am, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.cu = load ptr, ptr %i.ae, align 8, !tbaa !131
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.ct to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cx) #33
  br label %bb.am

bb.p:                                             ; preds = %bb.l
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.al

bb.q:                                             ; preds = %bb.ai, %.lr.ph.i.i.i.i
  %i.cz = phi ptr [ %i.cd, %.lr.ph.i.i.i.i ], [ %i.id, %bb.ai ] ; 2 uses
  %i.da = phi ptr [ %i.cc, %.lr.ph.i.i.i.i ], [ %i.ie, %bb.ai ]
  %i.db = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ig, %bb.ai ] ; 3 uses
  %.061159.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i ], [ %i.if, %bb.ai ]
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.cz, i64 %i.db ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 3 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !219
  %i.df = load ptr, ptr %i.dc, align 8, !tbaa !113
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = ashr exact i64 %i.di, 3                 ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.ce
  %i.dl = icmp ugt i64 %i.dj, %i.cf
  %or.cond131.i.i.i.i = select i1 %i.dk, i1 true, i1 %i.dl
  br i1 %or.cond131.i.i.i.i, label %bb.ai, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  store i32 0, ptr %i.s, align 8, !tbaa !86
  store i32 0, ptr %i.t, align 4, !tbaa !87
  %i.dm = load ptr, ptr %i.dd, align 8, !tbaa !219
  %i.dn = load ptr, ptr %i.dc, align 8, !tbaa !113
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = ashr exact i64 %i.dq, 3                 ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.dr, 2147483647
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.dr, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #32
          to label %.noexc.i.i.i.i unwind label %bb.w

.noexc.i.i.i.i:                                   ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.r
  store i32 -2130509788, ptr %8, align 8, !tbaa !89
  store ptr %i.dc, ptr %i.u, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  store i64 0, ptr %i.w, align 8
  store i32 -2113732572, ptr %9, align 8, !tbaa !89
  store ptr %7, ptr %i.v, align 8, !tbaa !90
  %i.ds = load ptr, ptr %i.dd, align 8, !tbaa !219
  %i.dt = load ptr, ptr %i.dc, align 8, !tbaa !113
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = ashr exact i64 %i.dw, 3
  %i.dy = uitofp i64 %i.dx to double
  %i.dz = fmul double %i.ck, %i.dy
  invoke void @_ZN2cv12approxPolyDPERKNS_11_InputArrayERKNS_12_OutputArrayEdb(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, double noundef %i.dz, i1 noundef zeroext true)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.ea = load ptr, ptr %i.x, align 8, !tbaa !219
  %i.eb = load ptr, ptr %7, align 8, !tbaa !113   ; 2 uses
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %.not86.i.i.i.i = icmp eq i64 %i.ee, 32
  br i1 %.not86.i.i.i.i, label %bb.v, label %.critedge.thread.i.i.i.i

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  store i32 0, ptr %i.y, align 8, !tbaa !86
  store i32 0, ptr %i.z, align 4, !tbaa !87
  store i32 -2130509788, ptr %10, align 8, !tbaa !89
  store ptr %7, ptr %i.aa, align 8, !tbaa !90
  %i.ef = invoke noundef zeroext i1 @_ZN2cv15isContourConvexERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %.critedge.i.i.i.i unwind label %bb.z

.critedge.i.i.i.i:                                ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  %.pre173.i.i.i.i = load ptr, ptr %7, align 8, !tbaa !113 ; 3 uses
  br i1 %i.ef, label %bb.aa, label %.critedge.thread.i.i.i.i

bb.w:                                             ; preds = %bb.s
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn83.pn.i.i.i.i = phi { ptr, i32 } [ %i.eh, %bb.x ], [ %i.eg, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.aj

bb.z:                                             ; preds = %bb.v
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.aj

bb.aa:                                            ; preds = %.critedge.i.i.i.i
  %i.ej = load i32, ptr %i.k, align 4, !tbaa !67
  %i.ek = load i32, ptr %i.l, align 8, !tbaa !67
  %i.el = call i32 @llvm.smax.i32(i32 %i.ej, i32 %i.ek) ; 2 uses
  %i.em = mul nsw i32 %i.el, %i.el
  %i.en = uitofp nneg i32 %i.em to double         ; 2 uses
  %i.eo = load <8 x i32>, ptr %.pre173.i.i.i.i, align 4, !tbaa !67 ; 4 uses
  %i.ep = shufflevector <8 x i32> %i.eo, <8 x i32> poison, <4 x i32> <i32 4, i32 6, i32 0, i32 2>
  %i.eq = shufflevector <8 x i32> %i.eo, <8 x i32> poison, <4 x i32> <i32 6, i32 0, i32 2, i32 4>
  %i.er = sub nsw <4 x i32> %i.ep, %i.eq
  %i.es = sitofp <4 x i32> %i.er to <4 x double>  ; 2 uses
  %i.et = shufflevector <8 x i32> %i.eo, <8 x i32> poison, <4 x i32> <i32 5, i32 7, i32 1, i32 3>
end_hunk_0
