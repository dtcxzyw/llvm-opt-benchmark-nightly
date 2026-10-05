Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestSlicing?download=true
inline.NumInlined: 1294
inline.NumDeleted: 919
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4llvm2cl3sub5applyINS0_3optIbLb0ENS0_6parserIbEEEEEEvRT_:bb.a
  %i.w = zext i32 %i.v to i64
  %.idx = shl nuw nsw i64 %i.w, 3
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx
  %.not1225 = icmp eq i32 %i.v, 0
  br i1 %.not1225, label %_ZN4llvm2cl6Option13addSubCommandERNS0_10SubCommandE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 96
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZN4llvm2cl6Option13addSubCommandERNS0_10SubCommandE.exit22
  %.026 = phi ptr [ %i.t, %.lr.ph ], [ %i.ap, %_ZN4llvm2cl6Option13addSubCommandERNS0_10SubCommandE.exit22 ] ; 2 uses
  %i.ac = load ptr, ptr %.026, align 8, !tbaa !176 ; 3 uses
  %i.ad = load i8, ptr %i.z, align 8, !tbaa !33, !range !34, !noalias !177, !noundef !35
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.h, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i13

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !36, !noalias !177 ; 2 uses
  %i.ag = load i32, ptr %i.aa, align 4, !tbaa !174, !noalias !177 ; 4 uses
  %i.ah = zext i32 %i.ag to i64
  %.idx.i.i.i14 = shl nuw nsw i64 %i.ah, 3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx.i.i.i14 ; 2 uses
  %.not22.i.i.i15 = icmp eq i32 %i.ag, 0
  br i1 %.not22.i.i.i15, label %._crit_edge.i.i.i21, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %bb.h, %.critedge.i.i.i19
  %.023.i.i.i17 = phi ptr [ %i.ak, %.critedge.i.i.i19 ], [ %i.af, %bb.h ] ; 2 uses
  %i.aj = load ptr, ptr %.023.i.i.i17, align 8, !tbaa !30, !noalias !177
  %.not15.i.i.i18 = icmp eq ptr %i.aj, %i.ac
  br i1 %.not15.i.i.i18, label %_ZN4llvm2cl6Option13addSubCommandERNS0_10SubCommandE.exit22, label %.critedge.i.i.i19

.critedge.i.i.i19:                                ; preds = %.lr.ph.i.i.i16
  %i.ak = getelementptr inbounds nuw i8, ptr %.023.i.i.i17, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ak, %i.ai
  br i1 %.not.i.i.i20, label %._crit_edge.i.i.i21, label %.lr.ph.i.i.i16

._crit_edge.i.i.i21:                              ; preds = %.critedge.i.i.i19, %bb.h
  %i.al = load i32, ptr %i.ab, align 8, !tbaa !175, !noalias !177
  %i.am = icmp ult i32 %i.ag, %i.al
  br i1 %i.am, label %bb.i, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i13

bb.i:                                             ; preds = %._crit_edge.i.i.i21
  %i.an = add nuw i32 %i.ag, 1
  store i32 %i.an, ptr %i.aa, align 4, !tbaa !174, !noalias !177
  store ptr %i.ac, ptr %i.ai, align 8, !tbaa !30, !noalias !177
  br label %_ZN4llvm2cl6Option13addSubCommandERNS0_10SubCommandE.exit22

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i13: ; preds = %._crit_edge.i.i.i21, %bb.g
  %i.ao = tail call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.y, ptr noundef nonnull align 8 dereferenceable(160) %i.ac) #20, !noalias !177 ; 0 uses
  br label %_ZN4llvm2cl6Option13addSubCommandERNS0_10SubCommandE.exit22

_ZN4llvm2cl6Option13addSubCommandERNS0_10SubCommandE.exit22: ; preds = %.lr.ph.i.i.i16, %bb.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i13
  %i.ap = getelementptr inbounds nuw i8, ptr %.026, i64 8 ; 2 uses
  %.not12 = icmp eq ptr %i.ap, %i.x
  br i1 %.not12, label %_ZN4llvm2cl6Option13addSubCommandERNS0_10SubCommandE.exit, label %bb.g

