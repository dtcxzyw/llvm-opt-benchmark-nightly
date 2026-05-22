inline.NumInlined: 57
inline.NumDeleted: 20
begin_hunk_0_@mi_rezalloc_aligned:bb.a

mi_heap_rezalloc_aligned.exit:                    ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.c ]
  ret ptr %.0.i.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_recalloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %.not.i = icmp eq i64 %1, 1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %1, i64 %2) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_heap_recalloc_aligned_at.exit, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i = phi i64 [ %2, %bb.a ], [ %i.e, %bb.b ]
  %i.f = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %i.b, ptr noundef %0, i64 noundef %storemerge.i.ph.i, i64 noundef %3, i64 noundef %4, i1 noundef zeroext true)
  br label %mi_heap_recalloc_aligned_at.exit

mi_heap_recalloc_aligned_at.exit:                 ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_recalloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %.not.i = icmp eq i64 %1, 1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %1, i64 %2) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_heap_recalloc_aligned.exit, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i = phi i64 [ %2, %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  %i.f = icmp ult i64 %3, 9
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @_mi_heap_realloc_zero(ptr noundef %i.b, ptr noundef %0, i64 noundef %storemerge.i.ph.i, i1 noundef zeroext true) #8
  br label %mi_heap_recalloc_aligned.exit

bb.e:                                             ; preds = %bb.c
  %i.h = ptrtoint ptr %0 to i64
  %i.i = urem i64 %i.h, %3
  %i.j = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %i.b, ptr noundef %0, i64 noundef %storemerge.i.ph.i, i64 noundef %3, i64 noundef %i.i, i1 noundef zeroext true)
  br label %mi_heap_recalloc_aligned.exit

mi_heap_recalloc_aligned.exit:                    ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi ptr [ null, %bb.b ], [ %i.g, %bb.d ], [ %i.j, %bb.e ]
  ret ptr %.0.i
}

declare ptr @_mi_page_malloc_zeroed(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @_mi_page_malloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc ptr @mi_heap_malloc_zero_aligned_at_generic(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i64 %3, 0
  %i.c = icmp ugt i64 %2, %1
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %mi_malloc_is_naturally_aligned.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @mi_good_size(i64 noundef range(i64 0, -9223372036854775808) %1) #8 ; 2 uses
  %i.e = icmp ult i64 %i.d, 1025
  %i.f = tail call range(i64 0, 12) i64 @llvm.ctpop.i64(i64 %i.d)
  %i.g = icmp samesign ult i64 %i.f, 2
  %or.cond22 = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond22, label %bb.d, label %mi_malloc_is_naturally_aligned.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @_mi_heap_malloc_zero(ptr noundef %0, i64 noundef range(i64 -1, -9223372036854710273) %1, i1 noundef zeroext %4) #8 ; 3 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = add nsw i64 %2, -1
  %i.k = and i64 %i.j, %i.i
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.e, label %.thread, !prof !8

.thread:                                          ; preds = %bb.d
  tail call void @mi_free(ptr noundef %i.h) #8
  br label %mi_malloc_is_naturally_aligned.exit.thread

mi_malloc_is_naturally_aligned.exit.thread:       ; preds = %bb.c, %.thread, %bb.b
  %i.m = tail call fastcc ptr @mi_heap_malloc_zero_aligned_at_overalloc(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %mi_malloc_is_naturally_aligned.exit.thread
  %.1 = phi ptr [ null, %bb.a ], [ %i.m, %mi_malloc_is_naturally_aligned.exit.thread ], [ %i.h, %bb.d ]
  ret ptr %.1
}

declare void @mi_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc ptr @mi_heap_malloc_zero_aligned_at_overalloc(ptr noundef %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i64 %2, 65536
  br i1 %i.a, label %bb.b, label %bb.d, !prof !21

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.c, label %bb.g, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i64 @llvm.umax.i64(i64 %1, i64 1025)
  %i.c = tail call ptr @_mi_heap_malloc_zero_ex(ptr noundef %0, i64 noundef %i.b, i1 noundef zeroext %4, i64 noundef %2) #8 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = add i64 %2, -1
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.e = tail call i64 @llvm.umax.i64(i64 %1, i64 16)
  %i.f = add nsw i64 %2, -1                       ; 2 uses
  %i.g = add i64 %i.f, %i.e
  %i.h = tail call ptr @_mi_heap_malloc_zero(ptr noundef %0, i64 noundef range(i64 -1, -9223372036854710273) %i.g, i1 noundef zeroext %4) #8 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.f, %bb.d ]
  %.036 = phi ptr [ %i.c, %._crit_edge ], [ %i.h, %bb.d ] ; 3 uses
  %i.j = ptrtoint ptr %.036 to i64                ; 4 uses
  %i.k = lshr i64 %i.j, 29
  %i.l = load ptr, ptr @_mi_page_map, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load atomic ptr, ptr %i.m monotonic, align 8
  %i.o = add i64 %3, %i.j
  %i.p = and i64 %i.o, %.pre-phi                  ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = sub i64 %2, %i.p
  %i.s = select i1 %i.q, i64 0, i64 %i.r          ; 2 uses
  %i.t = add i64 %i.s, %i.j
  %i.u = inttoptr i64 %i.t to ptr                 ; 3 uses
  %.not40 = icmp eq ptr %.036, %i.u
  br i1 %.not40, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = lshr i64 %i.j, 16
  %i.w = and i64 %i.v, 8191
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !9    ; 2 uses
  %i.z = atomicrmw or ptr %i.y, i64 2 monotonic, align 8 ; 0 uses
  %i.aa = add i64 %i.s, %1
  tail call void @_mi_padding_shrink(ptr noundef %i.y, ptr noundef nonnull %.036, i64 noundef %i.aa) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.d ], [ %i.u, %bb.f ], [ %i.u, %bb.e ]
  ret ptr %.0
}

declare i64 @mi_good_size(i64 noundef) local_unnamed_addr #1

declare ptr @_mi_heap_malloc_zero(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare ptr @_mi_heap_malloc_zero_ex(ptr noundef, i64 noundef, i1 noundef zeroext, i64 noundef) local_unnamed_addr #1

declare void @_mi_padding_shrink(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #4

declare ptr @_mi_heap_realloc_zero(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare i64 @mi_usable_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind }

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
!7 = !{!"branch_weights", i32 4000000, i32 4001}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS9mi_page_s", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!13, !14, i64 8}
!13 = !{!"mi_page_s", !5, i64 0, !14, i64 8, !15, i64 16, !15, i64 18, !15, i64 20, !5, i64 22, !5, i64 23, !14, i64 24, !5, i64 32, !16, i64 40, !17, i64 48, !5, i64 56, !18, i64 57, !19, i64 64, !10, i64 72, !10, i64 80, !16, i64 88, !20, i64 96}
!14 = !{!"p1 _ZTS10mi_block_s", !11, i64 0}
!15 = !{!"short", !5, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!"p1 omnipotent char", !11, i64 0}
!18 = !{!"_Bool", !5, i64 0}
!19 = !{!"p1 _ZTS9mi_heap_s", !11, i64 0}
!20 = !{!"mi_memid_s", !5, i64 0, !4, i64 16, !18, i64 20, !18, i64 21, !18, i64 22}
!21 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!22 = !{!19, !19, i64 0}
!23 = !{!11, !11, i64 0}
end_hunk_0
