Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestParallelLoopUnrolling?download=true
inline.NumInlined: 1238
inline.NumDeleted: 829
begin_hunk_0_@_ZNK4llvm2cl3sub5applyINS0_3optIbLb0ENS0_6parserIbEEEEEEvRT_:bb.a
  br i1 %.not15.i.i.i18, label %_ZN4llvm2cl6Option13addSubCommandERNS0_10SubCommandE.exit22, label %.critedge.i.i.i19

.critedge.i.i.i19:                                ; preds = %.lr.ph.i.i.i16
  %i.ak = getelementptr inbounds nuw i8, ptr %.023.i.i.i17, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ak, %i.ai
  br i1 %.not.i.i.i20, label %._crit_edge.i.i.i21, label %.lr.ph.i.i.i16

._crit_edge.i.i.i21:                              ; preds = %.critedge.i.i.i19, %bb.h
  %i.al = load i32, ptr %i.ab, align 8, !tbaa !103, !noalias !231
  %i.am = icmp ult i32 %i.ag, %i.al
  br i1 %i.am, label %bb.i, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i13

bb.i:                                             ; preds = %._crit_edge.i.i.i21
  %i.an = add nuw i32 %i.ag, 1
  store i32 %i.an, ptr %i.aa, align 4, !tbaa !102, !noalias !231
  store ptr %i.ac, ptr %i.ai, align 8, !tbaa !31, !noalias !231
  br label %_ZN4llvm2cl6Option13addSubCommandERNS0_10SubCommandE.exit22

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i13: ; preds = %._crit_edge.i.i.i21, %bb.g
  %i.ao = tail call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.y, ptr noundef nonnull align 8 dereferenceable(160) %i.ac) #18, !noalias !231 ; 0 uses
  br label %_ZN4llvm2cl6Option13addSubCommandERNS0_10SubCommandE.exit22

_ZN4llvm2cl6Option13addSubCommandERNS0_10SubCommandE.exit22: ; preds = %.lr.ph.i.i.i16, %bb.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i13
  %i.ap = getelementptr inbounds nuw i8, ptr %.026, i64 8 ; 2 uses
  %.not12 = icmp eq ptr %i.ap, %i.x
  br i1 %.not12, label %_ZN4llvm2cl6Option13addSubCommandERNS0_10SubCommandE.exit, label %bb.g

_ZN4llvm2cl6Option13addSubCommandERNS0_10SubCommandE.exit: ; preds = %.lr.ph.i.i.i, %_ZN4llvm2cl6Option13addSubCommandERNS0_10SubCommandE.exit22, %bb.f, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKbEZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS8_4descENS8_11initializerIbEEEEERS5_NS7_9StringRefEDpOT_EUlRKT_E_E9_M_invokeERKSt9_Any_dataS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !233
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i8 1, ptr %i.b, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKbEZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS8_4descENS8_11initializerIbEEEEERS5_NS7_9StringRefEDpOT_EUlRKT_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS6_4descENS6_11initializerIbEEEEERS3_NS5_9StringRefEDpOT_EUlRKT_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !31
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS6_4descENS6_11initializerIbEEEEERS3_NS5_9StringRefEDpOT_EUlRKT_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !118
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS6_4descENS6_11initializerIbEEEEERS3_NS5_9StringRefEDpOT_EUlRKT_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !126
  store i64 %i.a, ptr %0, align 8, !tbaa !126
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS6_4descENS6_11initializerIbEEEEERS3_NS5_9StringRefEDpOT_EUlRKT_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS6_4descENS6_11initializerIbEEEEERS3_NS5_9StringRefEDpOT_EUlRKT_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_ZN4mlir15DialectRegistry6insertENS_6TypeIDEN4llvm9StringRefERKSt8functionIFPNS_7DialectEPNS_11MLIRContextEEE(ptr noundef nonnull align 8 dereferenceable(136), ptr, ptr, i64, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_5arith12ArithDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.138, align 8            ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !234    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr %i.a, ptr %2, align 8, !tbaa !128
  %i.b = ptrtoint ptr %2 to i64
  %i.c = call noundef ptr @_ZN4mlir11MLIRContext16getOrLoadDialectEN4llvm9StringRefENS_6TypeIDENS1_12function_refIFSt10unique_ptrINS_7DialectESt14default_deleteIS6_EEvEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull @.str.20, i64 5, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_5arith12ArithDialectEvE2idE, ptr nonnull @_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_5arith12ArithDialectEEEPT_vEUlvE_EES6_l, i64 %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_5arith12ArithDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_5arith12ArithDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_5arith12ArithDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split
    i32 0, label %.sink.split.i
  ]