_ZN4llvm2cl6Option13addSubCommandERNS0_10SubCommandE.exit: ; preds = %.lr.ph.i.i.i, %_ZN4llvm2cl6Option13addSubCommandERNS0_10SubCommandE.exit22, %bb.f, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i, %bb.d, %bb.e
  ret void
}

declare { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #2

declare void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKbEZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS8_4descENS8_11initializerIbEEEEERS5_NS7_9StringRefEDpOT_EUlRKT_E_E9_M_invokeERKSt9_Any_dataS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !179
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i8 1, ptr %i.b, align 8, !tbaa !93
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
  store ptr %1, ptr %0, align 8, !tbaa !30
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS6_4descENS6_11initializerIbEEEEERS3_NS5_9StringRefEDpOT_EUlRKT_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !181
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS6_4descENS6_11initializerIbEEEEERS3_NS5_9StringRefEDpOT_EUlRKT_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !95
  store i64 %i.a, ptr %0, align 8, !tbaa !95
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS6_4descENS6_11initializerIbEEEEERS3_NS5_9StringRefEDpOT_EUlRKT_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS6_4descENS6_11initializerIbEEEEERS3_NS5_9StringRefEDpOT_EUlRKT_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48), i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir6Region6getOpsINS_4func6FuncOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS0_10OpIteratorEEEEEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::iterator_range.63") align 8 %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.05 = alloca %"class.llvm::filter_iterator_base", align 8 ; 2 uses
  %2 = alloca %"class.mlir::Region::OpIterator", align 8 ; 6 uses
  %3 = alloca %"class.mlir::detail::op_filter_iterator", align 8 ; 7 uses
  %4 = alloca %"class.mlir::Region::OpIterator", align 8 ; 2 uses
  %5 = alloca %"class.mlir::detail::op_filter_iterator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN4mlir6Region10OpIteratorC1EPS0_b(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(28) %1, i1 noundef zeroext true) #20
  call void @_ZN4mlir6Region10OpIteratorC1EPS0_b(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(28) %1, i1 noundef zeroext false) #20
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr @_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEE6filterERNS_9OperationE, ptr %i.b, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !57
  %.not1.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not1.i.i.i.i, label %_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.l, %bb.b ], [ %i.e, %bb.a ]
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.i = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.g) #20
  %i.j = call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(64) %i.i) #20, !inline_history !182
  br i1 %i.j, label %_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.k = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #20 ; 0 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !57
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i.i, label %_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.05, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr @_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEE6filterERNS_9OperationE, ptr %i.o, align 8, !tbaa !68
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !57   ; 2 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !57
  %.not1.i.i.i.i1 = icmp eq ptr %i.r, %i.s
  br i1 %.not1.i.i.i.i1, label %_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit4, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit, %bb.c
  %i.t = phi ptr [ %i.y, %bb.c ], [ %i.r, %_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit ]
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !68
  %i.v = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.t) #20
  %i.w = call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(64) %i.v) #20, !inline_history !182
  br i1 %i.w, label %_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit4, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i2
  %i.x = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(56) %5) #20 ; 0 uses
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !57   ; 2 uses
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !57
  %.not.i.i.i.i3 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i3, label %_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit4, label %.lr.ph.i.i.i.i2, !llvm.loop !1

_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit4: ; preds = %.lr.ph.i.i.i.i2, %bb.c, %_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.05, i64 56, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN4mlir6detail11op_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEE6unwrapERNS_9OperationE, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @_ZN4mlir6detail11op_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEE6unwrapERNS_9OperationE, ptr %.sroa.411.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

