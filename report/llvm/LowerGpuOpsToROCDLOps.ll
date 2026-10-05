Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LowerGpuOpsToROCDLOps?download=true
inline.NumInlined: 6555
inline.NumDeleted: 3802
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm10DataLayoutC1ENS_9StringRefE

declare noundef nonnull align 8 dereferenceable(912) ptr @_ZN4llvm10DataLayoutaSERKS0_(ptr noundef nonnull align 8 dereferenceable(912), ptr noundef nonnull align 8 dereferenceable(912)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvm10DataLayoutD1Ev(ptr noundef nonnull align 8 dead_on_return(912) dereferenceable(912)) unnamed_addr #15

declare void @_ZN4mlir41populateGpuPromoteShuffleToAMDGPUPatternsERNS_17RewritePatternSetESt8optionalINS_6amdgpu7ChipsetEE(ptr noundef nonnull align 8 dereferenceable(176), i64, i64) local_unnamed_addr #2

declare void @_ZN4mlir23FrozenRewritePatternSetC1EONS_17RewritePatternSetEN4llvm8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(176), ptr, i64, ptr, i64) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4mlir23FrozenRewritePatternSetD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #15

declare void @_ZN4mlir17LLVMTypeConverterC1EPNS_11MLIRContextERKNS_18LowerToLLVMOptionsEPKNS_18DataLayoutAnalysisE(ptr noundef nonnull align 8 dereferenceable(1552), ptr noundef, ptr noundef nonnull align 8 dereferenceable(932), ptr noundef) unnamed_addr #2

declare void @_ZN4mlir6amdgpu44populateCommonGPUTypeAndAttributeConversionsERNS_13TypeConverterE(ptr noundef nonnull align 8 dereferenceable(508)) local_unnamed_addr #2

declare void @_ZN4mlir20LLVMConversionTargetC1ERNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN4mlir11MLIRContext17getLoadedDialectsEv(ptr dead_on_unwind writable sret(%"class.std::vector.488") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4mlir7OpState9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind writable sret(%"class.mlir::InFlightDiagnostic") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

declare void @_ZN4mlir39populateAMDGPUToROCDLConversionPatternsERNS_17LLVMTypeConverterERNS_17RewritePatternSetENS_6amdgpu7ChipsetE(ptr noundef nonnull align 8 dereferenceable(1552), ptr noundef nonnull align 8 dereferenceable(176), i64, i32) local_unnamed_addr #2

declare i8 @_ZN4mlir22applyPartialConversionEPNS_9OperationERKNS_16ConversionTargetERKNS_23FrozenRewritePatternSetENS_16ConversionConfigE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef byval(%"struct.mlir::ConversionConfig") align 8) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir17LLVMTypeConverterD2Ev(ptr noundef nonnull align 8 dead_on_return(1552) dereferenceable(1552) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4mlir17LLVMTypeConverterE, i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624
  tail call void @_ZN4llvm10DataLayoutD1Ev(ptr noundef nonnull align 8 dead_on_return(912) dereferenceable(912) %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  tail call void @_ZN4llvm8DenseMapImSt10unique_ptrINS_11SmallVectorIN4mlir4TypeELj6EEESt14default_deleteIS5_EENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #26
  tail call void @_ZN4mlir13TypeConverterD2Ev(ptr noundef nonnull align 8 dead_on_return(508) dereferenceable(508) %0) #26
  ret void
}

declare noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare { ptr, i8 } @_ZN4mlir9Operation15getInherentAttrEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(64), ptr, i64) local_unnamed_addr #2

declare ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

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
  %i.c = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  %i.f = call { ptr, i8 } @_ZN4mlir9Operation15getInherentAttrEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %i.d, i64 %i.e) #26
  %i.g = extractvalue { ptr, i8 } %i.f, 1
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.06.0.copyload = load ptr, ptr %3, align 8
  call void @_ZN4mlir9Operation15setInherentAttrENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %.sroa.06.0.copyload, ptr %2) #26
  br label %bb.h

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %i.i, align 8
  call void @_ZN4mlir13NamedAttrListC1ENS_14DictionaryAttrE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr %.sroa.04.0.copyload) #26
  %.sroa.03.0.copyload = load ptr, ptr %3, align 8
  %i.j = call ptr @_ZN4mlir13NamedAttrList3setENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr %.sroa.03.0.copyload, ptr %2) #26
  %.not10 = icmp eq ptr %i.j, %2
  br i1 %.not10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #26
  %i.m = call ptr @_ZNK4mlir13NamedAttrList13getDictionaryEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef %i.l) #26
  store ptr %i.m, ptr %i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = load ptr, ptr %4, align 8, !tbaa !39     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4mlir13NamedAttrListD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.n) #26
  br label %_ZN4mlir13NamedAttrListD2Ev.exit

_ZN4mlir13NamedAttrListD2Ev.exit:                 ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.h

bb.h:                                             ; preds = %_ZN4mlir13NamedAttrListD2Ev.exit, %bb.c
  ret void
}

declare void @_ZN4mlir9Operation15setInherentAttrENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(64), ptr, ptr) local_unnamed_addr #2

declare void @_ZN4mlir13NamedAttrListC1ENS_14DictionaryAttrE(ptr noundef nonnull align 8 dereferenceable(88), ptr) unnamed_addr #2

declare ptr @_ZN4mlir13NamedAttrList3setENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(88), ptr, ptr) local_unnamed_addr #2

