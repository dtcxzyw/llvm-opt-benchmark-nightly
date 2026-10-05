Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/FormExpressions?download=true
inline.NumInlined: 632
inline.NumDeleted: 519
begin_hunk_0_@_ZNK4mlir4Pass13canScheduleOnEPNS_9OperationE:bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %.not.i.not = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  br i1 %.not.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr nonnull %.sroa.0.0.copyload.i) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.g, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK4mlir5emitc4impl23FormExpressionsPassBaseIN12_GLOBAL__N_119FormExpressionsPassEE9clonePassEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(336) %1) unnamed_addr #0 align 2 {
_ZNSt10unique_ptrIN12_GLOBAL__N_119FormExpressionsPassESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(336) ptr @_Znwm(i64 noundef 336) #12, !noalias !116, !inline_history !115 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !10, !noalias !116
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !116
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.e, align 8, !tbaa !10, !noalias !116
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i8 0, ptr %i.f, align 8, !tbaa !23, !noalias !116
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, i8 0, i64 56, i1 false), !noalias !116
  store ptr %i.i, ptr %i.h, align 8, !tbaa !12, !noalias !116
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i32 0, ptr %i.j, align 8, !tbaa !35, !noalias !116
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  store i32 4, ptr %i.k, align 4, !tbaa !13, !noalias !116
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store ptr %i.m, ptr %i.l, align 8, !tbaa !12, !noalias !116
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i32 0, ptr %i.n, align 8, !tbaa !35, !noalias !116
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  store i32 4, ptr %i.o, align 4, !tbaa !13, !noalias !116
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i8 0, i64 64, i1 false), !noalias !116
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_119FormExpressionsPassE, i64 16), ptr %i.a, align 8, !tbaa !15, !noalias !116
  store ptr %i.a, ptr %0, align 8, !tbaa !18
  ret void
}

declare void @_ZN4mlir4Pass6anchorEv(ptr noundef nonnull align 8 dereferenceable(336)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

declare void @_ZN4mlir15DialectRegistry6insertENS_6TypeIDEN4llvm9StringRefERKSt8functionIFPNS_7DialectEPNS_11MLIRContextEEE(ptr noundef nonnull align 8 dereferenceable(136), ptr, ptr, i64, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_5emitc12EmitCDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.54, align 8             ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !117    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %i.a, ptr %2, align 8, !tbaa !57
  %i.b = ptrtoint ptr %2 to i64
  %i.c = call noundef ptr @_ZN4mlir11MLIRContext16getOrLoadDialectEN4llvm9StringRefENS_6TypeIDENS1_12function_refIFSt10unique_ptrINS_7DialectESt14default_deleteIS6_EEvEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull @.str.1, i64 5, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_5emitc12EmitCDialectEvE2idE, ptr nonnull @_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_5emitc12EmitCDialectEEEPT_vEUlvE_EES6_l, i64 %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_5emitc12EmitCDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_5emitc12EmitCDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_5emitc12EmitCDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split
    i32 0, label %.sink.split.i
  ]

.sink.split.i:                                    ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_5emitc12EmitCDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_5emitc12EmitCDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %.sink.split.i
  %.sink = phi ptr [ null, %.sink.split.i ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !118
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_5emitc12EmitCDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_5emitc12EmitCDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_5emitc12EmitCDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

declare noundef ptr @_ZN4mlir11MLIRContext16getOrLoadDialectEN4llvm9StringRefENS_6TypeIDENS1_12function_refIFSt10unique_ptrINS_7DialectESt14default_deleteIS6_EEvEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr, ptr, i64) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_5emitc12EmitCDialectEEEPT_vEUlvE_EES6_l(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.55") align 8 %0, i64 noundef %1) #0 comdat align 2 {
_ZNSt10unique_ptrIN4mlir5emitc12EmitCDialectESt14default_deleteIS2_EED2Ev.exit:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57, !noalias !121
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #12, !noalias !121 ; 2 uses
  tail call void @_ZN4mlir5emitc12EmitCDialectC1EPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef %i.b) #14, !noalias !121
  store ptr %i.c, ptr %0, align 8, !tbaa !123
  ret void
}

declare void @_ZN4mlir5emitc12EmitCDialectC1EPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #6

