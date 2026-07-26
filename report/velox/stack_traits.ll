inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rlimit = type { i64, i64 }

@_ZZN5boost7context12stack_traits9page_sizeEvE4size = internal unnamed_addr global i64 0, align 8
@_ZGVZN5boost7context12stack_traits9page_sizeEvE4size = internal global i64 0, align 8
@_ZZN12_GLOBAL__N_115stacksize_limitEvE5limit = internal unnamed_addr global i64 0, align 8
@_ZGVZN12_GLOBAL__N_115stacksize_limitEvE5limit = internal global i64 0, align 8

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN5boost7context12stack_traits12is_unboundedEv() local_unnamed_addr #0 align 2 {
bb.a:
  %0 = alloca %struct.rlimit, align 8             ; 4 uses
  %i.a = load atomic i8, ptr @_ZGVZN12_GLOBAL__N_115stacksize_limitEvE5limit acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN12_GLOBAL__N_115stacksize_limitEv.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN12_GLOBAL__N_115stacksize_limitEvE5limit) #5
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN12_GLOBAL__N_115stacksize_limitEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #5
  %i.d = call i32 @getrlimit(i32 noundef 3, ptr noundef nonnull %0) #5 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #5
  store i64 %i.f, ptr @_ZZN12_GLOBAL__N_115stacksize_limitEvE5limit, align 8, !tbaa !11
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN12_GLOBAL__N_115stacksize_limitEvE5limit) #5
  br label %_ZN12_GLOBAL__N_115stacksize_limitEv.exit

_ZN12_GLOBAL__N_115stacksize_limitEv.exit:        ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i64, ptr @_ZZN12_GLOBAL__N_115stacksize_limitEvE5limit, align 8, !tbaa !11
  %i.h = icmp eq i64 %i.g, -1
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZN5boost7context12stack_traits9page_sizeEv() local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5boost7context12stack_traits9page_sizeEvE4size acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost7context12stack_traits9page_sizeEvE4size) #5
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef i64 @sysconf(i32 noundef 30) #5
  store i64 %i.d, ptr @_ZZN5boost7context12stack_traits9page_sizeEvE4size, align 8, !tbaa !11
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost7context12stack_traits9page_sizeEvE4size) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load i64, ptr @_ZZN5boost7context12stack_traits9page_sizeEvE4size, align 8, !tbaa !11
  ret i64 %i.e
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_ZN5boost7context12stack_traits12default_sizeEv() local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 131072
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZN5boost7context12stack_traits12minimum_sizeEv() local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i64 @sysconf(i32 noundef 250) #5
  ret i64 %i.a
}

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZN5boost7context12stack_traits12maximum_sizeEv() local_unnamed_addr #0 align 2 {
bb.a:
  %0 = alloca %struct.rlimit, align 8             ; 4 uses
  %i.a = load atomic i8, ptr @_ZGVZN12_GLOBAL__N_115stacksize_limitEvE5limit acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN12_GLOBAL__N_115stacksize_limitEv.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN12_GLOBAL__N_115stacksize_limitEvE5limit) #5
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN12_GLOBAL__N_115stacksize_limitEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #5
  %i.d = call i32 @getrlimit(i32 noundef 3, ptr noundef nonnull %0) #5 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #5
  store i64 %i.f, ptr @_ZZN12_GLOBAL__N_115stacksize_limitEvE5limit, align 8, !tbaa !11
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN12_GLOBAL__N_115stacksize_limitEvE5limit) #5
  br label %_ZN12_GLOBAL__N_115stacksize_limitEv.exit

_ZN12_GLOBAL__N_115stacksize_limitEv.exit:        ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i64, ptr @_ZZN12_GLOBAL__N_115stacksize_limitEvE5limit, align 8, !tbaa !11
  ret i64 %i.g
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare i32 @getrlimit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"branch_weights", i32 1, i32 1048575}
!8 = !{!9, !10, i64 8}
!9 = !{!"_ZTS6rlimit", !10, i64 0, !10, i64 8}
!10 = !{!"long", !5, i64 0}
!11 = !{!10, !10, i64 0}
end_hunk_0
