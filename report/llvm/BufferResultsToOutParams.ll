Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BufferResultsToOutParams?download=true
inline.NumInlined: 2865
inline.NumDeleted: 1816
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_11SmallVectorINS4_INS1_5ValueELj6EEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEED2Ev
define linkonce_odr hidden void @_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_11SmallVectorINS4_INS1_5ValueELj6EEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !114  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_11SmallVectorINS4_INS1_5ValueELj6EEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !115
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !116
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !117  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.l = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_11SmallVectorINS5_INS2_5ValueELj6EEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ae, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_11SmallVectorINS5_INS2_5ValueELj6EEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [88 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !71   ; 2 uses
  %.not4.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.b
  %i.u = zext i32 %i.t to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.u, 6
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.w, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i.i ], [ %i.v, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -64 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !70   ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -48
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @free(ptr noundef %i.x) #23
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.r, %i.w
  br i1 %.not.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i.i.i: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !70
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i.i.i, %bb.b
  %i.aa = phi ptr [ %.pre.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i.i.i ], [ %i.r, %bb.b ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_11SmallVectorINS5_INS2_5ValueELj6EEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i.i.i
  tail call void @free(ptr noundef %i.aa) #23
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_11SmallVectorINS5_INS2_5ValueELj6EEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_11SmallVectorINS5_INS2_5ValueELj6EEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE13destroy_rangeEPS4_S6_.exit.i.i.i
  %i.ad = add i32 %.0.i3.i, -1
  %i.ae = and i32 %i.ad, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !260

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_11SmallVectorINS5_INS2_5ValueELj6EEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_11SmallVectorINS5_INS2_5ValueELj6EEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !261

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_11SmallVectorINS5_INS2_5ValueELj6EEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !114  ; 2 uses
  %i.af = icmp eq i32 %.pr, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_11SmallVectorINS4_INS1_5ValueELj6EEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEE17deallocateBucketsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_11SmallVectorINS5_INS2_5ValueELj6EEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEv.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !115
  %i.ah = zext i32 %.pr to i64                    ; 2 uses
  %i.ai = mul nuw nsw i64 %i.ah, 88
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_11SmallVectorINS4_INS1_5ValueELj6EEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_11SmallVectorINS4_INS1_5ValueELj6EEELj1EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_11SmallVectorINS5_INS2_5ValueELj6EEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEv.exit, %bb.e
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir6Region6getOpsINS_4func6FuncOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS0_10OpIteratorEEEEEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::iterator_range") align 8 %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.05 = alloca %"class.llvm::filter_iterator_base", align 8 ; 2 uses
  %2 = alloca %"class.mlir::Region::OpIterator", align 8 ; 6 uses
  %3 = alloca %"class.mlir::detail::op_filter_iterator", align 8 ; 7 uses
  %4 = alloca %"class.mlir::Region::OpIterator", align 8 ; 2 uses
  %5 = alloca %"class.mlir::detail::op_filter_iterator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN4mlir6Region10OpIteratorC1EPS0_b(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(28) %1, i1 noundef zeroext true) #23
  call void @_ZN4mlir6Region10OpIteratorC1EPS0_b(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(28) %1, i1 noundef zeroext false) #23
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr @_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEE6filterERNS_9OperationE, ptr %i.b, align 8, !tbaa !111
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !52
  %.not1.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not1.i.i.i.i, label %_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.l, %bb.b ], [ %i.e, %bb.a ]
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !111
  %i.i = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.g) #23
  %i.j = call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(64) %i.i) #23, !inline_history !262
  br i1 %i.j, label %_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.k = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #23 ; 0 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !52
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i.i, label %_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.05, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr @_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEE6filterERNS_9OperationE, ptr %i.o, align 8, !tbaa !111
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !52   ; 2 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !52
  %.not1.i.i.i.i1 = icmp eq ptr %i.r, %i.s
  br i1 %.not1.i.i.i.i1, label %_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit4, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit, %bb.c
  %i.t = phi ptr [ %i.y, %bb.c ], [ %i.r, %_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit ]
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !111
  %i.v = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.t) #23
  %i.w = call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(64) %i.v) #23, !inline_history !262
  br i1 %i.w, label %_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit4, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i2
  %i.x = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(56) %5) #23 ; 0 uses
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !52   ; 2 uses
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !52
  %.not.i.i.i.i3 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i3, label %_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit4, label %.lr.ph.i.i.i.i2, !llvm.loop !0

_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit4: ; preds = %.lr.ph.i.i.i.i2, %bb.c, %_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEEC2ES5_S5_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.05, i64 56, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN4mlir6detail11op_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEE6unwrapERNS_9OperationE, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @_ZN4mlir6detail11op_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEE6unwrapERNS_9OperationE, ptr %.sroa.411.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare void @_ZN4mlir6Region10OpIteratorC1EPS0_b(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i1 noundef zeroext) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir6detail18op_filter_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEE6filterERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !120
  %i.d = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_4func6FuncOpEvE2idE
  %1 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_4func6FuncOpEvE2idE
  %spec.select.i.i.i.i = and i1 %1, %i.d
  ret i1 %spec.select.i.i.i.i
}

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN4mlir6detail11op_iteratorINS_4func6FuncOpENS_6Region10OpIteratorEE6unwrapERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #0 comdat align 2 {
bb.a:
  ret ptr %0
}

declare ptr @_ZN4mlir4func6FuncOp15getFunctionTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef i32 @_ZNK4mlir12FunctionType13getNumResultsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare { ptr, i64 } @_ZNK4mlir12FunctionType10getResultsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind writable sret(%"class.mlir::InFlightDiagnostic") align 8, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #3

