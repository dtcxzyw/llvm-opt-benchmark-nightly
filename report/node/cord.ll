begin_hunk_0
bb.a:
  %3 = alloca %"class.absl::Cord::CharIterator", align 8 ; 10 uses
  %4 = alloca %"class.absl::Cord::CharIterator", align 8 ; 4 uses
  %5 = alloca %"class.absl::Cord::CharIterator", align 8 ; 10 uses
  %6 = alloca %"class.absl::Cord::CharIterator", align 8 ; 21 uses
  %7 = alloca %"class.absl::Cord::CharIterator", align 8 ; 8 uses
  %8 = alloca %"class.absl::Cord::CharIterator", align 8 ; 13 uses
end_hunk_0
begin_hunk_1
  %i.bj = load i64, ptr %i.bi, align 8, !noalias !93 ; 2 uses
  store i64 %i.bj, ptr %i.bf, align 8, !alias.scope !93
  %.not7.i.i.i34 = icmp eq i64 %i.bj, 0
  br i1 %.not7.i.i.i34, label %_ZNK4absl4Cord10char_beginEv.exit35.thread.a, label %bb.r, !prof !7

bb.r:                                             ; preds = %bb.q
  call void @_ZN4absl4Cord13ChunkIterator8InitTreeEPNS_13cord_internal7CordRepE(ptr noundef nonnull align 8 dereferenceable(152) %5, ptr noundef nonnull %i.bi)
  %.pr = load i64, ptr %i.bf, align 8
  br label %_ZNK4absl4Cord10char_beginEv.exit35

bb.s:                                             ; preds = %bb.p
  br i1 %i.b, label %bb.t, label %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i32, !prof !7
end_hunk_1
begin_hunk_2
  %.not.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i, label %_ZNK4absl4Cord10char_beginEv.exit35.thread.a, label %_ZN4absl4Cord14ChunkRemainingERKNS0_12CharIteratorE.exit, !prof !96

_ZNK4absl4Cord10char_beginEv.exit35.thread.a:     ; preds = %bb.q, %_ZNK4absl4Cord10char_beginEv.exit35
  call void @__assert_fail(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.31, i32 noundef 1585, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK4absl4Cord13ChunkIteratordeEvENKUlvE_clEv) #21
  unreachable

end_hunk_2