declare void @_ZN4mlir6Region10OpIteratorC1EPS0_b(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEE6filterERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72
  %i.d = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_4func6FuncOpEvE2idE
  %1 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_4func6FuncOpEvE2idE
  %spec.select.i.i.i.i = and i1 %1, %i.d
  ret i1 %spec.select.i.i.i.i
}

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN4mlir6detail11op_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEE6unwrapERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #0 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %1(i64 noundef %2, ptr noundef %0) #20, !inline_history !183
  switch i32 %i.b, label %bb.c [
    i32 2, label %.thread
    i32 0, label %.thread.fold.split
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #20 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not75 = icmp eq i64 %i.e, 0
  br i1 %.not75, label %._crit_edge77, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.03176 = phi ptr [ %i.o, %._crit_edge ], [ %i.d, %bb.c ] ; 4 uses
  %.sroa.037.0.in71 = getelementptr inbounds nuw i8, ptr %.03176, i64 8
  %.sroa.037.072 = load ptr, ptr %.sroa.037.0.in71, align 8, !tbaa !102 ; 2 uses
  %.not6973 = icmp eq ptr %.sroa.037.072, %.03176
  br i1 %.not6973, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.d
  %.sroa.037.0.in = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 8
  %.sroa.037.0 = load ptr, ptr %.sroa.037.0.in, align 8, !tbaa !102 ; 2 uses
  %.not69 = icmp eq ptr %.sroa.037.0, %.03176
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.loopexit
  %.sroa.037.074 = phi ptr [ %.sroa.037.0, %.loopexit ], [ %.sroa.037.072, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !102
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.034.0 = phi ptr [ %i.h, %.lr.ph ], [ %i.k, %bb.e ] ; 3 uses
  %.not70 = icmp eq ptr %.sroa.034.0, %i.i
  br i1 %.not70, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.034.0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !102
  %i.l = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.034.0) #20
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
  %i.q = tail call i32 %1(i64 noundef %2, ptr noundef nonnull %0) #20, !inline_history !183
  br label %.thread

.thread.fold.split:                               ; preds = %bb.b
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.b, %.thread.fold.split, %._crit_edge77, %bb.f
  %.sroa.030.9 = phi i32 [ %i.q, %bb.f ], [ 0, %.thread.fold.split ], [ 1, %._crit_edge77 ], [ 1, %bb.b ], [ 0, %bb.e ]
  ret i32 %.sroa.030.9
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @"_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZN12_GLOBAL__N_121SliceAnalysisTestPass14runOnOperationEvE3$_0EES2_lS4_"(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %4 = alloca %"class.mlir::func::FuncOp", align 8 ; 5 uses
  %5 = alloca %"class.mlir::OpBuilder", align 8   ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.mlir::func::FuncOp", align 8 ; 5 uses
  %10 = alloca %"class.llvm::ArrayRef.159", align 8 ; 4 uses
  %11 = alloca %"class.llvm::ArrayRef.160", align 8 ; 4 uses
  %12 = alloca %"class.mlir::IRMapping", align 8  ; 11 uses
  %13 = alloca %"class.llvm::SetVector", align 8  ; 10 uses
  %14 = alloca %"struct.mlir::BackwardSliceOptions", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.g = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_6linalg8LinalgOpENS1_6detail23LinalgOpInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %1)
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %"_ZZN12_GLOBAL__N_121SliceAnalysisTestPass14runOnOperationEvENK3$_0clEPN4mlir9OperationE.exit", label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.h = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.h, ptr %16, align 8, !tbaa !199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 18, ptr %i.c, align 8, !tbaa !24
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #20 ; 2 uses
  store ptr %i.i, ptr %16, align 8, !tbaa !201
  %i.j = load i64, ptr %i.c, align 8, !tbaa !24   ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.i, ptr noundef nonnull align 1 dereferenceable(18) @.str.15, i64 18, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !202
  %i.l = load ptr, ptr %16, align 8, !tbaa !201
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !203, !nonnull !35, !align !204
  %i.o = load i32, ptr %i.n, align 4, !tbaa !54   ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %i.p = icmp ult i32 %i.o, 10
  br i1 %i.p, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i.i.i, %bb.g
  %.030.i.i.i = phi i32 [ %i.x, %bb.g ], [ 1, %._crit_edge.i.i.i ] ; 4 uses
  %.02329.i.i.i = phi i32 [ %i.w, %bb.g ], [ %i.o, %._crit_edge.i.i.i ] ; 5 uses
  %i.q = icmp ult i32 %.02329.i.i.i, 100
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.r = add i32 %.030.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.s = icmp ult i32 %.02329.i.i.i, 1000
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = add i32 %.030.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.u = icmp ult i32 %.02329.i.i.i, 10000
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add i32 %.030.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = udiv i32 %.02329.i.i.i, 10000
  %i.x = add i32 %.030.i.i.i, 4                   ; 2 uses
  %i.y = icmp ult i32 %.02329.i.i.i, 100000
  br i1 %i.y, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !186

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i:  ; preds = %bb.g, %bb.f, %bb.d, %bb.b, %._crit_edge.i.i.i
  %.022.i.i.i = phi i32 [ %i.v, %bb.f ], [ %i.r, %bb.b ], [ %i.t, %bb.d ], [ 1, %._crit_edge.i.i.i ], [ %i.x, %bb.g ]
  %i.z = zext i32 %.022.i.i.i to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  store ptr %i.aa, ptr %17, align 8, !tbaa !199, !alias.scope !205
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef %i.z, i8 noundef signext 0) #20
  %i.ab = load ptr, ptr %17, align 8, !tbaa !201, !alias.scope !205 ; 4 uses
  %i.ac = icmp ugt i32 %i.o, 99
  br i1 %i.ac, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i2.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !202, !alias.scope !205
  %i.af = trunc i64 %i.ae to i32
  %i.ag = add i32 %i.af, -1
  br label %.lr.ph.i2.i.i

