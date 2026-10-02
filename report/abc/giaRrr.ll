Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaRrr?download=true
inline.NumInlined: 27716
inline.NumDeleted: 6990
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEEC2EPKNS_9ParameterESt8functionIFdPS1_EE:bb.a
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !277
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 5472
  store ptr %i.bh, ptr %i.bk, align 8, !tbaa !278
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 5480
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 5544
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bl, i8 0, i64 64, i1 false)
  store i32 -1, ptr %i.bm, align 8, !tbaa !863
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 5552
  store ptr null, ptr %i.bn, align 8, !tbaa !333
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 5560
  store i32 0, ptr %i.bo, align 8, !tbaa !486
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 5568
  store ptr null, ptr %i.bp, align 8, !tbaa !333
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 5576
  store i32 0, ptr %i.bq, align 8, !tbaa !486
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 5584
  store ptr null, ptr %i.br, align 8, !tbaa !546
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 3 uses
  store i32 0, ptr %i.bs, align 8, !tbaa !275
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 5608
  store ptr null, ptr %i.bt, align 8, !tbaa !276
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 5616
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !277
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 5624
  store ptr %i.bs, ptr %i.bv, align 8, !tbaa !278
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 5632
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bw, i8 0, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNSt17_Function_handlerIFdPN3rrr10AndNetworkEEZNS0_9SchedulerIS1_NS0_9OptimizerIS1_NS0_11BddAnalyzerIS1_EEEENS0_11PartitionerIS1_EEEC1ES2_PKNS0_9ParameterEEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.std::function.35", align 8  ; 9 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !302    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 0, ptr %i.c, align 4, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !219
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !328
  store ptr @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E9_M_invokeERKSt9_Any_dataOi, ptr %i.f, align 8, !tbaa !271
  store ptr @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation, ptr %i.e, align 8, !tbaa !212
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %.sroa.04.07.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !231 ; 3 uses
  %.not8.i.i.i.i = icmp eq ptr %.sroa.04.07.i.i.i.i, %i.g
  br i1 %.not8.i.i.i.i, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.i, ptr %i.a, align 4, !tbaa !220
  br label %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i

thread-pre-split.i.i.i:                           ; preds = %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i, i64 16
  %i.k = load i32, ptr %i.j, align 4, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.k, ptr %i.a, align 4, !tbaa !220
  %.not.i.i.i.i.i.i = icmp eq ptr %.pr2.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i

bb.b:                                             ; preds = %thread-pre-split.i.i.i
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFviEEclEi.exit.i.i.i.i:           ; preds = %thread-pre-split.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.sroa.04.09.i4.i.i.i = phi ptr [ %.sroa.04.07.i.i.i.i, %.lr.ph.i.preheader.i.i.i ], [ %.sroa.04.0.i.i.i.i, %thread-pre-split.i.i.i ]
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !271
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #26, !inline_history !1669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.04.0.i.i.i.i = load ptr, ptr %.sroa.04.09.i4.i.i.i, align 8, !tbaa !231 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.04.0.i.i.i.i, %i.g
  %.pr2.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !212 ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i, label %thread-pre-split.i.i.i

_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i: ; preds = %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i
  %.not.i1.i.i.i = icmp eq ptr %.pr2.i.i.i, null
  br i1 %.not.i1.i.i.i, label %_ZSt10__invoke_rIdRZN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_11PartitionerIS2_EEEC1EPS2_PKNS0_9ParameterEEUlSA_E_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i

_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i: ; preds = %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i, %bb.a
  %i.m = phi ptr [ %.pr2.i.i.i, %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i ], [ @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation, %bb.a ]
  %i.n = call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #26, !inline_history !1670 ; 0 uses
  br label %_ZSt10__invoke_rIdRZN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_11PartitionerIS2_EEEC1EPS2_PKNS0_9ParameterEEUlSA_E_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit

_ZSt10__invoke_rIdRZN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_11PartitionerIS2_EEEC1EPS2_PKNS0_9ParameterEEUlSA_E_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit: ; preds = %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i, %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.o = load i32, ptr %i.c, align 4, !tbaa !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = sitofp i32 %i.o to double
  ret double %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFdPN3rrr10AndNetworkEEZNS0_9SchedulerIS1_NS0_9OptimizerIS1_NS0_11BddAnalyzerIS1_EEEENS0_11PartitionerIS1_EEEC1ES2_PKNS0_9ParameterEEUlS2_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEEC1EPS1_PKNS_9ParameterEEUlS9_E_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !303
  br label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E9_M_invokeERKSt9_Any_dataOi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !220
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1672, !nonnull !317, !align !412
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !302
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.f = sext i32 %i.a to i64
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !228
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !224
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !223
  %i.j = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.k = ptrtoint ptr %.val.i.i.i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 2
  %i.n = trunc i64 %i.m to i32
  %i.o = load ptr, ptr %0, align 8, !tbaa !1673, !nonnull !317, !align !415 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !220
  %i.q = add i32 %i.p, -1
  %i.r = add i32 %i.q, %i.n
  store i32 %i.r, ptr %i.o, align 4, !tbaa !220
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEEC1EPS1_PKNS_9ParameterEENKUlS9_E_clES9_EUliE_, ptr %0, align 8, !tbaa !414
  br label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !303
  br label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !864
  br label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: cold nofree noreturn nounwind
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJSt5_BindIFMN3rrr9SchedulerINS5_10AndNetworkENS5_9OptimizerIS7_NS5_11BddAnalyzerIS7_EEEENS5_11PartitionerIS7_EEEEFvPKNS5_9ParameterEEPSE_SH_EEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !498  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !497    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 0, ptr %i.q, align 8, !tbaa !510
  %i.r = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS4_10AndNetworkENS4_9OptimizerIS6_NS4_11BddAnalyzerIS6_EEEENS4_11PartitionerIS6_EEEEFvPKNS4_9ParameterEEPSD_SG_EEEEEEEE, i64 16), ptr %i.r, align 8, !tbaa !340
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load <2 x i64>, ptr %2, align 8, !tbaa !507
  store <2 x i64> %i.t, ptr %i.s, align 8, !tbaa !507
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load <2 x i64>, ptr %i.v, align 8, !tbaa !303
  store <2 x i64> %i.w, ptr %i.u, align 8, !tbaa !303
  store ptr %i.r, ptr %3, align 8, !tbaa !512
  call void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %3, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv) #26
  %i.x = load ptr, ptr %3, align 8, !tbaa !512    ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_11BddAnalyzerIS4_EEEENS2_11PartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !340
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #26, !inline_history !1674
  br label %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_11BddAnalyzerIS4_EEEENS2_11PartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit

_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_11BddAnalyzerIS4_EEEENS2_11PartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit: ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_11BddAnalyzerIS4_EEEENS2_11PartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_11BddAnalyzerIS4_EEEENS2_11PartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_11BddAnalyzerIS4_EEEENS2_11PartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1681)
  call void @llvm.experimental.noalias.scope.decl(metadata !1682)
  %i.ab = load i64, ptr %.0911.i.i.i, align 8, !tbaa !334, !alias.scope !1682, !noalias !1681
  store i64 %i.ab, ptr %.012.i.i.i, align 8, !tbaa !334, !alias.scope !1681, !noalias !1682
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !334, !alias.scope !1682, !noalias !1681
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !27

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_11BddAnalyzerIS4_EEEENS2_11PartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_11BddAnalyzerIS4_EEEENS2_11PartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit ], [ %i.ad, %.lr.ph.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ae, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1683)
  call void @llvm.experimental.noalias.scope.decl(metadata !1684)
  %i.af = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !334, !alias.scope !1684, !noalias !1683
  store i64 %i.af, ptr %.012.i.i.i18, align 8, !tbaa !334, !alias.scope !1683, !noalias !1684
  store i64 0, ptr %.0911.i.i.i19, align 8, !tbaa !334, !alias.scope !1684, !noalias !1683
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !27

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ae, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !496
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #28
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !497
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !498
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !496
  ret void
}

declare void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread24_M_thread_deps_never_runEv() #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS4_10AndNetworkENS4_9OptimizerIS6_NS4_11BddAnalyzerIS6_EEEENS4_11PartitionerIS6_EEEEFvPKNS4_9ParameterEEPSD_SG_EEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS4_10AndNetworkENS4_9OptimizerIS6_NS4_11BddAnalyzerIS6_EEEENS4_11PartitionerIS6_EEEEFvPKNS4_9ParameterEEPSD_SG_EEEEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !532
  %.unpack.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !206 ; 3 uses
  %.elt3.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.unpack4.i.i.i.i.i.i.i.i = load i64, ptr %.elt3.i.i.i.i.i.i.i.i, align 8, !tbaa !206
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.unpack4.i.i.i.i.i.i.i.i ; 2 uses
  %i.e = and i64 %.unpack.i.i.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !340
  %i.g = getelementptr i8, ptr %i.f, i64 %.unpack.i.i.i.i.i.i.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load ptr, ptr %i.h, align 8, !nosanitize !317
  br label %_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_11BddAnalyzerIS5_EEEENS3_11PartitionerIS5_EEEEFvPKNS3_9ParameterEEPSC_SF_EEEEEclEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %.unpack.i.i.i.i.i.i.i.i to ptr
  br label %_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_11BddAnalyzerIS5_EEEENS3_11PartitionerIS5_EEEEFvPKNS3_9ParameterEEPSC_SF_EEEEEclEv.exit

_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_11BddAnalyzerIS5_EEEENS3_11PartitionerIS5_EEEEFvPKNS3_9ParameterEEPSC_SF_EEEEEclEv.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !865
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(840) %i.d, ptr noundef %i.m) #26, !inline_history !1685
  ret void
}

