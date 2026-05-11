inline.NumInlined: 59
inline.NumDeleted: 16
begin_hunk_0_@boost_cont_all_deallocated:bb.a
}

; Function Attrs: nounwind uwtable
define void @boost_cont_malloc_stats(ptr dead_on_unwind noalias writable writeonly sret(%struct.boost_cont_malloc_stats_impl) align 8 captures(none) initializes((0, 24)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !112
  %i.a = load i64, ptr @mparams, align 8, !tbaa !7, !noalias !112
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.b, label %bb.c
end_hunk_0