.lr.ph.i2.i.i:                                    ; preds = %.lr.ph.i2.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i32 [ %i.aj, %.lr.ph.i2.i.i ], [ %i.o, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.01819.i.i.i = phi i32 [ %i.au, %.lr.ph.i2.i.i ], [ %i.ag, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ah = urem i32 %.020.i.i.i, 100
  %i.ai = shl nuw nsw i32 %i.ah, 1
  %i.aj = udiv i32 %.020.i.i.i, 100               ; 2 uses
  %i.ak = zext nneg i32 %i.ai to i64
  %i.al = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !96, !noalias !205
  %i.ao = zext i32 %.01819.i.i.i to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ao
  store i8 %i.an, ptr %i.ap, align 1, !tbaa !96
  %i.aq = load i8, ptr %i.al, align 2, !tbaa !96, !noalias !205
  %i.ar = add i32 %.01819.i.i.i, -1
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.as
  store i8 %i.aq, ptr %i.at, align 1, !tbaa !96
  %i.au = add i32 %.01819.i.i.i, -2
  %i.av = icmp ugt i32 %.020.i.i.i, 9999
  br i1 %i.av, label %.lr.ph.i2.i.i, label %._crit_edge.i.i2.i, !llvm.loop !187

._crit_edge.i.i2.i:                               ; preds = %.lr.ph.i2.i.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i
  %.0.lcssa.i.i.i = phi i32 [ %i.o, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i ], [ %i.aj, %.lr.ph.i2.i.i ] ; 3 uses
  %i.aw = icmp samesign ugt i32 %.0.lcssa.i.i.i, 9
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i2.i
  %i.ax = shl nuw nsw i32 %.0.lcssa.i.i.i, 1
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !96, !noalias !205
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !96
  %i.bd = load i8, ptr %i.az, align 2, !tbaa !96, !noalias !205
  br label %_ZNSt7__cxx119to_stringEj.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i2.i
  %i.be = trunc nuw nsw i32 %.0.lcssa.i.i.i to i8
  %i.bf = or disjoint i8 %i.be, 48
  br label %_ZNSt7__cxx119to_stringEj.exit.i

_ZNSt7__cxx119to_stringEj.exit.i:                 ; preds = %bb.i, %bb.h
  %storemerge.i.i.i = phi i8 [ %i.bf, %bb.i ], [ %i.bd, %bb.h ]
  store i8 %storemerge.i.i.i, ptr %i.ab, align 1, !tbaa !96
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !202, !noalias !206 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !202, !noalias !206 ; 4 uses
  %i.bj = add i64 %i.bi, %i.bg                    ; 2 uses
  %i.bk = load ptr, ptr %16, align 8, !tbaa !201, !noalias !206 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.h
  br i1 %i.bl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNSt7__cxx119to_stringEj.exit.i
  %i.bm = icmp ult i64 %i.bg, 16
  call void @llvm.assume(i1 %i.bm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx119to_stringEj.exit.i
  %i.bn = load i64, ptr %i.h, align 8, !tbaa !96, !noalias !206
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bo = phi i64 [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.bp = icmp ugt i64 %i.bj, %i.bo
  br i1 %i.bp, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.bq = load ptr, ptr %17, align 8, !tbaa !201, !noalias !206
  %i.br = icmp eq ptr %i.bq, %i.aa
  br i1 %i.br, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i.i: ; preds = %bb.j
  %i.bs = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.bs)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i.i: ; preds = %bb.j
  %i.bt = load i64, ptr %i.aa, align 8, !tbaa !96, !noalias !206
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i.i
  %i.bu = phi i64 [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i.i ]
  %.not.i.i = icmp ugt i64 %i.bj, %i.bu
  br i1 %.not.i.i, label %bb.l, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i.i
  %i.bv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bg) #20, !noalias !206 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr %i.bw, ptr %15, align 8, !tbaa !199, !alias.scope !206
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !201 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 5 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i.i

bb.k:                                             ; preds = %.critedge.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !202 ; 2 uses
  %i.cc = icmp ult i64 %i.cb, 16
  call void @llvm.assume(i1 %i.cc)
  %i.cd = add nuw nsw i64 %i.cb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bw, ptr noundef nonnull align 8 dereferenceable(1) %i.by, i64 %i.cd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i.i: ; preds = %.critedge.i.i
  store ptr %i.bx, ptr %15, align 8, !tbaa !201, !alias.scope !206
  %i.ce = load i64, ptr %i.by, align 8, !tbaa !96
  store i64 %i.ce, ptr %i.bw, align 8, !tbaa !96, !alias.scope !206
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i.i, %bb.k
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !202
  %i.ch = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !202, !alias.scope !206
  store ptr %i.by, ptr %i.bv, align 8, !tbaa !201
  store i64 0, ptr %i.cf, align 8, !tbaa !202
  store i8 0, ptr %i.by, align 8, !tbaa !96
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.ci = sub i64 4611686018427387903, %i.bg
  %i.cj = icmp ult i64 %i.ci, %i.bi
  br i1 %i.cj, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #23, !noalias !206
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i: ; preds = %bb.l
  %i.ck = load ptr, ptr %17, align 8, !tbaa !201, !noalias !206
  %i.cl = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef %i.ck, i64 noundef %i.bi) #20, !noalias !206 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr %i.cm, ptr %15, align 8, !tbaa !199, !alias.scope !206
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !201 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 5 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i.i

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !202 ; 2 uses
  %i.cs = icmp ult i64 %i.cr, 16
  call void @llvm.assume(i1 %i.cs)
  %i.ct = add nuw nsw i64 %i.cr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cm, ptr noundef nonnull align 8 dereferenceable(1) %i.co, i64 %i.ct, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  store ptr %i.cn, ptr %15, align 8, !tbaa !201, !alias.scope !206
  %i.cu = load i64, ptr %i.co, align 8, !tbaa !96
  store i64 %i.cu, ptr %i.cm, align 8, !tbaa !96, !alias.scope !206
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i.i, %bb.n
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !202
  %i.cx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !202, !alias.scope !206
  store ptr %i.co, ptr %i.cl, align 8, !tbaa !201
  store i64 0, ptr %i.cv, align 8, !tbaa !202
  store i8 0, ptr %i.co, align 8, !tbaa !96
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.cy = load ptr, ptr %17, align 8, !tbaa !201  ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.aa
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i
  %i.da = load i64, ptr %i.aa, align 8, !tbaa !96
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %i.dc = load ptr, ptr %16, align 8, !tbaa !201  ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.h
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.de = load i64, ptr %i.h, align 8, !tbaa !96
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.dg = load ptr, ptr %15, align 8, !tbaa !201  ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !202 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.f, i64 456
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !90, !range !34, !noundef !35
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %.not8.i.i.i = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_4func6FuncOpEvE2idE
  br i1 %.not8.i.i.i, label %_ZN4mlir9Operation11getParentOpEv.exit.us.i.i.i, label %_ZN4mlir9Operation11getParentOpEv.exit.i.i.i

_ZN4mlir9Operation11getParentOpEv.exit.us.i.i.i:  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, %_ZN4mlir9Operation11getParentOpEv.exit.us.i.i.i
  %.pn.i.i = phi ptr [ %19, %_ZN4mlir9Operation11getParentOpEv.exit.us.i.i.i ], [ %1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i ]
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %18 = load ptr, ptr %.in.i.i, align 8, !tbaa !207, !nonnull !35, !noundef !35
  %19 = call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %18) #20 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %19) ]
  br label %_ZN4mlir9Operation11getParentOpEv.exit.us.i.i.i