.sink.split.i:                                    ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_5arith12ArithDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_5arith12ArithDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %.sink.split.i
  %.sink = phi ptr [ null, %.sink.split.i ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !31
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_5arith12ArithDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_5arith12ArithDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_5arith12ArithDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

declare noundef ptr @_ZN4mlir11MLIRContext16getOrLoadDialectEN4llvm9StringRefENS_6TypeIDENS1_12function_refIFSt10unique_ptrINS_7DialectESt14default_deleteIS6_EEvEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr, ptr, i64) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_5arith12ArithDialectEEEPT_vEUlvE_EES6_l(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.139") align 8 %0, i64 noundef %1) #0 comdat align 2 {
_ZNSt10unique_ptrIN4mlir5arith12ArithDialectESt14default_deleteIS2_EED2Ev.exit:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128, !noalias !237
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #19, !noalias !237 ; 2 uses
  tail call void @_ZN4mlir5arith12ArithDialectC1EPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef %i.b) #18, !noalias !237
  store ptr %i.c, ptr %0, align 8, !tbaa !240
  ret void
}

declare void @_ZN4mlir5arith12ArithDialectC1EPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #8

declare { ptr, i8 } @_ZN4mlir27parallelLoopUnrollByFactorsENS_3scf10ParallelOpEN4llvm8ArrayRefImEERNS_12RewriterBaseENS2_12function_refIFvjPNS_9OperationENS_9OpBuilderEEEEPNS_9IRMappingE(ptr, ptr, i64, ptr noundef nonnull align 8 dereferenceable(40), ptr, i64, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN4mlir12RewriterBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %1(i64 noundef %2, ptr noundef %0) #18, !inline_history !241
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #18 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 5
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not41 = icmp eq i64 %i.d, 0
  br i1 %.not41, label %._crit_edge43, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.042 = phi ptr [ %i.g, %._crit_edge ], [ %i.c, %bb.c ] ; 4 uses
  %.sroa.022.0.in36 = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %.sroa.022.037 = load ptr, ptr %.sroa.022.0.in36, align 8, !tbaa !242 ; 2 uses
  %.not3238 = icmp eq ptr %.sroa.022.037, %.042
  br i1 %.not3238, label %._crit_edge, label %.lr.ph40

._crit_edge43:                                    ; preds = %._crit_edge, %bb.c
  %i.f = icmp eq i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph40
  %.sroa.022.0.in = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 8
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !tbaa !242 ; 2 uses
  %.not32 = icmp eq ptr %.sroa.022.0, %.042
  br i1 %.not32, label %._crit_edge, label %.lr.ph40

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge43, label %.preheader

.lr.ph40:                                         ; preds = %.preheader, %.loopexit
  %.sroa.022.039 = phi ptr [ %.sroa.022.0, %.loopexit ], [ %.sroa.022.037, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !242  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 32 ; 2 uses
  %.not3334 = icmp eq ptr %i.i, %i.j
  br i1 %.not3334, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph40, %.lr.ph
  %.sroa.019.035 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %.lr.ph40 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !242  ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.035) #18
  tail call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull %i.m, ptr %1, i64 %2, i32 noundef %3)
  %.not33 = icmp eq ptr %i.l, %i.j
  br i1 %.not33, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge43
  tail call void %1(i64 noundef %2, ptr noundef nonnull %0) #18, !inline_history !241
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge43
  ret void
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #8

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_129TestParallelLoopUnrollingPass14runOnOperationEvEUlNS1_3scf10ParallelOpEE_SE_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.e = icmp ne ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_3scf10ParallelOpEvE2idE
  %.not1.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not1.i, %i.e
  br i1 %.not.i, label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_129TestParallelLoopUnrollingPass14runOnOperationEvEUlNS_3scf10ParallelOpEE_S7_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %.val, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !257  ; 2 uses
  %.not.i5.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i5.i.i.i, label %_ZN12_GLOBAL__N_115getNestingDepthEPN4mlir9OperationE.exit.i.i, label %_ZN4mlir9Operation11getParentOpEv.exit.i.i.i

