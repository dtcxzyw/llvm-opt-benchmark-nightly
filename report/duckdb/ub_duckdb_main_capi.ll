begin_hunk_0
inline.NumInlined: 10465
inline.NumDeleted: 4631
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1_@_ZNK6duckdb16ColumnDefinition15HasDefaultValueEv
declare noundef zeroext i1 @_ZNK6duckdb16ColumnDefinition15HasDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define range(i64 -42700796466920258, 42700796466920259) i64 @duckdb_table_description_get_column_count(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = tail call noundef i32 @_Z19GetTableDescriptionPN6duckdb23TableDescriptionWrapperENS_12optional_idxE(ptr noundef %0, i64 -1)
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16TableDescriptionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
end_hunk_1
