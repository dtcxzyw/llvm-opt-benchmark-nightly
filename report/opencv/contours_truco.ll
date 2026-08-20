inline.NumInlined: 1022
inline.NumDeleted: 500
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEEEvSC_T_SE_St20forward_iterator_tag:bb.a
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN2cv6Point_IiEESaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit91, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.dw, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i ], [ %i.cl, %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN2cv6Point_IiEESaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit91 ] ; 3 uses
  %i.dq = load ptr, ptr %.05.i.i, align 8, !tbaa !35 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !38
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dq to i64
  %i.dv = sub i64 %i.dt, %i.du
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.dv) #20
  br label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i: ; preds = %bb.k, %.lr.ph.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dw, %i.h
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EEEvT_S7_.exit, label %.lr.ph.i.i, !llvm.loop !39

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EEEvT_S7_.exit: ; preds = %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN2cv6Point_IiEESaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit91
  %.not.i92 = icmp eq ptr %i.cl, null
  br i1 %.not.i92, label %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EEEvT_S7_.exit
  %i.dx = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = sub i64 %i.dy, %i.cm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dz) #20
  br label %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EEEvT_S7_.exit, %bb.l
  store ptr %i.cx, ptr %0, align 8, !tbaa !34
  store ptr %.0.lcssa.i.i.i.i.i90, ptr %i.g, align 8, !tbaa !31
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %i.cu
  store ptr %i.ea, ptr %i.e, align 8, !tbaa !41
  br label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN2cv6Point_IiEESaIS6_EES3_IS8_SaIS8_EEEEESC_ET0_T_SF_SE_.exit

_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN2cv6Point_IiEESaIS6_EES3_IS8_SaIS8_EEEEESC_ET0_T_SF_SE_.exit: ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEaSEOS4_.exit.i.i.i.i.i70, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEaSEOS4_.exit.i.i.i.i.i55, %_ZSt22__uninitialized_move_aIPSt6vectorIN2cv6Point_IiEESaIS3_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, %_ZSt13move_backwardIPSt6vectorIN2cv6Point_IiEESaIS3_EES6_ET0_T_S8_S7_.exit, %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !79
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #21
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !79
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit unwind label %bb.c, !inline_history !144 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #21, !inline_history !144
  unreachable

_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #18, !inline_history !144
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv29ParallelLoopBodyLambdaWrapperclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #19
  unreachable

_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit:     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !139
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 4 dereferenceable(8) %1), !inline_history !222
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZN12_GLOBAL__N_119findTRUContoursImplERNS0_3MatERSt6vectorIS8_INS0_6Point_IiEESaISA_EESaISC_EEiiE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::BlockStorage", align 8  ; 10 uses
  %3 = alloca %"class.cv::ContourDataStorage", align 8 ; 8 uses
  %4 = alloca %"class.cv::BlockStorage.42", align 8 ; 9 uses
  %5 = alloca %"class.cv::ContourDataStorage.48", align 8 ; 8 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !56     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !58
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZN12_GLOBAL__N_119findTRUContoursImplERN2cv3MatERSt6vectorIS4_INS1_6Point_IiEESaIS6_EESaIS8_EEiiE3$_0JRKNS1_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.r = sext i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_113approxContourERSt6vectorIN2cv6Point_IiEESaIS3_EENS1_25ContourApproximationModesE.exit.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN12_GLOBAL__N_113approxContourERSt6vectorIN2cv6Point_IiEESaIS3_EENS1_25ContourApproximationModesE.exit.i.i.i ] ; 2 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !223, !nonnull !165, !align !166
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %indvars.iv.i.i.i ; 14 uses
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !225, !nonnull !165, !align !226
  %i.w = load i32, ptr %i.v, align 4, !tbaa !54   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 8 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !42
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !35
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = ashr exact i64 %i.ac, 3                 ; 5 uses
  %i.ae = icmp ult i64 %i.ad, 2
  br i1 %i.ae, label %_ZN12_GLOBAL__N_113approxContourERSt6vectorIN2cv6Point_IiEESaIS3_EENS1_25ContourApproximationModesE.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = icmp eq i32 %i.w, 2
  br i1 %i.af, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp ugt i64 %i.ad, 1152921504606846975
  br i1 %i.ag, label %.noexc.i.i.i.i, label %_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE11_M_allocateEm.exit.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #19
  unreachable