declare ptr @_ZNK4mlir13NamedAttrList13getDictionaryEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir6Region6getOpsINS_4func6FuncOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS0_10OpIteratorEEEEEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::iterator_range.389") align 8 %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.05 = alloca %"class.llvm::filter_iterator_base", align 8 ; 2 uses
  %2 = alloca %"class.mlir::Region::OpIterator", align 8 ; 6 uses
  %3 = alloca %"class.mlir::detail::op_filter_iterator", align 8 ; 7 uses
  %4 = alloca %"class.mlir::Region::OpIterator", align 8 ; 2 uses
  %5 = alloca %"class.mlir::detail::op_filter_iterator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN4mlir6Region10OpIteratorC1EPS0_b(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(28) %1, i1 noundef zeroext true) #26
  call void @_ZN4mlir6Region10OpIteratorC1EPS0_b(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(28) %1, i1 noundef zeroext false) #26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr @_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEE6filterERNS_9OperationE, ptr %i.b, align 8, !tbaa !172
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !165  ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !165
  %.not1.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not1.i.i.i.i, label %_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.l, %bb.b ], [ %i.e, %bb.a ]
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !172
  %i.i = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.g) #26
  %i.j = call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(64) %i.i) #26, !inline_history !836
  br i1 %i.j, label %_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.k = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #26 ; 0 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !165  ; 2 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !165
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i.i, label %_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.05, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr @_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEE6filterERNS_9OperationE, ptr %i.o, align 8, !tbaa !172
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !165  ; 2 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !165
  %.not1.i.i.i.i1 = icmp eq ptr %i.r, %i.s
  br i1 %.not1.i.i.i.i1, label %_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit4, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit, %bb.c
  %i.t = phi ptr [ %i.y, %bb.c ], [ %i.r, %_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit ]
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !172
  %i.v = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.t) #26
  %i.w = call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(64) %i.v) #26, !inline_history !836
  br i1 %i.w, label %_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit4, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i2
  %i.x = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(56) %5) #26 ; 0 uses
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !165  ; 2 uses
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !165
  %.not.i.i.i.i3 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i3, label %_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit4, label %.lr.ph.i.i.i.i2, !llvm.loop !7

_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit4: ; preds = %.lr.ph.i.i.i.i2, %bb.c, %_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.05, i64 56, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN4mlir6detail11op_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEE6unwrapERNS_9OperationE, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @_ZN4mlir6detail11op_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEE6unwrapERNS_9OperationE, ptr %.sroa.411.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

declare void @_ZN4mlir6Region10OpIteratorC1EPS0_b(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEE6filterERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !249
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !251
  %i.d = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_4func6FuncOpEvE2idE
  ret i1 %i.d
}

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN4mlir6detail11op_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEE6unwrapERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #0 comdat align 2 {
bb.a:
  ret ptr %0
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #26
  br label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !842  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !843  ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i13, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit
  %.0.i.i4 = phi ptr [ %i.j, %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit ], [ %i.f, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit ] ; 3 uses
  %i.i = load ptr, ptr %.0.i.i4, align 8, !tbaa !845 ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.i, null
  br i1 %.not.i.i2, label %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit, label %_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i: ; preds = %.lr.ph
  tail call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.i) #26, !inline_history !837
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 192) #25, !inline_history !837
  br label %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit

_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i
  store ptr null, ptr %.0.i.i4, align 8, !tbaa !845
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i4, i64 8 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i1, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit, label %.lr.ph, !llvm.loop !838

_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !842
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit

_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit
  %i.k = phi ptr [ %.pre, %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit ], [ %i.f, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !846
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #25
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !849  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !850  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i ], [ %i.r, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit ] ; 2 uses
  %i.u = load ptr, ptr %.05.i.i.i, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #25
  br label %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.t
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !839

_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.q, align 8, !tbaa !849
  br label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i

_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i ], [ %i.r, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !851
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #25
  br label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !39 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit
  tail call void @free(ptr noundef %i.ad) #26
  br label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4mlir11OpInterfaceINS_21DataLayoutOpInterfaceENS_6detail36DataLayoutOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !249 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !251
  %.not.i.not = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  br i1 %.not.i.not, label %_ZNK4mlir13OperationName10getDialectEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_21DataLayoutOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_21DataLayoutOpInterfaceEPNS_9OperationENS0_36DataLayoutOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, !prof !341

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_21DataLayoutOpInterfaceEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_21DataLayoutOpInterfaceEPNS_9OperationENS0_36DataLayoutOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 27) #26
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_21DataLayoutOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_21DataLayoutOpInterfaceEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6detail9InterfaceINS_21DataLayoutOpInterfaceEPNS_9OperationENS0_36DataLayoutOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i