_ZN4mlir9Operation11getParentOpEv.exit.i.i.i:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, %_ZN4mlir9Operation11getParentOpEv.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.dn, %_ZN4mlir9Operation11getParentOpEv.exit.i.i.i ], [ %1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !207, !nonnull !35, !noundef !35
  %i.dn = call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.dm) #20 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dn) ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.do, align 8, !tbaa !70
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !72
  %i.dr = icmp eq ptr %i.dq, @_ZN4mlir6detail14TypeIDResolverINS_4func6FuncOpEvE2idE
  br i1 %i.dr, label %_ZN4mlir9Operation15getParentOfTypeINS_4func6FuncOpEEET_v.exit.i.i, label %_ZN4mlir9Operation11getParentOpEv.exit.i.i.i, !llvm.loop !190

_ZN4mlir9Operation15getParentOfTypeINS_4func6FuncOpEEET_v.exit.i.i: ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.i.i.i
  store ptr %i.dn, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dt = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ds) #20
  store ptr %i.dt, ptr %5, align 8, !tbaa !210
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store i64 0, ptr %i.du, align 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !207
  %i.dy = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.dn) #20
  store ptr %i.dx, ptr %i.dv, align 8, !tbaa !213
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.dy, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ea, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.eb = call ptr @_ZN4mlir11SymbolTable13getSymbolNameEPNS_9OperationE(ptr noundef nonnull %i.dn) #20
  store ptr %i.eb, ptr %3, align 8
  %i.ec = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ed = extractvalue { ptr, i64 } %i.ec, 0      ; 3 uses
  %i.ee = extractvalue { ptr, i64 } %i.ec, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %.not.i23.i.i = icmp eq ptr %i.ed, null
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  store ptr %i.ef, ptr %7, align 8, !tbaa !199, !alias.scope !214
  br i1 %.not.i23.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4mlir9Operation15getParentOfTypeINS_4func6FuncOpEEET_v.exit.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.eg, align 8, !tbaa !202, !alias.scope !214
  store i8 0, ptr %i.ef, align 8, !tbaa !96, !alias.scope !214
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i.i