_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %bb.d
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #22
          to label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE7reserveEm.exit.i.i.i.i unwind label %.loopexit15.i.i.i ; 3 uses

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE7reserveEm.exit.i.i.i.i: ; preds = %_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE11_M_allocateEm.exit.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ac
  %i.aj = add nsw i64 %i.ad, -1                   ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit.i.i.i.i
  %i.ak = icmp eq ptr %.sroa.0162.2.i.i.i.i, %.sroa.15.1.i.i.i.i
  br i1 %i.ak, label %bb.k, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit108.i.i.i.i

.loopexit15.i.i.i:                                ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i94.i.i.i.i, %_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE11_M_allocateEm.exit.i.i.i.i.i
  %.sroa.27.1.i.ph.i.i.i = phi ptr [ %.sroa.15.1.i.i.i.i, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i94.i.i.i.i ], [ null, %_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE11_M_allocateEm.exit.i.i.i.i.i ]
  %.sroa.0162.1.i.ph.i.i.i = phi ptr [ %.sroa.0162.2.i.i.i.i, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i94.i.i.i.i ], [ null, %_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE11_M_allocateEm.exit.i.i.i.i.i ]
  %lpad.loopexit17.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.f:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit.i.i.i.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE7reserveEm.exit.i.i.i.i
  %.050199.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE7reserveEm.exit.i.i.i.i ], [ %i.an, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit.i.i.i.i ] ; 5 uses
  %.sroa.0162.0198.i.i.i.i = phi ptr [ %i.ah, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE7reserveEm.exit.i.i.i.i ], [ %.sroa.0162.2.i.i.i.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit.i.i.i.i ] ; 10 uses
  %.sroa.27.0197.i.i.i.i = phi ptr [ %i.ai, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE7reserveEm.exit.i.i.i.i ], [ %.sroa.27.2.i.i.i.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit.i.i.i.i ] ; 8 uses
  %.sroa.15.0196.i.i.i.i = phi ptr [ %i.ah, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE7reserveEm.exit.i.i.i.i ], [ %.sroa.15.1.i.i.i.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit.i.i.i.i ] ; 4 uses
  %i.al = icmp eq i64 %.050199.i.i.i.i, 0
  %6 = add nsw i64 %.050199.i.i.i.i, -1
  %i.am = select i1 %i.al, i64 %i.aj, i64 %6
  %i.an = add nuw nsw i64 %.050199.i.i.i.i, 1     ; 3 uses
  %i.ao = load ptr, ptr %i.u, align 8, !tbaa !35  ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.050199.i.i.i.i ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am
  %i.ar = icmp eq i64 %.050199.i.i.i.i, %i.aj
  %i.as = select i1 %i.ar, i64 0, i64 %i.an
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.as
  %i.au = load <2 x i32>, ptr %i.ap, align 4, !tbaa !54 ; 2 uses
  %i.av = load <2 x i32>, ptr %i.aq, align 4, !tbaa !54
  %i.aw = sub nsw <2 x i32> %i.au, %i.av
  %i.ax = load <2 x i32>, ptr %i.at, align 4, !tbaa !54
  %i.ay = sub nsw <2 x i32> %i.ax, %i.au
  %i.az = icmp ne <2 x i32> %i.aw, %i.ay          ; 2 uses
  %i.ba = extractelement <2 x i1> %i.az, i64 0
  %i.bb = extractelement <2 x i1> %i.az, i64 1
  %i.bc = select i1 %i.ba, i1 true, i1 %i.bb
  br i1 %i.bc, label %bb.g, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %.not.i90.i.i.i.i = icmp eq ptr %.sroa.15.0196.i.i.i.i, %.sroa.27.0197.i.i.i.i
  br i1 %.not.i90.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = load i64, ptr %i.ap, align 4
  store i64 %i.bd, ptr %.sroa.15.0196.i.i.i.i, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.15.0196.i.i.i.i, i64 8
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bf = ptrtoint ptr %.sroa.27.0197.i.i.i.i to i64 ; 2 uses
  %i.bg = ptrtoint ptr %.sroa.0162.0198.i.i.i.i to i64 ; 3 uses
  %i.bh = sub i64 %i.bf, %i.bg                    ; 4 uses
  %i.bi = icmp eq i64 %i.bh, 9223372036854775800
  br i1 %i.bi, label %bb.j, label %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #19
          to label %.noexc91.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc91.i.i.i.i:                                 ; preds = %bb.j
  unreachable