_ZN4mlir6detail9InterfaceINS_21DataLayoutOpInterfaceEPNS_9OperationENS0_36DataLayoutOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_21DataLayoutOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !129 ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !39   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !40   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_21DataLayoutOpInterfaceEPNS_9OperationENS0_36DataLayoutOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i
  %.017.i.i.i.i.i.i = phi i64 [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i = phi ptr [ %i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %i.m = lshr i64 %.017.i.i.i.i.i.i, 1            ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i, i64 %i.m ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !129
  %i.o = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = xor i64 %i.m, -1
  %i.r = add nsw i64 %.017.i.i.i.i.i.i, %i.q
  %.112.i.i.i.i.i.i = select i1 %i.o, ptr %i.p, ptr %.01116.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.o, i64 %i.r, i64 %i.m ; 2 uses
  %i.s = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.s, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, !llvm.loop !13

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_21DataLayoutOpInterfaceEPNS_9OperationENS0_36DataLayoutOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %.pre-phi.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_21DataLayoutOpInterfaceEPNS_9OperationENS0_36DataLayoutOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %_ZN4mlir6detail9InterfaceINS_21DataLayoutOpInterfaceEPNS_9OperationENS0_36DataLayoutOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.pre-phi.i.i.i
  %.not.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i, %i.t
  br i1 %.not.i.i.i, label %_ZNK4mlir13OperationName12getInterfaceINS_21DataLayoutOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i
  %i.u = load ptr, ptr %.011.lcssa.i.i.i.i.i.i, align 8, !tbaa !251
  %i.v = icmp eq ptr %i.u, %.sroa.01.0.copyload.i.i.i.i.i
  br i1 %i.v, label %_ZNK4mlir13OperationName12getInterfaceINS_21DataLayoutOpInterfaceEEEPNT_7ConceptEv.exit, label %_ZNK4mlir13OperationName12getInterfaceINS_21DataLayoutOpInterfaceEEEPNT_7ConceptEv.exit.thread

_ZNK4mlir13OperationName12getInterfaceINS_21DataLayoutOpInterfaceEEEPNT_7ConceptEv.exit: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !343  ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %_ZNK4mlir13OperationName12getInterfaceINS_21DataLayoutOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %.thread

_ZNK4mlir13OperationName12getInterfaceINS_21DataLayoutOpInterfaceEEEPNT_7ConceptEv.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, %bb.e, %_ZNK4mlir13OperationName12getInterfaceINS_21DataLayoutOpInterfaceEEEPNT_7ConceptEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !354  ; 2 uses
  %.sroa.0.0.copyload.i16 = load ptr, ptr %i.a, align 8, !tbaa !249
  %i.aa = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_21DataLayoutOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_21DataLayoutOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, !prof !341

bb.f:                                             ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_21DataLayoutOpInterfaceEEEPNT_7ConceptEv.exit.thread
  %i.ac = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_21DataLayoutOpInterfaceEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i.i17 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i17, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_21DataLayoutOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 27) #26
  store ptr %i.ad, ptr @_ZZN4mlir6detail14TypeIDResolverINS_21DataLayoutOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_21DataLayoutOpInterfaceEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_21DataLayoutOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_21DataLayoutOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit: ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_21DataLayoutOpInterfaceEEEPNT_7ConceptEv.exit.thread, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_21DataLayoutOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !129
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !25
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr %.sroa.01.0.copyload.i.i.i.i, ptr %.sroa.0.0.copyload.i16) #26, !inline_history !852
  br label %.thread

_ZNK4mlir13OperationName10getDialectEv.exit:      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ai, align 8
  store ptr %.sroa.0.0.copyload.i.i, ptr %1, align 8
  %i.aj = call noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #26 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %.not15 = icmp eq ptr %i.aj, null
  br i1 %.not15, label %.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK4mlir13OperationName10getDialectEv.exit
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_21DataLayoutOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.i, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_21DataLayoutOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, !prof !341

bb.i:                                             ; preds = %bb.h
  %i.am = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_21DataLayoutOpInterfaceEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i.i20 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i20, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_21DataLayoutOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 27) #26
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_21DataLayoutOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_21DataLayoutOpInterfaceEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_21DataLayoutOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_21DataLayoutOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21: ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.01.0.copyload.i.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_21DataLayoutOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !129
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !25
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, ptr %.sroa.01.0.copyload.i.i.i.i19, ptr nonnull %.sroa.0.0.copyload.i) #26, !inline_history !852
  br label %.thread

.thread:                                          ; preds = %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_21DataLayoutOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, %_ZNK4mlir13OperationName10getDialectEv.exit, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_21DataLayoutOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, %_ZNK4mlir13OperationName12getInterfaceINS_21DataLayoutOpInterfaceEEEPNT_7ConceptEv.exit
  %.3 = phi ptr [ %i.ah, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_21DataLayoutOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit ], [ %i.x, %_ZNK4mlir13OperationName12getInterfaceINS_21DataLayoutOpInterfaceEEEPNT_7ConceptEv.exit ], [ %i.ar, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_21DataLayoutOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21 ], [ null, %_ZNK4mlir13OperationName10getDialectEv.exit ]
  ret ptr %.3
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #17

declare ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr, i64) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #17

