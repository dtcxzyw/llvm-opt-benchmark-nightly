inline.NumInlined: 30
inline.NumDeleted: 25
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

@_ZZNK6Assimp8IOSystem16CurrentDirectoryB5cxx11EvE5DummyB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZGVZNK6Assimp8IOSystem16CurrentDirectoryB5cxx11EvE5DummyB5cxx11 = internal global i64 0, align 8
@__dso_handle = external hidden global i8

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6Assimp8IOSystem16CurrentDirectoryB5cxx11Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load atomic i8, ptr @_ZGVZNK6Assimp8IOSystem16CurrentDirectoryB5cxx11EvE5DummyB5cxx11 acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.f, !prof !3

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK6Assimp8IOSystem16CurrentDirectoryB5cxx11EvE5DummyB5cxx11) #3
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZNK6Assimp8IOSystem16CurrentDirectoryB5cxx11EvE5DummyB5cxx11, i64 16), ptr @_ZZNK6Assimp8IOSystem16CurrentDirectoryB5cxx11EvE5DummyB5cxx11, align 8
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK6Assimp8IOSystem16CurrentDirectoryB5cxx11EvE5DummyB5cxx11, i64 8), align 8
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK6Assimp8IOSystem16CurrentDirectoryB5cxx11EvE5DummyB5cxx11, i64 16), align 8
  %i.i = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZNK6Assimp8IOSystem16CurrentDirectoryB5cxx11EvE5DummyB5cxx11, ptr nonnull @__dso_handle) #3 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK6Assimp8IOSystem16CurrentDirectoryB5cxx11EvE5DummyB5cxx11) #3
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = getelementptr i8, ptr %i.b, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -32      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0 = phi ptr [ %i.n, %bb.e ], [ @_ZZNK6Assimp8IOSystem16CurrentDirectoryB5cxx11EvE5DummyB5cxx11, %bb.d ], [ @_ZZNK6Assimp8IOSystem16CurrentDirectoryB5cxx11EvE5DummyB5cxx11, %bb.c ], [ @_ZZNK6Assimp8IOSystem16CurrentDirectoryB5cxx11EvE5DummyB5cxx11, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #0 align 2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"branch_weights", i32 1, i32 1048575}
end_hunk_0
