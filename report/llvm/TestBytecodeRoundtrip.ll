Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestBytecodeRoundtrip?download=true
inline.NumInlined: 2534
inline.NumDeleted: 1771
begin_hunk_0_@_ZZN4mlir22AttrTypeBytecodeWriterINS_9AttributeEE12fromCallableIZN12_GLOBAL__N_125TestBytecodeRoundtripPass8runTest5EPNS_9OperationEEUlS1_RSt8optionalIN4llvm9StringRefEERNS_21DialectBytecodeWriterEE_TnNSt9enable_ifIXsr3stdE16is_convertible_vIT_St8functionIFNS9_13LogicalResultES1_SC_SE_EEEEbE4typeELb1EEESt10unique_ptrIS2_St14default_deleteIS2_EEOSH_EN9ProcessorD0Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal i8 @_ZZN4mlir22AttrTypeBytecodeWriterINS_9AttributeEE12fromCallableIZN12_GLOBAL__N_125TestBytecodeRoundtripPass8runTest5EPNS_9OperationEEUlS1_RSt8optionalIN4llvm9StringRefEERNS_21DialectBytecodeWriterEE_TnNSt9enable_ifIXsr3stdE16is_convertible_vIT_St8functionIFNS9_13LogicalResultES1_SC_SE_EEEEbE4typeELb1EEESt10unique_ptrIS2_St14default_deleteIS2_EEOSH_EN9Processor5writeES1_SC_SE_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !572
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !94 ; 2 uses
  %i.b = load ptr, ptr %.val.val, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i8 %i.d(ptr noundef nonnull align 8 dereferenceable(24) %.val.val, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %3) #25, !inline_history !570
  ret i8 %i.e
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN4mlir22AttrTypeBytecodeWriterINS_4TypeEE12fromCallableIZN12_GLOBAL__N_125TestBytecodeRoundtripPass8runTest5EPNS_9OperationEEUlS1_RSt8optionalIN4llvm9StringRefEERNS_21DialectBytecodeWriterEE_TnNSt9enable_ifIXsr3stdE16is_convertible_vIT_St8functionIFNS9_13LogicalResultES1_SC_SE_EEEEbE4typeELb1EEESt10unique_ptrIS2_St14default_deleteIS2_EEOSH_EN9ProcessorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal i8 @_ZZN4mlir22AttrTypeBytecodeWriterINS_4TypeEE12fromCallableIZN12_GLOBAL__N_125TestBytecodeRoundtripPass8runTest5EPNS_9OperationEEUlS1_RSt8optionalIN4llvm9StringRefEERNS_21DialectBytecodeWriterEE_TnNSt9enable_ifIXsr3stdE16is_convertible_vIT_St8functionIFNS9_13LogicalResultES1_SC_SE_EEEEbE4typeELb1EEESt10unique_ptrIS2_St14default_deleteIS2_EEOSH_EN9Processor5writeES1_SC_SE_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !575
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !94 ; 2 uses
  %i.b = load ptr, ptr %.val.val, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i8 %i.d(ptr noundef nonnull align 8 dereferenceable(24) %.val.val, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %3) #25, !inline_history !573
  ret i8 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir22AttrTypeBytecodeReaderINS_9AttributeEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN4mlir22AttrTypeBytecodeReaderINS_9AttributeEE12fromCallableIZN12_GLOBAL__N_125TestBytecodeRoundtripPass8runTest5EPNS_9OperationEEUlRNS_21DialectBytecodeReaderEN4llvm9StringRefERS1_E_TnNSt9enable_ifIXsr3stdE16is_convertible_vIT_St8functionIFNSA_13LogicalResultES9_SB_SC_EEEEbE4typeELb1EEESt10unique_ptrIS2_St14default_deleteIS2_EEOSF_EN9ProcessorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZZN4mlir22AttrTypeBytecodeReaderINS_9AttributeEE12fromCallableIZN12_GLOBAL__N_125TestBytecodeRoundtripPass8runTest5EPNS_9OperationEEUlRNS_21DialectBytecodeReaderEN4llvm9StringRefERS1_E_TnNSt9enable_ifIXsr3stdE16is_convertible_vIT_St8functionIFNSA_13LogicalResultES9_SB_SC_EEEEbE4typeELb1EEESt10unique_ptrIS2_St14default_deleteIS2_EEOSF_EN9Processor4readES9_SB_SC_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !578
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !94 ; 2 uses
  %i.b = load ptr, ptr %.val.val, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr %i.d(ptr noundef nonnull align 8 dereferenceable(24) %.val.val, ptr noundef nonnull align 8 dereferenceable(8) %1) #25, !inline_history !576 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZZN12_GLOBAL__N_125TestBytecodeRoundtripPass8runTest5EPN4mlir9OperationEENKUlRNS1_21DialectBytecodeReaderEN4llvm9StringRefERNS1_9AttributeEE_clES5_S7_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  store i64 %i.g, ptr %4, align 8, !tbaa !177
  br label %_ZZN12_GLOBAL__N_125TestBytecodeRoundtripPass8runTest5EPN4mlir9OperationEENKUlRNS1_21DialectBytecodeReaderEN4llvm9StringRefERNS1_9AttributeEE_clES5_S7_S9_.exit

