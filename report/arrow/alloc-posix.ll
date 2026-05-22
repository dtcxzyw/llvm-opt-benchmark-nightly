inline.NumInlined: 5
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i64 @mi_malloc_size(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @mi_usable_size(ptr noundef %0) #7
  ret i64 %i.a
}

declare i64 @mi_usable_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i64 @mi_malloc_usable_size(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @mi_usable_size(ptr noundef %0) #7
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define hidden i64 @mi_malloc_good_size(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @mi_good_size(i64 noundef %0) #7
  ret i64 %i.a
}

declare i64 @mi_good_size(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @mi_cfree(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @mi_is_in_heap_region(ptr noundef %0) #7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @mi_free(ptr noundef %0) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare zeroext i1 @mi_is_in_heap_region(ptr noundef) local_unnamed_addr #1

declare void @mi_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 23) i32 @mi_posix_memalign(ptr noundef writeonly captures(address_is_null) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = and i64 %1, 7
  %.not = icmp eq i64 %i.b, 0
  %or.cond13.not18.not22 = and i1 %i.a, %.not
  %i.c = icmp ne i64 %1, 0
  %or.cond14.not20 = and i1 %i.c, %or.cond13.not18.not22
  %i.d = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %1)
  %i.e = icmp samesign ult i64 %i.d, 2
  %or.cond16 = select i1 %or.cond14.not20, i1 %i.e, i1 false
  br i1 %or.cond16, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias ptr @mi_malloc_aligned(i64 noundef %2, i64 noundef %1) #7 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  %i.h = icmp ne i64 %2, 0
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.f, ptr %0, align 8, !tbaa !7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.c ], [ 22, %bb.a ], [ 12, %bb.b ]
  ret i32 %.1
}

declare noalias ptr @mi_malloc_aligned(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_memalign(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @mi_malloc_aligned(i64 noundef %1, i64 noundef %0) #7
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_valloc(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_mi_os_page_size() #7
  %i.b = tail call noalias ptr @mi_malloc_aligned(i64 noundef %0, i64 noundef %i.a) #7
  ret ptr %i.b
}

declare i64 @_mi_os_page_size() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_pvalloc(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_mi_os_page_size() #7     ; 6 uses
  %i.b = xor i64 %i.a, -1
  %.not = icmp ult i64 %0, %i.b
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.a)
  %i.d = icmp samesign ult i64 %i.c, 2
  %i.e = add i64 %0, -1
  %i.f = add i64 %i.e, %i.a                       ; 3 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = sub i64 0, %i.a
  %i.h = and i64 %i.f, %i.g
  br label %_mi_align_up.exit

bb.d:                                             ; preds = %bb.b
  %i.i = urem i64 %i.f, %i.a
  %i.j = sub nuw i64 %i.f, %i.i
  br label %_mi_align_up.exit

_mi_align_up.exit:                                ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.h, %bb.c ], [ %i.j, %bb.d ]
  %i.k = tail call noalias ptr @mi_malloc_aligned(i64 noundef %.0.i, i64 noundef %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_mi_align_up.exit
  %.0 = phi ptr [ %i.k, %_mi_align_up.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_aligned_alloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @mi_malloc_aligned(i64 noundef %1, i64 noundef %0) #7
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @mi_reallocn(ptr noundef %0, i64 noundef %1, i64 noundef %2) #7 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #8
  store i32 12, ptr %i.c, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

declare ptr @mi_reallocn(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 23) i32 @mi_reallocarr(ptr noundef captures(address_is_null) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %mi_reallocarray.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !7
  %i.c = tail call ptr @mi_reallocn(ptr noundef %i.b, i64 noundef %1, i64 noundef %2) #7 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %mi_reallocarray.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.c, ptr %0, align 8, !tbaa !7
  br label %bb.d

mi_reallocarray.exit:                             ; preds = %bb.b, %bb.a
  %.sink = phi i32 [ 22, %bb.a ], [ 12, %bb.b ]   ; 2 uses
  %3 = tail call ptr @__errno_location() #8
  store i32 %.sink, ptr %3, align 4, !tbaa !3
  br label %bb.d

bb.d:                                             ; preds = %mi_reallocarray.exit, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ %.sink, %mi_reallocarray.exit ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi__expand(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @mi_expand(ptr noundef %0, i64 noundef %1) #7 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #8
  store i32 12, ptr %i.c, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

declare ptr @mi_expand(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_wcsdup(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.011 = phi i64 [ %i.d, %.preheader ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.011
  %i.c = load i16, ptr %i.b, align 2, !tbaa !9
  %.not = icmp eq i16 %i.c, 0
  %i.d = add i64 %.011, 1
  br i1 %.not, label %bb.b, label %.preheader, !llvm.loop !11

bb.b:                                             ; preds = %.preheader
  %i.e = shl i64 %.011, 1
  %i.f = add i64 %i.e, 2                          ; 2 uses
  %i.g = tail call noalias ptr @mi_malloc(i64 noundef %i.f) #7 ; 3 uses
  %.not14 = icmp eq ptr %i.g, null
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull readonly align 1 %0, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.g, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

declare noalias ptr @mi_malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_mbsdup(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @mi_strdup(ptr noundef %0) #7
  ret ptr %i.a
}

declare noalias ptr @mi_strdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 23) i32 @mi_dupenv_s(ptr noundef writeonly captures(address_is_null) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %1, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = tail call ptr @getenv(ptr noundef nonnull %2) #7 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %0, align 8, !tbaa !15
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.e = tail call noalias ptr @mi_strdup(ptr noundef nonnull %i.c) #7 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !15
  %i.f = icmp eq ptr %i.e, null                   ; 2 uses
  %brmerge = or i1 %.not, %i.f
  %.mux = select i1 %i.f, i32 12, i32 0
  br i1 %brmerge, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call i64 @_mi_strlen(ptr noundef nonnull %i.c) #7
  store i64 %i.g, ptr %1, align 8, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e, %bb.a
  %.1 = phi i32 [ 22, %bb.a ], [ %.mux, %bb.f ], [ 0, %bb.e ], [ 0, %bb.g ]
  ret i32 %.1
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #3

declare i64 @_mi_strlen(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden noundef i32 @mi_wdupenv_s(ptr noundef writeonly captures(address_is_null) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef readnone captures(address_is_null) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %1, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %0, align 8, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret i32 22
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_aligned_offset_recalloc(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @mi_recalloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #7
  ret ptr %i.a
}

declare ptr @mi_recalloc_aligned_at(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden ptr @mi_aligned_recalloc(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @mi_recalloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #7
  ret ptr %i.a
}

declare ptr @mi_recalloc_aligned(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !5, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 omnipotent char", !8, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 short", !8, i64 0}
end_hunk_0
