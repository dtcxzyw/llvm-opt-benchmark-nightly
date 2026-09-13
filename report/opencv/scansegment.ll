Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/scansegment?download=true
inline.NumInlined: 1020
inline.NumDeleted: 456
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN2cv29ParallelLoopBodyLambdaWrapperD0Ev:bb.a
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit unwind label %bb.c, !inline_history !110 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #29, !inline_history !110
  unreachable

_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #28, !inline_history !110
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv29ParallelLoopBodyLambdaWrapperclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #32
  unreachable

_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit:     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 4 dereferenceable(8) %1), !inline_history !231
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #12

declare void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #22

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv8ximgproc15ScanSegmentImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(7384) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 7384) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv8ximgproc15ScanSegmentImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(7384) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv8ximgproc15ScanSegmentImplD2Ev(ptr noundef nonnull align 8 dead_on_return(7368) dereferenceable(7368) %i.a) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv8ximgproc15ScanSegmentImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(7384) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv8ximgproc15ScanSegmentImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 7384) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv8ximgproc15ScanSegmentImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(7384) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !233  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !80
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #28
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #23

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_8ximgproc15ScanSegmentImpl7iterateERKNS0_11_InputArrayEE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #14 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !236
  %i.a = load i32, ptr %1, align 4, !tbaa !99     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !100
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv8ximgproc15ScanSegmentImpl7iterateERKNS0_11_InputArrayEE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.01.i.i.i = phi i32 [ %i.e, %.lr.ph.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN2cv8ximgproc15ScanSegmentImpl3OP1Ei(ptr noundef nonnull align 8 dereferenceable(7368) %.val, i32 noundef %.01.i.i.i)
  %i.e = add nsw i32 %.01.i.i.i, 1                ; 2 uses
  %i.f = load i32, ptr %i.b, align 4, !tbaa !100
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv8ximgproc15ScanSegmentImpl7iterateERKNS0_11_InputArrayEE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit", !llvm.loop !234

"_ZSt10__invoke_rIvRZN2cv8ximgproc15ScanSegmentImpl7iterateERKNS0_11_InputArrayEE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit": ; preds = %.lr.ph.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_8ximgproc15ScanSegmentImpl7iterateERKNS0_11_InputArrayEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #24 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNS1_11_InputArrayEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNS_11_InputArrayEE3$_0", ptr %0, align 8, !tbaa !121
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNS1_11_InputArrayEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !109
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNS1_11_InputArrayEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !102
  store i64 %.val.i, ptr %0, align 8, !tbaa !102
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNS1_11_InputArrayEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNS1_11_InputArrayEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #25 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i.i.i26 = freeze i64 %i.c                  ; 2 uses
  %i.d = ashr exact i64 %.fr.i.i.i26, 3           ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_SJ_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 12         ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 4          ; 12 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph50

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEET_SJ_SJ_T0_.exit"
  %i.j = icmp eq i64 %i.dg, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph50, !llvm.loop !237

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i29.lcssa = phi i64 [ %.fr.i.i.i26, %.lr.ph ], [ %.fr.i.i.i, %bb.b ] ; 3 uses
  %storemerge27.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i.i.i29.lcssa, 3           ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 4 uses
  %i.p = and i64 %.fr.i.i.i29.lcssa, 8
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_T0_SK_T1_T2_.exit.us.i.i.i"
  %.010.us.i.i.i = phi i64 [ %i.aq, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_T0_SK_T1_T2_.exit.us.i.i.i" ], [ %i.m, %._crit_edge ] ; 7 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.us.i.i.i
  %.sroa.03.0.copyload.us.i.i.i = load i64, ptr %i.u, align 4 ; 2 uses
  %i.v = icmp slt i64 %.010.us.i.i.i, %i.o
  br i1 %i.v, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_T0_SK_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.036.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.010.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.w = shl i64 %.036.i.us.i.i.i, 1              ; 2 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %i.x
  %i.z = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.val.i.i.us.i.i.i = load i32, ptr %i.ab, align 4, !tbaa !78
  %i.ac = getelementptr i8, ptr %i.aa, i64 4
  %.val1.i.i.us.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !78
  %i.ad = icmp sgt i32 %.val.i.i.us.i.i.i, %.val1.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.ad, i64 %i.z, i64 %i.x ; 4 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us.i.i.i
  %i.af = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.us.i.i.i
  %i.ag = load <2 x i32>, ptr %i.ae, align 4, !tbaa !54
  store <2 x i32> %i.ag, ptr %i.af, align 4, !tbaa !54
  %i.ah = icmp slt i64 %spec.select.i.us.i.i.i, %i.o
  br i1 %i.ah, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !238

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %.sroa.2.0.extract.shift.i.i.us.i.i.i = lshr i64 %.sroa.03.0.copyload.us.i.i.i, 32
  %.sroa.2.0.extract.trunc.i.i.us.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.us.i.i.i to i32
  br label %.lr.ph.i.i.us.i.i.i

.lr.ph.i.i.us.i.i.i:                              ; preds = %bb.c, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %.0911.i.i.us.i.i.i, %bb.c ], [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0911.i.i.us.i.i.i ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %.val.i.i.i.us.i.i.i = load i32, ptr %i.aj, align 4, !tbaa !78 ; 2 uses
  %i.ak = icmp sgt i32 %.val.i.i.i.us.i.i.i, %.sroa.2.0.extract.trunc.i.i.us.i.i.i
  br i1 %i.ak, label %bb.c, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_T0_SK_T1_T2_.exit.us.i.i.i"

bb.c:                                             ; preds = %.lr.ph.i.i.us.i.i.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.010.i.i.us.i.i.i ; 2 uses
  %i.am = load i32, ptr %i.ai, align 4, !tbaa !54
  store i32 %i.am, ptr %i.al, align 4, !tbaa !77
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 %.val.i.i.i.us.i.i.i, ptr %i.an, align 4, !tbaa !78
  %i.ao = icmp sgt i64 %.0911.i.i.us.i.i.i, %.010.us.i.i.i
  br i1 %i.ao, label %.lr.ph.i.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_T0_SK_T1_T2_.exit.us.i.i.i", !llvm.loop !239

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_T0_SK_T1_T2_.exit.us.i.i.i": ; preds = %bb.c, %.lr.ph.i.i.us.i.i.i, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.010.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.c ], [ %.010.i.i.us.i.i.i, %.lr.ph.i.i.us.i.i.i ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.us.i.i.i
  store i64 %.sroa.03.0.copyload.us.i.i.i, ptr %i.ap, align 4
  %.not.us.i.i.i = icmp eq i64 %.010.us.i.i.i, 0
  %i.aq = add nsw i64 %.010.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !240

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_T0_SK_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.010.i.i.i = phi i64 [ %i.bq, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_T0_SK_T1_T2_.exit.i.i.i" ], [ %i.m, %.split.preheader.i.i.i ] ; 8 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.i.i.i
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.ar, align 4 ; 2 uses
  %i.as = icmp slt i64 %.010.i.i.i, %i.o
  br i1 %i.as, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.036.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.at = shl i64 %.036.i.i.i.i, 1                ; 2 uses
  %i.au = add i64 %i.at, 2                        ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %i.au
  %i.aw = or disjoint i64 %i.at, 1                ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.av, i64 4
  %.val.i.i.i.i.i = load i32, ptr %i.ay, align 4, !tbaa !78
  %i.az = getelementptr i8, ptr %i.ax, i64 4
  %.val1.i.i.i.i.i = load i32, ptr %i.az, align 4, !tbaa !78
  %i.ba = icmp sgt i32 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ba, i64 %i.aw, i64 %i.au ; 4 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bc = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.i.i.i
  %i.bd = load <2 x i32>, ptr %i.bb, align 4, !tbaa !54
  store <2 x i32> %i.bd, ptr %i.bc, align 4, !tbaa !54
  %i.be = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.be, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !238

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bf = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  br i1 %i.bf, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bg = load <2 x i32>, ptr %i.s, align 4, !tbaa !54
  store <2 x i32> %i.bg, ptr %i.t, align 4, !tbaa !54
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.sroa.2.0.extract.shift.i.i.i.i.i = lshr i64 %.sroa.03.0.copyload.i.i.i, 32
  %.sroa.2.0.extract.trunc.i.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i.i to i32
  %i.bh = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_T0_SK_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0911.i.i.i.i.i ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 4
  %.val.i.i.i.i.i.i = load i32, ptr %i.bj, align 4, !tbaa !78 ; 2 uses
  %i.bk = icmp sgt i32 %.val.i.i.i.i.i.i, %.sroa.2.0.extract.trunc.i.i.i.i.i
  br i1 %i.bk, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_T0_SK_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.010.i.i.i.i.i ; 2 uses
  %i.bm = load i32, ptr %i.bi, align 4, !tbaa !54
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !77
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 %.val.i.i.i.i.i.i, ptr %i.bn, align 4, !tbaa !78
  %i.bo = icmp sgt i64 %.0911.i.i.i.i.i, %.010.i.i.i
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_T0_SK_T1_T2_.exit.i.i.i", !llvm.loop !239

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_T0_SK_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i64 %.sroa.03.0.copyload.i.i.i, ptr %i.bp, align 4
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.bq = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !240

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_T0_SK_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_T0_SK_T1_T2_.exit.i.i.i"
  %3 = icmp sgt i64 %.fr.i.i.i29.lcssa, 8
  br i1 %3, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_SJ_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_SJ_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.br, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_SJ_RT0_.exit.i.i" ], [ %storemerge27.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_RT0_.exit.i.i" ] ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load i64, ptr %i.br, align 4 ; 2 uses
  %i.bs = load i32, ptr %0, align 4, !tbaa !54
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !77
  %i.bt = load i32, ptr %i.h, align 4, !tbaa !54
  %i.bu = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -4
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !78
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bv, %i.a                     ; 3 uses
  %i.bx = ashr exact i64 %i.bw, 3                 ; 3 uses
  %i.by = add nsw i64 %i.bx, -1
  %i.bz = lshr i64 %i.by, 1
  %i.ca = icmp sgt i64 %i.bx, 2
  br i1 %i.ca, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i11.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i19.i
  %.036.i.i.i20.i = phi i64 [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.cb = shl i64 %.036.i.i.i20.i, 1              ; 2 uses
  %i.cc = add i64 %i.cb, 2                        ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cc
  %i.ce = or disjoint i64 %i.cb, 1                ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cd, i64 4
  %.val.i.i.i.i21.i = load i32, ptr %i.cg, align 4, !tbaa !78
  %i.ch = getelementptr i8, ptr %i.cf, i64 4
  %.val1.i.i.i.i22.i = load i32, ptr %i.ch, align 4, !tbaa !78
  %i.ci = icmp sgt i32 %.val.i.i.i.i21.i, %.val1.i.i.i.i22.i
  %spec.select.i.i.i23.i = select i1 %i.ci, i64 %i.ce, i64 %i.cc ; 4 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i23.i
  %i.ck = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.i.i20.i
  %i.cl = load <2 x i32>, ptr %i.cj, align 4, !tbaa !54
  store <2 x i32> %i.cl, ptr %i.ck, align 4, !tbaa !54
  %i.cm = icmp slt i64 %spec.select.i.i.i23.i, %i.bz
  br i1 %i.cm, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i11.i, !llvm.loop !238

._crit_edge.i.i.i11.i:                            ; preds = %.lr.ph.i.i.i19.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i12.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ] ; 5 uses
  %i.cn = and i64 %i.bw, 8
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i11.i
  %i.cp = add nsw i64 %i.bx, -2
  %i.cq = ashr exact i64 %i.cp, 1
  %i.cr = icmp eq i64 %.0.lcssa.i.i.i12.i, %i.cq
  br i1 %i.cr, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.cs = shl nuw nsw i64 %.0.lcssa.i.i.i12.i, 1
  %i.ct = or disjoint i64 %i.cs, 1                ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ct
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i12.i
  %i.cw = load <2 x i32>, ptr %i.cu, align 4, !tbaa !54
  store <2 x i32> %i.cw, ptr %i.cv, align 4, !tbaa !54
  br label %.lr.ph.i.i.preheader.i.i.i

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i11.i
  %.not.i.i13.i = icmp eq i64 %.0.lcssa.i.i.i12.i, 0
  br i1 %.not.i.i13.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_SJ_RT0_.exit.i.i", label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.h, %.thread.i.i.i
  %.1.i12.i.i.i = phi i64 [ %i.ct, %.thread.i.i.i ], [ %.0.lcssa.i.i.i12.i, %bb.h ]
  %.sroa.2.0.extract.trunc.i.i13.in.i.i.i = lshr i64 %.sroa.03.0.copyload.i.i10.i, 32
  %.sroa.2.0.extract.trunc.i.i13.i.i.i = trunc nuw i64 %.sroa.2.0.extract.trunc.i.i13.in.i.i.i to i32
  br label %.lr.ph.i.i.i.i14.i

.lr.ph.i.i.i.i14.i:                               ; preds = %bb.i, %.lr.ph.i.i.preheader.i.i.i
  %.010.i.i.i.i15.i = phi i64 [ %.0911.i.i56.i.i.i, %bb.i ], [ %.1.i12.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 3 uses
  %.0911.in.i.i.i.i16.i = add nsw i64 %.010.i.i.i.i15.i, -1
  %.0911.i.i56.i.i.i = lshr i64 %.0911.in.i.i.i.i16.i, 1 ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0911.i.i56.i.i.i ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 4
  %.val.i.i.i.i.i17.i = load i32, ptr %i.cy, align 4, !tbaa !78 ; 2 uses
  %i.cz = icmp sgt i32 %.val.i.i.i.i.i17.i, %.sroa.2.0.extract.trunc.i.i13.i.i.i
  br i1 %i.cz, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_SJ_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i14.i
  %i.da = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.i.i.i.i15.i ; 2 uses
  %i.db = load i32, ptr %i.cx, align 4, !tbaa !54
  store i32 %i.db, ptr %i.da, align 4, !tbaa !77
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store i32 %.val.i.i.i.i.i17.i, ptr %i.dc, align 4, !tbaa !78
  %.not7.i.i.i = icmp eq i64 %.0911.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_SJ_RT0_.exit.i.i", label %.lr.ph.i.i.i.i14.i, !llvm.loop !239

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_SJ_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i14.i, %bb.h
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i15.i, %.lr.ph.i.i.i.i14.i ], [ 0, %bb.i ]
  %i.dd = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i18.i
  store i64 %.sroa.03.0.copyload.i.i10.i, ptr %i.dd, align 4
  %i.de = icmp sgt i64 %i.bw, 8
  br i1 %i.de, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_SJ_T0_.exit", !llvm.loop !241

.lr.ph50:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2749 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02848 = phi i64 [ %i.dg, %bb.b ], [ %2, %.lr.ph ]
  %i.df = phi i64 [ %i.ev, %bb.b ], [ %i.d, %.lr.ph ]
  %i.dg = add nsw i64 %.02848, -1                 ; 3 uses
  %i.dh = lshr i64 %i.df, 1
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dh ; 5 uses
  %i.dj = getelementptr inbounds i8, ptr %storemerge2749, i64 -8 ; 4 uses
  %.val.i.i.i = load i32, ptr %i.g, align 4, !tbaa !78 ; 5 uses
  %i.dk = getelementptr i8, ptr %i.di, i64 4      ; 2 uses
  %.val1.i.i.i = load i32, ptr %i.dk, align 4, !tbaa !78 ; 5 uses
  %i.dl = icmp sgt i32 %.val.i.i.i, %.val1.i.i.i
  %i.dm = getelementptr i8, ptr %storemerge2749, i64 -4 ; 5 uses
  %.val1.i27.i.i = load i32, ptr %i.dm, align 4, !tbaa !78 ; 4 uses
  br i1 %i.dl, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph50
  %i.dn = icmp sgt i32 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.dn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.do = load i32, ptr %i.di, align 4, !tbaa !54
  %i.dp = load <2 x i32>, ptr %0, align 4, !tbaa !54
  store i32 %i.do, ptr %0, align 4, !tbaa !54
  store i32 %.val1.i.i.i, ptr %i.h, align 4, !tbaa !54
  store <2 x i32> %i.dp, ptr %i.di, align 4, !tbaa !54
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.dq = icmp sgt i32 %.val.i.i.i, %.val1.i27.i.i
  %i.dr = load i32, ptr %0, align 4, !tbaa !54    ; 2 uses
  br i1 %i.dq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ds = load i32, ptr %i.dj, align 4, !tbaa !54
  store i32 %i.ds, ptr %0, align 4, !tbaa !54
  store i32 %i.dr, ptr %i.dj, align 4, !tbaa !54
  %i.dt = load i32, ptr %i.h, align 4, !tbaa !54
  %i.du = load i32, ptr %i.dm, align 4, !tbaa !54
  store i32 %i.du, ptr %i.h, align 4, !tbaa !54
  store i32 %i.dt, ptr %i.dm, align 4, !tbaa !54
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %i.dv = load i32, ptr %i.f, align 4, !tbaa !54
  store i32 %i.dv, ptr %0, align 4, !tbaa !54
  store i32 %i.dr, ptr %i.f, align 4, !tbaa !54
  %i.dw = load i32, ptr %i.h, align 4, !tbaa !54
  store i32 %.val.i.i.i, ptr %i.h, align 4, !tbaa !54
  store i32 %i.dw, ptr %i.g, align 4, !tbaa !54
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph50
  %i.dx = icmp sgt i32 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.dx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dy = load i32, ptr %i.f, align 4, !tbaa !54
  %i.dz = load <2 x i32>, ptr %0, align 4, !tbaa !54
  store i32 %i.dy, ptr %0, align 4, !tbaa !54
  store i32 %.val.i.i.i, ptr %i.h, align 4, !tbaa !54
  store <2 x i32> %i.dz, ptr %i.f, align 4, !tbaa !54
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.ea = icmp sgt i32 %.val1.i.i.i, %.val1.i27.i.i
  %i.eb = load i32, ptr %0, align 4, !tbaa !54    ; 2 uses
  br i1 %i.ea, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ec = load i32, ptr %i.dj, align 4, !tbaa !54
  store i32 %i.ec, ptr %0, align 4, !tbaa !54
  store i32 %i.eb, ptr %i.dj, align 4, !tbaa !54
  %i.ed = load i32, ptr %i.h, align 4, !tbaa !54
  %i.ee = load i32, ptr %i.dm, align 4, !tbaa !54
  store i32 %i.ee, ptr %i.h, align 4, !tbaa !54
  store i32 %i.ed, ptr %i.dm, align 4, !tbaa !54
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  %i.ef = load i32, ptr %i.di, align 4, !tbaa !54
  store i32 %i.ef, ptr %0, align 4, !tbaa !54
  store i32 %i.eb, ptr %i.di, align 4, !tbaa !54
  %i.eg = load i32, ptr %i.h, align 4, !tbaa !54
  store i32 %.val1.i.i.i, ptr %i.h, align 4, !tbaa !54
  store i32 %i.eg, ptr %i.dk, align 4, !tbaa !54
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_SJ_SJ_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_SJ_SJ_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader", %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.ej, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2749, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader" ]
  %.val1.i.i13.i = load i32, ptr %i.h, align 4, !tbaa !78 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_SJ_SJ_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_SJ_SJ_T0_.exit.i" ], [ %i.ej, %bb.t ] ; 10 uses
  %i.eh = getelementptr i8, ptr %.sroa.012.1.i.i, i64 4
  %.val.i.i14.i = load i32, ptr %i.eh, align 4, !tbaa !78
  %i.ei = icmp sgt i32 %.val.i.i14.i, %.val1.i.i13.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.ei, label %bb.t, label %.preheader.i.i.preheader, !llvm.loop !242

.preheader.i.i.preheader:                         ; preds = %bb.t
  %i.ek = getelementptr i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %.preheader.i.i.preheader ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.el = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -4
  %.val1.i9.i.i = load i32, ptr %i.el, align 4, !tbaa !78
  %i.em = icmp sgt i32 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.em, label %.preheader.i.i, label %bb.u, !llvm.loop !243

bb.u:                                             ; preds = %.preheader.i.i
  %i.en = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.en, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEET_SJ_SJ_T0_.exit"

bb.v:                                             ; preds = %bb.u
  %i.eo = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -4 ; 2 uses
  %i.ep = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !54
  %i.eq = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !54
  store i32 %i.eq, ptr %.sroa.012.1.i.i, align 4, !tbaa !54
  store i32 %i.ep, ptr %.sroa.0.1.i.i, align 4, !tbaa !54
  %i.er = load i32, ptr %i.ek, align 4, !tbaa !54
  %i.es = load i32, ptr %i.eo, align 4, !tbaa !54
  store i32 %i.es, ptr %i.ek, align 4, !tbaa !54
  store i32 %i.er, ptr %i.eo, align 4, !tbaa !54
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_SJ_SJ_T0_.exit.i", !llvm.loop !244

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEET_SJ_SJ_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2749, i64 noundef %i.dg)
  %i.et = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.eu = sub i64 %i.et, %i.a
  %.fr.i.i.i = freeze i64 %i.eu                   ; 2 uses
  %i.ev = ashr exact i64 %.fr.i.i.i, 3            ; 2 uses
  %i.ew = icmp sgt i64 %i.ev, 16
  br i1 %i.ew, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_SJ_T0_.exit", !llvm.loop !237

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_SJ_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEET_SJ_SJ_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_SJ_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNSB_11_InputArrayEE3$_4EEEvT_SJ_RT0_.exit.i.i"
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #17

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_8ximgproc15ScanSegmentImpl7iterateERKNS0_11_InputArrayEE3$_1E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #15 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !99     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !100  ; 2 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv8ximgproc15ScanSegmentImpl7iterateERKNS0_11_InputArrayEE3$_1JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !247   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 3664
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 4760
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 3688
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 5832
  %i.i = sext i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZN2cv8ximgproc15ScanSegmentImpl3OP2ERKSt4pairIiiE.exit.i.i.i, %.lr.ph.i.i.i
  %i.j = phi i32 [ %i.c, %.lr.ph.i.i.i ], [ %i.ae, %_ZN2cv8ximgproc15ScanSegmentImpl3OP2ERKSt4pairIiiE.exit.i.i.i ]
  %indvars.iv.i.i.i = phi i64 [ %i.i, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN2cv8ximgproc15ScanSegmentImpl3OP2ERKSt4pairIiiE.exit.i.i.i ] ; 2 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i.i.i ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !77   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !78
  %i.p = icmp slt i32 %i.m, %i.o
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %_ZN2cv8ximgproc15ScanSegmentImpl3OP2ERKSt4pairIiiE.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.q = sext i32 %i.m to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.c ] ; 3 uses
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.t = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv.i.i.i.i ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !54
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !54   ; 2 uses
  store i32 %i.x, ptr %i.t, align 4, !tbaa !54
  %i.y = icmp eq i32 %i.x, 0
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !56
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %indvars.iv.i.i.i.i
  %..i.i.i.i = sext i1 %i.y to i8
  store i8 %..i.i.i.i, ptr %i.aa, align 1, !tbaa !80
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !78
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next.i.i.i.i, %i.ac
  br i1 %i.ad, label %bb.c, label %_ZN2cv8ximgproc15ScanSegmentImpl3OP2ERKSt4pairIiiE.exit.loopexit.i.i.i, !llvm.loop !3

