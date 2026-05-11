inline.NumInlined: 6662
inline.NumDeleted: 2963
begin_hunk_0_@_ZN6duckdb9ARTMerger13MergePrefixesERNS0_9NodeEntryE:bb.a
  %7 = alloca %"class.duckdb::Prefix", align 8    ; 7 uses
  %8 = alloca %"class.duckdb::optional_idx", align 8 ; 4 uses
  %9 = alloca %"class.duckdb::optional_idx", align 8 ; 4 uses
  %10 = alloca %"class.std::reference_wrapper", align 8 ; 6 uses
  %11 = alloca %"class.duckdb::Node", align 8     ; 4 uses
  %12 = alloca %"class.duckdb::NodeHandle", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
end_hunk_0
begin_hunk_1_@_ZN6duckdb9ARTMerger13MergePrefixesERNS0_9NodeEntryE:bb.a
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !1049, !nonnull !36, !align !37
  call void @_ZN6duckdb6Prefix6ReduceERNS_3ARTERNS_4NodeEm(ptr noundef nonnull align 8 dereferenceable(433) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i64 noundef %i.ae)
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !1050, !nonnull !36, !align !37 ; 2 uses
  %i.as = load ptr, ptr %10, align 8, !tbaa !156  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 400
  %i.au = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at), !noalias !1334
end_hunk_1
begin_hunk_2_@_ZN6duckdb9ARTMerger13MergePrefixesERNS0_9NodeEntryE:bb.a
  %i.bf = load ptr, ptr %12, align 8, !tbaa !179
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = atomicrmw sub ptr %i.bg, i64 1 seq_cst, align 8 ; 0 uses
  %.pre = load ptr, ptr %10, align 8, !tbaa !156
  br label %_ZN6duckdb10NodeHandleINS_8BaseNodeILh4ELNS_5NTypeE3EEEED2Ev.exit

bb.f:                                             ; preds = %bb.d
end_hunk_2
begin_hunk_3_@_ZN6duckdb9ARTMerger13MergePrefixesERNS0_9NodeEntryE:bb.a
  unreachable

_ZN6duckdb10NodeHandleINS_8BaseNodeILh4ELNS_5NTypeE3EEEED2Ev.exit: ; preds = %bb.c, %bb.e
  %13 = phi ptr [ %i.as, %bb.c ], [ %.pre, %bb.e ] ; 4 uses
  %.not62 = icmp eq i8 %i.ao, 0
  %i.bk = load i64, ptr %13, align 8, !tbaa !131
  %i.bl = and i64 %i.bk, 9223372036854775807
  %masksel = select i1 %.not62, i64 0, i64 -9223372036854775808
  %.sink.i = or disjoint i64 %i.bl, %masksel
  store i64 %.sink.i, ptr %13, align 8, !tbaa !131
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !1050, !nonnull !36, !align !37
  %.sroa.03.0.copyload = load i64, ptr %11, align 8
  call void @_ZN6duckdb5Node411InsertChildERNS_3ARTERNS_4NodeEhS3_(ptr noundef nonnull align 8 dereferenceable(433) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %13, i8 noundef zeroext %i.ag, i64 %.sroa.03.0.copyload)
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !1050, !nonnull !36, !align !37
  %i.bo = load ptr, ptr %i.e, align 8, !tbaa !1049, !nonnull !36, !align !37
  %.sroa.02.0.copyload = load i64, ptr %i.bo, align 8
  call void @_ZN6duckdb5Node411InsertChildERNS_3ARTERNS_4NodeEhS3_(ptr noundef nonnull align 8 dereferenceable(433) %i.bn, ptr noundef nonnull align 8 dereferenceable(8) %13, i8 noundef zeroext %i.al, i64 %.sroa.02.0.copyload)
  %i.bp = load ptr, ptr %i.e, align 8, !tbaa !1049, !nonnull !36, !align !37
  store i64 0, ptr %i.bp, align 8, !tbaa !131
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
end_hunk_3