_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.i
  %i.bj = ashr exact i64 %i.bh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bj, i64 1)
  %i.bk = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.bj ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bj
  %i.bm = call i64 @llvm.umin.i64(i64 %i.bk, i64 1152921504606846975)
  %i.bn = select i1 %i.bl, i64 1152921504606846975, i64 %i.bm ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.bn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #22
          to label %.noexc92.i.i.i.i unwind label %.loopexit.i.i.i.i ; 8 uses

.noexc92.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bh
  %i.br = load i64, ptr %i.ap, align 4
  store i64 %i.br, ptr %i.bq, align 4
  %.not10.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0162.0198.i.i.i.i, %.sroa.27.0197.i.i.i.i
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %.noexc92.i.i.i.i
  %i.bs = ptrtoaddr ptr %i.bp to i64
  %i.bt = add i64 %i.bf, -8
  %i.bu = sub i64 %i.bt, %i.bg                    ; 2 uses
  %i.bv = lshr i64 %i.bu, 3
  %i.bw = add nuw nsw i64 %i.bv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bu, 24
  %i.bx = sub i64 %i.bg, %i.bs
  %diff.check = icmp ugt i64 %i.bx, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader97, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bw, 4611686018427387900     ; 3 uses
  %i.by = shl i64 %n.vec, 3                       ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bp, i64 %i.by  ; 2 uses
  %i.ca = getelementptr i8, ptr %.sroa.0162.0198.i.i.i.i, i64 %i.by
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cb = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bp, i64 %i.cb ; 2 uses
  %next.gep58 = getelementptr i8, ptr %.sroa.0162.0198.i.i.i.i, i64 %i.cb ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.cc = getelementptr i8, ptr %next.gep58, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep58, align 4, !alias.scope !230, !noalias !227
  %wide.load59 = load <2 x i64>, ptr %i.cc, align 4, !alias.scope !230, !noalias !227
  %i.cd = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !227, !noalias !230
  store <2 x i64> %wide.load59, ptr %i.cd, align 4, !alias.scope !227, !noalias !230
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !232

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader97

.lr.ph.i.i.i.i.i.i.i.i.i.preheader97:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bz, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0162.0198.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ca, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader97, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader97 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader97 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.cf = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !230, !noalias !227
  store i64 %i.cf, ptr %.012.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !227, !noalias !230
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cg, %.sroa.27.0197.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !233

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %.noexc92.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bp, %.noexc92.i.i.i.i ], [ %i.bz, %middle.block ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, i64 8
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0162.0198.i.i.i.i, i64 noundef %i.bh) #20
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bn
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.j
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i, %bb.h, %bb.f
  %.sroa.15.1.i.i.i.i = phi ptr [ %.sroa.15.0196.i.i.i.i, %bb.f ], [ %i.ci, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i ], [ %i.be, %bb.h ] ; 7 uses
  %.sroa.27.2.i.i.i.i = phi ptr [ %.sroa.27.0197.i.i.i.i, %bb.f ], [ %i.cj, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i ], [ %.sroa.27.0197.i.i.i.i, %bb.h ] ; 4 uses
  %.sroa.0162.2.i.i.i.i = phi ptr [ %.sroa.0162.0198.i.i.i.i, %bb.f ], [ %i.bp, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i.i ], [ %.sroa.0162.0198.i.i.i.i, %bb.h ] ; 6 uses
  %exitcond205.not.i.i.i.i = icmp eq i64 %i.an, %i.ad
  br i1 %exitcond205.not.i.i.i.i, label %bb.e, label %bb.f, !llvm.loop !234

