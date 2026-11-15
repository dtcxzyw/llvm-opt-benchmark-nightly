Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AsyncRuntimeRefCountingOpt?download=true
inline.NumInlined: 1359
inline.NumDeleted: 806
begin_hunk_0_@_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_5async12AsyncDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_:bb.a
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_5async12AsyncDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_5async12AsyncDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_5async12AsyncDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split
    i32 0, label %.sink.split.i
  ]

.sink.split.i:                                    ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_5async12AsyncDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_5async12AsyncDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %.sink.split.i
  %.sink = phi ptr [ null, %.sink.split.i ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !42
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_5async12AsyncDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_5async12AsyncDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_5async12AsyncDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

declare noundef ptr @_ZN4mlir11MLIRContext16getOrLoadDialectEN4llvm9StringRefENS_6TypeIDENS1_12function_refIFSt10unique_ptrINS_7DialectESt14default_deleteIS6_EEvEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr, ptr, i64) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_5async12AsyncDialectEEEPT_vEUlvE_EES6_l(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.55") align 8 %0, i64 noundef %1) #0 comdat align 2 {
_ZNSt10unique_ptrIN4mlir5async12AsyncDialectESt14default_deleteIS2_EED2Ev.exit:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41, !noalias !125
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #15, !noalias !125 ; 2 uses
  tail call void @_ZN4mlir5async12AsyncDialectC1EPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef %i.b) #17, !noalias !125
  store ptr %i.c, ptr %0, align 8, !tbaa !128
  ret void
}

declare void @_ZN4mlir5async12AsyncDialectC1EPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #6

declare void @_ZN4mlir9Operation5eraseEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_PNS_5BlockEEEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #17 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 4 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.c, 5
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx ; 3 uses
  %.not109 = icmp eq i64 %i.c, 0
  br i1 %.not109, label %.thread84, label %.lr.ph114

.lr.ph114:                                        ; preds = %bb.a
  switch i32 %3, label %.lr.ph114.split.split [
    i32 1, label %.lr.ph114.split.us.split
    i32 0, label %.lr.ph114.split.split.us
  ]