declare void @_ZN4mlir5emitc26populateExpressionPatternsERNS_17RewritePatternSetE(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #6

declare void @_ZN4mlir23FrozenRewritePatternSetC1EONS_17RewritePatternSetEN4llvm8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(176), ptr, i64, ptr, i64) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN4mlir23FrozenRewritePatternSetD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #9

declare noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %1(i64 noundef %2, ptr noundef %0) #14, !inline_history !124
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #14 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 5
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not41 = icmp eq i64 %i.d, 0
  br i1 %.not41, label %._crit_edge43, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.042 = phi ptr [ %i.g, %._crit_edge ], [ %i.c, %bb.c ] ; 4 uses
  %.sroa.022.0.in36 = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %.sroa.022.037 = load ptr, ptr %.sroa.022.0.in36, align 8, !tbaa !125 ; 2 uses
  %.not3238 = icmp eq ptr %.sroa.022.037, %.042
  br i1 %.not3238, label %._crit_edge, label %.lr.ph40

._crit_edge43:                                    ; preds = %._crit_edge, %bb.c
  %i.f = icmp eq i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph40
  %.sroa.022.0.in = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 8
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !tbaa !125 ; 2 uses
  %.not32 = icmp eq ptr %.sroa.022.0, %.042
  br i1 %.not32, label %._crit_edge, label %.lr.ph40

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge43, label %.preheader

.lr.ph40:                                         ; preds = %.preheader, %.loopexit
  %.sroa.022.039 = phi ptr [ %.sroa.022.0, %.loopexit ], [ %.sroa.022.037, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !125  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 32 ; 2 uses
  %.not3334 = icmp eq ptr %i.i, %i.j
  br i1 %.not3334, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph40, %.lr.ph
  %.sroa.019.035 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %.lr.ph40 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !125  ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.035) #14
  tail call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull %i.m, ptr %1, i64 %2, i32 noundef %3)
  %.not33 = icmp eq ptr %i.l, %i.j
  br i1 %.not33, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge43
  tail call void %1(i64 noundef %2, ptr noundef nonnull %0) #14, !inline_history !124
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge43
  ret void
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZN12_GLOBAL__N_119FormExpressionsPass14runOnOperationEvEUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_5emitc20CExpressionInterfaceENS1_6detail35CExpressionInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZZN12_GLOBAL__N_119FormExpressionsPass14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_.exit, label %2

2:                                                ; preds = %bb.a
  %.not8.i.i = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_5emitc12ExpressionOpEvE2idE
  br i1 %.not8.i.i, label %.split.us.i.i, label %.preheader.i

.split.us.i.i:                                    ; preds = %2
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !127      ; 2 uses
  %.not.i.us6.i.i = icmp eq ptr %4, null
  br i1 %.not.i.us6.i.i, label %bb.c, label %_ZN4mlir9Operation11getParentOpEv.exit.us.i.i

5:                                                ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.us.i.i
  %6 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %7 = load ptr, ptr %6, align 8, !tbaa !127      ; 2 uses
  %.not.i.us.i.i = icmp eq ptr %7, null
  br i1 %.not.i.us.i.i, label %bb.c, label %_ZN4mlir9Operation11getParentOpEv.exit.us.i.i

_ZN4mlir9Operation11getParentOpEv.exit.us.i.i:    ; preds = %.split.us.i.i, %5
  %8 = phi ptr [ %7, %5 ], [ %4, %.split.us.i.i ]
  %9 = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %8) #14 ; 2 uses
  %.not.us.i.i = icmp eq ptr %9, null
  br i1 %.not.us.i.i, label %bb.c, label %5

.preheader.i:                                     ; preds = %2, %bb.b
  %.0.i.i = phi ptr [ %i.e, %bb.b ], [ %1, %2 ]
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !127  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZN4mlir9Operation11getParentOpEv.exit.i.i

_ZN4mlir9Operation11getParentOpEv.exit.i.i:       ; preds = %.preheader.i
  %i.e = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.d) #14 ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.i = icmp eq ptr %i.h, @_ZN4mlir6detail14TypeIDResolverINS_5emitc12ExpressionOpEvE2idE
  br i1 %i.i, label %_ZZN12_GLOBAL__N_119FormExpressionsPass14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_.exit, label %.preheader.i, !llvm.loop !126