bb.k:                                             ; preds = %bb.e
  %i.ck = load ptr, ptr %i.u, align 8, !tbaa !35  ; 2 uses
  %.not.i93.i.i.i.i = icmp eq ptr %.sroa.15.1.i.i.i.i, %.sroa.27.2.i.i.i.i
  br i1 %.not.i93.i.i.i.i, label %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i94.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cl = load i64, ptr %i.ck, align 4
  store i64 %i.cl, ptr %.sroa.15.1.i.i.i.i, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.15.1.i.i.i.i, i64 8
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit108.i.i.i.i

_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i94.i.i.i.i: ; preds = %bb.k
  %i.cn = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22
          to label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i105.i.i.i.i unwind label %.loopexit15.i.i.i ; 3 uses

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i105.i.i.i.i: ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i94.i.i.i.i
  %i.co = load i64, ptr %i.ck, align 4
  store i64 %i.co, ptr %i.cn, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0162.2.i.i.i.i, i64 noundef 0) #20
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit108.i.i.i.i

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit108.i.i.i.i: ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i105.i.i.i.i, %bb.l, %bb.e
  %.sroa.15.2.i.i.i.i = phi ptr [ %.sroa.15.1.i.i.i.i, %bb.e ], [ %i.cp, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i105.i.i.i.i ], [ %i.cm, %bb.l ]
  %.sroa.27.3.i.i.i.i = phi ptr [ %.sroa.27.2.i.i.i.i, %bb.e ], [ %i.cp, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i105.i.i.i.i ], [ %.sroa.27.2.i.i.i.i, %bb.l ]
  %.sroa.0162.3.i.i.i.i = phi ptr [ %.sroa.0162.2.i.i.i.i, %bb.e ], [ %i.cn, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i105.i.i.i.i ], [ %.sroa.0162.2.i.i.i.i, %bb.l ]
  %i.cq = load ptr, ptr %i.u, align 8, !tbaa !35  ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !38
  store ptr %.sroa.0162.3.i.i.i.i, ptr %i.u, align 8, !tbaa !35
  store ptr %.sroa.15.2.i.i.i.i, ptr %i.x, align 8, !tbaa !42
  store ptr %.sroa.27.3.i.i.i.i, ptr %i.cr, align 8, !tbaa !38
  %.not.i.i.i.i.i109.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i109.i.i.i.i, label %_ZN12_GLOBAL__N_113approxContourERSt6vectorIN2cv6Point_IiEESaIS3_EENS1_25ContourApproximationModesE.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backERKS2_.exit108.i.i.i.i
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cv) #20
  br label %_ZN12_GLOBAL__N_113approxContourERSt6vectorIN2cv6Point_IiEESaIS3_EENS1_25ContourApproximationModesE.exit.i.i.i

bb.n:                                             ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %.loopexit15.i.i.i
  %.sroa.27.4.i.i.i.i = phi ptr [ %.sroa.27.0197.i.i.i.i, %.loopexit.split-lp.i.i.i.i ], [ %.sroa.27.0197.i.i.i.i, %.loopexit.i.i.i.i ], [ %.sroa.27.1.i.ph.i.i.i, %.loopexit15.i.i.i ]
  %.sroa.0162.4.i.i.i.i = phi ptr [ %.sroa.0162.0198.i.i.i.i, %.loopexit.split-lp.i.i.i.i ], [ %.sroa.0162.0198.i.i.i.i, %.loopexit.i.i.i.i ], [ %.sroa.0162.1.i.ph.i.i.i, %.loopexit15.i.i.i ] ; 3 uses
  %.pn66.pn.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit17.i.i.i, %.loopexit15.i.i.i ] ; 2 uses
  %.not.i.i.i111.i.i.i.i = icmp eq ptr %.sroa.0162.4.i.i.i.i, null
  br i1 %.not.i.i.i111.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit112.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = ptrtoint ptr %.sroa.27.4.i.i.i.i to i64
  %i.cx = ptrtoint ptr %.sroa.0162.4.i.i.i.i to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0162.4.i.i.i.i, i64 noundef %i.cy) #20
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit112.i.i.i.i

bb.p:                                             ; preds = %bb.c
end_hunk_0