_ZN4mlir9Operation11getParentOpEv.exit.i.i.i:     ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.q, %bb.c ], [ %i.h, %bb.b ]
  %.06.i.i.i = phi i32 [ %spec.select.i.i2.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.i) #18 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_115getNestingDepthEPN4mlir9OperationE.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53
  %i.n = icmp eq ptr %i.m, @_ZN4mlir6detail14TypeIDResolverINS_3scf10ParallelOpEvE2idE
  %i.o = zext i1 %i.n to i32
  %spec.select.i.i2.i = add i32 %.06.i.i.i, %i.o  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !257  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_115getNestingDepthEPN4mlir9OperationE.exit.i.i, label %_ZN4mlir9Operation11getParentOpEv.exit.i.i.i, !llvm.loop !243

_ZN12_GLOBAL__N_115getNestingDepthEPN4mlir9OperationE.exit.i.i: ; preds = %bb.c, %_ZN4mlir9Operation11getParentOpEv.exit.i.i.i, %bb.b
  %.0.lcssa.i.i.i = phi i32 [ 0, %bb.b ], [ %.06.i.i.i, %_ZN4mlir9Operation11getParentOpEv.exit.i.i.i ], [ %spec.select.i.i2.i, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 720
  %i.s = load i32, ptr %i.r, align 8, !tbaa !111
  %i.t = icmp eq i32 %.0.lcssa.i.i.i, %i.s
  br i1 %i.t, label %bb.d, label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_129TestParallelLoopUnrollingPass14runOnOperationEvEUlNS_3scf10ParallelOpEE_S7_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_115getNestingDepthEPN4mlir9OperationE.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !258, !nonnull !36, !align !105 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !38   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !18
  %.not.i1.i.i = icmp ult i32 %i.x, %i.z
  br i1 %.not.i1.i.i, label %bb.f, label %bb.e, !prof !106

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir3scf10ParallelOpELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr %1)
  br label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_129TestParallelLoopUnrollingPass14runOnOperationEvEUlNS_3scf10ParallelOpEE_S7_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = zext i32 %i.x to i64
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  store ptr %1, ptr %i.ac, align 1
  %i.ad = load i32, ptr %i.w, align 8, !tbaa !38
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.w, align 8, !tbaa !38
  br label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_129TestParallelLoopUnrollingPass14runOnOperationEvEUlNS_3scf10ParallelOpEE_S7_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit

_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_129TestParallelLoopUnrollingPass14runOnOperationEvEUlNS_3scf10ParallelOpEE_S7_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit: ; preds = %bb.a, %_ZN12_GLOBAL__N_115getNestingDepthEPN4mlir9OperationE.exit.i.i, %bb.e, %bb.f
  ret void
}

declare noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir3scf10ParallelOpELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !38
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #18
  %i.f = load ptr, ptr %0, align 8, !tbaa !17
  %i.g = load i32, ptr %i.a, align 8, !tbaa !38
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !38
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !38
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

declare noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

declare void @_ZN4mlir12RewriterBase9replaceOpEPNS_9OperationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i64, i64) unnamed_addr #8

declare void @_ZN4mlir12RewriterBase9replaceOpEPNS_9OperationES2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef) unnamed_addr #8

declare void @_ZN4mlir12RewriterBase7eraseOpEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #8

declare void @_ZN4mlir12RewriterBase10eraseBlockEPNS_5BlockE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #8

declare void @_ZN4mlir12RewriterBase17inlineBlockBeforeEPNS_5BlockES2_N4llvm14ilist_iteratorINS3_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr, i64, i64) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir12RewriterBase19startOpModificationEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN4mlir12RewriterBase22finalizeOpModificationEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir12RewriterBase20cancelOpModificationEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir12RewriterBase18replaceAllUsesWithENS_5ValueES1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !262    ; 2 uses
  %.not15 = icmp eq ptr %i.a, null
  br i1 %.not15, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4mlir12RewriterBase15modifyOpInPlaceIZNS0_18replaceAllUsesWithENS_5ValueES2_EUlvE_EEvPNS_9OperationEOT_.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN4mlir12RewriterBase15modifyOpInPlaceIZNS0_18replaceAllUsesWithENS_5ValueES2_EUlvE_EEvPNS_9OperationEOT_.exit
  %.sroa.09.016 = phi ptr [ %i.b, %_ZN4mlir12RewriterBase15modifyOpInPlaceIZNS0_18replaceAllUsesWithENS_5ValueES2_EUlvE_EEvPNS_9OperationEOT_.exit ], [ %i.a, %bb.a ] ; 8 uses
  %i.b = load ptr, ptr %.sroa.09.016, align 8, !tbaa !266 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !267  ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.d) #18, !inline_history !259
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !268  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = load ptr, ptr %.sroa.09.016, align 8, !tbaa !266 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !269
  %.not2.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not2.i.i.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !268
  br label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i