bb.c:                                             ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.i.i, %.preheader.i, %_ZN4mlir9Operation11getParentOpEv.exit.us.i.i, %5, %.split.us.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !128
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.d, label %_ZZN12_GLOBAL__N_119FormExpressionsPass14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_.exit

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !130, !nonnull !24, !align !131
  %i.n = tail call ptr @_ZN4mlir5emitc16createExpressionEPNS_9OperationERNS_9OpBuilderE(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %i.m) #14 ; 0 uses
  br label %_ZZN12_GLOBAL__N_119FormExpressionsPass14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_.exit

_ZZN12_GLOBAL__N_119FormExpressionsPass14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  ret void
}

declare ptr @_ZN4mlir5emitc16createExpressionEPNS_9OperationERNS_9OpBuilderE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4mlir11OpInterfaceINS_5emitc20CExpressionInterfaceENS1_6detail35CExpressionInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !53 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %.not.i.not = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  br i1 %.not.i.not, label %_ZNK4mlir13OperationName10getDialectEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_5emitc20CExpressionInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_5emitc20CExpressionInterfaceEPNS_9OperationENS2_6detail35CExpressionInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, !prof !134

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5emitc20CExpressionInterfaceEvE13resolveTypeIDEvE2id) #14
  %.not.i.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_5emitc20CExpressionInterfaceEPNS_9OperationENS2_6detail35CExpressionInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.5, i64 49), i64 33) #14
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5emitc20CExpressionInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5emitc20CExpressionInterfaceEvE13resolveTypeIDEvE2id) #14
  br label %_ZN4mlir6detail9InterfaceINS_5emitc20CExpressionInterfaceEPNS_9OperationENS2_6detail35CExpressionInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i

_ZN4mlir6detail9InterfaceINS_5emitc20CExpressionInterfaceEPNS_9OperationENS2_6detail35CExpressionInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5emitc20CExpressionInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !10 ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !12   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !35   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_5emitc20CExpressionInterfaceEPNS_9OperationENS2_6detail35CExpressionInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i
  %.017.i.i.i.i.i.i = phi i64 [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i = phi ptr [ %i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %i.m = lshr i64 %.017.i.i.i.i.i.i, 1            ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i, i64 %i.m ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !10
  %i.o = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = xor i64 %i.m, -1
  %i.r = add nsw i64 %.017.i.i.i.i.i.i, %i.q
  %.112.i.i.i.i.i.i = select i1 %i.o, ptr %i.p, ptr %.01116.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.o, i64 %i.r, i64 %i.m ; 2 uses
  %i.s = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.s, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, !llvm.loop !132

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_5emitc20CExpressionInterfaceEPNS_9OperationENS2_6detail35CExpressionInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %.pre-phi.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_5emitc20CExpressionInterfaceEPNS_9OperationENS2_6detail35CExpressionInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %_ZN4mlir6detail9InterfaceINS_5emitc20CExpressionInterfaceEPNS_9OperationENS2_6detail35CExpressionInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.pre-phi.i.i.i
  %.not.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i, %i.t
  br i1 %.not.i.i.i, label %_ZNK4mlir13OperationName12getInterfaceINS_5emitc20CExpressionInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i
  %i.u = load ptr, ptr %.011.lcssa.i.i.i.i.i.i, align 8, !tbaa !55
  %i.v = icmp eq ptr %i.u, %.sroa.01.0.copyload.i.i.i.i.i
  br i1 %i.v, label %_ZNK4mlir13OperationName12getInterfaceINS_5emitc20CExpressionInterfaceEEEPNT_7ConceptEv.exit, label %_ZNK4mlir13OperationName12getInterfaceINS_5emitc20CExpressionInterfaceEEEPNT_7ConceptEv.exit.thread

_ZNK4mlir13OperationName12getInterfaceINS_5emitc20CExpressionInterfaceEEEPNT_7ConceptEv.exit: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !136  ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %_ZNK4mlir13OperationName12getInterfaceINS_5emitc20CExpressionInterfaceEEEPNT_7ConceptEv.exit.thread, label %.thread

_ZNK4mlir13OperationName12getInterfaceINS_5emitc20CExpressionInterfaceEEEPNT_7ConceptEv.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, %bb.e, %_ZNK4mlir13OperationName12getInterfaceINS_5emitc20CExpressionInterfaceEEEPNT_7ConceptEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !149  ; 2 uses
  %.sroa.0.0.copyload.i16 = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.aa = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_5emitc20CExpressionInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_5emitc20CExpressionInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, !prof !134

bb.f:                                             ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_5emitc20CExpressionInterfaceEEEPNT_7ConceptEv.exit.thread
  %i.ac = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5emitc20CExpressionInterfaceEvE13resolveTypeIDEvE2id) #14
  %.not.i.i.i.i17 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i17, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_5emitc20CExpressionInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.5, i64 49), i64 33) #14
  store ptr %i.ad, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5emitc20CExpressionInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5emitc20CExpressionInterfaceEvE13resolveTypeIDEvE2id) #14
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_5emitc20CExpressionInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_5emitc20CExpressionInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit: ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_5emitc20CExpressionInterfaceEEEPNT_7ConceptEv.exit.thread, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5emitc20CExpressionInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !10
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr %.sroa.01.0.copyload.i.i.i.i, ptr %.sroa.0.0.copyload.i16) #14, !inline_history !133
  br label %.thread