declare void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_11PartitionerIS1_EEE6RunJobERS5_PNS8_3JobE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(5688) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
_ZNSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_.exit.i.i:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::function.227", align 8 ; 7 uses
  %i.l = alloca ptr, align 8                      ; 27 uses
  %4 = alloca %"class.std::function.227", align 8 ; 9 uses
  %5 = alloca %"class.std::mersenne_twister_engine", align 8 ; 19 uses
  %6 = alloca %"class.rrr::AndNetwork", align 8   ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %12 = alloca %"class.rrr::AndNetwork", align 8  ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::vector.269", align 16 ; 9 uses
  %32 = alloca %"class.std::vector.274", align 16 ; 9 uses
  store ptr %2, ptr %i.l, align 8, !tbaa !823
  %i.m = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !530
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.q = load i8, ptr %i.p, align 1, !tbaa !480, !range !316, !noundef !317
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = xor i1 %i.r, true
  tail call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE13AssignNetworkEPS1_b(ptr noundef nonnull align 8 dereferenceable(5688) %1, ptr noundef %i.o, i1 noundef zeroext %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.l, ptr %4, align 8, !tbaa !489
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !532
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_11BddAnalyzerIS9_EEEENS7_11PartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E9_M_invokeERKSt9_Any_dataOS5_, ptr %i.u, align 8, !tbaa !866
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_11BddAnalyzerIS9_EEEENS7_11PartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, ptr %i.t, align 8, !tbaa !212
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
end_hunk_0
begin_hunk_1_@_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEEC2EPKNS_9ParameterESt8functionIFdPS1_EE:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 5488
  store ptr null, ptr %i.bj, align 8, !tbaa !276
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 5496
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !277
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 5504
  store ptr %i.bi, ptr %i.bl, align 8, !tbaa !278
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 5512
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 5576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bm, i8 0, i64 64, i1 false)
  store i32 -1, ptr %i.bn, align 8, !tbaa !1062
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 5584
  store ptr null, ptr %i.bo, align 8, !tbaa !333
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 5592
  store i32 0, ptr %i.bp, align 8, !tbaa !486
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 5600
  store ptr null, ptr %i.bq, align 8, !tbaa !333
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 5608
  store i32 0, ptr %i.br, align 8, !tbaa !486
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 5616
  store ptr null, ptr %i.bs, align 8, !tbaa !546
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 5632 ; 3 uses
  store i32 0, ptr %i.bt, align 8, !tbaa !275
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 5640
  store ptr null, ptr %i.bu, align 8, !tbaa !276
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 5648
  store ptr %i.bt, ptr %i.bv, align 8, !tbaa !277
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 5656
  store ptr %i.bt, ptr %i.bw, align 8, !tbaa !278
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 5664
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bx, i8 0, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNSt17_Function_handlerIFdPN3rrr10AndNetworkEEZNS0_9SchedulerIS1_NS0_9OptimizerIS1_NS0_15BddMspfAnalyzerIS1_EEEENS0_11PartitionerIS1_EEEC1ES2_PKNS0_9ParameterEEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.std::function.35", align 8  ; 9 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !302    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 0, ptr %i.c, align 4, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !219
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !328
  store ptr @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E9_M_invokeERKSt9_Any_dataOi, ptr %i.f, align 8, !tbaa !271
  store ptr @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation, ptr %i.e, align 8, !tbaa !212
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %.sroa.04.07.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !231 ; 3 uses
  %.not8.i.i.i.i = icmp eq ptr %.sroa.04.07.i.i.i.i, %i.g
  br i1 %.not8.i.i.i.i, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.i, ptr %i.a, align 4, !tbaa !220
  br label %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i

thread-pre-split.i.i.i:                           ; preds = %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i, i64 16
  %i.k = load i32, ptr %i.j, align 4, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.k, ptr %i.a, align 4, !tbaa !220
  %.not.i.i.i.i.i.i = icmp eq ptr %.pr2.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i

bb.b:                                             ; preds = %thread-pre-split.i.i.i
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFviEEclEi.exit.i.i.i.i:           ; preds = %thread-pre-split.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.sroa.04.09.i4.i.i.i = phi ptr [ %.sroa.04.07.i.i.i.i, %.lr.ph.i.preheader.i.i.i ], [ %.sroa.04.0.i.i.i.i, %thread-pre-split.i.i.i ]
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !271
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #26, !inline_history !2547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.04.0.i.i.i.i = load ptr, ptr %.sroa.04.09.i4.i.i.i, align 8, !tbaa !231 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.04.0.i.i.i.i, %i.g
  %.pr2.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !212 ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i, label %thread-pre-split.i.i.i

_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i: ; preds = %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i
  %.not.i1.i.i.i = icmp eq ptr %.pr2.i.i.i, null
  br i1 %.not.i1.i.i.i, label %_ZSt10__invoke_rIdRZN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_11PartitionerIS2_EEEC1EPS2_PKNS0_9ParameterEEUlSA_E_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i

_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i: ; preds = %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i, %bb.a
  %i.m = phi ptr [ %.pr2.i.i.i, %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i ], [ @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation, %bb.a ]
  %i.n = call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #26, !inline_history !2548 ; 0 uses
  br label %_ZSt10__invoke_rIdRZN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_11PartitionerIS2_EEEC1EPS2_PKNS0_9ParameterEEUlSA_E_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit

_ZSt10__invoke_rIdRZN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_11PartitionerIS2_EEEC1EPS2_PKNS0_9ParameterEEUlSA_E_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit: ; preds = %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i, %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.o = load i32, ptr %i.c, align 4, !tbaa !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = sitofp i32 %i.o to double
  ret double %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFdPN3rrr10AndNetworkEEZNS0_9SchedulerIS1_NS0_9OptimizerIS1_NS0_15BddMspfAnalyzerIS1_EEEENS0_11PartitionerIS1_EEEC1ES2_PKNS0_9ParameterEEUlS2_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEEC1EPS1_PKNS_9ParameterEEUlS9_E_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !303
  br label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E9_M_invokeERKSt9_Any_dataOi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !220
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2550, !nonnull !317, !align !412
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !302
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.f = sext i32 %i.a to i64
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !228
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !224
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !223
  %i.j = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.k = ptrtoint ptr %.val.i.i.i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 2
  %i.n = trunc i64 %i.m to i32
  %i.o = load ptr, ptr %0, align 8, !tbaa !2551, !nonnull !317, !align !415 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !220
  %i.q = add i32 %i.p, -1
  %i.r = add i32 %i.q, %i.n
  store i32 %i.r, ptr %i.o, align 4, !tbaa !220
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEEC1EPS1_PKNS_9ParameterEENKUlS9_E_clES9_EUliE_, ptr %0, align 8, !tbaa !414
  br label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !303
  br label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !864
  br label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJSt5_BindIFMN3rrr9SchedulerINS5_10AndNetworkENS5_9OptimizerIS7_NS5_15BddMspfAnalyzerIS7_EEEENS5_11PartitionerIS7_EEEEFvPKNS5_9ParameterEEPSE_SH_EEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !498  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !497    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 0, ptr %i.q, align 8, !tbaa !510
  %i.r = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS4_10AndNetworkENS4_9OptimizerIS6_NS4_15BddMspfAnalyzerIS6_EEEENS4_11PartitionerIS6_EEEEFvPKNS4_9ParameterEEPSD_SG_EEEEEEEE, i64 16), ptr %i.r, align 8, !tbaa !340
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load <2 x i64>, ptr %2, align 8, !tbaa !588
  store <2 x i64> %i.t, ptr %i.s, align 8, !tbaa !588
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load <2 x i64>, ptr %i.v, align 8, !tbaa !303
  store <2 x i64> %i.w, ptr %i.u, align 8, !tbaa !303
  store ptr %i.r, ptr %3, align 8, !tbaa !512
  call void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %3, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv) #26
  %i.x = load ptr, ptr %3, align 8, !tbaa !512    ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_15BddMspfAnalyzerIS4_EEEENS2_11PartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !340
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #26, !inline_history !2552
  br label %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_15BddMspfAnalyzerIS4_EEEENS2_11PartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit

