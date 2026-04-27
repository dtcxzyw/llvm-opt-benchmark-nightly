inline.NumInlined: 6648
inline.NumDeleted: 2471
begin_hunk_0_@_ZN6duckdb17DialectCandidates32GetDefaultQuoteEscapeCombinationEv:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb17DialectCandidates17GetDefaultCommentEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::vector.496") align 8 captures(none) initializes((0, 24)) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = tail call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #33 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !731
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
end_hunk_0