_ZZN12_GLOBAL__N_125TestBytecodeRoundtripPass8runTest5EPN4mlir9OperationEENKUlRNS1_21DialectBytecodeReaderEN4llvm9StringRefERNS1_9AttributeEE_clES5_S7_S9_.exit: ; preds = %bb.a, %bb.b
  %.sroa.03.0.i = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i8 %.sroa.03.0.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN4mlir22AttrTypeBytecodeReaderINS_4TypeEE12fromCallableIZN12_GLOBAL__N_125TestBytecodeRoundtripPass8runTest5EPNS_9OperationEEUlRNS_21DialectBytecodeReaderEN4llvm9StringRefERS1_E_TnNSt9enable_ifIXsr3stdE16is_convertible_vIT_St8functionIFNSA_13LogicalResultES9_SB_SC_EEEEbE4typeELb1EEESt10unique_ptrIS2_St14default_deleteIS2_EEOSF_EN9ProcessorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZZN4mlir22AttrTypeBytecodeReaderINS_4TypeEE12fromCallableIZN12_GLOBAL__N_125TestBytecodeRoundtripPass8runTest5EPNS_9OperationEEUlRNS_21DialectBytecodeReaderEN4llvm9StringRefERS1_E_TnNSt9enable_ifIXsr3stdE16is_convertible_vIT_St8functionIFNSA_13LogicalResultES9_SB_SC_EEEEbE4typeELb1EEESt10unique_ptrIS2_St14default_deleteIS2_EEOSF_EN9Processor4readES9_SB_SC_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !581
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !94 ; 2 uses
  %i.b = load ptr, ptr %.val.val, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr %i.d(ptr noundef nonnull align 8 dereferenceable(24) %.val.val, ptr noundef nonnull align 8 dereferenceable(8) %1) #25, !inline_history !579 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZZN12_GLOBAL__N_125TestBytecodeRoundtripPass8runTest5EPN4mlir9OperationEENKUlRNS1_21DialectBytecodeReaderEN4llvm9StringRefERNS1_4TypeEE_clES5_S7_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  store i64 %i.g, ptr %4, align 8, !tbaa !175
  br label %_ZZN12_GLOBAL__N_125TestBytecodeRoundtripPass8runTest5EPN4mlir9OperationEENKUlRNS1_21DialectBytecodeReaderEN4llvm9StringRefERNS1_4TypeEE_clES5_S7_S9_.exit

_ZZN12_GLOBAL__N_125TestBytecodeRoundtripPass8runTest5EPN4mlir9OperationEENKUlRNS1_21DialectBytecodeReaderEN4llvm9StringRefERNS1_4TypeEE_clES5_S7_S9_.exit: ; preds = %bb.a, %bb.b
  %.sroa.03.0.i = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i8 %.sroa.03.0.i
}

declare i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %1(i64 noundef %2, ptr noundef %0) #25, !inline_history !582
  switch i32 %i.b, label %bb.c [
    i32 2, label %.thread
    i32 0, label %.thread.fold.split
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #25 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not75 = icmp eq i64 %i.e, 0
  br i1 %.not75, label %._crit_edge77, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.03176 = phi ptr [ %i.o, %._crit_edge ], [ %i.d, %bb.c ] ; 4 uses
  %.sroa.037.0.in71 = getelementptr inbounds nuw i8, ptr %.03176, i64 8
  %.sroa.037.072 = load ptr, ptr %.sroa.037.0.in71, align 8, !tbaa !165 ; 2 uses
  %.not6973 = icmp eq ptr %.sroa.037.072, %.03176
  br i1 %.not6973, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.d
  %.sroa.037.0.in = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 8
  %.sroa.037.0 = load ptr, ptr %.sroa.037.0.in, align 8, !tbaa !165 ; 2 uses
  %.not69 = icmp eq ptr %.sroa.037.0, %.03176
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.loopexit
  %.sroa.037.074 = phi ptr [ %.sroa.037.0, %.loopexit ], [ %.sroa.037.072, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !165
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.034.0 = phi ptr [ %i.h, %.lr.ph ], [ %i.k, %bb.e ] ; 3 uses
  %.not70 = icmp eq ptr %.sroa.034.0, %i.i
  br i1 %.not70, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.034.0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !165
  %i.l = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.034.0) #25
  %i.m = tail call i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef nonnull %i.l, ptr %1, i64 %2, i32 noundef %3)
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.thread, label %bb.d

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %.03176, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.f
  br i1 %.not, label %._crit_edge77, label %.preheader

