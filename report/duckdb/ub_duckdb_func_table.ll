inline.NumInlined: 18936
inline.NumDeleted: 8312
begin_hunk_0_@_ZN6duckdb26TableScanGetVirtualColumnsERNS_13ClientContextENS_12optional_ptrINS_12FunctionDataELb1EEE:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb24TableScanGetRowIdColumnsERNS_13ClientContextENS_12optional_ptrINS_12FunctionDataELb1EEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::vector.116") align 8 captures(none) initializes((0, 24)) %0, ptr nonnull readnone align 8 captures(none) %1, ptr readnone captures(none) %2) #0 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33 ; 3 uses
  %i.b = load i64, ptr @_ZN6duckdb24COLUMN_IDENTIFIER_ROW_IDE, align 8, !tbaa !23
  store i64 %i.b, ptr %i.a, align 8, !tbaa !23
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %0, align 8, !tbaa !175
  store ptr %3, ptr %i.c, align 8, !tbaa !174
  store ptr %3, ptr %4, align 8, !tbaa !1555
  ret void
}

end_hunk_0
