Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/segment-22667ebc905013d6.segment.45e885bc3443a827-cgu.006?download=true
inline.NumInlined: 5529
inline.NumDeleted: 3142
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterTmINtNtCs6cW95TQWYPl_12posting_list4view15PostingListViewuEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBZ_ENCINvNtNtB22_8adapters3map12map_try_foldBX_BZ_B30_INtNtB24_6result6ResultB30_zENCNCINvNvMs0_NtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_indexINtB58_19OnDiskInvertedIndexpE14filter_has_all12intersectionuNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileNCNvMs0_B58_B6T_14filter_has_all0E0s_0NCINvNtB8_16in_place_collect24write_in_place_with_dropBZ_E0E0B4s_EB5i_:bb.a
  %.sroa.4.0.lcssa = phi ptr [ %i.g, %._crit_edge ], [ %2, %bb.a ]
  %i.h = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterTmINtNtCs6cW95TQWYPl_12posting_list4view15PostingListViewuEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBZ_ENCINvNtNtB22_8adapters3map12map_try_foldBX_BZ_B30_INtNtB24_6result6ResultB30_zENCNCINvNvMs0_NtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_indexINtB58_19OnDiskInvertedIndexpE14filter_has_any5mergeuNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileNCNvMs0_B58_B6T_14filter_has_any0E00NCINvNtB8_16in_place_collect24write_in_place_with_dropBZ_E0E0B4s_EB5i_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.c, align 8        ; 2 uses
  %.not11 = icmp eq ptr %.promoted, %i.b
  br i1 %.not11, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.4.012 = phi ptr [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.d = phi ptr [ %i.e, %.lr.ph ], [ %.promoted, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.012, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.4.012, i64 72 ; 2 uses
  %.not = icmp eq ptr %i.e, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  store ptr %i.e, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %i.g, %._crit_edge ], [ %2, %bb.a ]
  %i.h = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterTmINtNtCs6cW95TQWYPl_12posting_list4view15PostingListViewuEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1W_3all5checkBX_NCNCNCINvNvMs0_NtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_indexINtB3E_19OnDiskInvertedIndexpE16check_has_subset18check_intersectionuNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileE000E0INtNtNtB24_3ops12control_flow11ControlFlowuEEB3O_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.g = load i32, ptr %1, align 4, !noalias !5239, !noundef !7
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %i.h = phi ptr [ %.promoted, %.lr.ph ], [ %i.i, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 3 uses
  store ptr %i.i, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5239
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.f, i8 0, i64 512, i1 false), !noalias !5239
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
  %3 = ptrtoaddr ptr %i.b to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.promoted = load ptr, ptr %i.c, align 8        ; 4 uses
  %i.d = ptrtoaddr ptr %.promoted to i64
  %i.e = sub i64 %3, %i.d
  %i.f = add i64 %1, -1
  %i.g = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.f) ; 2 uses
  %min.iters.check = icmp ult i64 %i.g, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %i.h = add nuw i64 %i.g, 1                      ; 2 uses
  %i.i = and i64 %i.h, 3                          ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %i.k = select i1 %i.j, i64 4, i64 %i.i
  %n.vec = sub i64 %i.h, %i.k                     ; 3 uses
  %i.l = getelementptr i8, ptr %.promoted, i64 %n.vec
  %i.m = sub i64 %1, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %.promoted, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 4
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !5255