_ZNK4mlir13OperationName10getDialectEv.exit:      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ai, align 8
  store ptr %.sroa.0.0.copyload.i.i, ptr %1, align 8
  %i.aj = call noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #14 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %.not15 = icmp eq ptr %i.aj, null
  br i1 %.not15, label %.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK4mlir13OperationName10getDialectEv.exit
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_5emitc20CExpressionInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.i, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_5emitc20CExpressionInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, !prof !134

bb.i:                                             ; preds = %bb.h
  %i.am = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5emitc20CExpressionInterfaceEvE13resolveTypeIDEvE2id) #14
  %.not.i.i.i.i20 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i20, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_5emitc20CExpressionInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.5, i64 49), i64 33) #14
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5emitc20CExpressionInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5emitc20CExpressionInterfaceEvE13resolveTypeIDEvE2id) #14
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_5emitc20CExpressionInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_5emitc20CExpressionInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21: ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.01.0.copyload.i.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5emitc20CExpressionInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !10
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, ptr %.sroa.01.0.copyload.i.i.i.i19, ptr nonnull %.sroa.0.0.copyload.i) #14, !inline_history !133
  br label %.thread

.thread:                                          ; preds = %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_5emitc20CExpressionInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, %_ZNK4mlir13OperationName10getDialectEv.exit, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_5emitc20CExpressionInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, %_ZNK4mlir13OperationName12getInterfaceINS_5emitc20CExpressionInterfaceEEEPNT_7ConceptEv.exit
  %.3 = phi ptr [ %i.ah, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_5emitc20CExpressionInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit ], [ %i.x, %_ZNK4mlir13OperationName12getInterfaceINS_5emitc20CExpressionInterfaceEEEPNT_7ConceptEv.exit ], [ %i.ar, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_5emitc20CExpressionInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21 ], [ null, %_ZNK4mlir13OperationName10getDialectEv.exit ]
  ret ptr %.3
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #10

declare ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr, i64) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #10

declare noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

declare i8 @_ZN4mlir21applyPatternsGreedilyERNS_6RegionERKNS_23FrozenRewritePatternSetENS_19GreedyRewriteConfigEPb(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef byval(%"class.mlir::GreedyRewriteConfig") align 8, ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir16PDLPatternModuleD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.c = load i32, ptr %i.b, align 4, !tbaa !154
  %i.d = icmp eq i32 %i.c, 0
  %.pre13.i = load ptr, ptr %i.a, align 8, !tbaa !155 ; 4 uses
  br i1 %i.d, label %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load i32, ptr %i.e, align 8, !tbaa !156  ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i = shl nuw nsw i64 %i.g, 3
  %i.h = getelementptr inbounds nuw i8, ptr %.pre13.i, i64 %.idx.i
  %.not11.i = icmp eq i32 %i.f, 0
  br i1 %.not11.i, label %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.012.i = phi ptr [ %i.p, %bb.e ], [ %.pre13.i, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %.012.i, align 8, !tbaa !158 ; 5 uses
  %.not10.i = icmp eq ptr %i.i, null
  br i1 %.not10.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = load i64, ptr %i.i, align 8, !tbaa !160
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm14StringMapEntryISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i, label %bb.d
end_hunk_0
