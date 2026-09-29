Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/segment-22667ebc905013d6.segment.45e885bc3443a827-cgu.006?download=true
inline.NumInlined: 5529
inline.NumDeleted: 3142
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterTmINtNtCs6cW95TQWYPl_12posting_list4view15PostingListViewuEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1W_3all5checkBX_NCNCNCINvNvMs0_NtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_indexINtB3E_19OnDiskInvertedIndexpE16check_has_subset18check_intersectionuNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileE000E0INtNtNtB24_3ops12control_flow11ControlFlowuEEB3O_:bb.a
  store i64 0, ptr %i.a, align 8, !noalias !5239
  %i.k = call noundef zeroext i1 @_RNvMNtCs6cW95TQWYPl_12posting_list7visitorINtB2_14PostingVisitoruE8containsCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(600) %i.a, i32 noundef %i.g), !noalias !5239 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5239
  %.not = xor i1 %i.k, true
  %.not.not = icmp eq ptr %i.i, %i.c
  %or.cond = select i1 %.not, i1 true, i1 %.not.not
  br i1 %or.cond, label %.loopexit.loopexit, label %bb.b

.loopexit.loopexit:                               ; preds = %bb.b
  %.not4.ph = xor i1 %i.k, true
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.not4 = phi i1 [ false, %bb.a ], [ %.not4.ph, %.loopexit.loopexit ]
  ret i1 %.not4
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterTmINtNtCs6cW95TQWYPl_12posting_list4view15PostingListViewuEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1W_3all5checkBX_NCNCNCINvNvMs0_NtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_indexINtB3E_19OnDiskInvertedIndexpE16check_has_subset18check_intersectionuNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileE000E0INtNtNtB24_3ops12control_flow11ControlFlowuEEB3O_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [600 x i8], align 8               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not5.not = icmp eq ptr %.promoted, %i.c
  br i1 %.not5.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.g = load i32, ptr %1, align 4, !noalias !5244, !noundef !7
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %i.h = phi ptr [ %.promoted, %.lr.ph ], [ %i.i, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 3 uses
  store ptr %i.i, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5244
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.f, i8 0, i64 512, i1 false), !noalias !5244
  store i64 0, ptr %i.a, align 8, !noalias !5244
  %i.k = call noundef zeroext i1 @_RNvMNtCs6cW95TQWYPl_12posting_list7visitorINtB2_14PostingVisitoruE8containsCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(600) %i.a, i32 noundef %i.g), !noalias !5244 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5244
  %.not = xor i1 %i.k, true
  %.not.not = icmp eq ptr %i.i, %i.c
  %or.cond = select i1 %.not, i1 true, i1 %.not.not
  br i1 %or.cond, label %.loopexit.loopexit, label %bb.b