_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i: ; preds = %bb.c, %bb.b, %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 24
  store ptr %2, ptr %i.l, align 8, !tbaa !271
  store ptr %2, ptr %i.h, align 8, !tbaa !268
  %i.m = load ptr, ptr %2, align 8, !tbaa !262    ; 3 uses
  store ptr %i.m, ptr %.sroa.09.016, align 8, !tbaa !266
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir12RewriterBase15modifyOpInPlaceIZNS0_18replaceAllUsesWithENS_5ValueES2_EUlvE_EEvPNS_9OperationEOT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.09.016, ptr %i.n, align 8, !tbaa !268
  br label %_ZN4mlir12RewriterBase15modifyOpInPlaceIZNS0_18replaceAllUsesWithENS_5ValueES2_EUlvE_EEvPNS_9OperationEOT_.exit

_ZN4mlir12RewriterBase15modifyOpInPlaceIZNS0_18replaceAllUsesWithENS_5ValueES2_EUlvE_EEvPNS_9OperationEOT_.exit: ; preds = %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i, %bb.d
  store ptr %.sroa.09.016, ptr %2, align 8, !tbaa !262
  %i.o = load ptr, ptr %0, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.d) #18, !inline_history !259
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare void @_ZN4mlir12RewriterBase17replaceUsesWithIfENS_5ValueES1_N4llvm12function_refIFbRNS_9OpOperandEEEEPb(ptr noundef nonnull align 8 dereferenceable(40), ptr, ptr, ptr, i64, ptr noundef) unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir15PatternRewriterD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir12RewriterBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4mlir15PatternRewriter28canRecoverFromRewriteFailureEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvm12function_refIFvjPN4mlir9OperationENS1_9OpBuilderEEE11callback_fnIZN12_GLOBAL__N_129TestParallelLoopUnrollingPass14runOnOperationEvEUljS3_S4_E_EEvljS3_S4_(i64 noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%"class.mlir::OpBuilder") align 8 captures(none) %3) #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.mlir::OpBuilder", align 8   ; 4 uses
  %i.a = inttoptr i64 %0 to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %.val = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.b = getelementptr i8, ptr %.val, i64 920
  %.val.val = load i8, ptr %i.b, align 8, !tbaa !123, !range !35, !noundef !36
  %i.c = trunc nuw i8 %.val.val to i1
  br i1 %i.c, label %bb.b, label %_ZZN12_GLOBAL__N_129TestParallelLoopUnrollingPass14runOnOperationEvENKUljPN4mlir9OperationENS1_9OpBuilderEE_clEjS3_S4_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @_ZN4mlir7Builder18getUI32IntegerAttrEj(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %1) #18
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 5, ptr %i.g, align 8, !tbaa !274
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.h, align 1, !tbaa !275
  store ptr @.str.23, ptr %4, align 8, !tbaa !115
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 18, ptr %i.i, align 8, !tbaa !115
  %i.j = call ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef %i.f, ptr noundef nonnull align 8 dereferenceable(34) %4) #18
  call void @_ZN4mlir9Operation7setAttrENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr %i.j, ptr %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %_ZZN12_GLOBAL__N_129TestParallelLoopUnrollingPass14runOnOperationEvENKUljPN4mlir9OperationENS1_9OpBuilderEE_clEjS3_S4_.exit

_ZZN12_GLOBAL__N_129TestParallelLoopUnrollingPass14runOnOperationEvENKUljPN4mlir9OperationENS1_9OpBuilderEE_clEjS3_S4_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

declare ptr @_ZN4mlir7Builder18getUI32IntegerAttrEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir9Operation7setAttrENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %4 = alloca %"class.mlir::NamedAttrList", align 8 ; 7 uses
  store ptr %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp ult i32 %i.b, 16777216
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #18 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  %i.f = call { ptr, i8 } @_ZN4mlir9Operation15getInherentAttrEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %i.d, i64 %i.e) #18
  %i.g = extractvalue { ptr, i8 } %i.f, 1
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
end_hunk_0
