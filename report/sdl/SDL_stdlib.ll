Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_stdlib?download=true
inline.NumInlined: 8
begin_hunk_0_@SDL_sqrtf_REAL:bb.a
  %i.a = tail call float @sqrtf(float noundef %0) #10
  ret float %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden double @SDL_tan_REAL(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @tan(double noundef %0) #10
  ret double %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden float @SDL_tanf_REAL(float noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call float @tanf(float noundef %0) #10
  ret float %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @tanf(float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, -2147483648) i32 @SDL_abs_REAL(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @SDL_isalpha_REAL(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = and i32 %0, -33
  %i.b = add i32 %i.a, -65
  %narrow = icmp ult i32 %i.b, 26
  %i.c = zext i1 %narrow to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @SDL_isupper_REAL(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = add i32 %0, -65
  %i.b = icmp ult i32 %i.a, 26
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @SDL_islower_REAL(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = add i32 %0, -97
  %i.b = icmp ult i32 %i.a, 26
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @SDL_isalnum_REAL(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = and i32 %0, -33
  %i.b = add i32 %i.a, -65
  %narrow.i = icmp ult i32 %i.b, 26
  %i.c = add i32 %0, -48
  %i.d = icmp ult i32 %i.c, 10
  %narrow = or i1 %i.d, %narrow.i
  %i.e = zext i1 %narrow to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @SDL_isdigit_REAL(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = add i32 %0, -48
  %i.b = icmp ult i32 %i.a, 10
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @SDL_isxdigit_REAL(i32 noundef %0) local_unnamed_addr #2 {
switch.lookup:
  %switch.tableidx = add i32 %0, -65              ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 38
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 270582939711, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond = select i1 %i.a, i1 %switch.lobit, i1 false
  %i.b = add i32 %0, -48
  %i.c = icmp ult i32 %i.b, 10
  %narrow = or i1 %or.cond, %i.c
  %i.d = zext i1 %narrow to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @SDL_ispunct_REAL(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = add i32 %0, -127
  %i.b = icmp ult i32 %i.a, -94
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %0, 95
  %i.d = add nsw i32 %i.c, -91
  %narrow.i.i = icmp ult i32 %i.d, -26
  %i.e = add nsw i32 %0, -58
  %i.f = icmp ult i32 %i.e, -10
  %narrow.i.not = and i1 %i.f, %narrow.i.i
  %i.g = zext i1 %narrow.i.not to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ 0, %bb.a ], [ %i.g, %bb.b ]
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @SDL_isgraph_REAL(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = add i32 %0, -33
  %i.b = icmp ult i32 %i.a, 94
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @SDL_isspace_REAL(i32 noundef %0) local_unnamed_addr #2 {
switch.lookup:
  %switch.tableidx = add i32 %0, -9               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 24
  %switch.shifted = lshr i32 8388635, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.a, i1 %switch.lobit, i1 false
  %i.b = icmp eq i32 %0, 11
  %narrow = or i1 %or.cond, %i.b
  %i.c = zext i1 %narrow to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @SDL_isprint_REAL(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = add i32 %0, -32
  %i.b = icmp ult i32 %i.a, 95
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @SDL_iscntrl_REAL(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %or.cond = icmp ult i32 %0, 32
  %i.a = icmp eq i32 %0, 127
  %i.b = or i1 %or.cond, %i.a
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i32 @SDL_toupper_REAL(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = add i32 %0, -97
  %or.cond = icmp ult i32 %i.a, 26
  %i.b = add nsw i32 %0, -32
  %i.c = select i1 %or.cond, i32 %i.b, i32 %0
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i32 @SDL_tolower_REAL(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = add i32 %0, -65
  %or.cond = icmp ult i32 %i.a, 26
  %i.b = add nuw nsw i32 %0, 32
  %i.c = select i1 %or.cond, i32 %i.b, i32 %0
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @SDL_isblank_REAL(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i32 %0, 32
  %i.b = icmp eq i32 %0, 9
  %i.c = or i1 %i.a, %i.b
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @SDL_aligned_alloc_REAL(i64 noundef %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %0, i64 8) ; 6 uses
  %i.a = urem i64 %1, %spec.store.select
  %i.b = sub nuw i64 %spec.store.select, %i.a     ; 3 uses
  %i.c = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %spec.store.select)
  %i.d = extractvalue { i64, i1 } %i.c, 1
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = add nuw i64 %1, %spec.store.select         ; 2 uses
  %3 = icmp ugt i64 %2, -9
  br i1 %3, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = add nuw i64 %2, 8                          ; 2 uses
  %i.e = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %i.b)
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %5 = add nuw i64 %4, %i.b
  %i.g = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %5) #10 ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = urem i64 %i.i, %spec.store.select
  %i.k = sub nuw i64 %spec.store.select, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -8
  store ptr %i.g, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.b, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ], [ %i.l, %bb.e ], [ null, %bb.d ]
  ret ptr %.1
}

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define hidden void @SDL_aligned_free_REAL(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %.0.copyload = load ptr, ptr %i.a, align 1
  tail call void @SDL_free_REAL(ptr noundef %.0.copyload) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @SDL_free_REAL(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
end_hunk_0