declare noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %1(i64 noundef %2, ptr noundef %0) #26, !inline_history !853
  switch i32 %i.b, label %bb.c [
    i32 2, label %.thread
    i32 0, label %.thread.fold.split
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #26 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not75 = icmp eq i64 %i.e, 0
  br i1 %.not75, label %._crit_edge77, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.03176 = phi ptr [ %i.o, %._crit_edge ], [ %i.d, %bb.c ] ; 4 uses
  %.sroa.037.0.in71 = getelementptr inbounds nuw i8, ptr %.03176, i64 8
  %.sroa.037.072 = load ptr, ptr %.sroa.037.0.in71, align 8, !tbaa !355 ; 2 uses
  %.not6973 = icmp eq ptr %.sroa.037.072, %.03176
  br i1 %.not6973, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.d
  %.sroa.037.0.in = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 8
  %.sroa.037.0 = load ptr, ptr %.sroa.037.0.in, align 8, !tbaa !355 ; 2 uses
  %.not69 = icmp eq ptr %.sroa.037.0, %.03176
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.loopexit
  %.sroa.037.074 = phi ptr [ %.sroa.037.0, %.loopexit ], [ %.sroa.037.072, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !355
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.034.0 = phi ptr [ %i.h, %.lr.ph ], [ %i.k, %bb.e ] ; 3 uses
  %.not70 = icmp eq ptr %.sroa.034.0, %i.i
  br i1 %.not70, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.034.0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !355
  %i.l = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.034.0) #26
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
  %i.q = tail call i32 %1(i64 noundef %2, ptr noundef nonnull %0) #26, !inline_history !853
  br label %.thread

.thread.fold.split:                               ; preds = %bb.b
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.b, %.thread.fold.split, %._crit_edge77, %bb.f
  %.sroa.030.9 = phi i32 [ %i.q, %bb.f ], [ 0, %.thread.fold.split ], [ 1, %._crit_edge77 ], [ 1, %bb.b ], [ 0, %bb.e ]
  ret i32 %.sroa.030.9
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal range(i32 0, 2) i32 @_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_125LowerGpuOpsToROCDLOpsPass14runOnOperationEvEUlNS1_3gpu9GPUFuncOpEE_SF_S2_EENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESN_E4typeES4_OT1_EUlS4_E_EES2_lS4_(i64 %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::FunctionType", align 8 ; 4 uses
  %3 = alloca %"class.mlir::gpu::GPUFuncOp", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !249
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !251
  %i.d = icmp ne ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_3gpu9GPUFuncOpEvE2idE
  %.not4.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not4.i, %i.d
  br i1 %.not.i, label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_125LowerGpuOpsToROCDLOpsPass14runOnOperationEvEUlNS_3gpu9GPUFuncOpEE_S7_NS_10WalkResultEEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_S9_EE5valueESI_E4typeESD_OT1_ENKUlSD_E_clESD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.e = call ptr @_ZN4mlir3gpu9GPUFuncOp15getFunctionTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  store ptr %i.e, ptr %2, align 8
  %i.f = call { ptr, i64 } @_ZNK4mlir12FunctionType9getInputsEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #26 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.g = extractvalue { ptr, i64 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.f, 1        ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.h, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i.i
  %.not11.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not11.i.i.i, label %.thread.sink.split.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.d
  %.013.i.i.i = phi i8 [ %.1.i.i.i, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.0712.i.i.i = phi ptr [ %i.t, %bb.d ], [ %i.g, %bb.b ] ; 2 uses
  %i.j = load i64, ptr %.0712.i.i.i, align 8, !tbaa !357
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !360
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !129 ; 2 uses
  %i.n = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10MemRefTypeEvE2idE
  %i.o = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_18UnrankedMemRefTypeEvE2idE
  %spec.select.i.i.i.i.i.i.i.i = or i1 %i.n, %i.o
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.p = call noundef zeroext i1 @_ZN4mlir17LLVMTypeConverter19canConvertToBarePtrENS_14BaseMemRefTypeE(ptr nonnull %i.k) #26
  %i.q = icmp ne i8 %.013.i.i.i, 0
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  %i.s = zext i1 %i.r to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.1.i.i.i = phi i8 [ %i.s, %bb.c ], [ %.013.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0712.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.i
  br i1 %.not.i.i.i, label %bb.e, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %bb.d
  %spec.select.i.i = zext nneg i8 %.1.i.i.i to i32
  br label %.thread.sink.split.i

.thread.sink.split.i:                             ; preds = %bb.e, %bb.b
  %.sroa.02.1.ph.i = phi i32 [ %spec.select.i.i, %bb.e ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_125LowerGpuOpsToROCDLOpsPass14runOnOperationEvEUlNS_3gpu9GPUFuncOpEE_S7_NS_10WalkResultEEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_S9_EE5valueESI_E4typeESD_OT1_ENKUlSD_E_clESD_.exit

_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_125LowerGpuOpsToROCDLOpsPass14runOnOperationEvEUlNS_3gpu9GPUFuncOpEE_S7_NS_10WalkResultEEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_S9_EE5valueESI_E4typeESD_OT1_ENKUlSD_E_clESD_.exit: ; preds = %bb.a, %.thread.sink.split.i
  %.sroa.02.1.i = phi i32 [ 1, %bb.a ], [ %.sroa.02.1.ph.i, %.thread.sink.split.i ]
  ret i32 %.sroa.02.1.i
}

declare noundef zeroext i1 @_ZN4mlir17LLVMTypeConverter19canConvertToBarePtrENS_14BaseMemRefTypeE(ptr) local_unnamed_addr #2

declare ptr @_ZN4mlir3gpu9GPUFuncOp15getFunctionTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare { ptr, i64 } @_ZNK4mlir12FunctionType9getInputsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4mlir28populateGpuAllReducePatternsERNS_17RewritePatternSetE(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #2

declare void @_ZN4mlir27populateGpuGlobalIdPatternsERNS_17RewritePatternSetE(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #2

declare void @_ZN4mlir26populateGpuShufflePatternsERNS_17RewritePatternSetE(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #2

declare i8 @_ZN4mlir21applyPatternsGreedilyERNS_6RegionERKNS_23FrozenRewritePatternSetENS_19GreedyRewriteConfigEPb(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef byval(%"class.mlir::GreedyRewriteConfig") align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir16PDLPatternModuleD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.c = load i32, ptr %i.b, align 4, !tbaa !361
  %i.d = icmp eq i32 %i.c, 0
  %.pre13.i = load ptr, ptr %i.a, align 8, !tbaa !362 ; 4 uses
  br i1 %i.d, label %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load i32, ptr %i.e, align 8, !tbaa !363  ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i = shl nuw nsw i64 %i.g, 3
  %i.h = getelementptr inbounds nuw i8, ptr %.pre13.i, i64 %.idx.i
  %.not11.i = icmp eq i32 %i.f, 0
  br i1 %.not11.i, label %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.012.i = phi ptr [ %i.p, %bb.e ], [ %.pre13.i, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %.012.i, align 8, !tbaa !365 ; 5 uses
  %.not10.i = icmp eq ptr %i.i, null
  br i1 %.not10.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = load i64, ptr %i.i, align 8, !tbaa !367
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm14StringMapEntryISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.n = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i32 noundef 3) #26, !inline_history !854 ; 0 uses
  br label %_ZN4llvm14StringMapEntryISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i

_ZN4llvm14StringMapEntryISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i: ; preds = %bb.d, %bb.c
  %i.o = add i64 %i.j, 41
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 noundef %i.o, i64 noundef 8) #26
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm14StringMapEntryISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i, %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.p, %i.h
  br i1 %.not.i, label %.loopexit.loopexit.i, label %.lr.ph.i

.loopexit.loopexit.i:                             ; preds = %bb.e
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !362
  br label %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit

_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit: ; preds = %bb.a, %bb.b, %.loopexit.loopexit.i
  %i.q = phi ptr [ %.pre.i, %.loopexit.loopexit.i ], [ %.pre13.i, %bb.b ], [ %.pre13.i, %bb.a ]
  tail call void @free(ptr noundef %i.q) #26
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.t = load i32, ptr %i.s, align 4, !tbaa !361
  %i.u = icmp eq i32 %i.t, 0
  %.pre13.i1 = load ptr, ptr %i.r, align 8, !tbaa !362 ; 4 uses
  br i1 %i.u, label %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit12, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.w = load i32, ptr %i.v, align 8, !tbaa !363  ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i2 = shl nuw nsw i64 %i.x, 3
  %i.y = getelementptr inbounds nuw i8, ptr %.pre13.i1, i64 %.idx.i2
  %.not11.i3 = icmp eq i32 %i.w, 0
  br i1 %.not11.i3, label %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit12, label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %bb.f, %bb.i
  %.012.i5 = phi ptr [ %i.ag, %bb.i ], [ %.pre13.i1, %bb.f ] ; 2 uses
  %i.z = load ptr, ptr %.012.i5, align 8, !tbaa !365 ; 5 uses
  %.not10.i6 = icmp eq ptr %i.z, null
  br i1 %.not10.i6, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i4
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !367
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i7, label %_ZN4llvm14StringMapEntryISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i8, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ae = tail call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i32 noundef 3) #26, !inline_history !854 ; 0 uses
  br label %_ZN4llvm14StringMapEntryISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i8

_ZN4llvm14StringMapEntryISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i8: ; preds = %bb.h, %bb.g
  %i.af = add i64 %i.aa, 41
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i64 noundef %i.af, i64 noundef 8) #26
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm14StringMapEntryISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i8, %.lr.ph.i4
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i5, i64 8 ; 2 uses
  %.not.i9 = icmp eq ptr %i.ag, %i.y
  br i1 %.not.i9, label %.loopexit.loopexit.i10, label %.lr.ph.i4

.loopexit.loopexit.i10:                           ; preds = %bb.i
  %.pre.i11 = load ptr, ptr %i.r, align 8, !tbaa !362
  br label %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit12

_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit12: ; preds = %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit, %bb.f, %.loopexit.loopexit.i10
  %i.ah = phi ptr [ %.pre.i11, %.loopexit.loopexit.i10 ], [ %.pre13.i1, %bb.f ], [ %.pre13.i1, %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit ]
  tail call void @free(ptr noundef %i.ah) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !858 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZN4llvm8DenseMapIPN4mlir9OperationEPNS1_19PDLPatternConfigSetENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit12
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !859
  %i.an = zext i32 %i.aj to i64                   ; 2 uses
  %i.ao = shl nuw nsw i64 %i.an, 4
  %i.ap = add nuw nsw i64 %i.an, 31
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = and i64 %i.aq, 1073741820
  %i.as = add nuw nsw i64 %i.ar, %i.ao
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.am, i64 noundef %i.as, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIPN4mlir9OperationEPNS1_19PDLPatternConfigSetENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPN4mlir9OperationEPNS1_19PDLPatternConfigSetENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit: ; preds = %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit12, %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !39 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !40 ; 2 uses
  %.not4.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i, label %.lr.ph.i.preheader.i
end_hunk_0
begin_hunk_1_@_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E6doFindIS2_EEPKS8_RKT_:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4mlir7Dialect22getRegisteredInterfaceINS_29ConvertToLLVMPatternInterfaceEEEPT_v(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_29ConvertToLLVMPatternInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4mlir6detail20DialectInterfaceBaseINS_29ConvertToLLVMPatternInterfaceENS_16DialectInterfaceEE14getInterfaceIDEv.exit, !prof !341

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_29ConvertToLLVMPatternInterfaceEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6detail20DialectInterfaceBaseINS_29ConvertToLLVMPatternInterfaceENS_16DialectInterfaceEE14getInterfaceIDEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.47, i64 49), i64 35) #26
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_29ConvertToLLVMPatternInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_29ConvertToLLVMPatternInterfaceEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6detail20DialectInterfaceBaseINS_29ConvertToLLVMPatternInterfaceENS_16DialectInterfaceEE14getInterfaceIDEv.exit

_ZN4mlir6detail20DialectInterfaceBaseINS_29ConvertToLLVMPatternInterfaceENS_16DialectInterfaceEE14getInterfaceIDEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_29ConvertToLLVMPatternInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !129 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !898, !noalias !899 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !900, !noalias !899 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !901, !noalias !899 ; 4 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir6detail20DialectInterfaceBaseINS_29ConvertToLLVMPatternInterfaceENS_16DialectInterfaceEE14getInterfaceIDEv.exit
  %i.l = add i32 %i.j, -1                         ; 2 uses
  %i.m = ptrtoint ptr %.sroa.01.0.copyload.i.i.i to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.l, %i.q                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = lshr i64 %i.s, 5
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !47, !noalias !902
  %i.w = and i32 %i.r, 31
  %i.x = lshr i32 %i.v, %i.w
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !372

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.e
  %i.z = phi i64 [ %i.ae, %bb.e ], [ %i.s, %bb.d ]
  %.01419.i.i.i.i.i = phi i32 [ %i.ad, %bb.e ], [ %i.r, %bb.d ]
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.z ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !129, !noalias !902
  %i.ab = icmp eq ptr %.sroa.01.0.copyload.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.ab, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_16DialectInterfaceESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.loopexit.i, label %bb.e, !prof !232

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ac = add nuw i32 %.01419.i.i.i.i.i, 1
  %i.ad = and i32 %i.ac, %i.l                     ; 3 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = lshr i64 %i.ae, 5
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !47, !noalias !902
  %i.ai = and i32 %i.ad, 31
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i1
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !374

.loopexit.i.i.i:                                  ; preds = %bb.e, %bb.d, %_ZN4mlir6detail20DialectInterfaceBaseINS_29ConvertToLLVMPatternInterfaceENS_16DialectInterfaceEE14getInterfaceIDEv.exit
  %i.al = zext i32 %i.j to i64                    ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.al
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_16DialectInterfaceESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_16DialectInterfaceESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.j to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_16DialectInterfaceESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_16DialectInterfaceESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_16DialectInterfaceESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_16DialectInterfaceESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.loopexit.i ], [ %i.al, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.aa, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_16DialectInterfaceESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.loopexit.i ], [ %i.am, %.loopexit.i.i.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.pre-phi.i
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.an
  br i1 %.not.i, label %_ZN4mlir7Dialect22getRegisteredInterfaceENS_6TypeIDE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_16DialectInterfaceESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !904
  br label %_ZN4mlir7Dialect22getRegisteredInterfaceENS_6TypeIDE.exit

_ZN4mlir7Dialect22getRegisteredInterfaceENS_6TypeIDE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_16DialectInterfaceESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.i, %bb.f
  %i.aq = phi ptr [ %i.ap, %bb.f ], [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_16DialectInterfaceESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.i ]
  ret ptr %i.aq
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !906
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 24) #26
  %i.f = load ptr, ptr %0, align 8, !tbaa !39
  %i.g = load i32, ptr %i.a, align 8, !tbaa !40
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.j = load i32, ptr %i.a, align 8, !tbaa !40
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

declare noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %1(i64 noundef %2, ptr noundef %0) #26, !inline_history !907
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #26 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 5
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not41 = icmp eq i64 %i.d, 0
  br i1 %.not41, label %._crit_edge43, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.042 = phi ptr [ %i.g, %._crit_edge ], [ %i.c, %bb.c ] ; 4 uses
  %.sroa.022.0.in36 = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %.sroa.022.037 = load ptr, ptr %.sroa.022.0.in36, align 8, !tbaa !355 ; 2 uses
  %.not3238 = icmp eq ptr %.sroa.022.037, %.042
  br i1 %.not3238, label %._crit_edge, label %.lr.ph40

._crit_edge43:                                    ; preds = %._crit_edge, %bb.c
  %i.f = icmp eq i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph40
  %.sroa.022.0.in = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 8
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !tbaa !355 ; 2 uses
  %.not32 = icmp eq ptr %.sroa.022.0, %.042
  br i1 %.not32, label %._crit_edge, label %.lr.ph40

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge43, label %.preheader

.lr.ph40:                                         ; preds = %.preheader, %.loopexit
  %.sroa.022.039 = phi ptr [ %.sroa.022.0, %.loopexit ], [ %.sroa.022.037, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !355  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 32 ; 2 uses
  %.not3334 = icmp eq ptr %i.i, %i.j
  br i1 %.not3334, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph40, %.lr.ph
  %.sroa.019.035 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %.lr.ph40 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !355  ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.035) #26
  tail call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull %i.m, ptr %1, i64 %2, i32 noundef %3)
  %.not33 = icmp eq ptr %i.l, %i.j
  br i1 %.not33, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge43
  tail call void %1(i64 noundef %2, ptr noundef nonnull %0) #26, !inline_history !907
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge43
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_125LowerGpuOpsToROCDLOpsPass14runOnOperationEvEUlNS1_4LLVM10LLVMFuncOpEE_SE_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::StringAttr", align 8  ; 5 uses
  %3 = alloca %"class.mlir::StringAttr", align 8  ; 5 uses
  %4 = alloca %"class.mlir::detail::DenseArrayAttrImpl", align 8 ; 4 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !249
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !251
  %i.e = icmp ne ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM10LLVMFuncOpEvE2idE
  %.not1.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not1.i, %i.e
  br i1 %.not.i, label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_125LowerGpuOpsToROCDLOpsPass14runOnOperationEvEUlNS_4LLVM10LLVMFuncOpEE_S7_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %.val, align 8, !tbaa !919, !nonnull !51, !align !77
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.f, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %3, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %.not.i.i.i.i.i.i = icmp ult i32 %i.h, 16777216
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  %i.l = call { ptr, i8 } @_ZN4mlir9Operation15getInherentAttrEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr %i.j, i64 %i.k) #26 ; 2 uses
  %i.m = extractvalue { ptr, i8 } %i.l, 0
  %i.n = extractvalue { ptr, i8 } %i.l, 1
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN4mlir9Operation7getAttrENS_10StringAttrE.exit.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.c
  %.sroa.0.0.copyload.pre.i.i.i.i.i.i = load ptr, ptr %3, align 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i, %bb.b
  %.sroa.0.0.copyload.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.pre.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.q = call ptr @_ZNK4mlir14DictionaryAttr3getENS_10StringAttrE(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr %.sroa.0.0.copyload.i.i.i.i.i.i) #26
  br label %_ZN4mlir9Operation7getAttrENS_10StringAttrE.exit.i.i.i.i.i

_ZN4mlir9Operation7getAttrENS_10StringAttrE.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.02.1.i.i.i.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.02.1.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_125LowerGpuOpsToROCDLOpsPass14runOnOperationEvEUlNS_4LLVM10LLVMFuncOpEE_S7_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit, label %_ZNK4mlir5ROCDL12ROCDLDialect27ReqdWorkGroupSizeAttrHelper13isAttrPresentEPNS_9OperationE.exit.i.i

_ZNK4mlir5ROCDL12ROCDLDialect27ReqdWorkGroupSizeAttrHelper13isAttrPresentEPNS_9OperationE.exit.i.i: ; preds = %_ZN4mlir9Operation7getAttrENS_10StringAttrE.exit.i.i.i.i.i
  %i.r = call noundef zeroext i1 @_ZN4mlir6detail18DenseArrayAttrImplIiE7classofENS_9AttributeE(ptr nonnull %.sroa.02.1.i.i.i.i.i.i) #26
  br i1 %i.r, label %bb.e, label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_125LowerGpuOpsToROCDLOpsPass14runOnOperationEvEUlNS_4LLVM10LLVMFuncOpEE_S7_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit

bb.e:                                             ; preds = %_ZNK4mlir5ROCDL12ROCDLDialect27ReqdWorkGroupSizeAttrHelper13isAttrPresentEPNS_9OperationE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.s = load ptr, ptr %.val, align 8, !tbaa !919, !nonnull !51, !align !77
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.s, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %2, align 8
  %i.t = load i32, ptr %i.g, align 4
  %.not.i.i.i.i.i = icmp ult i32 %i.t, 16777216
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #26 ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.u, 0
  %i.w = extractvalue { ptr, i64 } %i.u, 1
  %i.x = call { ptr, i8 } @_ZN4mlir9Operation15getInherentAttrEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr %i.v, i64 %i.w) #26 ; 2 uses
  %i.y = extractvalue { ptr, i8 } %i.x, 0
  %i.z = extractvalue { ptr, i8 } %i.x, 1
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN4mlir9Operation7getAttrENS_10StringAttrE.exit.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.f
  %.sroa.0.0.copyload.pre.i.i.i.i.i = load ptr, ptr %2, align 8
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i, %bb.e
  %.sroa.0.0.copyload.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = call ptr @_ZNK4mlir14DictionaryAttr3getENS_10StringAttrE(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr %.sroa.0.0.copyload.i.i.i.i.i) #26
  br label %_ZN4mlir9Operation7getAttrENS_10StringAttrE.exit.i.i.i.i