_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_15BddMspfAnalyzerIS4_EEEENS2_11PartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit: ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_15BddMspfAnalyzerIS4_EEEENS2_11PartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_15BddMspfAnalyzerIS4_EEEENS2_11PartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_15BddMspfAnalyzerIS4_EEEENS2_11PartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2559)
  call void @llvm.experimental.noalias.scope.decl(metadata !2560)
  %i.ab = load i64, ptr %.0911.i.i.i, align 8, !tbaa !334, !alias.scope !2560, !noalias !2559
  store i64 %i.ab, ptr %.012.i.i.i, align 8, !tbaa !334, !alias.scope !2559, !noalias !2560
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !334, !alias.scope !2560, !noalias !2559
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !27

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_15BddMspfAnalyzerIS4_EEEENS2_11PartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_15BddMspfAnalyzerIS4_EEEENS2_11PartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit ], [ %i.ad, %.lr.ph.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ae, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2561)
  call void @llvm.experimental.noalias.scope.decl(metadata !2562)
  %i.af = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !334, !alias.scope !2562, !noalias !2561
  store i64 %i.af, ptr %.012.i.i.i18, align 8, !tbaa !334, !alias.scope !2561, !noalias !2562
  store i64 0, ptr %.0911.i.i.i19, align 8, !tbaa !334, !alias.scope !2562, !noalias !2561
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !27

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ae, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !496
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #28
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !497
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !498
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !496
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS4_10AndNetworkENS4_9OptimizerIS6_NS4_15BddMspfAnalyzerIS6_EEEENS4_11PartitionerIS6_EEEEFvPKNS4_9ParameterEEPSD_SG_EEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS4_10AndNetworkENS4_9OptimizerIS6_NS4_15BddMspfAnalyzerIS6_EEEENS4_11PartitionerIS6_EEEEFvPKNS4_9ParameterEEPSD_SG_EEEEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !595
  %.unpack.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !206 ; 3 uses
  %.elt3.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.unpack4.i.i.i.i.i.i.i.i = load i64, ptr %.elt3.i.i.i.i.i.i.i.i, align 8, !tbaa !206
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.unpack4.i.i.i.i.i.i.i.i ; 2 uses
  %i.e = and i64 %.unpack.i.i.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !340
  %i.g = getelementptr i8, ptr %i.f, i64 %.unpack.i.i.i.i.i.i.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load ptr, ptr %i.h, align 8, !nosanitize !317
  br label %_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_15BddMspfAnalyzerIS5_EEEENS3_11PartitionerIS5_EEEEFvPKNS3_9ParameterEEPSC_SF_EEEEEclEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %.unpack.i.i.i.i.i.i.i.i to ptr
  br label %_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_15BddMspfAnalyzerIS5_EEEENS3_11PartitionerIS5_EEEEFvPKNS3_9ParameterEEPSC_SF_EEEEEclEv.exit

_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_15BddMspfAnalyzerIS5_EEEENS3_11PartitionerIS5_EEEEFvPKNS3_9ParameterEEPSC_SF_EEEEEclEv.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !865
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(840) %i.d, ptr noundef %i.m) #26, !inline_history !2563
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_11PartitionerIS1_EEE6RunJobERS5_PNS8_3JobE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(5720) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
_ZNSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_.exit.i.i:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::function.227", align 8 ; 7 uses
  %i.l = alloca ptr, align 8                      ; 27 uses
  %4 = alloca %"class.std::function.227", align 8 ; 9 uses
  %5 = alloca %"class.std::mersenne_twister_engine", align 8 ; 19 uses
  %6 = alloca %"class.rrr::AndNetwork", align 8   ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %12 = alloca %"class.rrr::AndNetwork", align 8  ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::vector.269", align 16 ; 9 uses
  %32 = alloca %"class.std::vector.274", align 16 ; 9 uses
  store ptr %2, ptr %i.l, align 8, !tbaa !1039
  %i.m = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !593
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.q = load i8, ptr %i.p, align 1, !tbaa !569, !range !316, !noundef !317
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = xor i1 %i.r, true
  tail call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE13AssignNetworkEPS1_b(ptr noundef nonnull align 8 dereferenceable(5720) %1, ptr noundef %i.o, i1 noundef zeroext %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.l, ptr %4, align 8, !tbaa !576
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !595
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_15BddMspfAnalyzerIS9_EEEENS7_11PartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E9_M_invokeERKSt9_Any_dataOS5_, ptr %i.u, align 8, !tbaa !866
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_15BddMspfAnalyzerIS9_EEEENS7_11PartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, ptr %i.t, align 8, !tbaa !212
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 16, i1 false), !tbaa.struct !416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.z = load <2 x ptr>, ptr %i.x, align 8, !tbaa !303
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !303 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_15BddMspfAnalyzerIS9_EEEENS7_11PartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, ptr %i.x, align 8, !tbaa !303
  store <2 x ptr> %i.z, ptr %i.w, align 8, !tbaa !303
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_15BddMspfAnalyzerIS9_EEEENS7_11PartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E9_M_invokeERKSt9_Any_dataOS5_, ptr %i.y, align 8, !tbaa !303
end_hunk_1
begin_hunk_2_@_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEC2EPKNS_9ParameterESt8functionIFdPS1_EE:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 5616
  store ptr null, ptr %i.bj, align 8, !tbaa !276
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 5624
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !277
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 5632
  store ptr %i.bi, ptr %i.bl, align 8, !tbaa !278
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 5640
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 5704
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bm, i8 0, i64 64, i1 false)
  store i32 -1, ptr %i.bn, align 8, !tbaa !1177
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 5712
  store ptr null, ptr %i.bo, align 8, !tbaa !333
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 5720
  store i32 0, ptr %i.bp, align 8, !tbaa !486
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 5728
  store ptr null, ptr %i.bq, align 8, !tbaa !333
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 5736
  store i32 0, ptr %i.br, align 8, !tbaa !486
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 5744
  store ptr null, ptr %i.bs, align 8, !tbaa !546
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 5760 ; 3 uses
  store i32 0, ptr %i.bt, align 8, !tbaa !275
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 5768
  store ptr null, ptr %i.bu, align 8, !tbaa !276
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 5776
  store ptr %i.bt, ptr %i.bv, align 8, !tbaa !277
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 5784
  store ptr %i.bt, ptr %i.bw, align 8, !tbaa !278
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 5792
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bx, i8 0, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNSt17_Function_handlerIFdPN3rrr10AndNetworkEEZNS0_9SchedulerIS1_NS0_9OptimizerIS1_NS0_8AnalyzerIS1_NS0_9SimulatorIS1_EENS0_9SatSolverIS1_EEEEEENS0_11PartitionerIS1_EEEC1ES2_PKNS0_9ParameterEEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.std::function.35", align 8  ; 9 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !302    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 0, ptr %i.c, align 4, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !219
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !328
  store ptr @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSF_E_clESF_EUliE_E9_M_invokeERKSt9_Any_dataOi, ptr %i.f, align 8, !tbaa !271
  store ptr @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSF_E_clESF_EUliE_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, ptr %i.e, align 8, !tbaa !212
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %.sroa.04.07.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !231 ; 3 uses
  %.not8.i.i.i.i = icmp eq ptr %.sroa.04.07.i.i.i.i, %i.g
  br i1 %.not8.i.i.i.i, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.i, ptr %i.a, align 4, !tbaa !220
  br label %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i

thread-pre-split.i.i.i:                           ; preds = %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i, i64 16
  %i.k = load i32, ptr %i.j, align 4, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.k, ptr %i.a, align 4, !tbaa !220
  %.not.i.i.i.i.i.i = icmp eq ptr %.pr2.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i

bb.b:                                             ; preds = %thread-pre-split.i.i.i
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFviEEclEi.exit.i.i.i.i:           ; preds = %thread-pre-split.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.sroa.04.09.i4.i.i.i = phi ptr [ %.sroa.04.07.i.i.i.i, %.lr.ph.i.preheader.i.i.i ], [ %.sroa.04.0.i.i.i.i, %thread-pre-split.i.i.i ]
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !271
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #26, !inline_history !3140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.04.0.i.i.i.i = load ptr, ptr %.sroa.04.09.i4.i.i.i, align 8, !tbaa !231 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.04.0.i.i.i.i, %i.g
  %.pr2.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !212 ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i, label %thread-pre-split.i.i.i

_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i: ; preds = %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i
  %.not.i1.i.i.i = icmp eq ptr %.pr2.i.i.i, null
  br i1 %.not.i1.i.i.i, label %_ZSt10__invoke_rIdRZN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_11PartitionerIS2_EEEC1EPS2_PKNS0_9ParameterEEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i

_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i: ; preds = %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i, %bb.a
  %i.m = phi ptr [ %.pr2.i.i.i, %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i ], [ @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSF_E_clESF_EUliE_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, %bb.a ]
  %i.n = call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #26, !inline_history !3141 ; 0 uses
  br label %_ZSt10__invoke_rIdRZN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_11PartitionerIS2_EEEC1EPS2_PKNS0_9ParameterEEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit

_ZSt10__invoke_rIdRZN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_11PartitionerIS2_EEEC1EPS2_PKNS0_9ParameterEEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit: ; preds = %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i, %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.o = load i32, ptr %i.c, align 4, !tbaa !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = sitofp i32 %i.o to double
  ret double %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFdPN3rrr10AndNetworkEEZNS0_9SchedulerIS1_NS0_9OptimizerIS1_NS0_8AnalyzerIS1_NS0_9SimulatorIS1_EENS0_9SatSolverIS1_EEEEEENS0_11PartitionerIS1_EEEC1ES2_PKNS0_9ParameterEEUlS2_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSF_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSF_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSF_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSF_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEEC1EPS1_PKNS_9ParameterEEUlSD_E_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !303
  br label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSF_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSF_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSF_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSF_E_clESF_EUliE_E9_M_invokeERKSt9_Any_dataOi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !220
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3143, !nonnull !317, !align !412
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !302
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.f = sext i32 %i.a to i64
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !228
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !224
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !223
  %i.j = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.k = ptrtoint ptr %.val.i.i.i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 2
  %i.n = trunc i64 %i.m to i32
  %i.o = load ptr, ptr %0, align 8, !tbaa !3144, !nonnull !317, !align !415 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !220
  %i.q = add i32 %i.p, -1
  %i.r = add i32 %i.q, %i.n
  store i32 %i.r, ptr %i.o, align 4, !tbaa !220
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSF_E_clESF_EUliE_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSF_E_clESF_EUliE_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEEC1EPS1_PKNS_9ParameterEENKUlSD_E_clESD_EUliE_, ptr %0, align 8, !tbaa !414
  br label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSF_E_clESF_EUliE_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !303
  br label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSF_E_clESF_EUliE_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !864
  br label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSF_E_clESF_EUliE_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_11PartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSF_E_clESF_EUliE_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJSt5_BindIFMN3rrr9SchedulerINS5_10AndNetworkENS5_9OptimizerIS7_NS5_8AnalyzerIS7_NS5_9SimulatorIS7_EENS5_9SatSolverIS7_EEEEEENS5_11PartitionerIS7_EEEEFvPKNS5_9ParameterEEPSI_SL_EEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !498  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !497    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 0, ptr %i.q, align 8, !tbaa !510
  %i.r = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS4_10AndNetworkENS4_9OptimizerIS6_NS4_8AnalyzerIS6_NS4_9SimulatorIS6_EENS4_9SatSolverIS6_EEEEEENS4_11PartitionerIS6_EEEEFvPKNS4_9ParameterEEPSH_SK_EEEEEEEE, i64 16), ptr %i.r, align 8, !tbaa !340
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load <2 x i64>, ptr %2, align 8, !tbaa !643
  store <2 x i64> %i.t, ptr %i.s, align 8, !tbaa !643
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load <2 x i64>, ptr %i.v, align 8, !tbaa !303
  store <2 x i64> %i.w, ptr %i.u, align 8, !tbaa !303
  store ptr %i.r, ptr %3, align 8, !tbaa !512
  call void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %3, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv) #26
  %i.x = load ptr, ptr %3, align 8, !tbaa !512    ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_8AnalyzerIS4_NS2_9SimulatorIS4_EENS2_9SatSolverIS4_EEEEEENS2_11PartitionerIS4_EEEEFvPKNS2_9ParameterEEPSF_SI_EEJEvEEOT_DpOT0_.exit, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !340
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #26, !inline_history !3145
  br label %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_8AnalyzerIS4_NS2_9SimulatorIS4_EENS2_9SatSolverIS4_EEEEEENS2_11PartitionerIS4_EEEEFvPKNS2_9ParameterEEPSF_SI_EEJEvEEOT_DpOT0_.exit

_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_8AnalyzerIS4_NS2_9SimulatorIS4_EENS2_9SatSolverIS4_EEEEEENS2_11PartitionerIS4_EEEEFvPKNS2_9ParameterEEPSF_SI_EEJEvEEOT_DpOT0_.exit: ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_8AnalyzerIS4_NS2_9SimulatorIS4_EENS2_9SatSolverIS4_EEEEEENS2_11PartitionerIS4_EEEEFvPKNS2_9ParameterEEPSF_SI_EEJEvEEOT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_8AnalyzerIS4_NS2_9SimulatorIS4_EENS2_9SatSolverIS4_EEEEEENS2_11PartitionerIS4_EEEEFvPKNS2_9ParameterEEPSF_SI_EEJEvEEOT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_8AnalyzerIS4_NS2_9SimulatorIS4_EENS2_9SatSolverIS4_EEEEEENS2_11PartitionerIS4_EEEEFvPKNS2_9ParameterEEPSF_SI_EEJEvEEOT_DpOT0_.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3152)
  call void @llvm.experimental.noalias.scope.decl(metadata !3153)
  %i.ab = load i64, ptr %.0911.i.i.i, align 8, !tbaa !334, !alias.scope !3153, !noalias !3152
  store i64 %i.ab, ptr %.012.i.i.i, align 8, !tbaa !334, !alias.scope !3152, !noalias !3153
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !334, !alias.scope !3153, !noalias !3152
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !27

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_8AnalyzerIS4_NS2_9SimulatorIS4_EENS2_9SatSolverIS4_EEEEEENS2_11PartitionerIS4_EEEEFvPKNS2_9ParameterEEPSF_SI_EEJEvEEOT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_8AnalyzerIS4_NS2_9SimulatorIS4_EENS2_9SatSolverIS4_EEEEEENS2_11PartitionerIS4_EEEEFvPKNS2_9ParameterEEPSF_SI_EEJEvEEOT_DpOT0_.exit ], [ %i.ad, %.lr.ph.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ae, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3154)
  call void @llvm.experimental.noalias.scope.decl(metadata !3155)
  %i.af = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !334, !alias.scope !3155, !noalias !3154
  store i64 %i.af, ptr %.012.i.i.i18, align 8, !tbaa !334, !alias.scope !3154, !noalias !3155
  store i64 0, ptr %.0911.i.i.i19, align 8, !tbaa !334, !alias.scope !3155, !noalias !3154
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !27

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ae, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !496
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #28
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !497
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !498
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !496
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS4_10AndNetworkENS4_9OptimizerIS6_NS4_8AnalyzerIS6_NS4_9SimulatorIS6_EENS4_9SatSolverIS6_EEEEEENS4_11PartitionerIS6_EEEEFvPKNS4_9ParameterEEPSH_SK_EEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS4_10AndNetworkENS4_9OptimizerIS6_NS4_8AnalyzerIS6_NS4_9SimulatorIS6_EENS4_9SatSolverIS6_EEEEEENS4_11PartitionerIS6_EEEEFvPKNS4_9ParameterEEPSH_SK_EEEEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !650
  %.unpack.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !206 ; 3 uses
  %.elt3.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.unpack4.i.i.i.i.i.i.i.i = load i64, ptr %.elt3.i.i.i.i.i.i.i.i, align 8, !tbaa !206
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.unpack4.i.i.i.i.i.i.i.i ; 2 uses
  %i.e = and i64 %.unpack.i.i.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !340
  %i.g = getelementptr i8, ptr %i.f, i64 %.unpack.i.i.i.i.i.i.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load ptr, ptr %i.h, align 8, !nosanitize !317
  br label %_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_8AnalyzerIS5_NS3_9SimulatorIS5_EENS3_9SatSolverIS5_EEEEEENS3_11PartitionerIS5_EEEEFvPKNS3_9ParameterEEPSG_SJ_EEEEEclEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %.unpack.i.i.i.i.i.i.i.i to ptr
  br label %_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_8AnalyzerIS5_NS3_9SimulatorIS5_EENS3_9SatSolverIS5_EEEEEENS3_11PartitionerIS5_EEEEFvPKNS3_9ParameterEEPSG_SJ_EEEEEclEv.exit

_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_8AnalyzerIS5_NS3_9SimulatorIS5_EENS3_9SatSolverIS5_EEEEEENS3_11PartitionerIS5_EEEEFvPKNS3_9ParameterEEPSG_SJ_EEEEEclEv.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !865
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(840) %i.d, ptr noundef %i.m) #26, !inline_history !3156
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_11PartitionerIS1_EEE6RunJobERS9_PNSC_3JobE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(5848) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
_ZNSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_.exit.i.i:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::function.227", align 8 ; 7 uses
  %i.l = alloca ptr, align 8                      ; 27 uses
  %4 = alloca %"class.std::function.227", align 8 ; 9 uses
  %5 = alloca %"class.std::mersenne_twister_engine", align 8 ; 19 uses
  %6 = alloca %"class.rrr::AndNetwork", align 8   ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %12 = alloca %"class.rrr::AndNetwork", align 8  ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::vector.269", align 16 ; 9 uses
  %32 = alloca %"class.std::vector.274", align 16 ; 9 uses
  store ptr %2, ptr %i.l, align 8, !tbaa !1137
  %i.m = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !648
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.q = load i8, ptr %i.p, align 1, !tbaa !624, !range !316, !noundef !317
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = xor i1 %i.r, true
  tail call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE13AssignNetworkEPS1_b(ptr noundef nonnull align 8 dereferenceable(5848) %1, ptr noundef %i.o, i1 noundef zeroext %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.l, ptr %4, align 8, !tbaa !631
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !650
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_8AnalyzerIS9_NS7_9SimulatorIS9_EENS7_9SatSolverIS9_EEEEEENS7_11PartitionerIS9_EEE6RunJobERSH_PNSK_3JobEEUlS5_E_E9_M_invokeERKSt9_Any_dataOS5_, ptr %i.u, align 8, !tbaa !866
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_8AnalyzerIS9_NS7_9SimulatorIS9_EENS7_9SatSolverIS9_EEEEEENS7_11PartitionerIS9_EEE6RunJobERSH_PNSK_3JobEEUlS5_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation, ptr %i.t, align 8, !tbaa !212
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 16, i1 false), !tbaa.struct !416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.z = load <2 x ptr>, ptr %i.x, align 8, !tbaa !303
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !303 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_8AnalyzerIS9_NS7_9SimulatorIS9_EENS7_9SatSolverIS9_EEEEEENS7_11PartitionerIS9_EEE6RunJobERSH_PNSK_3JobEEUlS5_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation, ptr %i.x, align 8, !tbaa !303
  store <2 x ptr> %i.z, ptr %i.w, align 8, !tbaa !303
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_8AnalyzerIS9_NS7_9SimulatorIS9_EENS7_9SatSolverIS9_EEEEEENS7_11PartitionerIS9_EEE6RunJobERSH_PNSK_3JobEEUlS5_E_E9_M_invokeERKSt9_Any_dataOS5_, ptr %i.y, align 8, !tbaa !303
end_hunk_2
begin_hunk_3_@_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE6ThreadEPKNS_9ParameterE:bb.a
  br i1 %i.at, label %.critedge5.thread, label %bb.l

.critedge5.thread:                                ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %.critedge5
  %i.au = load ptr, ptr %4, align 8, !tbaa !826   ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.au, null
  br i1 %.not.i.i13, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.critedge5.thread
  %i.av = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.au) #26 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  call void @_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEE3JobESt6vectorISB_SaISB_EENS9_18CompareJobPointersEE4pushERKSB_(ptr noundef nonnull align 8 dereferenceable(25) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.w) #26
  %i.aw = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr null, ptr %i.a, align 8, !tbaa !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.k, ptr %4, align 8, !tbaa !826
  store i8 0, ptr %i.l, align 8, !tbaa !827
  %i.ax = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %._crit_edge

