Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/san?download=true
inline.NumInlined: 26
inline.NumDeleted: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.extent_hooks_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@je_opt_san_guard_large = hidden local_unnamed_addr global i64 0, align 8
@je_opt_san_guard_small = hidden local_unnamed_addr global i64 0, align 8
@je_opt_lg_san_uaf_align = hidden local_unnamed_addr global i64 -1, align 8
@je_san_cache_bin_nonfast_mask = hidden local_unnamed_addr global i64 -1, align 8
@.str = private unnamed_addr constant [77 x i8] c"<jemalloc>: Write-after-free detected on deallocated pointer %p (size %zu).\0A\00", align 1
@je_ehooks_default_extent_hooks = external constant %struct.extent_hooks_s, align 8

; Function Attrs: nounwind uwtable
define hidden void @je_san_guard_pages(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6) local_unnamed_addr #0 {
bb.a:
  br i1 %6, label %bb.b, label %san_find_guarded_addr.exit.a

bb.b:                                             ; preds = %bb.a
  tail call void @je_emap_deregister_boundary(ptr noundef %0, ptr noundef %3, ptr noundef %2) #4
  br label %san_find_guarded_addr.exit.a

san_find_guarded_addr.exit.a:                     ; preds = %bb.b, %bb.a
  %i.a = getelementptr i8, ptr %2, i64 16         ; 3 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !12
  %i.b = and i64 %.val, -4096                     ; 2 uses
  %or.cond = and i1 %4, %5
  %i.c = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %.val23 = load ptr, ptr %i.c, align 8, !tbaa !17 ; 2 uses
  %i.d = ptrtoint ptr %.val23 to i64
  %i.e = and i64 %i.d, 4095
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr inbounds i8, ptr %.val23, i64 %i.f ; 3 uses
  br i1 %or.cond, label %.thread, label %8

.thread:                                          ; preds = %san_find_guarded_addr.exit.a
  %7 = add i64 %i.b, -8192
  br label %10

8:                                                ; preds = %san_find_guarded_addr.exit.a
  %9 = add i64 %i.b, -4096                        ; 2 uses
  br i1 %4, label %10, label %san_find_guarded_addr.exit

10:                                               ; preds = %.thread, %8
  %11 = phi i64 [ %7, %.thread ], [ %9, %8 ]
  %12 = getelementptr inbounds nuw i8, ptr %i.g, i64 4096
  br label %san_find_guarded_addr.exit

san_find_guarded_addr.exit:                       ; preds = %8, %10
  %13 = phi i64 [ %11, %10 ], [ %9, %8 ]          ; 2 uses
  %.028 = phi ptr [ %i.g, %10 ], [ null, %8 ]
  %.0 = phi ptr [ %12, %10 ], [ %i.g, %8 ]        ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %15 = load atomic ptr, ptr %14 acquire, align 8
  %.not = icmp eq ptr %15, @je_ehooks_default_extent_hooks
  br i1 %.not, label %bb.c, label %ehooks_guard.exit

bb.c:                                             ; preds = %san_find_guarded_addr.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.0, i64 %13
  %.028.a = select i1 %5, ptr %i.h, ptr null
  tail call void @je_ehooks_default_guard_impl(ptr noundef %.028, ptr noundef %.028.a) #4
  br label %ehooks_guard.exit

ehooks_guard.exit:                                ; preds = %san_find_guarded_addr.exit, %bb.c
  %i.i = load i64, ptr %i.a, align 8, !tbaa !12
  %i.j = and i64 %i.i, 4095
  %i.k = or i64 %i.j, %13
  store i64 %i.k, ptr %i.a, align 8, !tbaa !12
  store ptr %.0, ptr %i.c, align 8, !tbaa !17
  %i.l = load i64, ptr %2, align 8, !tbaa !18
  %i.m = or i64 %i.l, 65536
  store i64 %i.m, ptr %2, align 8, !tbaa !18
  br i1 %6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %ehooks_guard.exit
  %i.n = tail call zeroext i1 @je_emap_register_boundary(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %2, i32 noundef 232, i1 noundef zeroext false) #4 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %ehooks_guard.exit
  ret void
}

