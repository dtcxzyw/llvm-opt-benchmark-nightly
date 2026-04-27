inline.NumInlined: 30
inline.NumDeleted: 25
begin_hunk_0_@_ZNK6Assimp8IOSystem16CurrentDirectoryB5cxx11Ev:bb.a
  br i1 %i.g, label %bb.c, label %bb.f, !prof !3

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK6Assimp8IOSystem16CurrentDirectoryB5cxx11EvE5DummyB5cxx11) #3
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.f, label %bb.d

end_hunk_0
begin_hunk_1_@_ZNK6Assimp8IOSystem16CurrentDirectoryB5cxx11Ev:bb.a
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZNK6Assimp8IOSystem16CurrentDirectoryB5cxx11EvE5DummyB5cxx11, i64 16), ptr @_ZZNK6Assimp8IOSystem16CurrentDirectoryB5cxx11EvE5DummyB5cxx11, align 8
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK6Assimp8IOSystem16CurrentDirectoryB5cxx11EvE5DummyB5cxx11, i64 8), align 8
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK6Assimp8IOSystem16CurrentDirectoryB5cxx11EvE5DummyB5cxx11, i64 16), align 8
  %i.i = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZNK6Assimp8IOSystem16CurrentDirectoryB5cxx11EvE5DummyB5cxx11, ptr nonnull @__dso_handle) #3 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK6Assimp8IOSystem16CurrentDirectoryB5cxx11EvE5DummyB5cxx11) #3
  br label %bb.f

bb.e:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_ZNK6Assimp8IOSystem16CurrentDirectoryB5cxx11Ev:bb.a
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = getelementptr i8, ptr %i.b, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -32
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
end_hunk_2
begin_hunk_3_@__cxa_guard_release

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
end_hunk_3