declare i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !94
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %0) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !101, !range !58, !noundef !59
  %i.d = trunc nuw i8 %i.c to i1
  store i8 0, ptr %i.b, align 8, !tbaa !101
  br i1 %i.d, label %bb.d, label %_ZNSt14_Optional_baseIN4mlir10DiagnosticELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.e) #23
  br label %_ZNSt14_Optional_baseIN4mlir10DiagnosticELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4mlir10DiagnosticELb0ELb0EED2Ev.exit: ; preds = %bb.c, %bb.d
  ret void
}

declare { ptr, i64 } @_ZNK4mlir12FunctionType9getInputsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZN4mlir12FunctionType3getEPNS_11MLIRContextENS_9TypeRangeES3_(ptr noundef, i64, i64, i64, i64) local_unnamed_addr #3

declare void @_ZN4mlir9TypeRangeC1EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #3

declare noundef i32 @_ZNK4mlir12FunctionType12getNumInputsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #3

declare ptr @_ZN4mlir8UnitAttr3getEPNS_11MLIRContextE(ptr noundef) local_unnamed_addr #3

declare ptr @_ZN4mlir5Block11addArgumentENS_4TypeENS_8LocationE(ptr noundef nonnull align 8 dereferenceable(80), ptr, ptr) local_unnamed_addr #3

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare { ptr, ptr } @_ZNK4mlir10MemRefType9getLayoutEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4mlir25MemRefLayoutAttrInterface10isIdentityEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare i8 @_ZNK4mlir10MemRefType19getStridesAndOffsetERN4llvm15SmallVectorImplIlEERl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !264
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !71
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 24) #23
  %i.f = load ptr, ptr %0, align 8, !tbaa !70
  %i.g = load i32, ptr %i.a, align 8, !tbaa !71
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.j = load i32, ptr %i.a, align 8, !tbaa !71
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #23
  br label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !270  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !271  ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i13, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit
  %.0.i.i4 = phi ptr [ %i.j, %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit ], [ %i.f, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit ] ; 3 uses
  %i.i = load ptr, ptr %.0.i.i4, align 8, !tbaa !273 ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.i, null
  br i1 %.not.i.i2, label %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit, label %_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i: ; preds = %.lr.ph
  tail call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.i) #23, !inline_history !265
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 192) #25, !inline_history !265
  br label %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit

_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i
  store ptr null, ptr %.0.i.i4, align 8, !tbaa !273
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i4, i64 8 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i1, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit, label %.lr.ph, !llvm.loop !266

_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !270
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit

_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit
  %i.k = phi ptr [ %.pre, %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit ], [ %i.f, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !274
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #25
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !277  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !278  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i ], [ %i.r, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit ] ; 2 uses
  %i.u = load ptr, ptr %.05.i.i.i, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #25
  br label %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.t
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !267

_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.q, align 8, !tbaa !277
  br label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i

_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i ], [ %i.r, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !279
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #25
  br label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit

end_hunk_0
begin_hunk_1_@_ZN4mlir23function_interface_impl10setArgAttrINS_4func6FuncOpEEEvT_jNS_10StringAttrENS_9AttributeE:bb.a
}

declare void @_ZN4mlir13NamedAttrListC1ENS_14DictionaryAttrE(ptr noundef nonnull align 8 dereferenceable(88), ptr) unnamed_addr #3

declare ptr @_ZN4mlir13NamedAttrList3setENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(88), ptr, ptr) local_unnamed_addr #3

declare ptr @_ZNK4mlir13NamedAttrList13getDictionaryEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #3

declare ptr @_ZN4mlir23function_interface_impl14getArgAttrDictENS_19FunctionOpInterfaceEj(ptr, ptr, i32 noundef) local_unnamed_addr #3

declare void @_ZN4mlir23function_interface_impl11setArgAttrsENS_19FunctionOpInterfaceEjNS_14DictionaryAttrE(ptr, ptr, i32 noundef, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN4mlir6detail24FunctionOpInterfaceTraitINS_4func6FuncOpEE21getTypeWithoutResultsERKN4llvm9BitVectorE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::FunctionType", align 8 ; 4 uses
  %3 = alloca %"class.mlir::FunctionType", align 8 ; 4 uses
  %4 = alloca %"class.mlir::FunctionType", align 8 ; 4 uses
  %5 = alloca %"class.llvm::SmallVector.78", align 8 ; 8 uses
  %6 = alloca %"class.mlir::TypeRange", align 8   ; 3 uses
  %7 = alloca %"class.mlir::TypeRange", align 8   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !70
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !71
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 6, ptr %i.c, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.d = call ptr @_ZN4mlir4func6FuncOp15getFunctionTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #23
  store ptr %i.d, ptr %4, align 8
  %i.e = call { ptr, i64 } @_ZNK4mlir12FunctionType10getResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #23 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  call void @_ZN4mlir9TypeRangeC1EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %i.f, i64 %i.g) #23
  %i.h = load i64, ptr %6, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = call { i64, i64 } @_ZN4mlir14filterTypesOutENS_9TypeRangeERKN4llvm9BitVectorERNS1_15SmallVectorImplINS_4TypeEEE(i64 %i.h, i64 %i.j, ptr noundef nonnull align 8 dereferenceable(68) %1, ptr noundef nonnull align 8 dereferenceable(16) %5) #23 ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.n = call ptr @_ZN4mlir4func6FuncOp15getFunctionTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #23
  store ptr %i.n, ptr %3, align 8
  %i.o = call { ptr, i64 } @_ZNK4mlir12FunctionType9getInputsEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #23 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.p = extractvalue { ptr, i64 } %i.o, 0
  %i.q = extractvalue { ptr, i64 } %i.o, 1
  call void @_ZN4mlir9TypeRangeC1EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %i.p, i64 %i.q) #23
  %i.r = load i64, ptr %7, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.t = load i64, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.u = call ptr @_ZN4mlir4func6FuncOp15getFunctionTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #23
  store ptr %i.u, ptr %2, align 8
  %i.v = call ptr @_ZNK4mlir12FunctionType5cloneENS_9TypeRangeES1_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %i.r, i64 %i.t, i64 %i.l, i64 %i.m) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.w = load ptr, ptr %5, align 8, !tbaa !70     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.a
  br i1 %i.x, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.w) #23
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret ptr %i.v
}