._crit_edge77:                                    ; preds = %._crit_edge, %bb.c
  %i.p = icmp eq i32 %3, 1
  br i1 %i.p, label %bb.f, label %.thread

bb.f:                                             ; preds = %._crit_edge77
  %i.q = tail call i32 %1(i64 noundef %2, ptr noundef nonnull %0) #25, !inline_history !582
  br label %.thread

.thread.fold.split:                               ; preds = %bb.b
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.b, %.thread.fold.split, %._crit_edge77, %bb.f
  %.sroa.030.9 = phi i32 [ %i.q, %bb.f ], [ 0, %.thread.fold.split ], [ 1, %._crit_edge77 ], [ 1, %bb.b ], [ 0, %bb.e ]
  ret i32 %.sroa.030.9
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal range(i32 0, 2) i32 @_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_125TestBytecodeRoundtripPass18downgradeToVersionES4_RKN4test18TestDialectVersionEEUlNSE_16TestVersionedOpAEE_SI_S2_EENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESQ_E4typeES4_OT1_EUlS4_E_EES2_lS4_(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 15 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !139
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !140
  %i.e = icmp ne ptr %i.d, @_ZN4mlir6detail14TypeIDResolverIN4test16TestVersionedOpAEvE2idE
  %.not2.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not2.i, %i.e
  br i1 %.not.i, label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_125TestBytecodeRoundtripPass18downgradeToVersionEPNS_9OperationERKN4test18TestDialectVersionEEUlNS8_16TestVersionedOpAEE_SC_NS_10WalkResultEEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S7_PNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_SE_EE5valueESL_E4typeES7_OT1_ENKUlS7_E_clES7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.g, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.h = lshr i32 %i.g, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.h, 1
  %i.i = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = tail call noundef zeroext i1 @_ZNK4mlir8BoolAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #25
  br i1 %i.l, label %bb.c, label %bb.u

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 1, ptr %i.m, align 8, !tbaa !102
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.n, align 1, !tbaa !103
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %7, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(34) %8) #25
  %i.o = load ptr, ptr %7, align 8, !tbaa !111
  %.not.i.i2.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i2.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 3, ptr %6, align 8, !tbaa !114
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.33, ptr %i.q, align 8, !tbaa !26
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 28, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 15 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !39   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 5 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !22
  %.not.i.i.i.i.i.i.i = icmp ult i32 %i.s, %i.u
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e, !prof !89

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = zext i32 %i.s to i64
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.y = load i32, ptr %i.r, align 8, !tbaa !39
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.r, align 8, !tbaa !39
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit.i.i

_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.pr.i.i = load ptr, ptr %7, align 8, !tbaa !111
  %.not.i.i3.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i3.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit.i.i
  %i.aa = load ptr, ptr %.val, align 8, !tbaa !584, !nonnull !45, !align !144
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !33
  store i32 5, ptr %5, align 8, !tbaa !114
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ae = zext i32 %i.ac to i64
  store i64 %i.ae, ptr %i.ad, align 8, !tbaa !60
  %i.af = load i32, ptr %i.r, align 8, !tbaa !39  ; 2 uses
  %i.ag = load i32, ptr %i.t, align 4, !tbaa !22
  %.not.i.i.i.i.i4.i.i = icmp ult i32 %i.af, %i.ag
  br i1 %.not.i.i.i.i.i4.i.i, label %bb.i, label %bb.h, !prof !89

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRKjEEOS0_OT_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ah = zext i32 %i.af to i64
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.ak = load i32, ptr %i.r, align 8, !tbaa !39
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.r, align 8, !tbaa !39
  br label %_ZNO4mlir18InFlightDiagnosticlsIRKjEEOS0_OT_.exit.i.i