.loopexit.loopexit:                               ; preds = %bb.b
  %.not4.ph = xor i1 %i.k, true
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.not4 = phi i1 [ false, %bb.a ], [ %.not4.ph, %.loopexit.loopexit ]
  ret i1 %.not4
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterTmINtNtCs6cW95TQWYPl_12posting_list4view15PostingListViewuEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1W_3any5checkBX_NCNCINvNvMs0_NtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_indexINtB3C_19OnDiskInvertedIndexpE13check_has_any9check_anyuNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileE00E0INtNtNtB24_3ops12control_flow11ControlFlowuEEB3M_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [600 x i8], align 8               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not5.not = icmp eq ptr %.promoted, %i.c
  br i1 %.not5.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.g = load i32, ptr %1, align 4, !noalias !5249, !noundef !7
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %i.h = phi ptr [ %.promoted, %.lr.ph ], [ %i.i, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 3 uses
  store ptr %i.i, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5249
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.f, i8 0, i64 512, i1 false), !noalias !5249
  store i64 0, ptr %i.a, align 8, !noalias !5249
  %i.k = call noundef zeroext i1 @_RNvMNtCs6cW95TQWYPl_12posting_list7visitorINtB2_14PostingVisitoruE8containsCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(600) %i.a, i32 noundef %i.g), !noalias !5249 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5249
  %.not.not = icmp eq ptr %i.i, %i.c
  %or.cond = select i1 %i.k, i1 true, i1 %.not.not
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.a
  %.not4 = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ]
  ret i1 %.not4
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterTmINtNtCs6cW95TQWYPl_12posting_list4view15PostingListViewuEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1W_3any5checkBX_NCNCINvNvMs0_NtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_indexINtB3C_19OnDiskInvertedIndexpE13check_has_any9check_anyuNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileE00E0INtNtNtB24_3ops12control_flow11ControlFlowuEEB3M_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [600 x i8], align 8               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not5.not = icmp eq ptr %.promoted, %i.c
  br i1 %.not5.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.g = load i32, ptr %1, align 4, !noalias !5254, !noundef !7
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %i.h = phi ptr [ %.promoted, %.lr.ph ], [ %i.i, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 3 uses
  store ptr %i.i, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5254
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.f, i8 0, i64 512, i1 false), !noalias !5254
  store i64 0, ptr %i.a, align 8, !noalias !5254
  %i.k = call noundef zeroext i1 @_RNvMNtCs6cW95TQWYPl_12posting_list7visitorINtB2_14PostingVisitoruE8containsCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(600) %i.a, i32 noundef %i.g), !noalias !5254 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5254
  %.not.not = icmp eq ptr %i.i, %i.c
  %or.cond = select i1 %i.k, i1 true, i1 %.not.not
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.a
  %.not4 = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ]
  ret i1 %.not4
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterbENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB17_3num7nonzero7NonZerojENCINvNtNtB15_8adapters3map12map_try_foldbNtNtNtCs607s0NAIaWN_7segment10data_types6facets13FacetValueRefB23_INtNtB17_6option6OptionB23_ENcNtB3f_4Bool0NCNvXs_NvBZ_10advance_byINtB2F_3MapBI_B4L_ENtB56_13SpecAdvanceBy15spec_advance_by0E0B4j_EB3l_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef range(i64 1, 0) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.promoted = load ptr, ptr %i.c, align 8        ; 4 uses
  %i.d = ptrtoaddr ptr %i.b to i64
  %i.e = ptrtoaddr ptr %.promoted to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = add i64 %1, -1
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.g) ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %i.i = add nuw i64 %i.h, 1                      ; 2 uses
  %i.j = and i64 %i.i, 3                          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i64 4, i64 %i.j
  %n.vec = sub i64 %i.i, %i.l                     ; 3 uses
  %i.m = getelementptr i8, ptr %.promoted, i64 %n.vec
  %i.n = sub i64 %1, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %.promoted, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 4
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !5255