bb.p:                                             ; preds = %_ZN4mlir9Operation15getParentOfTypeINS_4func6FuncOpEEET_v.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20, !noalias !214
  store i64 %i.ee, ptr %i.b, align 8, !tbaa !24, !noalias !214
  %i.eh = icmp ugt i64 %i.ee, 15
  br i1 %i.eh, label %bb.q, label %._crit_edge.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.ei = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #20 ; 2 uses
  store ptr %i.ei, ptr %7, align 8, !tbaa !201, !alias.scope !214
  %i.ej = load i64, ptr %i.b, align 8, !tbaa !24, !noalias !214
  store i64 %i.ej, ptr %i.ef, align 8, !tbaa !96, !alias.scope !214
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.q, %bb.p
  %i.ek = phi ptr [ %i.ei, %bb.q ], [ %i.ef, %bb.p ] ; 2 uses
  switch i64 %i.ee, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.el = load i8, ptr %i.ed, align 1, !tbaa !96
  store i8 %i.el, ptr %i.ek, align 1, !tbaa !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ek, ptr nonnull align 1 %i.ed, i64 %i.ee, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i: ; preds = %bb.s, %bb.r, %._crit_edge.i.i.i.i.i
  %i.em = load i64, ptr %i.b, align 8, !tbaa !24, !noalias !214 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.em, ptr %i.en, align 8, !tbaa !202, !alias.scope !214
  %i.eo = load ptr, ptr %7, align 8, !tbaa !201, !alias.scope !214
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.em
  store i8 0, ptr %i.ep, align 1, !tbaa !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !214
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i.i

_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i.i:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %.not.i24.i.i = icmp eq ptr %i.dg, null
  %i.eq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  store ptr %i.eq, ptr %8, align 8, !tbaa !199, !alias.scope !215
  br i1 %.not.i24.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.er, align 8, !tbaa !202, !alias.scope !215
  store i8 0, ptr %i.eq, align 8, !tbaa !96, !alias.scope !215
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit27.i.i