declare void @_ZN4mlir23function_interface_impl20eraseFunctionResultsENS_19FunctionOpInterfaceERKN4llvm9BitVectorENS_4TypeE(ptr, ptr, ptr noundef nonnull align 8 dereferenceable(68), ptr) local_unnamed_addr #3

declare { i64, i64 } @_ZN4mlir14filterTypesOutENS_9TypeRangeERKN4llvm9BitVectorERNS1_15SmallVectorImplINS_4TypeEEE(i64, i64, ptr noundef nonnull align 8 dereferenceable(68), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare ptr @_ZNK4mlir12FunctionType5cloneENS_9TypeRangeES1_(ptr noundef nonnull align 8 dereferenceable(8), i64, i64, i64, i64) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir13BlockArgumentELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !71
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #23
  %i.f = load ptr, ptr %0, align 8, !tbaa !70
  %i.g = load i32, ptr %i.a, align 8, !tbaa !71
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !71
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %1(i64 noundef %2, ptr noundef %0) #23, !inline_history !281
  switch i32 %i.b, label %bb.c [
    i32 2, label %.thread
    i32 0, label %.thread.fold.split
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #23 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not75 = icmp eq i64 %i.e, 0
  br i1 %.not75, label %._crit_edge77, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.03176 = phi ptr [ %i.o, %._crit_edge ], [ %i.d, %bb.c ] ; 4 uses
  %.sroa.037.0.in71 = getelementptr inbounds nuw i8, ptr %.03176, i64 8
  %.sroa.037.072 = load ptr, ptr %.sroa.037.0.in71, align 8, !tbaa !103 ; 2 uses
  %.not6973 = icmp eq ptr %.sroa.037.072, %.03176
  br i1 %.not6973, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.d
  %.sroa.037.0.in = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 8
  %.sroa.037.0 = load ptr, ptr %.sroa.037.0.in, align 8, !tbaa !103 ; 2 uses
  %.not69 = icmp eq ptr %.sroa.037.0, %.03176
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.loopexit
  %.sroa.037.074 = phi ptr [ %.sroa.037.0, %.loopexit ], [ %.sroa.037.072, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !103
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.034.0 = phi ptr [ %i.h, %.lr.ph ], [ %i.k, %bb.e ] ; 3 uses
  %.not70 = icmp eq ptr %.sroa.034.0, %i.i
  br i1 %.not70, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.034.0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !103
  %i.l = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.034.0) #23
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
  %i.q = tail call i32 %1(i64 noundef %2, ptr noundef nonnull %0) #23, !inline_history !281
  br label %.thread

.thread.fold.split:                               ; preds = %bb.b
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.b, %.thread.fold.split, %._crit_edge77, %bb.f
  %.sroa.030.9 = phi i32 [ %i.q, %bb.f ], [ 0, %.thread.fold.split ], [ 1, %._crit_edge77 ], [ 1, %bb.b ], [ 0, %bb.e ]
  ret i32 %.sroa.030.9
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal range(i32 0, 2) i32 @"_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZL15updateReturnOpsNS1_4func6FuncOpENS_8ArrayRefINS1_13BlockArgumentEEERNS_8DenseMapISD_NS_11SmallVectorINSI_INS1_5ValueELj6EEELj1EEENS_12DenseMapInfoISD_vEENS_6detail12DenseMapPairISD_SL_EEEERKNS1_13bufferization28BufferResultsToOutParamsOptsEE3$_0NSC_8ReturnOpES2_EENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueES15_E4typeES4_OT1_EUlS4_E_EES2_lS4_"(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::Location", align 8    ; 4 uses
  %3 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %4 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %5 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %6 = alloca %"class.llvm::SmallVector.231", align 8 ; 12 uses
  %7 = alloca %"class.mlir::func::ReturnOp", align 8 ; 9 uses
  %8 = alloca %"class.llvm::SmallVector.231", align 8 ; 10 uses
  %9 = alloca %"class.llvm::SmallVector.231", align 8 ; 10 uses
  %10 = alloca %"class.mlir::OpBuilder", align 8  ; 8 uses
  %11 = alloca %"class.llvm::SmallVector.238", align 8 ; 10 uses
  %12 = alloca %"class.mlir::MemRefType", align 8 ; 5 uses
  %13 = alloca %"class.mlir::MemRefType", align 8 ; 6 uses
  %14 = alloca %"class.llvm::SmallVector.231", align 8 ; 13 uses
  %15 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %16 = alloca %"struct.std::pair.268", align 8   ; 8 uses
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120
  %i.e = icmp ne ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_4func8ReturnOpEvE2idE
  %17 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_4func8ReturnOpEvE2idE
  %spec.select.i.i.i.i.not.i = or i1 %17, %i.e
  %.not2.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not2.i, %spec.select.i.i.i.i.not.i
  br i1 %.not.i, label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZL15updateReturnOpsNS_4func6FuncOpEN4llvm8ArrayRefINS_13BlockArgumentEEERNS6_8DenseMapIS5_NS6_11SmallVectorINSB_INS_5ValueELj6EEELj1EEENS6_12DenseMapInfoIS5_vEENS6_6detail12DenseMapPairIS5_SE_EEEERKNS_13bufferization28BufferResultsToOutParamsOptsEE3$_0NS4_8ReturnOpENS_10WalkResultEEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_SS_EE5valueES11_E4typeESW_OT1_ENKUlSW_E_clESW_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  store ptr %1, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.f, ptr %8, align 8, !tbaa !70
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i32 0, ptr %i.g, align 8, !tbaa !71
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  store i32 6, ptr %i.h, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.i, ptr %9, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  store i32 0, ptr %i.j, align 8, !tbaa !71
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  store i32 6, ptr %i.k, align 4, !tbaa !72
  %i.l = call i64 @_ZN4mlir4func8ReturnOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0) #23 ; 3 uses
  %i.m = load ptr, ptr %7, align 8, !tbaa !65     ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 44
  %i.o = load i32, ptr %i.n, align 4
  %i.p = and i32 %i.o, 8388608
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4mlir4func8ReturnOp11getOperandsEv.exit.i.i, label %bb.c, !prof !138

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !141
  br label %_ZN4mlir4func8ReturnOp11getOperandsEv.exit.i.i

_ZN4mlir4func8ReturnOp11getOperandsEv.exit.i.i:   ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %i.r, %bb.c ], [ null, %bb.b ]
  %i.s = and i64 %i.l, 4294967295                 ; 3 uses
  %.sroa.5.0.extract.shift.i.i.i.i = lshr i64 %i.l, 32
  %i.t = add i64 %.sroa.5.0.extract.shift.i.i.i.i, %i.l
  %i.u = and i64 %i.t, 4294967295                 ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 %i.s
  %i.w = sub nsw i64 %i.u, %i.s
  %.not117.i.i = icmp eq i64 %i.u, %i.s
  br i1 %.not117.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.i.i
  %.pre.i.i = load ptr, ptr %7, align 8, !tbaa !65
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN4mlir4func8ReturnOp11getOperandsEv.exit.i.i
  %i.x = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.m, %_ZN4mlir4func8ReturnOp11getOperandsEv.exit.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y) #23
  store ptr %i.z, ptr %10, align 8, !tbaa !144
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 0, ptr %i.aa, align 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !145
  %i.ae = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.x) #23
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !148
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.ae, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.ag, ptr %11, align 8, !tbaa !70
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i32 0, ptr %i.ah, align 8, !tbaa !71
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 1, ptr %i.ai, align 4, !tbaa !72
  %i.aj = load ptr, ptr %.val, align 8, !tbaa !299, !nonnull !59, !align !149 ; 2 uses
  %i.ak = load ptr, ptr %8, align 8, !tbaa !70, !noalias !300 ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !302, !noalias !300 ; 2 uses
  %i.am = load i32, ptr %i.g, align 8, !tbaa !71, !noalias !303 ; 2 uses
  %i.an = zext i32 %i.am to i64
  %.idx.i.i = shl nuw nsw i64 %i.an, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !304, !noalias !303 ; 2 uses
  %.idx148.i.i = shl nuw nsw i64 %i.aq, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx148.i.i
  %i.as = icmp ne i32 %i.am, 0
  %i.at = icmp ne i64 %i.aq, 0
  %.not3.i143.i.i = select i1 %i.as, i1 %i.at, i1 false
  br i1 %.not3.i143.i.i, label %.lr.ph147.i.i, label %.thread113.i.i

