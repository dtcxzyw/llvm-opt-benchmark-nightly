inline.NumInlined: 10466
inline.NumDeleted: 4631
begin_hunk_0_@_ZNK6duckdb16ColumnDefinition15HasDefaultValueEv
declare noundef zeroext i1 @_ZNK6duckdb16ColumnDefinition15HasDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define range(i64 -42700796466920258, 42700796466920259) i64 @duckdb_table_description_get_column_count(ptr noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16TableDescriptionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
end_hunk_0