middle.block:                                     ; preds = %vector.body
  %i.o = getelementptr i8, ptr %pointer.phi, i64 4
  store ptr %i.o, ptr %i.c, align 8
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %.ph = phi ptr [ %.promoted, %bb.a ], [ %i.l, %middle.block ]
  %.sroa.0.0.ph = phi i64 [ %1, %bb.a ], [ %i.m, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.b
  %i.p = phi ptr [ %i.q, %bb.b ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.r, %bb.b ], [ %.sroa.0.0.ph, %scalar.ph.preheader ] ; 2 uses
  %.not = icmp eq ptr %i.p, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  store ptr %i.q, ptr %i.c, align 8
  %i.r = add i64 %.sroa.0.0, -1                   ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.c, label %scalar.ph, !llvm.loop !5256

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
  %.promoted22 = ptrtoaddr ptr %.promoted to i64
  %2 = ptrtoaddr ptr %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !5269, !nonnull !7, !align !14, !noundef !7 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !5270, !noundef !7 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted11 = load i64, ptr %i.h, align 8, !alias.scope !5270 ; 5 uses
  %i.i = add i64 %2, -8
  %i.j = sub i64 %i.i, %.promoted22               ; 4 uses
  %i.k = lshr i64 %i.j, 3
  %i.l = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.j, 152
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.m = shl i64 %.promoted11, 2                  ; 2 uses
  %i.n = getelementptr nuw i8, ptr %i.g, i64 %i.m ; 2 uses
  %i.o = lshr i64 %i.j, 1
  %i.p = and i64 %i.o, 9223372036854775804
  %i.q = getelementptr i8, ptr %i.g, i64 %i.m
  %i.r = getelementptr i8, ptr %i.q, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 4        ; 2 uses
  %i.t = and i64 %i.j, -8
  %i.u = getelementptr i8, ptr %.promoted, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = getelementptr i8, ptr %.val.i, i64 8
  %bound0 = icmp ult ptr %i.n, %i.v
  %bound1 = icmp ult ptr %.promoted, %i.s
  %found.conflict = and i1 %bound0, %bound1
  %bound022 = icmp ult ptr %i.n, %i.w
  %bound123 = icmp ult ptr %.val.i, %i.s
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx = or i1 %found.conflict, %found.conflict24
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.l, 4611686018427387900      ; 4 uses
  %i.x = add i64 %.promoted11, %n.vec             ; 2 uses
  %i.y = shl i64 %n.vec, 3
  %i.z = getelementptr i8, ptr %.promoted, i64 %i.y
  %i.aa = load double, ptr %.val.i, align 8, !alias.scope !5271, !noalias !5269, !noundef !7
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.aa, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = getelementptr [4 x i8], ptr %i.g, i64 %.promoted11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !alias.scope !5272
  %wide.load25 = load <2 x double>, ptr %i.ad, align 8, !alias.scope !5272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5269)
  %i.ae = fmul <2 x double> %wide.load, %broadcast.splat
  %i.af = fmul <2 x double> %wide.load25, %broadcast.splat
  %i.ag = fptrunc <2 x double> %i.ae to <2 x float>
  %i.ah = fptrunc <2 x double> %i.af to <2 x float>
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5274)
  %i.ai = getelementptr [4 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store <2 x float> %i.ag, ptr %i.ai, align 4, !alias.scope !5275, !noalias !5276
  store <2 x float> %i.ah, ptr %i.aj, align 4, !alias.scope !5275, !noalias !5276
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !5267

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.ph = phi i64 [ %.promoted11, %vector.memcheck ], [ %.promoted11, %.lr.ph ], [ %i.x, %middle.block ]
  %.ph27 = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph ], [ %i.z, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.al = phi i64 [ %i.at, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %i.am = phi ptr [ %i.ao, %scalar.ph ], [ %.ph27, %scalar.ph.preheader ] ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !noundef !7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5269)
  %i.ap = load double, ptr %.val.i, align 8, !noalias !5269, !noundef !7
  %i.aq = fmul double %i.an, %i.ap
  %i.ar = fptrunc double %i.aq to float
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5274)
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  store float %i.ar, ptr %i.as, align 4, !noalias !5270
  %i.at = add i64 %i.al, 1                        ; 2 uses
  %.not.not = icmp eq ptr %i.ao, %i.c
  br i1 %.not.not, label %._crit_edge, label %scalar.ph, !llvm.loop !5268

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.x, %middle.block ], [ %i.at, %scalar.ph ]
  store i64 %.lcssa, ptr %i.h, align 8, !alias.scope !5270
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.au = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.aw, ptr %i.a, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.au, ptr %i.ax, align 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %.val6 = load ptr, ptr %1, align 8, !nonnull !7, !align !14, !noundef !7
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.az, align 8, !noundef !7
  store i64 %.val7, ptr %.val6, align 8
  resume { ptr, i32 } %i.ay

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %1, align 8, !nonnull !7, !align !14, !noundef !7
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.ba, align 8, !noundef !7
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
end_hunk_0
