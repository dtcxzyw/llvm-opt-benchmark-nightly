Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/qemu-fsdev?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FsDriverTable = type { ptr, ptr, ptr }
%union.anon.0 = type { %struct.QTailQLink }
%struct.QTailQLink = type { ptr, ptr }
%struct.FileOperations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [9 x i8] c"fsdriver\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"writeout\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"readonly\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"../fsdev/qemu-fsdev.c\00", align 1
@__func__.qemu_fsdev_add = private unnamed_addr constant [15 x i8] c"qemu_fsdev_add\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"fsdev: No id specified\00", align 1
@FsDrivers = internal global [2 x %struct.FsDriverTable] [%struct.FsDriverTable { ptr @.str.8, ptr @local_ops, ptr @.compoundliteral }, %struct.FsDriverTable { ptr @.str.35, ptr @synth_ops, ptr @.compoundliteral.36 }], align 16
@.str.5 = private unnamed_addr constant [29 x i8] c"fsdev: fsdriver %s not found\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"fsdev: No fsdriver specified\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"immediate\00", align 1
@fsdriver_entries = internal global %union.anon.0 { %struct.QTailQLink { ptr null, ptr @fsdriver_entries } }, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@local_ops = external global %struct.FileOperations, align 8
@.str.9 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"max_xattr\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"security_model\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"fmode\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"dmode\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"multidevs\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"throttling.bps-total\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"throttling.bps-read\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"throttling.bps-write\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"throttling.iops-total\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"throttling.iops-read\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"throttling.iops-write\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"throttling.bps-total-max\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"throttling.bps-read-max\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"throttling.bps-write-max\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"throttling.iops-total-max\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"throttling.iops-read-max\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"throttling.iops-write-max\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"throttling.bps-total-max-length\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"throttling.bps-read-max-length\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"throttling.bps-write-max-length\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"throttling.iops-total-max-length\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"throttling.iops-read-max-length\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"throttling.iops-write-max-length\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"throttling.iops-size\00", align 1
@.compoundliteral = internal global [30 x ptr] [ptr @.str.9, ptr @.str, ptr @.str.2, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.1, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr null], align 8
@.str.35 = private unnamed_addr constant [6 x i8] c"synth\00", align 1
@synth_ops = external global %struct.FileOperations, align 8
@.compoundliteral.36 = internal global [5 x ptr] [ptr @.str.9, ptr @.str, ptr @.str.2, ptr @.str.10, ptr null], align 8
@__func__.validate_opt = private unnamed_addr constant [13 x i8] c"validate_opt\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"'%s' is invalid for fsdriver '%s'\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -1, 1) i32 @qemu_fsdev_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @qemu_opts_id(ptr noundef %0) #5 ; 2 uses
  %i.b = tail call ptr @qemu_opt_get(ptr noundef %0, ptr noundef nonnull @.str) #5 ; 4 uses
  %i.c = tail call ptr @qemu_opt_get(ptr noundef %0, ptr noundef nonnull @.str.1) #5 ; 2 uses
  %i.d = tail call zeroext i1 @qemu_opt_get_bool(ptr noundef %0, ptr noundef nonnull @.str.2, i1 noundef zeroext false) #5
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef 120, ptr noundef nonnull @__func__.qemu_fsdev_add, ptr noundef nonnull @.str.4) #5
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %.not45 = icmp eq ptr %i.b, null
  br i1 %.not45, label %bb.e, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c
  %i.e = load ptr, ptr @FsDrivers, align 16
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) %i.b) #6
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.thread, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @FsDrivers, i64 24), align 8
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) %i.b) #6
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.thread, label %bb.d

bb.d:                                             ; preds = %.preheader.1
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef 132, ptr noundef nonnull @__func__.qemu_fsdev_add, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.b) #5
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef 136, ptr noundef nonnull @__func__.qemu_fsdev_add, ptr noundef nonnull @.str.6) #5
  br label %bb.l