_ZN2cv8ximgproc15ScanSegmentImpl3OP2ERKSt4pairIiiE.exit.loopexit.i.i.i: ; preds = %bb.c
  %.pre.i.i.i = load i32, ptr %i.b, align 4, !tbaa !100
  br label %_ZN2cv8ximgproc15ScanSegmentImpl3OP2ERKSt4pairIiiE.exit.i.i.i

_ZN2cv8ximgproc15ScanSegmentImpl3OP2ERKSt4pairIiiE.exit.i.i.i: ; preds = %_ZN2cv8ximgproc15ScanSegmentImpl3OP2ERKSt4pairIiiE.exit.loopexit.i.i.i, %bb.b
  %i.ae = phi i32 [ %.pre.i.i.i, %_ZN2cv8ximgproc15ScanSegmentImpl3OP2ERKSt4pairIiiE.exit.loopexit.i.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next.i.i.i, %i.af
  br i1 %i.ag, label %bb.b, label %"_ZSt10__invoke_rIvRZN2cv8ximgproc15ScanSegmentImpl7iterateERKNS0_11_InputArrayEE3$_1JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit", !llvm.loop !245

"_ZSt10__invoke_rIvRZN2cv8ximgproc15ScanSegmentImpl7iterateERKNS0_11_InputArrayEE3$_1JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit": ; preds = %_ZN2cv8ximgproc15ScanSegmentImpl3OP2ERKSt4pairIiiE.exit.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_8ximgproc15ScanSegmentImpl7iterateERKNS0_11_InputArrayEE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #24 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNS1_11_InputArrayEE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNS_11_InputArrayEE3$_1", ptr %0, align 8, !tbaa !121
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNS1_11_InputArrayEE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !109
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNS1_11_InputArrayEE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !102
  store i64 %.val.i, ptr %0, align 8, !tbaa !102
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNS1_11_InputArrayEE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNS1_11_InputArrayEE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_8ximgproc15ScanSegmentImpl7iterateERKNS0_11_InputArrayEE3$_2E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #4 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !250
  %i.a = load i32, ptr %1, align 4, !tbaa !99     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !100
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv8ximgproc15ScanSegmentImpl7iterateERKNS0_11_InputArrayEE3$_2JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.01.i.i.i = phi i32 [ %i.e, %.lr.ph.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN2cv8ximgproc15ScanSegmentImpl3OP3Ei(ptr noundef nonnull align 8 dereferenceable(7368) %.val, i32 noundef %.01.i.i.i)
  %i.e = add nsw i32 %.01.i.i.i, 1                ; 2 uses
  %i.f = load i32, ptr %i.b, align 4, !tbaa !100
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv8ximgproc15ScanSegmentImpl7iterateERKNS0_11_InputArrayEE3$_2JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit", !llvm.loop !248

"_ZSt10__invoke_rIvRZN2cv8ximgproc15ScanSegmentImpl7iterateERKNS0_11_InputArrayEE3$_2JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit": ; preds = %.lr.ph.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_8ximgproc15ScanSegmentImpl7iterateERKNS0_11_InputArrayEE3$_2E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #24 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNS1_11_InputArrayEE3$_2E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNS_11_InputArrayEE3$_2", ptr %0, align 8, !tbaa !121
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNS1_11_InputArrayEE3$_2E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !109
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNS1_11_InputArrayEE3$_2E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !102
  store i64 %.val.i, ptr %0, align 8, !tbaa !102
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNS1_11_InputArrayEE3$_2E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv8ximgproc15ScanSegmentImpl7iterateERKNS1_11_InputArrayEE3$_2E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_8ximgproc15ScanSegmentImpl7iterateERKNS0_11_InputArrayEE3$_3E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #15 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !99     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !100  ; 2 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv8ximgproc15ScanSegmentImpl7iterateERKNS0_11_InputArrayEE3$_3JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !253   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 3664
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 5832
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 7184
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 3688
  %i.j = sext i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZN2cv8ximgproc15ScanSegmentImpl3OP4ERKSt4pairIiiE.exit.i.i.i, %.lr.ph.i.i.i
  %i.k = phi i32 [ %i.c, %.lr.ph.i.i.i ], [ %i.ah, %_ZN2cv8ximgproc15ScanSegmentImpl3OP4ERKSt4pairIiiE.exit.i.i.i ]
  %indvars.iv.i.i.i = phi i64 [ %i.j, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN2cv8ximgproc15ScanSegmentImpl3OP4ERKSt4pairIiiE.exit.i.i.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i.i ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !77   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !78
  %i.p = icmp slt i32 %i.m, %i.o
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %_ZN2cv8ximgproc15ScanSegmentImpl3OP4ERKSt4pairIiiE.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !56
  %i.r = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.s = load ptr, ptr %i.i, align 8
  %i.t = sext i32 %i.m to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %i.t, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.f ] ; 5 uses
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %indvars.iv.i.i.i.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !80
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv.i.i.i.i
  %i.y = load i32, ptr %i.x, align 4, !tbaa !54
  %i.z = add nsw i32 %i.y, -1
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv.i.i.i.i
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !54
  br label %bb.f

end_hunk_0