declare void @je_emap_deregister_boundary(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @je_emap_register_boundary(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @je_san_unguard_pages(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  tail call void @je_emap_deregister_boundary(ptr noundef %0, ptr noundef %3, ptr noundef %2) #4
  %i.a = getelementptr i8, ptr %2, i64 16         ; 3 uses
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !12
  %i.b = and i64 %.val.i, -4096                   ; 3 uses
  %or.cond.i = and i1 %4, %5
  %i.c = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %.val23.i = load ptr, ptr %i.c, align 8, !tbaa !17 ; 2 uses
  %i.d = ptrtoint ptr %.val23.i to i64
  %i.e = and i64 %i.d, 4095
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr inbounds i8, ptr %.val23.i, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b ; 2 uses
  br i1 %or.cond.i, label %.thread.i, label %7

.thread.i:                                        ; preds = %bb.a
  %6 = add i64 %i.b, 8192
  br label %9

7:                                                ; preds = %bb.a
  %8 = add i64 %i.b, 4096                         ; 2 uses
  %storemerge.i.i = select i1 %5, ptr %i.h, ptr null ; 2 uses
  br i1 %4, label %9, label %bb.b

9:                                                ; preds = %7, %.thread.i
  %storemerge.i31.i = phi ptr [ %i.h, %.thread.i ], [ %storemerge.i.i, %7 ]
  %10 = phi i64 [ %6, %.thread.i ], [ %8, %7 ]
  %11 = getelementptr inbounds i8, ptr %i.g, i64 -4096 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %9, %7
  %storemerge.i30.i = phi ptr [ %storemerge.i31.i, %9 ], [ %storemerge.i.i, %7 ]
  %12 = phi i64 [ %10, %9 ], [ %8, %7 ]
  %.027.i = phi ptr [ %11, %9 ], [ null, %7 ]
  %.0.i = phi ptr [ %11, %9 ], [ %i.g, %7 ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %13 = load atomic ptr, ptr %i.i acquire, align 8
  %.not.i = icmp eq ptr %13, @je_ehooks_default_extent_hooks
  br i1 %.not.i, label %14, label %san_unguard_pages_impl.exit

14:                                               ; preds = %bb.b
  tail call void @je_ehooks_default_unguard_impl(ptr noundef %.027.i, ptr noundef %storemerge.i30.i) #4
  br label %san_unguard_pages_impl.exit

san_unguard_pages_impl.exit:                      ; preds = %bb.b, %14
  %i.j = load i64, ptr %i.a, align 8, !tbaa !12
  %i.k = and i64 %i.j, 4095
  %i.l = or i64 %i.k, %12
  store i64 %i.l, ptr %i.a, align 8, !tbaa !12
  store ptr %.0.i, ptr %i.c, align 8, !tbaa !17
  %i.m = load i64, ptr %2, align 8, !tbaa !18
  %i.n = and i64 %i.m, -65537
  store i64 %i.n, ptr %2, align 8, !tbaa !18
  %i.o = tail call zeroext i1 @je_emap_register_boundary(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %2, i32 noundef 232, i1 noundef zeroext false) #4 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_san_unguard_pages_pre_destroy(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 16         ; 3 uses
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !12
  %i.b = and i64 %.val.i, -4096                   ; 2 uses
  %i.c = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %.val23.i = load ptr, ptr %i.c, align 8, !tbaa !17 ; 2 uses
  %i.d = ptrtoint ptr %.val23.i to i64
  %i.e = and i64 %i.d, 4095
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr inbounds i8, ptr %.val23.i, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load atomic ptr, ptr %i.h acquire, align 8
  %.not.i = icmp eq ptr %i.i, @je_ehooks_default_extent_hooks
  br i1 %.not.i, label %bb.b, label %san_unguard_pages_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  tail call void @je_ehooks_default_unguard_impl(ptr noundef null, ptr noundef %i.j) #4
  br label %san_unguard_pages_impl.exit

san_unguard_pages_impl.exit:                      ; preds = %bb.a, %bb.b
  %i.k = add i64 %i.b, 4096
  %i.l = load i64, ptr %i.a, align 8, !tbaa !12
  %i.m = and i64 %i.l, 4095
  %i.n = or disjoint i64 %i.m, %i.k
  store i64 %i.n, ptr %i.a, align 8, !tbaa !12
  store ptr %i.g, ptr %i.c, align 8, !tbaa !17
  %i.o = load i64, ptr %2, align 8, !tbaa !18
  %i.p = and i64 %i.o, -65537
  store i64 %i.p, ptr %2, align 8, !tbaa !18
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_san_check_stashed_ptrs(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = lshr i64 %2, 1
  %i.b = and i64 %i.a, 9223372036854775800
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.09 = phi i64 [ 0, %.lr.ph ], [ %i.k, %bb.d ]  ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %2
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.g = load i64, ptr %i.d, align 8, !tbaa !19
  %.not.i = icmp eq i64 %i.g, 6582955728264977243
  br i1 %.not.i, label %bb.c, label %san_stashed_corrupted.exit.thread, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b
  %i.i = load i64, ptr %i.h, align 8, !tbaa !19
  %.not10.i = icmp eq i64 %i.i, 6582955728264977243
  br i1 %.not10.i, label %san_stashed_corrupted.exit, label %san_stashed_corrupted.exit.thread, !prof !22

san_stashed_corrupted.exit:                       ; preds = %bb.c
  %i.j = load i64, ptr %i.f, align 8, !tbaa !19
  %.not11.i.not = icmp eq i64 %i.j, 6582955728264977243
  br i1 %.not11.i.not, label %bb.d, label %san_stashed_corrupted.exit.thread, !prof !23

san_stashed_corrupted.exit.thread:                ; preds = %bb.c, %bb.b, %san_stashed_corrupted.exit
  tail call void (ptr, ...) @je_safety_check_fail(ptr noundef nonnull @.str, ptr noundef nonnull %i.d, i64 noundef %2) #4
  br label %bb.d

bb.d:                                             ; preds = %san_stashed_corrupted.exit.thread, %san_stashed_corrupted.exit
  %i.k = add nuw i64 %.09, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.k, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !20
}

declare void @je_safety_check_fail(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @je_tsd_san_init(ptr nofree noundef writeonly captures(none) initializes((176, 192)) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr @je_opt_san_guard_small, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.a, ptr %i.b, align 8, !tbaa !19
  %i.c = load i64, ptr @je_opt_san_guard_large, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %i.c, ptr %i.d, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @je_san_init(i64 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i64 %0, -1
  %notmask = shl nsw i64 -1, %0
  %i.b = xor i64 %notmask, -1
  %storemerge = select i1 %i.a, i64 -1, i64 %i.b
  store i64 %storemerge, ptr @je_san_cache_bin_nonfast_mask, align 8, !tbaa !19
  ret void
}

declare void @je_ehooks_default_guard_impl(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @je_ehooks_default_unguard_impl(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"p1 _ZTS8hpdata_s", !14, i64 0}
!16 = !{!"edata_s", !13, i64 0, !14, i64 8, !8, i64 16, !15, i64 24, !13, i64 32, !8, i64 40, !8, i64 64}
!17 = !{!16, !14, i64 8}
!18 = !{!16, !13, i64 0}
!19 = !{!13, !13, i64 0}
!20 = distinct !{!20, !24}
!21 = !{!14, !14, i64 0}
!22 = !{!"branch_weights", i32 2146410443, i32 1073205}
!23 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!24 = !{!"llvm.loop.mustprogress"}
end_hunk_0