.lr.ph147.i.i:                                    ; preds = %._crit_edge.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 5 uses
  br label %bb.j

.lr.ph.i.i:                                       ; preds = %_ZN4mlir4func8ReturnOp11getOperandsEv.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.i.i
  %.sroa.4103.0118.i.i = phi i64 [ %i.by, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.i.i ], [ 0, %_ZN4mlir4func8ReturnOp11getOperandsEv.exit.i.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.4103.0118.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !tbaa !152 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.be, align 8
  %i.bf = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !79
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i3.i = load ptr, ptr %i.bi, align 8, !tbaa !81
  %i.bj = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i3.i, @_ZN4mlir6detail14TypeIDResolverINS_10MemRefTypeEvE2idE
  br i1 %i.bj, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.bk = load i32, ptr %i.g, align 8, !tbaa !71  ; 2 uses
  %i.bl = load i32, ptr %i.h, align 4, !tbaa !72
  %.not.i.i.i = icmp ult i32 %i.bk, %i.bl
  br i1 %.not.i.i.i, label %bb.f, label %bb.e, !prof !100

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr nonnull %.sroa.0.0.copyload.i.i.i.i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.bm = zext i32 %i.bk to i64
  %i.bn = load ptr, ptr %8, align 8, !tbaa !70
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bm
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.bo, align 1
  %i.bp = load i32, ptr %i.g, align 8, !tbaa !71
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.g, align 8, !tbaa !71
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.br = load i32, ptr %i.j, align 8, !tbaa !71  ; 2 uses
  %i.bs = load i32, ptr %i.k, align 4, !tbaa !72
  %.not.i35.i.i = icmp ult i32 %i.br, %i.bs
  br i1 %.not.i35.i.i, label %bb.i, label %bb.h, !prof !100

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull %.sroa.0.0.copyload.i.i.i.i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.bt = zext i32 %i.br to i64
  %i.bu = load ptr, ptr %9, align 8, !tbaa !70
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bt
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.bv, align 1
  %i.bw = load i32, ptr %i.j, align 8, !tbaa !71
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.j, align 8, !tbaa !71
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.i.i: ; preds = %bb.i, %bb.h, %bb.f, %bb.e
  %i.by = add nuw nsw i64 %.sroa.4103.0118.i.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %i.by, %i.w
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %bb.bm, %.lr.ph147.i.i
  %.sroa.088.0145.i.i = phi ptr [ %i.al, %.lr.ph147.i.i ], [ %i.jj, %bb.bm ] ; 3 uses
  %.sroa.791.0144.i.i = phi ptr [ %i.ak, %.lr.ph147.i.i ], [ %i.ji, %bb.bm ] ; 8 uses
  %i.bz = load ptr, ptr %i.au, align 8, !tbaa !305, !nonnull !59, !align !149
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 97
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !306, !range !58, !noundef !59
  %i.cc = trunc nuw i8 %i.cb to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  br i1 %i.cc, label %bb.k, label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.cd = load ptr, ptr %.sroa.791.0144.i.i, align 8, !tbaa !154
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.0.copyload.i.i.i.i.i37.i.i = load i64, ptr %i.ce, align 8
  %i.cf = and i64 %.0.copyload.i.i.i.i.i37.i.i, -8
  %i.cg = inttoptr i64 %i.cf to ptr
  store ptr %i.cg, ptr %12, align 8
  %i.ch = call noundef zeroext i1 @_ZNK4mlir14BaseMemRefType7hasRankEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #23
  br i1 %i.ch, label %bb.l, label %_ZNK4mlir6detail15ShapedTypeTraitINS_10MemRefTypeEE14hasStaticShapeEv.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.ci = call { ptr, i64 } @_ZNK4mlir10MemRefType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #23 ; 2 uses
  %i.cj = extractvalue { ptr, i64 } %i.ci, 0      ; 3 uses
  %i.ck = extractvalue { ptr, i64 } %i.ci, 1      ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ck ; 3 uses
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = lshr i64 %i.ck, 2                       ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.l, %bb.p
  %.047.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cw, %bb.p ], [ %i.cn, %bb.l ] ; 2 uses
  %.02946.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cv, %bb.p ], [ %i.cj, %bb.l ] ; 9 uses
  %i.co = load i64, ptr %.02946.i.i.i.i.i.i.i.i.i, align 8, !tbaa !74
  %.not.i.i.i.i = icmp eq i64 %i.co, -9223372036854775808
  br i1 %.not.i.i.i.i, label %_ZN4mlir10ShapedType13isStaticShapeEN4llvm8ArrayRefIlEE.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i.i, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !74
  %.not1.i.i.i.i = icmp eq i64 %i.cq, -9223372036854775808
  br i1 %.not1.i.i.i.i, label %_ZN4mlir10ShapedType13isStaticShapeEN4llvm8ArrayRefIlEE.exit.i.i.i.loopexit.split.loop.exit, label %bb.n

