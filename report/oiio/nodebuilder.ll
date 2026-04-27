inline.NumInlined: 361
inline.NumDeleted: 228
begin_hunk_0_@_ZN4YAML11NodeBuilder3PopEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !23   ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
end_hunk_0
begin_hunk_1_@_ZN4YAML11NodeBuilder3PopEv:bb.a
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.i, ptr %i.j, align 8, !tbaa !49
end_hunk_1
begin_hunk_2_@_ZN4YAML11NodeBuilder7OnAliasERKNS_4MarkEm:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %2 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  tail call void @_ZN4YAML11NodeBuilder4PushERNS_6detail4nodeE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.d)
  tail call void @_ZN4YAML11NodeBuilder3PopEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
end_hunk_2
begin_hunk_3_@_ZSt20__throw_length_errorPKc
; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_3
begin_hunk_4_@llvm.assume/@llvm.umax.i64
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
end_hunk_4