_ZN4mlir9Operation7getAttrENS_10StringAttrE.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.sroa.02.1.i.i.i.i.i = phi ptr [ %i.ac, %bb.g ], [ %i.y, %bb.f ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not.i.i.i.i12.i.i = icmp eq ptr %.sroa.02.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i12.i.i, label %_ZNK4mlir5ROCDL12ROCDLDialect27ReqdWorkGroupSizeAttrHelper7getAttrEPNS_9OperationE.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir9Operation7getAttrENS_10StringAttrE.exit.i.i.i.i
  %i.ad = call noundef zeroext i1 @_ZN4mlir6detail18DenseArrayAttrImplIiE7classofENS_9AttributeE(ptr nonnull %.sroa.02.1.i.i.i.i.i) #26
  %spec.select.i.i.i.i.i.i.i = select i1 %i.ad, ptr %.sroa.02.1.i.i.i.i.i, ptr null
  br label %_ZNK4mlir5ROCDL12ROCDLDialect27ReqdWorkGroupSizeAttrHelper7getAttrEPNS_9OperationE.exit.i.i

_ZNK4mlir5ROCDL12ROCDLDialect27ReqdWorkGroupSizeAttrHelper7getAttrEPNS_9OperationE.exit.i.i: ; preds = %bb.h, %_ZN4mlir9Operation7getAttrENS_10StringAttrE.exit.i.i.i.i
  %.sroa.02.0.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i.i, %bb.h ], [ null, %_ZN4mlir9Operation7getAttrENS_10StringAttrE.exit.i.i.i.i ]
  store ptr %.sroa.02.0.i.i.i.i.i.i, ptr %4, align 8
  %i.ae = call { ptr, i64 } @_ZNK4mlir6detail18DenseArrayAttrImplIiEcvN4llvm8ArrayRefIiEEEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26 ; 2 uses
  %i.af = extractvalue { ptr, i64 } %i.ae, 0      ; 4 uses
  %i.ag = extractvalue { ptr, i64 } %i.ae, 1      ; 2 uses
  %.idx.i.i = shl i64 %i.ag, 2                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx.i.i
  %.not33.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not33.i.i, label %_ZN4llvmplERKNS_5TwineES2_.exit27.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNK4mlir5ROCDL12ROCDLDialect27ReqdWorkGroupSizeAttrHelper7getAttrEPNS_9OperationE.exit.i.i
  %i.ai = add i64 %.idx.i.i, -4                   ; 2 uses
  %i.aj = lshr exact i64 %i.ai, 2
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader3, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.ak, 9223372036854775800     ; 3 uses
  %i.al = shl i64 %n.vec, 2
  %i.am = getelementptr i8, ptr %i.af, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi1 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.aq, %vector.body ]
  %i.an = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.an ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !47
  %wide.load2 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !47
  %i.ap = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.aq = mul <4 x i32> %wide.load2, %vec.phi1    ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !908

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.aq, %i.ap
  %i.as = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZN4llvmplERKNS_5TwineES2_.exit.loopexit.i.i, label %.lr.ph.i.i.preheader3