end_hunk_1
begin_hunk_2_@_ZN4llvm15SmallVectorImplINS_11SmallVectorIN4mlir5ValueELj6EEEEaSEOS5_:bb.a
  %.026 = phi i64 [ 0, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN4mlir5ValueELj6EEEE5clearEv.exit50 ], [ 0, %bb.m ], [ %i.z, %.lr.ph.i.i.i.i.i52 ] ; 3 uses
  %i.bj = load ptr, ptr %1, align 8, !tbaa !70    ; 3 uses
  %i.bk = load i32, ptr %i.u, align 8, !tbaa !71
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %i.bm = getelementptr inbounds nuw [64 x i8], ptr %i.bj, i64 %i.bl
  %.not7.i.i.i.i.i = icmp samesign eq i64 %.026, %i.bl
  br i1 %.not7.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE18uninitialized_moveIPS4_S7_EEvT_S8_T0_.exit, label %.lr.ph.i.i.i.i.i57.preheader

.lr.ph.i.i.i.i.i57.preheader:                     ; preds = %_ZSt4moveIPN4llvm11SmallVectorIN4mlir5ValueELj6EEES5_ET0_T_S7_S6_.exit56
  %i.bn = load ptr, ptr %0, align 8, !tbaa !70
  %i.bo = getelementptr inbounds nuw [64 x i8], ptr %i.bn, i64 %.026
  %i.bp = getelementptr inbounds nuw [64 x i8], ptr %i.bj, i64 %.026
  br label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %.lr.ph.i.i.i.i.i57.preheader, %_ZSt10_ConstructIN4llvm11SmallVectorIN4mlir5ValueELj6EEEJS4_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.bx, %_ZSt10_ConstructIN4llvm11SmallVectorIN4mlir5ValueELj6EEEJS4_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.bo, %.lr.ph.i.i.i.i.i57.preheader ] ; 6 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.bw, %_ZSt10_ConstructIN4llvm11SmallVectorIN4mlir5ValueELj6EEEJS4_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.bp, %.lr.ph.i.i.i.i.i57.preheader ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  store ptr %i.bq, ptr %.09.i.i.i.i.i, align 8, !tbaa !70
  %i.br = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  store i32 0, ptr %i.br, align 8, !tbaa !71
  %i.bs = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 12
  store i32 6, ptr %i.bs, align 4, !tbaa !72
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !71
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4llvm11SmallVectorIN4mlir5ValueELj6EEEJS4_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i57
  %i.bv = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir5ValueEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(64) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.04.08.i.i.i.i.i) ; 0 uses
  br label %_ZSt10_ConstructIN4llvm11SmallVectorIN4mlir5ValueELj6EEEJS4_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN4llvm11SmallVectorIN4mlir5ValueELj6EEEJS4_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.o, %.lr.ph.i.i.i.i.i57
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 64 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 64
  %.not.i.i.i.i.i = icmp eq ptr %i.bw, %i.bm
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE18uninitialized_moveIPS4_S7_EEvT_S8_T0_.exit.loopexit, label %.lr.ph.i.i.i.i.i57, !llvm.loop !5

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE18uninitialized_moveIPS4_S7_EEvT_S8_T0_.exit.loopexit: ; preds = %_ZSt10_ConstructIN4llvm11SmallVectorIN4mlir5ValueELj6EEEJS4_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre68 = load ptr, ptr %1, align 8, !tbaa !70
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE18uninitialized_moveIPS4_S7_EEvT_S8_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE18uninitialized_moveIPS4_S7_EEvT_S8_T0_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE18uninitialized_moveIPS4_S7_EEvT_S8_T0_.exit.loopexit, %_ZSt4moveIPN4llvm11SmallVectorIN4mlir5ValueELj6EEES5_ET0_T_S7_S6_.exit56
  %i.by = phi ptr [ %.pre68, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE18uninitialized_moveIPS4_S7_EEvT_S8_T0_.exit.loopexit ], [ %i.bj, %_ZSt4moveIPN4llvm11SmallVectorIN4mlir5ValueELj6EEES5_ET0_T_S7_S6_.exit56 ] ; 2 uses
  store i32 %i.v, ptr %i.x, align 8, !tbaa !71
  %i.bz = load i32, ptr %i.u, align 8, !tbaa !71  ; 2 uses
  %.not4.i.i58 = icmp eq i32 %i.bz, 0
  br i1 %.not4.i.i58, label %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN4mlir5ValueELj6EEEE5clearEv.exit66, label %.lr.ph.i.preheader.i59

