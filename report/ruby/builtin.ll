inline.NumInlined: 5
inline.NumDeleted: 4
begin_hunk_0_@load_with_builtin_functions:bb.a
  %i.c = sext i32 %i.a to i64
  %i.d = getelementptr [24 x i8], ptr @builtin_binary, i64 %i.c ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull readonly dereferenceable(1) %0) #6
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bin4feature.exit.i, label %.lr.ph.i.preheader

end_hunk_0
begin_hunk_1_@load_with_builtin_functions:bb.a
.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bin4feature.exit12.i
  %i.i = phi ptr [ %i.o, %bin4feature.exit12.i ], [ @.str.3, %.lr.ph.i.preheader ]
  %.014.i = phi ptr [ %i.n, %bin4feature.exit12.i ], [ @builtin_binary, %.lr.ph.i.preheader ] ; 3 uses
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull readonly dereferenceable(1) %0) #6
  %.not.i11.i = icmp eq i32 %i.j, 0
  br i1 %.not.i11.i, label %bb.b, label %bin4feature.exit12.i

end_hunk_1
begin_hunk_2_@load_with_builtin_functions:bb.a
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %builtin_lookup.exit
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.1, ptr noundef nonnull %0) #7
  unreachable

bb.d:                                             ; preds = %builtin_lookup.exit
end_hunk_2
begin_hunk_3_@load_with_builtin_functions:bb.a
  br i1 %.not10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.2) #7
  unreachable

bb.f:                                             ; preds = %bb.d
  store ptr %1, ptr %i.q, align 8, !tbaa !22
  %i.s = tail call ptr @rb_iseq_ibf_load_bytes(ptr noundef nonnull %.09.lcssa.i, i64 noundef %.0) #8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  store ptr null, ptr %i.q, align 8, !tbaa !22
  %i.t = tail call ptr @rb_root_box() #8
  %i.u = tail call i64 @rb_iseq_eval(ptr noundef nonnull %i.s, ptr noundef %i.t) #8 ; 0 uses
  ret void
}

end_hunk_3
begin_hunk_4_@rb_bug

declare ptr @rb_iseq_ibf_load_bytes(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

declare i64 @rb_iseq_eval(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @rb_root_box() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { cold noreturn nounwind }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
end_hunk_4