.lr.ph114.split.us.split:                         ; preds = %.lr.ph114, %._crit_edge98.split.us.us.split
  %.034110.us = phi ptr [ %i.r, %._crit_edge98.split.us.us.split ], [ %i.b, %.lr.ph114 ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.034110.us, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45   ; 2 uses
  %.not8794.us = icmp eq ptr %i.f, %.034110.us
  br i1 %.not8794.us, label %._crit_edge98.split.us.us.split, label %.lr.ph97.us

.lr.ph97.us:                                      ; preds = %.lr.ph114.split.us.split, %.thread66.us.us
  %.sroa.044.095.us.us = phi ptr [ %i.h, %.thread66.us.us ], [ %i.f, %.lr.ph114.split.us.split ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.044.095.us.us, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45   ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.044.095.us.us, i64 -8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.044.095.us.us, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.044.095.us.us, i64 32 ; 2 uses
  %.sroa.038.091.us.us = load ptr, ptr %i.j, align 8, !tbaa !45 ; 2 uses
  %.not8892.us.us = icmp eq ptr %.sroa.038.091.us.us, %i.k
  br i1 %.not8892.us.us, label %._crit_edge.us.us, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph97.us, %bb.b
  %.sroa.038.093.us.us = phi ptr [ %.sroa.038.0.us.us, %bb.b ], [ %.sroa.038.091.us.us, %.lr.ph97.us ] ; 2 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.038.093.us.us) #17
  %i.m = tail call i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_PNS_5BlockEEEENS_9WalkOrderE(ptr noundef nonnull %i.l, ptr %1, i64 %2, i32 noundef 1)
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.thread84, label %bb.b

bb.b:                                             ; preds = %.lr.ph.us.us
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.038.093.us.us, i64 8
  %.sroa.038.0.us.us = load ptr, ptr %i.o, align 8, !tbaa !45 ; 2 uses
  %.not88.us.us = icmp eq ptr %.sroa.038.0.us.us, %i.k
  br i1 %.not88.us.us, label %._crit_edge.us.us, label %.lr.ph.us.us

._crit_edge.us.us:                                ; preds = %bb.b, %.lr.ph97.us
  %i.p = tail call i32 %1(i64 noundef %2, ptr noundef nonnull %i.i) #17, !inline_history !129
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.thread84, label %.thread66.us.us

.thread66.us.us:                                  ; preds = %._crit_edge.us.us
  %.not87.us.us = icmp eq ptr %i.h, %.034110.us
  br i1 %.not87.us.us, label %._crit_edge98.split.us.us.split, label %.lr.ph97.us

._crit_edge98.split.us.us.split:                  ; preds = %.thread66.us.us, %.lr.ph114.split.us.split
  %i.r = getelementptr inbounds nuw i8, ptr %.034110.us, i64 32 ; 2 uses
  %.not.us = icmp eq ptr %i.r, %i.d
  br i1 %.not.us, label %.thread84, label %.lr.ph114.split.us.split

.lr.ph114.split.split.us:                         ; preds = %.lr.ph114, %._crit_edge98.split.split.us.us
  %.034110.us115 = phi ptr [ %i.ae, %._crit_edge98.split.split.us.us ], [ %i.b, %.lr.ph114 ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.034110.us115, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !45   ; 2 uses
  %.not8794.us116 = icmp eq ptr %i.t, %.034110.us115
  br i1 %.not8794.us116, label %._crit_edge98.split.split.us.us, label %.lr.ph97.us117

.lr.ph97.us117:                                   ; preds = %.lr.ph114.split.split.us, %.thread66.us107.us
  %.sroa.044.095.us99.us = phi ptr [ %i.v, %.thread66.us107.us ], [ %i.t, %.lr.ph114.split.split.us ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.044.095.us99.us, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !45   ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.sroa.044.095.us99.us, i64 -8
  %i.x = tail call i32 %1(i64 noundef %2, ptr noundef nonnull %i.w) #17, !inline_history !129 ; 2 uses
  switch i32 %i.x, label %bb.c [
    i32 2, label %.thread66.us107.us
    i32 0, label %.thread84
  ]

bb.c:                                             ; preds = %.lr.ph97.us117
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.044.095.us99.us, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.044.095.us99.us, i64 32 ; 2 uses
  %.sroa.038.091.us100.us = load ptr, ptr %i.y, align 8, !tbaa !45 ; 2 uses
  %.not8892.us101.us = icmp eq ptr %.sroa.038.091.us100.us, %i.z
  br i1 %.not8892.us101.us, label %.thread66.us107.us, label %.lr.ph.us102.us

.lr.ph.us102.us:                                  ; preds = %bb.c, %bb.d
  %.sroa.038.093.us103.us = phi ptr [ %.sroa.038.0.us104.us, %bb.d ], [ %.sroa.038.091.us100.us, %bb.c ] ; 2 uses
  %i.aa = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.038.093.us103.us) #17
  %i.ab = tail call i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_PNS_5BlockEEEENS_9WalkOrderE(ptr noundef nonnull %i.aa, ptr %1, i64 %2, i32 noundef 0)
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.thread84, label %bb.d

bb.d:                                             ; preds = %.lr.ph.us102.us
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.038.093.us103.us, i64 8
  %.sroa.038.0.us104.us = load ptr, ptr %i.ad, align 8, !tbaa !45 ; 2 uses
  %.not88.us105.us = icmp eq ptr %.sroa.038.0.us104.us, %i.z
  br i1 %.not88.us105.us, label %.thread66.us107.us, label %.lr.ph.us102.us

.thread66.us107.us:                               ; preds = %bb.d, %bb.c, %.lr.ph97.us117
  %.not87.us108.us = icmp eq ptr %i.v, %.034110.us115
  br i1 %.not87.us108.us, label %._crit_edge98.split.split.us.us, label %.lr.ph97.us117

._crit_edge98.split.split.us.us:                  ; preds = %.thread66.us107.us, %.lr.ph114.split.split.us
  %i.ae = getelementptr inbounds nuw i8, ptr %.034110.us115, i64 32 ; 2 uses
  %.not.us118 = icmp eq ptr %i.ae, %i.d
  br i1 %.not.us118, label %.thread84, label %.lr.ph114.split.split.us

.lr.ph114.split.split:                            ; preds = %.lr.ph114, %._crit_edge98.split.split
  %.034110 = phi ptr [ %i.ap, %._crit_edge98.split.split ], [ %i.b, %.lr.ph114 ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.034110, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !45 ; 2 uses
  %.not8794 = icmp eq ptr %i.ag, %.034110
  br i1 %.not8794, label %._crit_edge98.split.split, label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph114.split.split, %.thread66
  %.sroa.044.095 = phi ptr [ %i.ai, %.thread66 ], [ %i.ag, %.lr.ph114.split.split ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.044.095, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !45 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.044.095, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.044.095, i64 32 ; 2 uses
  %.sroa.038.091 = load ptr, ptr %i.aj, align 8, !tbaa !45 ; 2 uses
  %.not8892 = icmp eq ptr %.sroa.038.091, %i.ak
  br i1 %.not8892, label %.thread66, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.038.093, i64 8
  %.sroa.038.0 = load ptr, ptr %i.al, align 8, !tbaa !45 ; 2 uses
  %.not88 = icmp eq ptr %.sroa.038.0, %i.ak
  br i1 %.not88, label %.thread66, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph97, %bb.e
  %.sroa.038.093 = phi ptr [ %.sroa.038.0, %bb.e ], [ %.sroa.038.091, %.lr.ph97 ] ; 2 uses
  %i.am = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.038.093) #17
  %i.an = tail call i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_PNS_5BlockEEEENS_9WalkOrderE(ptr noundef nonnull %i.am, ptr %1, i64 %2, i32 noundef %3)
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.thread84, label %bb.e

.thread66:                                        ; preds = %bb.e, %.lr.ph97
  %.not87 = icmp eq ptr %i.ai, %.034110
  br i1 %.not87, label %._crit_edge98.split.split, label %.lr.ph97

._crit_edge98.split.split:                        ; preds = %.thread66, %.lr.ph114.split.split
  %i.ap = getelementptr inbounds nuw i8, ptr %.034110, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.ap, %i.d
  br i1 %.not, label %.thread84, label %.lr.ph114.split.split

.thread84:                                        ; preds = %._crit_edge98.split.split.us.us, %.lr.ph97.us117, %.lr.ph.us102.us, %._crit_edge98.split.us.us.split, %._crit_edge.us.us, %.lr.ph.us.us, %._crit_edge98.split.split, %.lr.ph, %bb.a
  %.sroa.033.10 = phi i32 [ %i.x, %.lr.ph97.us117 ], [ 1, %bb.a ], [ 1, %._crit_edge98.split.us.us.split ], [ 0, %._crit_edge.us.us ], [ 1, %._crit_edge98.split.split ], [ 0, %.lr.ph.us102.us ], [ 0, %.lr.ph.us.us ], [ 0, %.lr.ph ], [ 1, %._crit_edge98.split.split.us.us ]
  ret i32 %.sroa.033.10
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal range(i32 0, 2) i32 @"_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_5BlockEEE11callback_fnIZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass14runOnOperationEvE3$_0EES2_lS4_"(i64 noundef %0, ptr nofree noundef readonly captures(none) %1) #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 56
  %.val = load ptr, ptr %i.a, align 8, !tbaa !132 ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 64
  %.val1 = load ptr, ptr %i.b, align 8, !tbaa !133 ; 2 uses
  %.not9.i = icmp eq ptr %.val, %.val1
  br i1 %.not9.i, label %"_ZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass14runOnOperationEvENK3$_0clEPN4mlir5BlockE.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %2 = inttoptr i64 %0 to ptr
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.010.i = phi ptr [ %.val, %.lr.ph.i ], [ %i.p, %bb.d ] ; 2 uses
  %i.c = load i64, ptr %.010.i, align 8
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !11 ; 3 uses
  %i.j = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_5async9TokenTypeEvE2idE
  %i.k = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_5async9ValueTypeEvE2idE
  %or.cond.i.i.i = or i1 %i.j, %i.k
  %i.l = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_5async9GroupTypeEvE2idE
  %spec.select.i.i.i = or i1 %i.l, %or.cond.i.i.i
  br i1 %spec.select.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %3, align 8, !tbaa !134, !nonnull !25, !align !49
  %i.n = tail call fastcc i8 @_ZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingEN4mlir5ValueERN4llvm13SmallDenseMapIPNS1_9OperationES6_Lj4ENS3_12DenseMapInfoIS6_vEENS3_6detail12DenseMapPairIS6_S6_EEEE(ptr nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.m)
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %"_ZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass14runOnOperationEvENK3$_0clEPN4mlir5BlockE.exit"

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.010.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.p, %.val1
  br i1 %.not.i, label %"_ZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass14runOnOperationEvENK3$_0clEPN4mlir5BlockE.exit", label %bb.b

"_ZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass14runOnOperationEvENK3$_0clEPN4mlir5BlockE.exit": ; preds = %bb.c, %bb.d, %bb.a
  %.sroa.011.3.i = phi i32 [ 1, %bb.a ], [ 0, %bb.c ], [ 1, %bb.d ]
  ret i32 %.sroa.011.3.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i8 @_ZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingEN4mlir5ValueERN4llvm13SmallDenseMapIPNS1_9OperationES6_Lj4ENS3_12DenseMapInfoIS6_vEENS3_6detail12DenseMapPairIS6_S6_EEEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::Value", align 8       ; 3 uses
  %3 = alloca %"class.llvm::DenseMap.113", align 8 ; 9 uses
  %4 = alloca %"class.mlir::async::RuntimeAddRefOp", align 8 ; 7 uses
  %5 = alloca %"class.mlir::async::RuntimeDropRefOp", align 8 ; 8 uses
  store ptr %0, ptr %2, align 8
  %i.a = call noundef ptr @_ZN4mlir5Value15getParentRegionEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr %2, align 8, !tbaa !165
  %.sroa.013.066 = load ptr, ptr %i.b, align 8, !tbaa !167 ; 2 uses
  %.not2967 = icmp eq ptr %.sroa.013.066, null
  br i1 %.not2967, label %._crit_edge94, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e
  %.val2.i.pre = load ptr, ptr %3, align 8, !tbaa !52, !noalias !168
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val1.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !53, !noalias !168 ; 4 uses
  %.phi.trans.insert123 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.val.i.pre = load i32, ptr %.phi.trans.insert123, align 4, !tbaa !54, !noalias !168 ; 2 uses
  %.phi.trans.insert125 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val3.i.pre = load i32, ptr %.phi.trans.insert125, align 8, !tbaa !55, !noalias !168
  %i.c = icmp eq i32 %.val3.i.pre, 0
  %i.d = zext i32 %.val.i.pre to i64              ; 4 uses
  %.idx193 = mul nuw nsw i64 %i.d, 152            ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %.val.i.pre, 0
  %or.cond28 = select i1 %i.c, i1 true, i1 %.not.i.not.i.i
  br i1 %or.cond28, label %._crit_edge94, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.e = add nuw nsw i64 %i.d, 31
  %i.f = lshr i64 %i.e, 5                         ; 2 uses
  %i.g = load i32, ptr %.val1.i.pre, align 4, !tbaa !30, !noalias !169 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.i.i.i.preheader, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_E5beginEv.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %i.i = icmp eq i64 %i.f, 1
  br i1 %i.i, label %._crit_edge94, label %.lr.ph220

.lr.ph.i.i.i:                                     ; preds = %.lr.ph220
  %i.j = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.f
  br i1 %i.k, label %._crit_edge94, label %.lr.ph220, !llvm.loop !139

.lr.ph220:                                        ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.l = phi i64 [ %i.j, %.lr.ph.i.i.i ], [ 1, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.pre, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !30, !noalias !169 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i, label %._crit_edge.i.loopexit.i.i, !llvm.loop !139

._crit_edge.i.loopexit.i.i:                       ; preds = %.lr.ph220
  %i.p = mul i64 %i.l, 4864
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_E5beginEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_E5beginEv.exit: ; preds = %bb.b, %._crit_edge.i.loopexit.i.i
  %.012.lcssa.i.i.i = phi i64 [ 0, %bb.b ], [ %i.p, %._crit_edge.i.loopexit.i.i ]
  %.0.lcssa.i.i.i = phi i32 [ %i.g, %bb.b ], [ %i.n, %._crit_edge.i.loopexit.i.i ]
  %i.q = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %narrow = mul nuw nsw i32 %i.q, 152
  %.idx192 = zext nneg i32 %narrow to i64
  %i.r = add i64 %.012.lcssa.i.i.i, %.idx192      ; 2 uses
  %.not3091 = icmp eq i64 %i.r, %.idx193
  br i1 %.not3091, label %._crit_edge94, label %.lr.ph93

.lr.ph93:                                         ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_E5beginEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.w = add nuw nsw i64 %i.d, 31
  %i.x = lshr i64 %i.w, 5                         ; 2 uses
  br label %bb.f

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.sroa.013.068 = phi ptr [ %.sroa.013.0, %bb.e ], [ %.sroa.013.066, %bb.a ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.068, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !172
  br label %_ZN4mlir9Operation11getParentOpEv.exit

_ZN4mlir9Operation11getParentOpEv.exit:           ; preds = %bb.d, %.lr.ph
  %.068 = phi ptr [ %i.z, %.lr.ph ], [ %i.af, %bb.d ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.068, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !69 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZN4mlir9Operation15getParentRegionEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9Operation11getParentOpEv.exit
  %i.ac = call noundef ptr @_ZNK4mlir5Block9getParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ab) #17
  br label %_ZN4mlir9Operation15getParentRegionEv.exit

_ZN4mlir9Operation15getParentRegionEv.exit:       ; preds = %_ZN4mlir9Operation11getParentOpEv.exit, %bb.c
  %i.ad = phi ptr [ %i.ac, %bb.c ], [ null, %_ZN4mlir9Operation11getParentOpEv.exit ]
  %.not77 = icmp eq ptr %i.ad, %i.a
  call fastcc void @"_ZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingEN4mlir5ValueERN4llvm13SmallDenseMapIPNS1_9OperationES6_Lj4ENS3_12DenseMapInfoIS6_vEENS3_6detail12DenseMapPairIS6_S6_EEEEENK3$_1clES6_"(ptr nonnull %3, ptr noundef nonnull %.068)
  br i1 %.not77, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir9Operation15getParentRegionEv.exit
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !69, !nonnull !25, !noundef !25
  %i.af = call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ae) #17
  br label %_ZN4mlir9Operation11getParentOpEv.exit, !llvm.loop !140

bb.e:                                             ; preds = %_ZN4mlir9Operation15getParentRegionEv.exit
  %.sroa.013.0 = load ptr, ptr %.sroa.013.068, align 8, !tbaa !167 ; 2 uses
  %.not29 = icmp eq ptr %.sroa.013.0, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

._crit_edge94:                                    ; preds = %.lr.ph.i.i.i, %._crit_edge90, %_ZN4llvm16DenseMapIteratorIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS1_5ValueERNS_13SmallDenseMapIPNS1_9OperationES9_Lj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_S9_EEEEE14BlockUsersInfoNSA_IS3_vEENSD_IS3_SH_EELb0EEppEv.exit, %.lr.ph.i.i.preheader, %.lr.ph.i.i, %.lr.ph.i.i.i.preheader, %bb.a, %._crit_edge, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESA_Lj4ENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SA_EEEEE14BlockUsersInfoNSB_IS4_vEENSE_IS4_SI_EEEES4_SI_SJ_SK_E5beginEv.exit
  call fastcc void @_ZN4llvm8DenseMapIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS1_5ValueERNS_13SmallDenseMapIPNS1_9OperationES9_Lj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_S9_EEEEE14BlockUsersInfoNSA_IS3_vEENSD_IS3_SH_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i8 1

bb.f:                                             ; preds = %.lr.ph93, %_ZN4llvm16DenseMapIteratorIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS1_5ValueERNS_13SmallDenseMapIPNS1_9OperationES9_Lj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_S9_EEEEE14BlockUsersInfoNSA_IS3_vEENSD_IS3_SH_EELb0EEppEv.exit
  %.pn = phi i64 [ %i.r, %.lr.ph93 ], [ %i.ft, %_ZN4llvm16DenseMapIteratorIPN4mlir5BlockEZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS1_5ValueERNS_13SmallDenseMapIPNS1_9OperationES9_Lj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_S9_EEEEE14BlockUsersInfoNSA_IS3_vEENSD_IS3_SH_EELb0EEppEv.exit ] ; 2 uses
  %.sroa.09.192 = getelementptr i8, ptr %.val2.i.pre, i64 %.pn ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.192, i64 8 ; 2 uses
  %.val.i87 = load ptr, ptr %i.ag, align 8, !tbaa !13 ; 16 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.09.192, i64 16 ; 2 uses
  %.val4.i = load i32, ptr %i.ah, align 8, !tbaa !38 ; 4 uses
  %i.ai = zext i32 %.val4.i to i64                ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.ai, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i87, i64 %.idx.i.i ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %.val4.i, 0
  br i1 %.not.i.i.i.i.i, label %"_ZN4llvm4sortIRNS_11SmallVectorIN4mlir5async15RuntimeAddRefOpELj4EEEZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS2_5ValueERNS_13SmallDenseMapIPNS2_9OperationESC_Lj4ENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_SC_EEEEENK3$_0clERZNS8_25optimizeReferenceCountingES9_SJ_E14BlockUsersInfoEUlSC_SC_E_EEvOT_T0_.exit.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = ptrtoint ptr %.val.i87 to i64
  %i.al = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ai, i1 true)
  %i.am = shl nuw nsw i64 %i.al, 1
  %i.an = xor i64 %i.am, 126
  call fastcc void @"_ZSt16__introsort_loopIPN4mlir5async15RuntimeAddRefOpElN9__gnu_cxx5__ops15_Iter_comp_iterIZZN12_GLOBAL__N_130AsyncRuntimeRefCountingOptPass25optimizeReferenceCountingENS0_5ValueERN4llvm13SmallDenseMapIPNS0_9OperationESD_Lj4ENSA_12DenseMapInfoISD_vEENSA_6detail12DenseMapPairISD_SD_EEEEENK3$_0clERZNS8_25optimizeReferenceCountingES9_SK_E14BlockUsersInfoEUlSD_SD_E_EEEvT_SQ_T0_T1_"(ptr noundef %.val.i87, ptr noundef nonnull %i.aj, i64 noundef %i.an)
  %i.ao = icmp ugt i32 %.val4.i, 16
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %.val.i87, i64 8 ; 2 uses
  br i1 %i.ao, label %.preheader.i.i.i.i, label %bb.m

.preheader.i.i.i.i:                               ; preds = %bb.g, %bb.l
  %.021.i.idx.i.i.i.i.i.i = phi i64 [ %.021.i.add.i.i.i.i.i.i, %bb.l ], [ 8, %bb.g ] ; 4 uses
  %.pn20.i.i.i.i.i.i.i = phi ptr [ %.021.i.ptr.i.i.i.i.i.i, %bb.l ], [ %.val.i87, %bb.g ] ; 3 uses
  %.021.i.ptr.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i87, i64 %.021.i.idx.i.i.i.i.i.i ; 6 uses
  %.0.val.i.i.i.i.i.i.i = load ptr, ptr %.021.i.ptr.i.i.i.i.i.i, align 8, !tbaa !71
  %.val.i.i.i.i.i.i.i = load ptr, ptr %.val.i87, align 8, !tbaa !71
  %i.ap = call noundef zeroext i1 @_ZN4mlir9Operation15isBeforeInBlockEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %.0.val.i.i.i.i.i.i.i, ptr noundef %.val.i.i.i.i.i.i.i) #17
  br i1 %i.ap, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.preheader.i.i.i.i
  %.sroa.01.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.021.i.ptr.i.i.i.i.i.i, align 8
  %i.aq = icmp samesign ugt i64 %.021.i.idx.i.i.i.i.i.i, 8
  br i1 %i.aq, label %bb.i, label %bb.j, !prof !72

bb.i:                                             ; preds = %bb.h
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.val.i87, i64 %.021.i.idx.i.i.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIPN4mlir5async15RuntimeAddRefOpES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i.i.i, i64 8
  %i.as = load i64, ptr %.val.i87, align 8
  store i64 %i.as, ptr %i.ar, align 8
  br label %_ZSt13move_backwardIPN4mlir5async15RuntimeAddRefOpES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i.i

_ZSt13move_backwardIPN4mlir5async15RuntimeAddRefOpES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  store ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i, ptr %.val.i87, align 8
  br label %bb.l

bb.k:                                             ; preds = %.preheader.i.i.i.i
  %i.at = load i64, ptr %.021.i.ptr.i.i.i.i.i.i, align 8 ; 2 uses
end_hunk_0