.lr.ph.i.preheader.i59:                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE18uninitialized_moveIPS4_S7_EEvT_S8_T0_.exit
  %i.ca = zext i32 %i.bz to i64
  %.idx.i60 = shl nuw nsw i64 %i.ca, 6
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx.i60
  br label %.lr.ph.i.i61

.lr.ph.i.i61:                                     ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i63, %.lr.ph.i.preheader.i59
  %.05.i.i62 = phi ptr [ %i.cc, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i63 ], [ %i.cb, %.lr.ph.i.preheader.i59 ] ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %.05.i.i62, i64 -64 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !70 ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %.05.i.i62, i64 -48
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i63, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i61
  tail call void @free(ptr noundef %i.cd) #23
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i63

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i63: ; preds = %bb.p, %.lr.ph.i.i61
  %.not.i.i64 = icmp eq ptr %i.by, %i.cc
  br i1 %.not.i.i64, label %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN4mlir5ValueELj6EEEE5clearEv.exit66, label %.lr.ph.i.i61, !llvm.loop !1

_ZN4llvm15SmallVectorImplINS_11SmallVectorIN4mlir5ValueELj6EEEE5clearEv.exit66: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i63, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN4mlir5ValueELj6EEELb0EE18uninitialized_moveIPS4_S7_EEvT_S8_T0_.exit
  store i32 0, ptr %i.u, align 8, !tbaa !71
  br label %bb.q

bb.q:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN4mlir5ValueELj6EEEE5clearEv.exit, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN4mlir5ValueELj6EEEE5clearEv.exit66, %bb.a, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIN4mlir5ValueELj6EEEE12assignRemoteEOS5_.exit
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN4mlir11SymbolTableC1EPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %1(i64 noundef %2, ptr noundef %0) #23, !inline_history !332
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #23 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 5
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not41 = icmp eq i64 %i.d, 0
  br i1 %.not41, label %._crit_edge43, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.042 = phi ptr [ %i.g, %._crit_edge ], [ %i.c, %bb.c ] ; 4 uses
  %.sroa.022.0.in36 = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %.sroa.022.037 = load ptr, ptr %.sroa.022.0.in36, align 8, !tbaa !103 ; 2 uses
  %.not3238 = icmp eq ptr %.sroa.022.037, %.042
  br i1 %.not3238, label %._crit_edge, label %.lr.ph40

._crit_edge43:                                    ; preds = %._crit_edge, %bb.c
  %i.f = icmp eq i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph40
  %.sroa.022.0.in = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 8
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !tbaa !103 ; 2 uses
  %.not32 = icmp eq ptr %.sroa.022.0, %.042
  br i1 %.not32, label %._crit_edge, label %.lr.ph40

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge43, label %.preheader

