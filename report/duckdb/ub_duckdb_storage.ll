inline.NumInlined: 20079
inline.NumDeleted: 9323
begin_hunk_0_@_ZN6duckdb23WriteAheadLogSerializerC2ERNS_13WriteAheadLogENS_7WALTypeE:bb.a

bb.l:                                             ; preds = %.noexc
  %i.al = invoke noundef ptr @_ZN6duckdb8EnumUtil7ToCharsINS_7WALTypeEEEPKcT_(i8 noundef zeroext %2)
          to label %.noexc14 unwind label %bb.i, !inline_history !3099

.noexc14:                                         ; preds = %bb.l
  %i.am = load ptr, ptr %i.l, align 8, !tbaa !45
end_hunk_0
begin_hunk_1_@_ZN6duckdb23WriteAheadLogSerializerC2ERNS_13WriteAheadLogENS_7WALTypeE:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(680) %i.l)
          to label %_ZN6duckdb10Serializer13WritePropertyINS_7WALTypeEEEvtPKcRKT_.exit unwind label %bb.i

_ZN6duckdb10Serializer13WritePropertyINS_7WALTypeEEEvtPKcRKT_.exit: ; preds = %_ZN6duckdb10Serializer10WriteValueINS_7WALTypeEEENSt9enable_ifIXsr3std7is_enumIT_EE5valueEvE4typeES4_.exit.i
  ret void
end_hunk_1