middle.block:                                     ; preds = %vector.body
  %i.p = getelementptr i8, ptr %pointer.phi, i64 4
  store ptr %i.p, ptr %i.c, align 8
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %.ph = phi ptr [ %.promoted, %bb.a ], [ %i.m, %middle.block ]
  %.sroa.0.0.ph = phi i64 [ %1, %bb.a ], [ %i.n, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.b
  %i.q = phi ptr [ %i.r, %bb.b ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.s, %bb.b ], [ %.sroa.0.0.ph, %scalar.ph.preheader ] ; 2 uses
  %.not = icmp eq ptr %i.q, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  store ptr %i.r, ptr %i.c, align 8
  %i.s = add i64 %.sroa.0.0, -1                   ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.c, label %scalar.ph, !llvm.loop !5256

bb.c:                                             ; preds = %bb.b, %scalar.ph
  %.sroa.02.0 = phi i64 [ %.sroa.0.0, %scalar.ph ], [ 0, %bb.b ]
  ret i64 %.sroa.02.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_folddfuNCINvMs_NtNtCs9xXWl5j4IME_12quantization10turboquant12quantizationNtB2K_14TurboQuantizer10dequantizefEs1_0NCINvNvBZ_8for_each4callfNCINvMsk_B8_INtB8_3VecfE14extend_trustedINtB25_3MapBI_B2C_EE0E0E0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.d, align 8        ; 8 uses
  %.not.not10 = icmp eq ptr %.promoted, %i.c
  br i1 %.not.not10, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !5269, !nonnull !7, !align !14, !noundef !7 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !5270, !noundef !7 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted11 = load i64, ptr %i.h, align 8, !alias.scope !5270 ; 5 uses
  %2 = ptrtoaddr ptr %i.c to i64
  %3 = ptrtoaddr ptr %.promoted to i64
  %i.i = add i64 %2, -8
  %i.j = sub i64 %i.i, %3                         ; 4 uses
  %i.k = lshr i64 %i.j, 3
  %i.l = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.j, 152
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.m = shl i64 %.promoted11, 2                  ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.g, i64 %i.m ; 2 uses
  %i.n = lshr i64 %i.j, 1
  %i.o = and i64 %i.n, 9223372036854775804
  %i.p = getelementptr i8, ptr %i.g, i64 %i.m
  %i.q = getelementptr i8, ptr %i.p, i64 %i.o
  %scevgep16 = getelementptr i8, ptr %i.q, i64 4  ; 2 uses
  %i.r = and i64 %i.j, -8
  %i.s = getelementptr i8, ptr %.promoted, i64 %i.r
  %scevgep17 = getelementptr i8, ptr %i.s, i64 8
  %scevgep18 = getelementptr i8, ptr %.val.i, i64 8
  %bound0 = icmp ult ptr %scevgep, %scevgep17
  %bound1 = icmp ult ptr %.promoted, %scevgep16
  %found.conflict = and i1 %bound0, %bound1
  %bound019 = icmp ult ptr %scevgep, %scevgep18
  %bound120 = icmp ult ptr %.val.i, %scevgep16
  %found.conflict21 = and i1 %bound019, %bound120
  %conflict.rdx = or i1 %found.conflict, %found.conflict21
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.l, 4611686018427387900      ; 4 uses
  %i.t = add i64 %.promoted11, %n.vec             ; 2 uses
  %i.u = shl i64 %n.vec, 3
  %i.v = getelementptr i8, ptr %.promoted, i64 %i.u
  %i.w = load double, ptr %.val.i, align 8, !alias.scope !5271, !noalias !5269, !noundef !7
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.w, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.x = getelementptr [4 x i8], ptr %i.g, i64 %.promoted11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !alias.scope !5272
  %wide.load22 = load <2 x double>, ptr %i.z, align 8, !alias.scope !5272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5269)
  %i.aa = fmul <2 x double> %wide.load, %broadcast.splat
  %i.ab = fmul <2 x double> %wide.load22, %broadcast.splat
  %i.ac = fptrunc <2 x double> %i.aa to <2 x float>
  %i.ad = fptrunc <2 x double> %i.ab to <2 x float>
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5274)
  %i.ae = getelementptr [4 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store <2 x float> %i.ac, ptr %i.ae, align 4, !alias.scope !5275, !noalias !5276
  store <2 x float> %i.ad, ptr %i.af, align 4, !alias.scope !5275, !noalias !5276
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !5267

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.ph = phi i64 [ %.promoted11, %vector.memcheck ], [ %.promoted11, %.lr.ph ], [ %i.t, %middle.block ]
  %.ph24 = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph ], [ %i.v, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ah = phi i64 [ %i.ap, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ai = phi ptr [ %i.ak, %scalar.ph ], [ %.ph24, %scalar.ph.preheader ] ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !noundef !7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5269)
  %i.al = load double, ptr %.val.i, align 8, !noalias !5269, !noundef !7
  %i.am = fmul double %i.aj, %i.al
  %i.an = fptrunc double %i.am to float
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5274)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ah
  store float %i.an, ptr %i.ao, align 4, !noalias !5270
  %i.ap = add i64 %i.ah, 1                        ; 2 uses
  %.not.not = icmp eq ptr %i.ak, %i.c
  br i1 %.not.not, label %._crit_edge, label %scalar.ph, !llvm.loop !5268

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.t, %middle.block ], [ %i.ap, %scalar.ph ]
  store i64 %.lcssa, ptr %i.h, align 8, !alias.scope !5270
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.aq = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.as, ptr %i.a, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.aq, ptr %i.at, align 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.au = landingpad { ptr, i32 }
          cleanup
  %.val6 = load ptr, ptr %1, align 8, !nonnull !7, !align !14, !noundef !7
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.av, align 8, !noundef !7
  store i64 %.val7, ptr %.val6, align 8
  resume { ptr, i32 } %i.au

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %1, align 8, !nonnull !7, !align !14, !noundef !7
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.aw, align 8, !noundef !7
  store i64 %.val5, ptr %.val, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB15_8adapters9enumerateINtB2a_9EnumeratepEBZ_4fold9enumerateduNCINvNtB2c_3map8map_foldTjdEfuNCINvMs_NtNtCs9xXWl5j4IME_12quantization10turboquant12quantizationNtB3Q_14TurboQuantizer10dequantizefEs0_0NCINvNvBZ_8for_each4callfNCINvMsk_B8_INtB8_3VecfE14extend_trustedINtB3j_3MapIB2C_BI_EB3I_EE0E0E0E0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not.not25 = icmp eq ptr %.promoted, %i.d
  br i1 %.not.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !5289, !nonnull !7, !align !14, !noundef !7 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i.i = load ptr, ptr %i.h, align 8, !alias.scope !5289 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted29 = load i64, ptr %i.f, align 8, !alias.scope !5290
  %.promoted30 = load i64, ptr %i.o, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateduNCINvNtBb_3map8map_foldTjdEfuNCINvMs_NtNtCs9xXWl5j4IME_12quantization10turboquant12quantizationNtB2E_14TurboQuantizer10dequantizefEs0_0NCINvNvB1e_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4N_3VecfE14extend_trustedINtB28_3MapIBX_INtNtB4N_9into_iter8IntoIterdEEB2w_EE0E0E0E0Cs607s0NAIaWN_7segment.exit
  %.val919 = phi i64 [ %.promoted30, %.lr.ph ], [ %i.an, %_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateduNCINvNtBb_3map8map_foldTjdEfuNCINvMs_NtNtCs9xXWl5j4IME_12quantization10turboquant12quantizationNtB2E_14TurboQuantizer10dequantizefEs0_0NCINvNvB1e_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4N_3VecfE14extend_trustedINtB28_3MapIBX_INtNtB4N_9into_iter8IntoIterdEEB2w_EE0E0E0E0Cs607s0NAIaWN_7segment.exit ] ; 3 uses
  %i.p = phi i64 [ %.promoted29, %.lr.ph ], [ %i.ao, %_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateduNCINvNtBb_3map8map_foldTjdEfuNCINvMs_NtNtCs9xXWl5j4IME_12quantization10turboquant12quantizationNtB2E_14TurboQuantizer10dequantizefEs0_0NCINvNvB1e_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4N_3VecfE14extend_trustedINtB28_3MapIBX_INtNtB4N_9into_iter8IntoIterdEEB2w_EE0E0E0E0Cs607s0NAIaWN_7segment.exit ] ; 6 uses
  %i.q = phi ptr [ %.promoted, %.lr.ph ], [ %i.s, %_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateduNCINvNtBb_3map8map_foldTjdEfuNCINvMs_NtNtCs9xXWl5j4IME_12quantization10turboquant12quantizationNtB2E_14TurboQuantizer10dequantizefEs0_0NCINvNvB1e_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4N_3VecfE14extend_trustedINtB28_3MapIBX_INtNtB4N_9into_iter8IntoIterdEEB2w_EE0E0E0E0Cs607s0NAIaWN_7segment.exit ] ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !noundef !7
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5291)
  %i.t = load i64, ptr %i.i, align 8, !noalias !5289, !noundef !7 ; 2 uses
  %i.u = icmp ult i64 %i.p, %i.t
  br i1 %i.u, label %bb.c, label %.invoke