.lr.ph40:                                         ; preds = %.preheader, %.loopexit
  %.sroa.022.039 = phi ptr [ %.sroa.022.0, %.loopexit ], [ %.sroa.022.037, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !103  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 32 ; 2 uses
  %.not3334 = icmp eq ptr %i.i, %i.j
  br i1 %.not3334, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph40, %.lr.ph
  %.sroa.019.035 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %.lr.ph40 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !103  ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.035) #23
  tail call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull %i.m, ptr %1, i64 %2, i32 noundef %3)
  %.not33 = icmp eq ptr %i.l, %i.j
  br i1 %.not33, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge43
  tail call void %1(i64 noundef %2, ptr noundef nonnull %0) #23, !inline_history !332
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge43
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZL11updateCallsNS1_8ModuleOpERKNS_8DenseMapINS1_4func6FuncOpENS_11SmallVectorINSF_INS1_5ValueELj6EEELj1EEENS_12DenseMapInfoISE_vEENS_6detail12DenseMapPairISE_SI_EEEERKNS1_13bufferization28BufferResultsToOutParamsOptsEE3$_0NSD_6CallOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueES13_E4typeES3_OT1_EUlS3_E_EEvlS3_"(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::MemRefType", align 8  ; 4 uses
  %3 = alloca %"class.mlir::MemRefLayoutAttrInterface", align 8 ; 5 uses
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %5 = alloca %"class.mlir::Location", align 8    ; 4 uses
  %6 = alloca %"class.mlir::MemRefType", align 8  ; 4 uses
  %7 = alloca %"class.mlir::ValueRange", align 16 ; 4 uses
  %8 = alloca %"class.mlir::func::CallOp", align 8 ; 5 uses
  %9 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %10 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %11 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %13 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %14 = alloca %"class.mlir::func::CallOp", align 8 ; 17 uses
  %15 = alloca %"class.mlir::func::FuncOp", align 8 ; 9 uses
  %16 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 18 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %18 = alloca %"class.llvm::SmallVector.231", align 8 ; 11 uses
  %19 = alloca %"class.llvm::SmallVector.231", align 8 ; 10 uses
  %20 = alloca %"class.llvm::SmallVector.231", align 8 ; 10 uses
  %21 = alloca %"class.mlir::OpBuilder", align 8  ; 9 uses
  %22 = alloca %"class.llvm::SmallVector.238", align 8 ; 17 uses
  %23 = alloca %"class.llvm::SmallVector.231", align 8 ; 16 uses
  %24 = alloca %"class.mlir::MemRefType", align 8 ; 7 uses
  %25 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %27 = alloca %"class.mlir::MemRefType", align 8 ; 8 uses
  %28 = alloca %"class.llvm::SmallVector.231", align 8 ; 10 uses
  %29 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %30 = alloca %"class.mlir::ValueRange", align 16 ; 4 uses
  %31 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %32 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %33 = alloca %"class.llvm::SmallVector.231", align 8 ; 12 uses
  %34 = alloca %"class.llvm::SmallVector.78", align 8 ; 9 uses
  %35 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %36 = alloca %"class.mlir::ValueRange", align 8 ; 4 uses
  %i.b = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.b, align 8             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !120
  %i.f = icmp ne ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_4func6CallOpEvE2idE
  %37 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_4func6CallOpEvE2idE
  %spec.select.i.i.i.i.not.i = or i1 %37, %i.f
  %.not1.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not1.i, %spec.select.i.i.i.i.not.i
  br i1 %.not.i, label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZL11updateCallsNS_8ModuleOpERKN4llvm8DenseMapINS_4func6FuncOpENS5_11SmallVectorINS9_INS_5ValueELj6EEELj1EEENS5_12DenseMapInfoIS8_vEENS5_6detail12DenseMapPairIS8_SC_EEEERKNS_13bufferization28BufferResultsToOutParamsOptsEE3$_0NS7_6CallOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESZ_E4typeESU_OT1_ENKUlSU_E_clESU_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  call void @llvm.lifetime.start.p0(ptr nonnull %36)
  store ptr %1, ptr %14, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.g = load ptr, ptr %.val, align 8, !tbaa !370, !nonnull !59, !align !149
  %i.h = call { ptr, i64 } @_ZN4mlir4func6CallOp9getCalleeEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #23 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0
  %i.j = extractvalue { ptr, i64 } %i.h, 1
  %i.k = call noundef ptr @_ZNK4mlir11SymbolTable6lookupEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(36) %i.g, ptr %i.i, i64 %i.j) #23 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !118
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !120
  %i.o = icmp eq ptr %i.n, @_ZN4mlir6detail14TypeIDResolverINS_4func6FuncOpEvE2idE
  %38 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_4func6FuncOpEvE2idE
  %spec.select.i.i.i.i.i.i.i.i = and i1 %38, %i.o
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.p = getelementptr inbounds nuw i8, ptr %17, i64 32
  store i8 1, ptr %i.p, align 8, !tbaa !85
  %i.q = getelementptr inbounds nuw i8, ptr %17, i64 33
  store i8 1, ptr %i.q, align 1, !tbaa !86
  call void @_ZN4mlir7OpState9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(34) %17) #23
  %i.r = load ptr, ptr %16, align 8, !tbaa !94
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA21_KcEEOS0_OT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  store i32 3, ptr %13, align 8, !tbaa !97
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.7, ptr %i.t, align 8, !tbaa !99
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 20, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !74
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !71   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 36
  %i.x = load i32, ptr %i.w, align 4, !tbaa !72
  %.not.i.i.i.i.i.i.i = icmp ult i32 %i.v, %i.x
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f, !prof !100

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %13)
  br label %_ZN4mlir10Diagnostic6appendIRA21_KcEERS0_OT_.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.y = zext i32 %i.v to i64
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !70
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false)
  %i.ab = load i32, ptr %i.u, align 8, !tbaa !71
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.u, align 8, !tbaa !71
  br label %_ZN4mlir10Diagnostic6appendIRA21_KcEERS0_OT_.exit.i.i.i.i

_ZN4mlir10Diagnostic6appendIRA21_KcEERS0_OT_.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA21_KcEEOS0_OT_.exit.i.i

_ZNO4mlir18InFlightDiagnosticlsIRA21_KcEEOS0_OT_.exit.i.i: ; preds = %_ZN4mlir10Diagnostic6appendIRA21_KcEERS0_OT_.exit.i.i.i.i, %bb.d
  %i.ad = call { ptr, i64 } @_ZN4mlir4func6CallOp9getCalleeEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #23 ; 2 uses
  %i.ae = load ptr, ptr %16, align 8, !tbaa !94
  %.not.i.i51.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i51.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA13_KcEEOS0_OT_.exit.thread.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIN4llvm9StringRefEEEOS0_OT_.exit.i.i

_ZNO4mlir18InFlightDiagnosticlsIN4llvm9StringRefEEEOS0_OT_.exit.i.i: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA21_KcEEOS0_OT_.exit.i.i
  %i.af = extractvalue { ptr, i64 } %i.ad, 1
  %i.ag = extractvalue { ptr, i64 } %i.ad, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 5, ptr %i.ai, align 8, !tbaa !85
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.aj, align 1, !tbaa !86
  store ptr %i.ag, ptr %12, align 8, !tbaa !102
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.af, ptr %i.ak, align 8, !tbaa !102
  %i.al = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %i.ah, ptr noundef nonnull align 8 dereferenceable(34) %12) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %.pr.i.i = load ptr, ptr %16, align 8, !tbaa !94
  %.not.i.i52.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i52.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA13_KcEEOS0_OT_.exit.thread.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIN4llvm9StringRefEEEOS0_OT_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store i32 3, ptr %11, align 8, !tbaa !97
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.8, ptr %i.an, align 8, !tbaa !99
  %.sroa.2.0..sroa_idx.i.i.i.i.i53.i.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 5, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i53.i.i, align 8, !tbaa !74
  %i.ao = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 6 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !71 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %16, i64 36 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !72
  %.not.i.i.i.i.i54.i.i = icmp ult i32 %i.ap, %i.ar
  br i1 %.not.i.i.i.i.i54.i.i, label %bb.j, label %bb.i, !prof !100

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %11)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA6_KcEEOS0_OT_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.as = zext i32 %i.ap to i64
  %i.at = load ptr, ptr %i.am, align 8, !tbaa !70
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %i.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false)
  %i.av = load i32, ptr %i.ao, align 8, !tbaa !71
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.ao, align 8, !tbaa !71
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA6_KcEEOS0_OT_.exit.i.i