bb.u:                                             ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !215
  store i64 %i.di, ptr %i.a, align 8, !tbaa !24, !noalias !215
  %i.es = icmp ugt i64 %i.di, 15
  br i1 %i.es, label %bb.v, label %._crit_edge.i.i.i25.i.i

bb.v:                                             ; preds = %bb.u
  %i.et = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #20 ; 2 uses
  store ptr %i.et, ptr %8, align 8, !tbaa !201, !alias.scope !215
  %i.eu = load i64, ptr %i.a, align 8, !tbaa !24, !noalias !215
  store i64 %i.eu, ptr %i.eq, align 8, !tbaa !96, !alias.scope !215
  br label %._crit_edge.i.i.i25.i.i

._crit_edge.i.i.i25.i.i:                          ; preds = %bb.v, %bb.u
  %i.ev = phi ptr [ %i.et, %bb.v ], [ %i.eq, %bb.u ] ; 2 uses
  switch i64 %i.di, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i26.i.i
  ]

bb.w:                                             ; preds = %._crit_edge.i.i.i25.i.i
  %i.ew = load i8, ptr %i.dg, align 1, !tbaa !96
  store i8 %i.ew, ptr %i.ev, align 1, !tbaa !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i26.i.i

bb.x:                                             ; preds = %._crit_edge.i.i.i25.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ev, ptr nonnull readonly align 1 %i.dg, i64 %i.di, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i26.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i26.i.i: ; preds = %bb.x, %bb.w, %._crit_edge.i.i.i25.i.i
  %i.ex = load i64, ptr %i.a, align 8, !tbaa !24, !noalias !215 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !202, !alias.scope !215
  %i.ez = load ptr, ptr %8, align 8, !tbaa !201, !alias.scope !215
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ex
  store i8 0, ptr %i.fa, align 1, !tbaa !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !215
  %.pre.i.i = load i64, ptr %i.ey, align 8, !tbaa !202, !noalias !216
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit27.i.i

_ZNK4llvm9StringRef3strB5cxx11Ev.exit27.i.i:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i26.i.i, %bb.t
  %i.fb = phi i64 [ 0, %bb.t ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i26.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.fc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !202, !noalias !216 ; 4 uses
  %i.fe = add i64 %i.fd, %i.fb                    ; 2 uses
  %i.ff = load ptr, ptr %7, align 8, !tbaa !201, !noalias !216 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.ef
  br i1 %i.fg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit27.i.i
  %i.fh = icmp ult i64 %i.fd, 16
  call void @llvm.assume(i1 %i.fh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit27.i.i
  %i.fi = load i64, ptr %i.ef, align 8, !tbaa !96, !noalias !216
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.fj = phi i64 [ %i.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.fk = icmp ugt i64 %i.fe, %i.fj
  br i1 %i.fk, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.fl = load ptr, ptr %8, align 8, !tbaa !201, !noalias !216
  %i.fm = icmp eq ptr %i.fl, %i.eq
  br i1 %i.fm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i.i.i: ; preds = %bb.y
  %i.fn = icmp ult i64 %i.fb, 16
  call void @llvm.assume(i1 %i.fn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i.i.i: ; preds = %bb.y
  %i.fo = load i64, ptr %i.eq, align 8, !tbaa !96, !noalias !216
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i.i.i
  %i.fp = phi i64 [ %i.fo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i.i.i ]
  %.not.i28.i.i = icmp ugt i64 %i.fe, %i.fp
  br i1 %.not.i28.i.i, label %bb.aa, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i.i.i
  %i.fq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %i.ff, i64 noundef %i.fd) #20, !noalias !216 ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.fr, ptr %6, align 8, !tbaa !199, !alias.scope !216
  %i.fs = load ptr, ptr %i.fq, align 8, !tbaa !201 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 5 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i.i.i

bb.z:                                             ; preds = %.critedge.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !202 ; 2 uses
  %i.fx = icmp ult i64 %i.fw, 16
  call void @llvm.assume(i1 %i.fx)
  %i.fy = add nuw nsw i64 %i.fw, 1
end_hunk_0