bb.l:                                             ; preds = %bb.j, %.critedge5.thread, %.critedge5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(5688) dereferenceable(5688) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNSt17_Function_handlerIFdPN3rrr10AndNetworkEEZNS0_9SchedulerIS1_NS0_9OptimizerIS1_NS0_11BddAnalyzerIS1_EEEENS0_20LevelBasePartitionerIS1_EEEC1ES2_PKNS0_9ParameterEEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.std::function.35", align 8  ; 9 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !302    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 0, ptr %i.c, align 4, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !219
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !328
  store ptr @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E9_M_invokeERKSt9_Any_dataOi, ptr %i.f, align 8, !tbaa !271
  store ptr @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation, ptr %i.e, align 8, !tbaa !212
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %.sroa.04.07.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !231 ; 3 uses
  %.not8.i.i.i.i = icmp eq ptr %.sroa.04.07.i.i.i.i, %i.g
  br i1 %.not8.i.i.i.i, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.i, ptr %i.a, align 4, !tbaa !220
  br label %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i

thread-pre-split.i.i.i:                           ; preds = %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i, i64 16
  %i.k = load i32, ptr %i.j, align 4, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.k, ptr %i.a, align 4, !tbaa !220
  %.not.i.i.i.i.i.i = icmp eq ptr %.pr2.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i

bb.b:                                             ; preds = %thread-pre-split.i.i.i
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFviEEclEi.exit.i.i.i.i:           ; preds = %thread-pre-split.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.sroa.04.09.i4.i.i.i = phi ptr [ %.sroa.04.07.i.i.i.i, %.lr.ph.i.preheader.i.i.i ], [ %.sroa.04.0.i.i.i.i, %thread-pre-split.i.i.i ]
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !271
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #26, !inline_history !3998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.04.0.i.i.i.i = load ptr, ptr %.sroa.04.09.i4.i.i.i, align 8, !tbaa !231 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.04.0.i.i.i.i, %i.g
  %.pr2.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !212 ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i, label %thread-pre-split.i.i.i

_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i: ; preds = %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i
  %.not.i1.i.i.i = icmp eq ptr %.pr2.i.i.i, null
  br i1 %.not.i1.i.i.i, label %_ZSt10__invoke_rIdRZN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEEC1EPS2_PKNS0_9ParameterEEUlSA_E_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i

_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i: ; preds = %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i, %bb.a
  %i.m = phi ptr [ %.pr2.i.i.i, %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i ], [ @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation, %bb.a ]
  %i.n = call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #26, !inline_history !3999 ; 0 uses
  br label %_ZSt10__invoke_rIdRZN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEEC1EPS2_PKNS0_9ParameterEEUlSA_E_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit

_ZSt10__invoke_rIdRZN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_11BddAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEEC1EPS2_PKNS0_9ParameterEEUlSA_E_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit: ; preds = %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i, %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.o = load i32, ptr %i.c, align 4, !tbaa !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = sitofp i32 %i.o to double
  ret double %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFdPN3rrr10AndNetworkEEZNS0_9SchedulerIS1_NS0_9OptimizerIS1_NS0_11BddAnalyzerIS1_EEEENS0_20LevelBasePartitionerIS1_EEEC1ES2_PKNS0_9ParameterEEUlS2_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEEC1EPS1_PKNS_9ParameterEEUlS9_E_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !303
  br label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E9_M_invokeERKSt9_Any_dataOi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !220
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4001, !nonnull !317, !align !412
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !302
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.f = sext i32 %i.a to i64
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !228
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !224
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !223
  %i.j = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.k = ptrtoint ptr %.val.i.i.i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 2
  %i.n = trunc i64 %i.m to i32
  %i.o = load ptr, ptr %0, align 8, !tbaa !4002, !nonnull !317, !align !415 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !220
  %i.q = add i32 %i.p, -1
  %i.r = add i32 %i.q, %i.n
  store i32 %i.r, ptr %i.o, align 4, !tbaa !220
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEEC1EPS1_PKNS_9ParameterEENKUlS9_E_clES9_EUliE_, ptr %0, align 8, !tbaa !414
  br label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !303
  br label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !864
  br label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_11BddAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJSt5_BindIFMN3rrr9SchedulerINS5_10AndNetworkENS5_9OptimizerIS7_NS5_11BddAnalyzerIS7_EEEENS5_20LevelBasePartitionerIS7_EEEEFvPKNS5_9ParameterEEPSE_SH_EEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !498  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !497    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 0, ptr %i.q, align 8, !tbaa !510
  %i.r = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS4_10AndNetworkENS4_9OptimizerIS6_NS4_11BddAnalyzerIS6_EEEENS4_20LevelBasePartitionerIS6_EEEEFvPKNS4_9ParameterEEPSD_SG_EEEEEEEE, i64 16), ptr %i.r, align 8, !tbaa !340
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load <2 x i64>, ptr %2, align 8, !tbaa !699
  store <2 x i64> %i.t, ptr %i.s, align 8, !tbaa !699
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load <2 x i64>, ptr %i.v, align 8, !tbaa !303
  store <2 x i64> %i.w, ptr %i.u, align 8, !tbaa !303
  store ptr %i.r, ptr %3, align 8, !tbaa !512
  call void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %3, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv) #26
  %i.x = load ptr, ptr %3, align 8, !tbaa !512    ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_11BddAnalyzerIS4_EEEENS2_20LevelBasePartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !340
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #26, !inline_history !4003
  br label %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_11BddAnalyzerIS4_EEEENS2_20LevelBasePartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit

_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_11BddAnalyzerIS4_EEEENS2_20LevelBasePartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit: ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_11BddAnalyzerIS4_EEEENS2_20LevelBasePartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_11BddAnalyzerIS4_EEEENS2_20LevelBasePartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_11BddAnalyzerIS4_EEEENS2_20LevelBasePartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4010)
  call void @llvm.experimental.noalias.scope.decl(metadata !4011)
  %i.ab = load i64, ptr %.0911.i.i.i, align 8, !tbaa !334, !alias.scope !4011, !noalias !4010
  store i64 %i.ab, ptr %.012.i.i.i, align 8, !tbaa !334, !alias.scope !4010, !noalias !4011
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !334, !alias.scope !4011, !noalias !4010
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !27

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_11BddAnalyzerIS4_EEEENS2_20LevelBasePartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_11BddAnalyzerIS4_EEEENS2_20LevelBasePartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit ], [ %i.ad, %.lr.ph.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ae, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4012)
  call void @llvm.experimental.noalias.scope.decl(metadata !4013)
  %i.af = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !334, !alias.scope !4013, !noalias !4012
  store i64 %i.af, ptr %.012.i.i.i18, align 8, !tbaa !334, !alias.scope !4012, !noalias !4013
  store i64 0, ptr %.0911.i.i.i19, align 8, !tbaa !334, !alias.scope !4013, !noalias !4012
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !27

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ae, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !496
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #28
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !497
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !498
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !496
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS4_10AndNetworkENS4_9OptimizerIS6_NS4_11BddAnalyzerIS6_EEEENS4_20LevelBasePartitionerIS6_EEEEFvPKNS4_9ParameterEEPSD_SG_EEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS4_10AndNetworkENS4_9OptimizerIS6_NS4_11BddAnalyzerIS6_EEEENS4_20LevelBasePartitionerIS6_EEEEFvPKNS4_9ParameterEEPSD_SG_EEEEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !707
  %.unpack.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !206 ; 3 uses
  %.elt3.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.unpack4.i.i.i.i.i.i.i.i = load i64, ptr %.elt3.i.i.i.i.i.i.i.i, align 8, !tbaa !206
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.unpack4.i.i.i.i.i.i.i.i ; 2 uses
  %i.e = and i64 %.unpack.i.i.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !340
  %i.g = getelementptr i8, ptr %i.f, i64 %.unpack.i.i.i.i.i.i.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load ptr, ptr %i.h, align 8, !nosanitize !317
  br label %_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_11BddAnalyzerIS5_EEEENS3_20LevelBasePartitionerIS5_EEEEFvPKNS3_9ParameterEEPSC_SF_EEEEEclEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %.unpack.i.i.i.i.i.i.i.i to ptr
  br label %_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_11BddAnalyzerIS5_EEEENS3_20LevelBasePartitionerIS5_EEEEFvPKNS3_9ParameterEEPSC_SF_EEEEEclEv.exit