.lr.ph.i.i.preheader3:                            ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.035.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.as, %middle.block ]
  %.01134.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i

_ZN4llvmplERKNS_5TwineES2_.exit.loopexit.i.i:     ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa = phi i32 [ %i.as, %middle.block ], [ %i.bi, %.lr.ph.i.i ]
  %i.at = zext i32 %.lcssa to i64
  br label %_ZN4llvmplERKNS_5TwineES2_.exit27.i.i

_ZN4llvmplERKNS_5TwineES2_.exit27.i.i:            ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit.loopexit.i.i, %_ZNK4mlir5ROCDL12ROCDLDialect27ReqdWorkGroupSizeAttrHelper7getAttrEPNS_9OperationE.exit.i.i
  %.0.lcssa.i.i = phi i64 [ 1, %_ZNK4mlir5ROCDL12ROCDLDialect27ReqdWorkGroupSizeAttrHelper7getAttrEPNS_9OperationE.exit.i.i ], [ %i.at, %_ZN4llvmplERKNS_5TwineES2_.exit.loopexit.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !920, !nonnull !51, !align !77
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ax = inttoptr i64 %.0.lcssa.i.i to ptr       ; 2 uses
  store ptr %i.ax, ptr %6, align 8, !alias.scope !921
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.26, ptr %i.ay, align 8, !alias.scope !921
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 9, ptr %i.az, align 8, !tbaa !143, !alias.scope !921
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %i.ba, align 1, !tbaa !144, !alias.scope !921
  store ptr %6, ptr %5, align 8, !alias.scope !922
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.ax, ptr %i.bb, align 8, !alias.scope !922
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 2, ptr %i.bc, align 8, !tbaa !143, !alias.scope !922
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 9, ptr %i.bd, align 1, !tbaa !144, !alias.scope !922
  %i.be = call ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(34) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.bf = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !923, !nonnull !51, !align !77
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr %i.bg, align 8
  call void @_ZN4mlir9Operation7setAttrENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr %.sroa.01.0.copyload.i.i.i, ptr %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_125LowerGpuOpsToROCDLOpsPass14runOnOperationEvEUlNS_4LLVM10LLVMFuncOpEE_S7_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader3, %.lr.ph.i.i
  %.035.i.i = phi i32 [ %i.bi, %.lr.ph.i.i ], [ %.035.i.i.ph, %.lr.ph.i.i.preheader3 ]
  %.01134.i.i = phi ptr [ %i.bj, %.lr.ph.i.i ], [ %.01134.i.i.ph, %.lr.ph.i.i.preheader3 ] ; 2 uses
  %i.bh = load i32, ptr %.01134.i.i, align 4, !tbaa !47
  %i.bi = mul i32 %i.bh, %.035.i.i                ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.01134.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bj, %i.ah
  br i1 %.not.i.i, label %_ZN4llvmplERKNS_5TwineES2_.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !917

_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_125LowerGpuOpsToROCDLOpsPass14runOnOperationEvEUlNS_4LLVM10LLVMFuncOpEE_S7_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit: ; preds = %bb.a, %_ZN4mlir9Operation7getAttrENS_10StringAttrE.exit.i.i.i.i.i, %_ZNK4mlir5ROCDL12ROCDLDialect27ReqdWorkGroupSizeAttrHelper13isAttrPresentEPNS_9OperationE.exit.i.i, %_ZN4llvmplERKNS_5TwineES2_.exit27.i.i
  ret void
}

declare noundef zeroext i1 @_ZN4mlir6detail18DenseArrayAttrImplIiE7classofENS_9AttributeE(ptr) local_unnamed_addr #2

declare ptr @_ZNK4mlir14DictionaryAttr3getENS_10StringAttrE(ptr noundef nonnull align 8 dereferenceable(8), ptr) local_unnamed_addr #2

declare { ptr, i64 } @_ZNK4mlir6detail18DenseArrayAttrImplIiEcvN4llvm8ArrayRefIiEEEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir16ConversionTargetD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4mlir16ConversionTargetE, i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
end_hunk_1