.thread:                                          ; preds = %.preheader.1, %.preheader.preheader
  %.lcssa = phi i64 [ 0, %.preheader.preheader ], [ 1, %.preheader.1 ]
  %i.k = getelementptr inbounds nuw [24 x i8], ptr @FsDrivers, i64 %.lcssa ; 2 uses
  %i.l = tail call i32 @qemu_opt_foreach(ptr noundef %0, ptr noundef nonnull @validate_opt, ptr noundef nonnull %i.k, ptr noundef %1) #5
  %.not46 = icmp eq i32 %i.l, 0
  br i1 %.not46, label %g_strdup_inline.exit, label %bb.l

g_strdup_inline.exit:                             ; preds = %.thread
  %i.m = tail call noalias dereferenceable_or_null(648) ptr @g_malloc0(i64 noundef 648) #7 ; 10 uses
  %i.n = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.a) #5
  store ptr %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.p, ptr %i.q, align 8
  %.not47 = icmp eq ptr %i.c, null
  br i1 %.not47, label %bb.h, label %bb.f

bb.f:                                             ; preds = %g_strdup_inline.exit
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(10) @.str.7) #6
  %.not48 = icmp eq i32 %i.r, 0
  br i1 %.not48, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = or i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %g_strdup_inline.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8
  %i.x = and i32 %i.w, -65
  %masksel = select i1 %i.d, i32 64, i32 0
  %.sink = or disjoint i32 %i.x, %masksel
  store i32 %.sink, ptr %i.v, align 8
  %i.y = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not49 = icmp eq ptr %i.y, null
  br i1 %.not49, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = tail call i32 %i.y(ptr noundef %0, ptr noundef nonnull %i.m, ptr noundef %1) #5
  %.not50 = icmp eq i32 %i.z, 0
  br i1 %.not50, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %i.m, align 8
  tail call void @g_free(ptr noundef %i.aa) #5
  tail call void @g_free(ptr noundef nonnull %i.m) #5
  br label %bb.l

bb.k:                                             ; preds = %bb.h, %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 632 ; 2 uses
  store ptr null, ptr %i.ab, align 8
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fsdriver_entries, i64 8), align 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 640
  store ptr %i.ac, ptr %i.ad, align 8
  store ptr %i.m, ptr %i.ac, align 8
  store ptr %i.ab, ptr getelementptr inbounds nuw (i8, ptr @fsdriver_entries, i64 8), align 8
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k, %bb.j, %bb.e, %bb.d, %bb.b
  %.039 = phi i32 [ -1, %bb.d ], [ -1, %bb.b ], [ -1, %bb.j ], [ 0, %bb.k ], [ -1, %bb.e ], [ -1, %.thread ]
  ret i32 %.039
}

declare ptr @qemu_opts_id(ptr noundef) local_unnamed_addr #1

declare ptr @qemu_opt_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @qemu_opt_get_bool(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

declare i32 @qemu_opt_foreach(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 1) i32 @validate_opt(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not12 = icmp eq ptr %i.c, null
  br i1 %.not12, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.013, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.a ]
  %.013 = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(1) %1) #6
  %.not11 = icmp eq i32 %i.g, 0
  br i1 %.not11, label %.loopexit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.h = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef 106, ptr noundef nonnull @__func__.validate_opt, ptr noundef nonnull @.str.37, ptr noundef %1, ptr noundef %i.h) #5
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge
  %.09 = phi i32 [ -1, %._crit_edge ], [ 0, %.lr.ph ]
  ret i32 %.09
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #3

declare void @g_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @get_fsdev_fsentry(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  %.0711 = load ptr, ptr @fsdriver_entries, align 8 ; 2 uses
  %.not10.not12 = icmp eq ptr %.0711, null
  %or.cond = select i1 %.not, i1 true, i1 %.not10.not12
  br i1 %or.cond, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0713 = phi ptr [ %.07, %bb.b ], [ %.0711, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.0713, align 8
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %0) #6
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.0713, i64 632
  %.07 = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not10.not = icmp eq ptr %.07, null
  br i1 %.not10.not, label %.thread, label %.lr.ph, !llvm.loop !9

.thread:                                          ; preds = %.lr.ph, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %.0713, %.lr.ph ], [ null, %bb.b ]
  ret ptr %.1
}

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
end_hunk_0