_ZNO4mlir18InFlightDiagnosticlsIRA6_KcEEOS0_OT_.exit.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %.pr164.i.i = load ptr, ptr %16, align 8, !tbaa !94
  %.not.i.i55.i.i = icmp eq ptr %.pr164.i.i, null
  br i1 %.not.i.i55.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA13_KcEEOS0_OT_.exit.thread.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA6_KcEEOS0_OT_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store i32 3, ptr %10, align 8, !tbaa !97
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.9, ptr %i.ax, align 8, !tbaa !99
  %.sroa.2.0..sroa_idx.i.i.i.i.i56.i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 12, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i56.i.i, align 8, !tbaa !74
  %i.ay = load i32, ptr %i.ao, align 8, !tbaa !71 ; 2 uses
  %i.az = load i32, ptr %i.aq, align 4, !tbaa !72
  %.not.i.i.i.i.i57.i.i = icmp ult i32 %i.ay, %i.az
  br i1 %.not.i.i.i.i.i57.i.i, label %bb.m, label %bb.l, !prof !100

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %10)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA13_KcEEOS0_OT_.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.ba = zext i32 %i.ay to i64
  %i.bb = load ptr, ptr %i.am, align 8, !tbaa !70
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  %i.bd = load i32, ptr %i.ao, align 8, !tbaa !71
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.ao, align 8, !tbaa !71
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA13_KcEEOS0_OT_.exit.i.i

_ZNO4mlir18InFlightDiagnosticlsIRA13_KcEEOS0_OT_.exit.i.i: ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.pr166.pr.i.i = load ptr, ptr %16, align 8, !tbaa !94
  %.not.i.i.i = icmp eq ptr %.pr166.pr.i.i, null
  br i1 %.not.i.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA13_KcEEOS0_OT_.exit.thread.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA13_KcEEOS0_OT_.exit.i.i
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %16) #23
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA13_KcEEOS0_OT_.exit.thread.i.i

_ZNO4mlir18InFlightDiagnosticlsIRA13_KcEEOS0_OT_.exit.thread.i.i: ; preds = %bb.n, %_ZNO4mlir18InFlightDiagnosticlsIRA13_KcEEOS0_OT_.exit.i.i, %_ZNO4mlir18InFlightDiagnosticlsIRA6_KcEEOS0_OT_.exit.i.i, %_ZNO4mlir18InFlightDiagnosticlsIN4llvm9StringRefEEEOS0_OT_.exit.i.i, %_ZNO4mlir18InFlightDiagnosticlsIRA21_KcEEOS0_OT_.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 200 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !101, !range !58, !noundef !59
  %i.bh = trunc nuw i8 %i.bg to i1
  store i8 0, ptr %i.bf, align 8, !tbaa !101
  br i1 %i.bh, label %bb.o, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i

bb.o:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA13_KcEEOS0_OT_.exit.thread.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bi) #23
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i

_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i:        ; preds = %bb.o, %_ZNO4mlir18InFlightDiagnosticlsIRA13_KcEEOS0_OT_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.bj = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !371, !nonnull !59
  store i8 1, ptr %i.bk, align 1, !tbaa !31
  br label %"_ZZL11updateCallsN4mlir8ModuleOpERKN4llvm8DenseMapINS_4func6FuncOpENS1_11SmallVectorINS5_INS_5ValueELj6EEELj1EEENS1_12DenseMapInfoIS4_vEENS1_6detail12DenseMapPairIS4_S8_EEEERKNS_13bufferization28BufferResultsToOutParamsOptsEENK3$_0clENS3_6CallOpE.exit.i"

bb.p:                                             ; preds = %bb.c
  store ptr %i.k, ptr %15, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !372, !nonnull !59, !align !149 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %15, ptr %i.a, align 8, !tbaa !68
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !22
  %.not.i.i58.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i58.i.i, label %bb.q, label %_ZNKSt8functionIFbPN4mlir4func6FuncOpEEEclES3_.exit.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt25__throw_bad_function_callv() #24
  unreachable

_ZNKSt8functionIFbPN4mlir4func6FuncOpEEEclES3_.exit.i.i: ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !21
  %i.br = call noundef zeroext i1 %i.bq(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #23, !inline_history !333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.br, label %bb.r, label %"_ZZL11updateCallsN4mlir8ModuleOpERKN4llvm8DenseMapINS_4func6FuncOpENS1_11SmallVectorINS5_INS_5ValueELj6EEELj1EEENS1_12DenseMapInfoIS4_vEENS1_6detail12DenseMapPairIS4_S8_EEEERKNS_13bufferization28BufferResultsToOutParamsOptsEENK3$_0clENS3_6CallOpE.exit.i"

bb.r:                                             ; preds = %_ZNKSt8functionIFbPN4mlir4func6FuncOpEEEclES3_.exit.i.i
  %i.bs = load ptr, ptr %15, align 8, !tbaa !65
  %i.bt = call noundef i32 @_ZN4mlir11SymbolTable19getSymbolVisibilityEPNS_9OperationE(ptr noundef %i.bs) #23
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bv = load ptr, ptr %i.bl, align 8, !tbaa !372, !nonnull !59, !align !149
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 99
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !62, !range !58, !noundef !59
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.t, label %"_ZZL11updateCallsN4mlir8ModuleOpERKN4llvm8DenseMapINS_4func6FuncOpENS1_11SmallVectorINS5_INS_5ValueELj6EEELj1EEENS1_12DenseMapInfoIS4_vEENS1_6detail12DenseMapPairIS4_S8_EEEERKNS_13bufferization28BufferResultsToOutParamsOptsEENK3$_0clENS3_6CallOpE.exit.i"

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bz = load ptr, ptr %15, align 8, !tbaa !65   ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 44
end_hunk_2