_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_11BddAnalyzerIS5_EEEENS3_20LevelBasePartitionerIS5_EEEEFvPKNS3_9ParameterEEPSC_SF_EEEEEclEv.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !865
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(872) %i.d, ptr noundef %i.m) #26, !inline_history !4014
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_11BddAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE6RunJobERS5_PNS8_3JobE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(5688) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
_ZNSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_.exit.i.i:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::function.227", align 8 ; 7 uses
  %i.l = alloca ptr, align 8                      ; 27 uses
  %4 = alloca %"class.std::function.227", align 8 ; 9 uses
  %5 = alloca %"class.std::mersenne_twister_engine", align 8 ; 19 uses
  %6 = alloca %"class.rrr::AndNetwork", align 8   ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %12 = alloca %"class.rrr::AndNetwork", align 8  ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::vector.269", align 16 ; 9 uses
  %32 = alloca %"class.std::vector.274", align 16 ; 9 uses
  store ptr %2, ptr %i.l, align 8, !tbaa !1312
  %i.m = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !705
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.q = load i8, ptr %i.p, align 1, !tbaa !679, !range !316, !noundef !317
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = xor i1 %i.r, true
  tail call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE13AssignNetworkEPS1_b(ptr noundef nonnull align 8 dereferenceable(5688) %1, ptr noundef %i.o, i1 noundef zeroext %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.l, ptr %4, align 8, !tbaa !687
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !707
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_11BddAnalyzerIS9_EEEENS7_20LevelBasePartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E9_M_invokeERKSt9_Any_dataOS5_, ptr %i.u, align 8, !tbaa !866
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_11BddAnalyzerIS9_EEEENS7_20LevelBasePartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, ptr %i.t, align 8, !tbaa !212
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 16, i1 false), !tbaa.struct !416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.z = load <2 x ptr>, ptr %i.x, align 8, !tbaa !303
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !303 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_11BddAnalyzerIS9_EEEENS7_20LevelBasePartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, ptr %i.x, align 8, !tbaa !303
  store <2 x ptr> %i.z, ptr %i.w, align 8, !tbaa !303
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_11BddAnalyzerIS9_EEEENS7_20LevelBasePartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E9_M_invokeERKSt9_Any_dataOS5_, ptr %i.y, align 8, !tbaa !303
end_hunk_3
begin_hunk_4_@_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE6ThreadEPKNS_9ParameterE:bb.a
  br i1 %i.at, label %.critedge5.thread, label %bb.l

.critedge5.thread:                                ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %.critedge5
  %i.au = load ptr, ptr %4, align 8, !tbaa !826   ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.au, null
  br i1 %.not.i.i13, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.critedge5.thread
  %i.av = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.au) #26 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  call void @_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEE3JobESt6vectorISB_SaISB_EENS9_18CompareJobPointersEE4pushERKSB_(ptr noundef nonnull align 8 dereferenceable(25) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.w) #26
  %i.aw = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr null, ptr %i.a, align 8, !tbaa !1325
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.k, ptr %4, align 8, !tbaa !826
  store i8 0, ptr %i.l, align 8, !tbaa !827
  %i.ax = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %._crit_edge

bb.l:                                             ; preds = %bb.j, %.critedge5.thread, %.critedge5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(5720) dereferenceable(5720) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNSt17_Function_handlerIFdPN3rrr10AndNetworkEEZNS0_9SchedulerIS1_NS0_9OptimizerIS1_NS0_15BddMspfAnalyzerIS1_EEEENS0_20LevelBasePartitionerIS1_EEEC1ES2_PKNS0_9ParameterEEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.std::function.35", align 8  ; 9 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !302    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 0, ptr %i.c, align 4, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !219
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !328
  store ptr @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E9_M_invokeERKSt9_Any_dataOi, ptr %i.f, align 8, !tbaa !271
  store ptr @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation, ptr %i.e, align 8, !tbaa !212
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %.sroa.04.07.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !231 ; 3 uses
  %.not8.i.i.i.i = icmp eq ptr %.sroa.04.07.i.i.i.i, %i.g
  br i1 %.not8.i.i.i.i, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.i, ptr %i.a, align 4, !tbaa !220
  br label %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i

thread-pre-split.i.i.i:                           ; preds = %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i, i64 16
  %i.k = load i32, ptr %i.j, align 4, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.k, ptr %i.a, align 4, !tbaa !220
  %.not.i.i.i.i.i.i = icmp eq ptr %.pr2.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i

bb.b:                                             ; preds = %thread-pre-split.i.i.i
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFviEEclEi.exit.i.i.i.i:           ; preds = %thread-pre-split.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.sroa.04.09.i4.i.i.i = phi ptr [ %.sroa.04.07.i.i.i.i, %.lr.ph.i.preheader.i.i.i ], [ %.sroa.04.0.i.i.i.i, %thread-pre-split.i.i.i ]
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !271
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #26, !inline_history !4154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.04.0.i.i.i.i = load ptr, ptr %.sroa.04.09.i4.i.i.i, align 8, !tbaa !231 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.04.0.i.i.i.i, %i.g
  %.pr2.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !212 ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i, label %thread-pre-split.i.i.i

_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i: ; preds = %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i
  %.not.i1.i.i.i = icmp eq ptr %.pr2.i.i.i, null
  br i1 %.not.i1.i.i.i, label %_ZSt10__invoke_rIdRZN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEEC1EPS2_PKNS0_9ParameterEEUlSA_E_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i

_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i: ; preds = %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i, %bb.a
  %i.m = phi ptr [ %.pr2.i.i.i, %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i ], [ @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation, %bb.a ]
  %i.n = call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #26, !inline_history !4155 ; 0 uses
  br label %_ZSt10__invoke_rIdRZN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEEC1EPS2_PKNS0_9ParameterEEUlSA_E_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit

_ZSt10__invoke_rIdRZN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_15BddMspfAnalyzerIS2_EEEENS0_20LevelBasePartitionerIS2_EEEC1EPS2_PKNS0_9ParameterEEUlSA_E_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit: ; preds = %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i, %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.o = load i32, ptr %i.c, align 4, !tbaa !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = sitofp i32 %i.o to double
  ret double %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFdPN3rrr10AndNetworkEEZNS0_9SchedulerIS1_NS0_9OptimizerIS1_NS0_15BddMspfAnalyzerIS1_EEEENS0_20LevelBasePartitionerIS1_EEEC1ES2_PKNS0_9ParameterEEUlS2_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEEC1EPS1_PKNS_9ParameterEEUlS9_E_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !303
  br label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSB_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E9_M_invokeERKSt9_Any_dataOi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !220
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4157, !nonnull !317, !align !412
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !302
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.f = sext i32 %i.a to i64
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !228
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !224
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !223
  %i.j = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.k = ptrtoint ptr %.val.i.i.i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 2
  %i.n = trunc i64 %i.m to i32
  %i.o = load ptr, ptr %0, align 8, !tbaa !4158, !nonnull !317, !align !415 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !220
  %i.q = add i32 %i.p, -1
  %i.r = add i32 %i.q, %i.n
  store i32 %i.r, ptr %i.o, align 4, !tbaa !220
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEEC1EPS1_PKNS_9ParameterEENKUlS9_E_clES9_EUliE_, ptr %0, align 8, !tbaa !414
  br label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !303
  br label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !864
  br label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_15BddMspfAnalyzerIS3_EEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSB_E_clESB_EUliE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJSt5_BindIFMN3rrr9SchedulerINS5_10AndNetworkENS5_9OptimizerIS7_NS5_15BddMspfAnalyzerIS7_EEEENS5_20LevelBasePartitionerIS7_EEEEFvPKNS5_9ParameterEEPSE_SH_EEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !498  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !497    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 0, ptr %i.q, align 8, !tbaa !510
  %i.r = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS4_10AndNetworkENS4_9OptimizerIS6_NS4_15BddMspfAnalyzerIS6_EEEENS4_20LevelBasePartitionerIS6_EEEEFvPKNS4_9ParameterEEPSD_SG_EEEEEEEE, i64 16), ptr %i.r, align 8, !tbaa !340
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load <2 x i64>, ptr %2, align 8, !tbaa !754
  store <2 x i64> %i.t, ptr %i.s, align 8, !tbaa !754
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load <2 x i64>, ptr %i.v, align 8, !tbaa !303
  store <2 x i64> %i.w, ptr %i.u, align 8, !tbaa !303
  store ptr %i.r, ptr %3, align 8, !tbaa !512
  call void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %3, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv) #26
  %i.x = load ptr, ptr %3, align 8, !tbaa !512    ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_15BddMspfAnalyzerIS4_EEEENS2_20LevelBasePartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !340
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #26, !inline_history !4159
  br label %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_15BddMspfAnalyzerIS4_EEEENS2_20LevelBasePartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit

_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_15BddMspfAnalyzerIS4_EEEENS2_20LevelBasePartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit: ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_15BddMspfAnalyzerIS4_EEEENS2_20LevelBasePartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_15BddMspfAnalyzerIS4_EEEENS2_20LevelBasePartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_15BddMspfAnalyzerIS4_EEEENS2_20LevelBasePartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4166)
  call void @llvm.experimental.noalias.scope.decl(metadata !4167)
  %i.ab = load i64, ptr %.0911.i.i.i, align 8, !tbaa !334, !alias.scope !4167, !noalias !4166
  store i64 %i.ab, ptr %.012.i.i.i, align 8, !tbaa !334, !alias.scope !4166, !noalias !4167
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !334, !alias.scope !4167, !noalias !4166
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !27

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_15BddMspfAnalyzerIS4_EEEENS2_20LevelBasePartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_15BddMspfAnalyzerIS4_EEEENS2_20LevelBasePartitionerIS4_EEEEFvPKNS2_9ParameterEEPSB_SE_EEJEvEEOT_DpOT0_.exit ], [ %i.ad, %.lr.ph.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ae, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4168)
  call void @llvm.experimental.noalias.scope.decl(metadata !4169)
  %i.af = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !334, !alias.scope !4169, !noalias !4168
  store i64 %i.af, ptr %.012.i.i.i18, align 8, !tbaa !334, !alias.scope !4168, !noalias !4169
  store i64 0, ptr %.0911.i.i.i19, align 8, !tbaa !334, !alias.scope !4169, !noalias !4168
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !27

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ae, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !496
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #28
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !497
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !498
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !496
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS4_10AndNetworkENS4_9OptimizerIS6_NS4_15BddMspfAnalyzerIS6_EEEENS4_20LevelBasePartitionerIS6_EEEEFvPKNS4_9ParameterEEPSD_SG_EEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS4_10AndNetworkENS4_9OptimizerIS6_NS4_15BddMspfAnalyzerIS6_EEEENS4_20LevelBasePartitionerIS6_EEEEFvPKNS4_9ParameterEEPSD_SG_EEEEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !761
  %.unpack.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !206 ; 3 uses
  %.elt3.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.unpack4.i.i.i.i.i.i.i.i = load i64, ptr %.elt3.i.i.i.i.i.i.i.i, align 8, !tbaa !206
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.unpack4.i.i.i.i.i.i.i.i ; 2 uses
  %i.e = and i64 %.unpack.i.i.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !340
  %i.g = getelementptr i8, ptr %i.f, i64 %.unpack.i.i.i.i.i.i.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load ptr, ptr %i.h, align 8, !nosanitize !317
  br label %_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_15BddMspfAnalyzerIS5_EEEENS3_20LevelBasePartitionerIS5_EEEEFvPKNS3_9ParameterEEPSC_SF_EEEEEclEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %.unpack.i.i.i.i.i.i.i.i to ptr
  br label %_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_15BddMspfAnalyzerIS5_EEEENS3_20LevelBasePartitionerIS5_EEEEFvPKNS3_9ParameterEEPSC_SF_EEEEEclEv.exit