_ZNO4mlir18InFlightDiagnosticlsIRKjEEOS0_OT_.exit.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.pr17.i.i = load ptr, ptr %7, align 8, !tbaa !111
  %.not.i.i5.i.i = icmp eq ptr %.pr17.i.i, null
  br i1 %.not.i.i5.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit.thread.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRKjEEOS0_OT_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store i32 3, ptr %4, align 8, !tbaa !114
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.12, ptr %i.am, align 8, !tbaa !26
  %.sroa.2.0..sroa_idx.i.i.i.i.i6.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i6.i.i, align 8, !tbaa !28
  %i.an = load i32, ptr %i.r, align 8, !tbaa !39  ; 2 uses
  %i.ao = load i32, ptr %i.t, align 4, !tbaa !22
  %.not.i.i.i.i.i7.i.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i.i.i.i.i7.i.i, label %bb.l, label %bb.k, !prof !89

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.ap = zext i32 %i.an to i64
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.as = load i32, ptr %i.r, align 8, !tbaa !39
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.r, align 8, !tbaa !39
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit.i.i

_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit.i.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.pr19.pr.i.i = load ptr, ptr %7, align 8, !tbaa !111
  %.not.i.i8.i.i = icmp eq ptr %.pr19.pr.i.i, null
  br i1 %.not.i.i8.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit.thread.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit.i.i
  %i.au = load ptr, ptr %.val, align 8, !tbaa !584, !nonnull !45, !align !144
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !33
  store i32 5, ptr %3, align 8, !tbaa !114
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ay = zext i32 %i.aw to i64
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !60
  %i.az = load i32, ptr %i.r, align 8, !tbaa !39  ; 2 uses
  %i.ba = load i32, ptr %i.t, align 4, !tbaa !22
  %.not.i.i.i.i.i9.i.i = icmp ult i32 %i.az, %i.ba
  br i1 %.not.i.i.i.i.i9.i.i, label %bb.o, label %bb.n, !prof !89

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRKjEEOS0_OT_.exit11.i.i

bb.o:                                             ; preds = %bb.m
  %i.bb = zext i32 %i.az to i64
  %i.bc = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.be = load i32, ptr %i.r, align 8, !tbaa !39
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.r, align 8, !tbaa !39
  br label %_ZNO4mlir18InFlightDiagnosticlsIRKjEEOS0_OT_.exit11.i.i

_ZNO4mlir18InFlightDiagnosticlsIRKjEEOS0_OT_.exit11.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.pr21.i.i = load ptr, ptr %7, align 8, !tbaa !111
  %.not.i.i12.i.i = icmp eq ptr %.pr21.i.i, null
  br i1 %.not.i.i12.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit.thread.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRKjEEOS0_OT_.exit11.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i32 3, ptr %2, align 8, !tbaa !114
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.34, ptr %i.bg, align 8, !tbaa !26
  %.sroa.2.0..sroa_idx.i.i.i.i.i13.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 37, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i13.i.i, align 8, !tbaa !28
  %i.bh = load i32, ptr %i.r, align 8, !tbaa !39  ; 2 uses
  %i.bi = load i32, ptr %i.t, align 4, !tbaa !22
  %.not.i.i.i.i.i14.i.i = icmp ult i32 %i.bh, %i.bi
  br i1 %.not.i.i.i.i.i14.i.i, label %bb.r, label %bb.q, !prof !89

bb.q:                                             ; preds = %bb.p
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.bj = zext i32 %i.bh to i64
  %i.bk = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %i.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bm = load i32, ptr %i.r, align 8, !tbaa !39
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.r, align 8, !tbaa !39
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit.i.i

_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit.i.i: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.pr23.pr.pr.i.i = load ptr, ptr %7, align 8, !tbaa !111
  %.not.i.i.i = icmp eq ptr %.pr23.pr.pr.i.i, null
  br i1 %.not.i.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit.thread.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit.i.i
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %7) #25
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit.thread.i.i

_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit.thread.i.i: ; preds = %bb.s, %_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit.i.i, %_ZNO4mlir18InFlightDiagnosticlsIRKjEEOS0_OT_.exit11.i.i, %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit.i.i, %_ZNO4mlir18InFlightDiagnosticlsIRKjEEOS0_OT_.exit.i.i, %_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_.exit.i.i, %bb.c
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 200 ; 2 uses
end_hunk_0