bb.c:                                             ; preds = %bb.b
  %i.v = load i64, ptr %i.j, align 8, !noalias !5289, !noundef !7 ; 2 uses
  %i.w = icmp ult i64 %i.p, %i.v
  br i1 %i.w, label %_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateduNCINvNtBb_3map8map_foldTjdEfuNCINvMs_NtNtCs9xXWl5j4IME_12quantization10turboquant12quantizationNtB2E_14TurboQuantizer10dequantizefEs0_0NCINvNvB1e_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4N_3VecfE14extend_trustedINtB28_3MapIBX_INtNtB4N_9into_iter8IntoIterdEEB2w_EE0E0E0E0Cs607s0NAIaWN_7segment.exit, label %.invoke

.invoke:                                          ; preds = %bb.c, %bb.b
  %i.x = phi i64 [ %i.t, %bb.b ], [ %i.v, %bb.c ]
  %i.y = phi ptr [ @1, %bb.b ], [ @2, %bb.c ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y) #23
          to label %.cont unwind label %bb.g

.cont:                                            ; preds = %.invoke
  unreachable

_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateduNCINvNtBb_3map8map_foldTjdEfuNCINvMs_NtNtCs9xXWl5j4IME_12quantization10turboquant12quantizationNtB2E_14TurboQuantizer10dequantizefEs0_0NCINvNvB1e_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4N_3VecfE14extend_trustedINtB28_3MapIBX_INtNtB4N_9into_iter8IntoIterdEEB2w_EE0E0E0E0Cs607s0NAIaWN_7segment.exit: ; preds = %bb.c
  %i.z = load ptr, ptr %i.k, align 8, !noalias !5289, !nonnull !7, !noundef !7
  %i.aa = load ptr, ptr %i.l, align 8, !noalias !5289, !nonnull !7, !noundef !7
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.p
  %i.ac = load float, ptr %i.ab, align 4, !noalias !5289, !noundef !7
  %i.ad = fpext float %i.ac to double
  %i.ae = fdiv double %i.r, %i.ad
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.p
  %i.ag = load float, ptr %i.af, align 4, !noalias !5289, !noundef !7
  %i.ah = fpext float %i.ag to double
  %i.ai = fsub double %i.ae, %i.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.aj = load double, ptr %.val1.i.i, align 8, !noalias !5289, !noundef !7
  %i.ak = fmul double %i.ai, %i.aj
  %i.al = fptrunc double %i.ak to float
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5293)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.val919
  store float %i.al, ptr %i.am, align 4, !noalias !5294
  %i.an = add i64 %.val919, 1                     ; 2 uses
  store i64 %i.an, ptr %i.o, align 8, !alias.scope !5294
  %i.ao = add nuw i64 %i.p, 1
  %.not.not = icmp eq ptr %i.s, %i.d
  br i1 %.not.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateduNCINvNtBb_3map8map_foldTjdEfuNCINvMs_NtNtCs9xXWl5j4IME_12quantization10turboquant12quantizationNtB2E_14TurboQuantizer10dequantizefEs0_0NCINvNvB1e_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4N_3VecfE14extend_trustedINtB28_3MapIBX_INtNtB4N_9into_iter8IntoIterdEEB2w_EE0E0E0E0Cs607s0NAIaWN_7segment.exit, %bb.a
  %i.ap = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.ar, ptr %i.b, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ap, ptr %i.as, align 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val6 = load ptr, ptr %1, align 8, !nonnull !7, !align !14, !noundef !7
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_0