_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_15BddMspfAnalyzerIS5_EEEENS3_20LevelBasePartitionerIS5_EEEEFvPKNS3_9ParameterEEPSC_SF_EEEEEclEv.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !865
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(872) %i.d, ptr noundef %i.m) #26, !inline_history !4170
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_15BddMspfAnalyzerIS1_EEEENS_20LevelBasePartitionerIS1_EEE6RunJobERS5_PNS8_3JobE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(5720) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
_ZNSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_.exit.i.i:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::function.227", align 8 ; 7 uses
  %i.l = alloca ptr, align 8                      ; 27 uses
  %4 = alloca %"class.std::function.227", align 8 ; 9 uses
  %5 = alloca %"class.std::mersenne_twister_engine", align 8 ; 19 uses
  %6 = alloca %"class.rrr::AndNetwork", align 8   ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %12 = alloca %"class.rrr::AndNetwork", align 8  ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::vector.269", align 16 ; 9 uses
  %32 = alloca %"class.std::vector.274", align 16 ; 9 uses
  store ptr %2, ptr %i.l, align 8, !tbaa !1325
  %i.m = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !759
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.q = load i8, ptr %i.p, align 1, !tbaa !735, !range !316, !noundef !317
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = xor i1 %i.r, true
  tail call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE13AssignNetworkEPS1_b(ptr noundef nonnull align 8 dereferenceable(5720) %1, ptr noundef %i.o, i1 noundef zeroext %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.l, ptr %4, align 8, !tbaa !742
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !761
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_15BddMspfAnalyzerIS9_EEEENS7_20LevelBasePartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E9_M_invokeERKSt9_Any_dataOS5_, ptr %i.u, align 8, !tbaa !866
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_15BddMspfAnalyzerIS9_EEEENS7_20LevelBasePartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, ptr %i.t, align 8, !tbaa !212
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 16, i1 false), !tbaa.struct !416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.z = load <2 x ptr>, ptr %i.x, align 8, !tbaa !303
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !303 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_15BddMspfAnalyzerIS9_EEEENS7_20LevelBasePartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, ptr %i.x, align 8, !tbaa !303
  store <2 x ptr> %i.z, ptr %i.w, align 8, !tbaa !303
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_15BddMspfAnalyzerIS9_EEEENS7_20LevelBasePartitionerIS9_EEE6RunJobERSD_PNSG_3JobEEUlS5_E_E9_M_invokeERKSt9_Any_dataOS5_, ptr %i.y, align 8, !tbaa !303
end_hunk_4
begin_hunk_5_@_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE6ThreadEPKNS_9ParameterE:bb.a
  br i1 %i.at, label %.critedge5.thread, label %bb.l

.critedge5.thread:                                ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %.critedge5
  %i.au = load ptr, ptr %4, align 8, !tbaa !826   ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.au, null
  br i1 %.not.i.i13, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.critedge5.thread
  %i.av = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.au) #26 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  call void @_ZNSt14priority_queueIPN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_20LevelBasePartitionerIS2_EEE3JobESt6vectorISF_SaISF_EENSD_18CompareJobPointersEE4pushERKSF_(ptr noundef nonnull align 8 dereferenceable(25) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.w) #26
  %i.aw = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr null, ptr %i.a, align 8, !tbaa !1334
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.k, ptr %4, align 8, !tbaa !826
  store i8 0, ptr %i.l, align 8, !tbaa !827
  %i.ax = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %._crit_edge

bb.l:                                             ; preds = %bb.j, %.critedge5.thread, %.critedge5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(5848) dereferenceable(5848) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNSt17_Function_handlerIFdPN3rrr10AndNetworkEEZNS0_9SchedulerIS1_NS0_9OptimizerIS1_NS0_8AnalyzerIS1_NS0_9SimulatorIS1_EENS0_9SatSolverIS1_EEEEEENS0_20LevelBasePartitionerIS1_EEEC1ES2_PKNS0_9ParameterEEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.std::function.35", align 8  ; 9 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !302    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 0, ptr %i.c, align 4, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !219
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !328
  store ptr @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSF_E_clESF_EUliE_E9_M_invokeERKSt9_Any_dataOi, ptr %i.f, align 8, !tbaa !271
  store ptr @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSF_E_clESF_EUliE_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, ptr %i.e, align 8, !tbaa !212
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %.sroa.04.07.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !231 ; 3 uses
  %.not8.i.i.i.i = icmp eq ptr %.sroa.04.07.i.i.i.i, %i.g
  br i1 %.not8.i.i.i.i, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.i, ptr %i.a, align 4, !tbaa !220
  br label %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i

thread-pre-split.i.i.i:                           ; preds = %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i, i64 16
  %i.k = load i32, ptr %i.j, align 4, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.k, ptr %i.a, align 4, !tbaa !220
  %.not.i.i.i.i.i.i = icmp eq ptr %.pr2.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i

bb.b:                                             ; preds = %thread-pre-split.i.i.i
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFviEEclEi.exit.i.i.i.i:           ; preds = %thread-pre-split.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.sroa.04.09.i4.i.i.i = phi ptr [ %.sroa.04.07.i.i.i.i, %.lr.ph.i.preheader.i.i.i ], [ %.sroa.04.0.i.i.i.i, %thread-pre-split.i.i.i ]
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !271
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #26, !inline_history !4236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.04.0.i.i.i.i = load ptr, ptr %.sroa.04.09.i4.i.i.i, align 8, !tbaa !231 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.04.0.i.i.i.i, %i.g
  %.pr2.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !212 ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i, label %thread-pre-split.i.i.i

_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i: ; preds = %_ZNKSt8functionIFviEEclEi.exit.i.i.i.i
  %.not.i1.i.i.i = icmp eq ptr %.pr2.i.i.i, null
  br i1 %.not.i1.i.i.i, label %_ZSt10__invoke_rIdRZN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_20LevelBasePartitionerIS2_EEEC1EPS2_PKNS0_9ParameterEEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i

_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i: ; preds = %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i, %bb.a
  %i.m = phi ptr [ %.pr2.i.i.i, %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i ], [ @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSF_E_clESF_EUliE_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, %bb.a ]
  %i.n = call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #26, !inline_history !4237 ; 0 uses
  br label %_ZSt10__invoke_rIdRZN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_20LevelBasePartitionerIS2_EEEC1EPS2_PKNS0_9ParameterEEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit

_ZSt10__invoke_rIdRZN3rrr9SchedulerINS0_10AndNetworkENS0_9OptimizerIS2_NS0_8AnalyzerIS2_NS0_9SimulatorIS2_EENS0_9SatSolverIS2_EEEEEENS0_20LevelBasePartitionerIS2_EEEC1EPS2_PKNS0_9ParameterEEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit: ; preds = %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.i.i.i, %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.o = load i32, ptr %i.c, align 4, !tbaa !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = sitofp i32 %i.o to double
  ret double %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFdPN3rrr10AndNetworkEEZNS0_9SchedulerIS1_NS0_9OptimizerIS1_NS0_8AnalyzerIS1_NS0_9SimulatorIS1_EENS0_9SatSolverIS1_EEEEEENS0_20LevelBasePartitionerIS1_EEEC1ES2_PKNS0_9ParameterEEUlS2_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSF_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSF_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSF_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSF_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEEC1EPS1_PKNS_9ParameterEEUlSD_E_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !303
  br label %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSF_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSF_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEEUlSF_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSF_E_clESF_EUliE_E9_M_invokeERKSt9_Any_dataOi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !220
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4239, !nonnull !317, !align !412
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !302
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.f = sext i32 %i.a to i64
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !228
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !224
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !223
  %i.j = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.k = ptrtoint ptr %.val.i.i.i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 2
  %i.n = trunc i64 %i.m to i32
  %i.o = load ptr, ptr %0, align 8, !tbaa !4240, !nonnull !317, !align !415 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !220
  %i.q = add i32 %i.p, -1
  %i.r = add i32 %i.q, %i.n
  store i32 %i.r, ptr %i.o, align 4, !tbaa !220
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFviEZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSF_E_clESF_EUliE_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSF_E_clESF_EUliE_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEEC1EPS1_PKNS_9ParameterEENKUlSD_E_clESD_EUliE_, ptr %0, align 8, !tbaa !414
  br label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSF_E_clESF_EUliE_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !303
  br label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSF_E_clESF_EUliE_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !864
  br label %_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSF_E_clESF_EUliE_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZZN3rrr9SchedulerINS1_10AndNetworkENS1_9OptimizerIS3_NS1_8AnalyzerIS3_NS1_9SimulatorIS3_EENS1_9SatSolverIS3_EEEEEENS1_20LevelBasePartitionerIS3_EEEC1EPS3_PKNS1_9ParameterEENKUlSF_E_clESF_EUliE_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJSt5_BindIFMN3rrr9SchedulerINS5_10AndNetworkENS5_9OptimizerIS7_NS5_8AnalyzerIS7_NS5_9SimulatorIS7_EENS5_9SatSolverIS7_EEEEEENS5_20LevelBasePartitionerIS7_EEEEFvPKNS5_9ParameterEEPSI_SL_EEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !498  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !497    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 0, ptr %i.q, align 8, !tbaa !510
  %i.r = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS4_10AndNetworkENS4_9OptimizerIS6_NS4_8AnalyzerIS6_NS4_9SimulatorIS6_EENS4_9SatSolverIS6_EEEEEENS4_20LevelBasePartitionerIS6_EEEEFvPKNS4_9ParameterEEPSH_SK_EEEEEEEE, i64 16), ptr %i.r, align 8, !tbaa !340
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load <2 x i64>, ptr %2, align 8, !tbaa !808
  store <2 x i64> %i.t, ptr %i.s, align 8, !tbaa !808
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load <2 x i64>, ptr %i.v, align 8, !tbaa !303
  store <2 x i64> %i.w, ptr %i.u, align 8, !tbaa !303
  store ptr %i.r, ptr %3, align 8, !tbaa !512
  call void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %3, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv) #26
  %i.x = load ptr, ptr %3, align 8, !tbaa !512    ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_8AnalyzerIS4_NS2_9SimulatorIS4_EENS2_9SatSolverIS4_EEEEEENS2_20LevelBasePartitionerIS4_EEEEFvPKNS2_9ParameterEEPSF_SI_EEJEvEEOT_DpOT0_.exit, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !340
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #26, !inline_history !4241
  br label %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_8AnalyzerIS4_NS2_9SimulatorIS4_EENS2_9SatSolverIS4_EEEEEENS2_20LevelBasePartitionerIS4_EEEEFvPKNS2_9ParameterEEPSF_SI_EEJEvEEOT_DpOT0_.exit

_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_8AnalyzerIS4_NS2_9SimulatorIS4_EENS2_9SatSolverIS4_EEEEEENS2_20LevelBasePartitionerIS4_EEEEFvPKNS2_9ParameterEEPSF_SI_EEJEvEEOT_DpOT0_.exit: ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_8AnalyzerIS4_NS2_9SimulatorIS4_EENS2_9SatSolverIS4_EEEEEENS2_20LevelBasePartitionerIS4_EEEEFvPKNS2_9ParameterEEPSF_SI_EEJEvEEOT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_8AnalyzerIS4_NS2_9SimulatorIS4_EENS2_9SatSolverIS4_EEEEEENS2_20LevelBasePartitionerIS4_EEEEFvPKNS2_9ParameterEEPSF_SI_EEJEvEEOT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_8AnalyzerIS4_NS2_9SimulatorIS4_EENS2_9SatSolverIS4_EEEEEENS2_20LevelBasePartitionerIS4_EEEEFvPKNS2_9ParameterEEPSF_SI_EEJEvEEOT_DpOT0_.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4248)
  call void @llvm.experimental.noalias.scope.decl(metadata !4249)
  %i.ab = load i64, ptr %.0911.i.i.i, align 8, !tbaa !334, !alias.scope !4249, !noalias !4248
  store i64 %i.ab, ptr %.012.i.i.i, align 8, !tbaa !334, !alias.scope !4248, !noalias !4249
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !334, !alias.scope !4249, !noalias !4248
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !27

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_8AnalyzerIS4_NS2_9SimulatorIS4_EENS2_9SatSolverIS4_EEEEEENS2_20LevelBasePartitionerIS4_EEEEFvPKNS2_9ParameterEEPSF_SI_EEJEvEEOT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt6threadC2ISt5_BindIFMN3rrr9SchedulerINS2_10AndNetworkENS2_9OptimizerIS4_NS2_8AnalyzerIS4_NS2_9SimulatorIS4_EENS2_9SatSolverIS4_EEEEEENS2_20LevelBasePartitionerIS4_EEEEFvPKNS2_9ParameterEEPSF_SI_EEJEvEEOT_DpOT0_.exit ], [ %i.ad, %.lr.ph.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ae, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4250)
  call void @llvm.experimental.noalias.scope.decl(metadata !4251)
  %i.af = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !334, !alias.scope !4251, !noalias !4250
  store i64 %i.af, ptr %.012.i.i.i18, align 8, !tbaa !334, !alias.scope !4250, !noalias !4251
  store i64 0, ptr %.0911.i.i.i19, align 8, !tbaa !334, !alias.scope !4251, !noalias !4250
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !27

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ae, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !496
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #28
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !497
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !498
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !496
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS4_10AndNetworkENS4_9OptimizerIS6_NS4_8AnalyzerIS6_NS4_9SimulatorIS6_EENS4_9SatSolverIS6_EEEEEENS4_20LevelBasePartitionerIS6_EEEEFvPKNS4_9ParameterEEPSH_SK_EEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS4_10AndNetworkENS4_9OptimizerIS6_NS4_8AnalyzerIS6_NS4_9SimulatorIS6_EENS4_9SatSolverIS6_EEEEEENS4_20LevelBasePartitionerIS6_EEEEFvPKNS4_9ParameterEEPSH_SK_EEEEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !815
  %.unpack.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !206 ; 3 uses
  %.elt3.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.unpack4.i.i.i.i.i.i.i.i = load i64, ptr %.elt3.i.i.i.i.i.i.i.i, align 8, !tbaa !206
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.unpack4.i.i.i.i.i.i.i.i ; 2 uses
  %i.e = and i64 %.unpack.i.i.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !340
  %i.g = getelementptr i8, ptr %i.f, i64 %.unpack.i.i.i.i.i.i.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load ptr, ptr %i.h, align 8, !nosanitize !317
  br label %_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_8AnalyzerIS5_NS3_9SimulatorIS5_EENS3_9SatSolverIS5_EEEEEENS3_20LevelBasePartitionerIS5_EEEEFvPKNS3_9ParameterEEPSG_SJ_EEEEEclEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %.unpack.i.i.i.i.i.i.i.i to ptr
  br label %_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_8AnalyzerIS5_NS3_9SimulatorIS5_EENS3_9SatSolverIS5_EEEEEENS3_20LevelBasePartitionerIS5_EEEEFvPKNS3_9ParameterEEPSG_SJ_EEEEEclEv.exit

_ZNSt6thread8_InvokerISt5tupleIJSt5_BindIFMN3rrr9SchedulerINS3_10AndNetworkENS3_9OptimizerIS5_NS3_8AnalyzerIS5_NS3_9SimulatorIS5_EENS3_9SatSolverIS5_EEEEEENS3_20LevelBasePartitionerIS5_EEEEFvPKNS3_9ParameterEEPSG_SJ_EEEEEclEv.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !865
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(872) %i.d, ptr noundef %i.m) #26, !inline_history !4252
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SchedulerINS_10AndNetworkENS_9OptimizerIS1_NS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEEENS_20LevelBasePartitionerIS1_EEE6RunJobERS9_PNSC_3JobE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(5848) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
_ZNSt8functionIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_.exit.i.i:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::function.227", align 8 ; 7 uses
  %i.l = alloca ptr, align 8                      ; 27 uses
  %4 = alloca %"class.std::function.227", align 8 ; 9 uses
  %5 = alloca %"class.std::mersenne_twister_engine", align 8 ; 19 uses
  %6 = alloca %"class.rrr::AndNetwork", align 8   ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::mersenne_twister_engine", align 8 ; 9 uses
  %12 = alloca %"class.rrr::AndNetwork", align 8  ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::vector.269", align 16 ; 9 uses
  %32 = alloca %"class.std::vector.274", align 16 ; 9 uses
  store ptr %2, ptr %i.l, align 8, !tbaa !1334
  %i.m = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !813
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.q = load i8, ptr %i.p, align 1, !tbaa !789, !range !316, !noundef !317
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = xor i1 %i.r, true
  tail call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE13AssignNetworkEPS1_b(ptr noundef nonnull align 8 dereferenceable(5848) %1, ptr noundef %i.o, i1 noundef zeroext %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.l, ptr %4, align 8, !tbaa !796
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !815
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_8AnalyzerIS9_NS7_9SimulatorIS9_EENS7_9SatSolverIS9_EEEEEENS7_20LevelBasePartitionerIS9_EEE6RunJobERSH_PNSK_3JobEEUlS5_E_E9_M_invokeERKSt9_Any_dataOS5_, ptr %i.u, align 8, !tbaa !866
  store ptr @_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN3rrr9SchedulerINS7_10AndNetworkENS7_9OptimizerIS9_NS7_8AnalyzerIS9_NS7_9SimulatorIS9_EENS7_9SatSolverIS9_EEEEEENS7_20LevelBasePartitionerIS9_EEE6RunJobERSH_PNSK_3JobEEUlS5_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation, ptr %i.t, align 8, !tbaa !212
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 16, i1 false), !tbaa.struct !416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.z = load <2 x ptr>, ptr %i.x, align 8, !tbaa !303
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !303 ; 2 uses
end_hunk_5
