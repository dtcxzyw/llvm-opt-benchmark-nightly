inline.NumInlined: 7
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PgStat_CheckpointerStats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.PgStat_LocalState = type { ptr, ptr, ptr, %struct.PgStat_Snapshot }
%struct.PgStat_Snapshot = type { i32, i64, [14 x i8], %struct.PgStat_ArchiverStats, %struct.PgStat_BgWriterStats, %struct.PgStat_CheckpointerStats, %struct.PgStat_IO, %struct.PgStat_Lock, [8 x %struct.PgStat_SLRUStats], %struct.PgStat_WalStats, [9 x i8], [9 x ptr], ptr, ptr }
%struct.PgStat_ArchiverStats = type { i64, [41 x i8], i64, i64, [41 x i8], i64, i64 }
%struct.PgStat_BgWriterStats = type { i64, i64, i64, i64 }
%struct.PgStat_IO = type { i64, [20 x %struct.PgStat_BktypeIO] }
%struct.PgStat_BktypeIO = type { [3 x [5 x [8 x i64]]], [3 x [5 x [8 x i64]]], [3 x [5 x [8 x i64]]] }
%struct.PgStat_Lock = type { i64, [12 x %struct.PgStat_LockEntry] }
%struct.PgStat_LockEntry = type { i64, i64, i64 }
%struct.PgStat_SLRUStats = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.PgStat_WalStats = type { %struct.PgStat_WalCounters, i64 }
%struct.PgStat_WalCounters = type { i64, i64, i64, i64, i64 }

@PendingCheckpointerStats = dso_local local_unnamed_addr global %struct.PgStat_CheckpointerStats zeroinitializer, align 64
@pgStatLocal = external global %struct.PgStat_LocalState, align 8
@CritSectionCount = external global i32, align 4
@InterruptPending = external global i32, align 4

; Function Attrs: nounwind uwtable
define dso_local void @pgstat_report_checkpointer() local_unnamed_addr #0 {
  %1 = load ptr, ptr @pgStatLocal, align 8        ; 6 uses
  %2 = load <8 x i64>, ptr @PendingCheckpointerStats, align 64
  %3 = tail call i64 @llvm.vector.reduce.or.v8i64(<8 x i64> %2)
  %.not45.i = icmp eq i64 %3, 0
  br i1 %.not45.i, label %pg_memory_is_all_zeros.exit, label %pg_memory_is_all_zeros.exit.thread

pg_memory_is_all_zeros.exit:                      ; preds = %0
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @PendingCheckpointerStats, i64 64), align 64
  %.not44.i = icmp eq i64 %i.a, 0
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @PendingCheckpointerStats, i64 72), align 8
  %.not44.1.i = icmp eq i64 %i.b, 0
  %or.cond.i.a = select i1 %.not44.i, i1 %.not44.1.i, i1 false
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @PendingCheckpointerStats, i64 80), align 16
  %.not44.2.i = icmp eq i64 %i.c, 0
  %or.cond10.i = select i1 %or.cond.i.a, i1 %.not44.2.i, i1 false
  br i1 %or.cond10.i, label %bb.a, label %pg_memory_is_all_zeros.exit.thread

pg_memory_is_all_zeros.exit.thread:               ; preds = %0, %pg_memory_is_all_zeros.exit
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 4 uses
  %i.e = load volatile i32, ptr @CritSectionCount, align 4
  %i.f = add i32 %i.e, 1
  store volatile i32 %i.f, ptr @CritSectionCount, align 4
  %i.g = load i32, ptr %i.d, align 4
  %i.h = add i32 %i.g, 1
  store i32 %i.h, ptr %i.d, align 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 696 ; 2 uses
  %i.j = load <2 x i64>, ptr @PendingCheckpointerStats, align 64
  %i.k = load <2 x i64>, ptr %i.i, align 8
  %i.l = add <2 x i64> %i.k, %i.j
  store <2 x i64> %i.l, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 2 uses
  %i.n = load <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @PendingCheckpointerStats, i64 16), align 16
  %i.o = load <2 x i64>, ptr %i.m, align 8
  %i.p = add <2 x i64> %i.o, %i.n
  store <2 x i64> %i.p, ptr %i.m, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 728 ; 2 uses
  %i.r = load <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @PendingCheckpointerStats, i64 32), align 32
  %i.s = load <2 x i64>, ptr %i.q, align 8
  %i.t = add <2 x i64> %i.s, %i.r
  store <2 x i64> %i.t, ptr %i.q, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 744 ; 2 uses
  %i.v = load <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @PendingCheckpointerStats, i64 48), align 16
  %i.w = load <2 x i64>, ptr %i.u, align 8
  %i.x = add <2 x i64> %i.w, %i.v
  store <2 x i64> %i.x, ptr %i.u, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 760 ; 2 uses
  %i.z = load <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @PendingCheckpointerStats, i64 64), align 64
  %i.aa = load <2 x i64>, ptr %i.y, align 8
  %i.ab = add <2 x i64> %i.aa, %i.z
  store <2 x i64> %i.ab, ptr %i.y, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !5
  %i.ac = load i32, ptr %i.d, align 8
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.d, align 8
  %i.ae = load volatile i32, ptr @CritSectionCount, align 4
  %i.af = add i32 %i.ae, -1
  store volatile i32 %i.af, ptr @CritSectionCount, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) @PendingCheckpointerStats, i8 0, i64 88, i1 false)
  tail call void @pgstat_flush_io(i1 noundef zeroext false) #5
  br label %bb.a

bb.a:                                             ; preds = %pg_memory_is_all_zeros.exit, %pg_memory_is_all_zeros.exit.thread
  ret void
}

declare void @pgstat_flush_io(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @pgstat_fetch_stat_checkpointer() local_unnamed_addr #0 {
bb.a:
  tail call void @pgstat_snapshot_fixed(i32 noundef 9) #5
  ret ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 224)
}

declare void @pgstat_snapshot_fixed(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @pgstat_checkpointer_init_shmem_cb(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @LWLockInitialize(ptr noundef %0, i32 noundef 85) #5
  ret void
}

declare void @LWLockInitialize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @pgstat_checkpointer_reset_all_cb(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @pgStatLocal, align 8      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 672 ; 2 uses
  %i.c = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.b, i32 noundef 0) #5 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 784
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 696
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 688 ; 2 uses
  br label %pgstat_end_changecount_read.exit.i

pgstat_end_changecount_read.exit.i:               ; preds = %pgstat_end_changecount_read.exit.i.backedge, %bb.a
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = load volatile i32, ptr @InterruptPending, align 4
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %pgstat_begin_changecount_read.exit.i, label %bb.b, !prof !6

bb.b:                                             ; preds = %pgstat_end_changecount_read.exit.i
  tail call void @ProcessInterrupts() #5
  br label %pgstat_begin_changecount_read.exit.i

pgstat_begin_changecount_read.exit.i:             ; preds = %bb.b, %pgstat_end_changecount_read.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(88) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(88) %i.e, i64 88, i1 false)
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !8
  %i.i = and i32 %i.g, 1
  %.not.i5.i = icmp eq i32 %i.i, 0
  br i1 %.not.i5.i, label %.split.i, label %pgstat_end_changecount_read.exit.i.backedge

.split.i:                                         ; preds = %pgstat_begin_changecount_read.exit.i
  %i.j = load i32, ptr %i.f, align 4
  %i.k = icmp eq i32 %i.g, %i.j
  br i1 %i.k, label %pgstat_copy_changecounted_stats.exit, label %pgstat_end_changecount_read.exit.i.backedge

pgstat_end_changecount_read.exit.i.backedge:      ; preds = %.split.i, %pgstat_begin_changecount_read.exit.i
  br label %pgstat_end_changecount_read.exit.i, !llvm.loop !9

pgstat_copy_changecounted_stats.exit:             ; preds = %.split.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 776
  store i64 %0, ptr %i.l, align 8
  tail call void @LWLockRelease(ptr noundef nonnull %i.b) #5
  ret void
}

declare zeroext i1 @LWLockAcquire(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @LWLockRelease(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @pgstat_checkpointer_snapshot_cb() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @pgStatLocal, align 8      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 696
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 688 ; 2 uses
  br label %pgstat_end_changecount_read.exit.i

pgstat_end_changecount_read.exit.i:               ; preds = %pgstat_end_changecount_read.exit.i.backedge, %bb.a
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = load volatile i32, ptr @InterruptPending, align 4
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %pgstat_begin_changecount_read.exit.i, label %bb.b, !prof !6

bb.b:                                             ; preds = %pgstat_end_changecount_read.exit.i
  tail call void @ProcessInterrupts() #5
  br label %pgstat_begin_changecount_read.exit.i

pgstat_begin_changecount_read.exit.i:             ; preds = %bb.b, %pgstat_end_changecount_read.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 224), ptr noundef nonnull readonly align 1 dereferenceable(88) %i.b, i64 88, i1 false)
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !8
  %i.f = and i32 %i.d, 1
  %.not.i5.i = icmp eq i32 %i.f, 0
  br i1 %.not.i5.i, label %.split.i, label %pgstat_end_changecount_read.exit.i.backedge

.split.i:                                         ; preds = %pgstat_begin_changecount_read.exit.i
  %i.g = load i32, ptr %i.c, align 4
  %i.h = icmp eq i32 %i.d, %i.g
  br i1 %i.h, label %pgstat_copy_changecounted_stats.exit, label %pgstat_end_changecount_read.exit.i.backedge

pgstat_end_changecount_read.exit.i.backedge:      ; preds = %.split.i, %pgstat_begin_changecount_read.exit.i
  br label %pgstat_end_changecount_read.exit.i, !llvm.loop !9

pgstat_copy_changecounted_stats.exit:             ; preds = %.split.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 784
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 672 ; 2 uses
  %i.k = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.j, i32 noundef 1) #5 ; 0 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 800
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 816
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 848
  %i.l = load <2 x i64>, ptr %i.i, align 8
  %i.m = load <2 x i64>, ptr %.sroa.5.0..sroa_idx, align 8
  %i.n = load <2 x i64>, ptr %.sroa.7.0..sroa_idx, align 8
  %i.o = load <2 x i64>, ptr %.sroa.9.0..sroa_idx, align 8
  %i.p = load <2 x i64>, ptr %.sroa.11.0..sroa_idx, align 8
  tail call void @LWLockRelease(ptr noundef nonnull %i.j) #5
  %i.q = load <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 224), align 8
  %i.r = sub <2 x i64> %i.q, %i.l
  store <2 x i64> %i.r, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 224), align 8
  %i.s = load <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 240), align 8
  %i.t = sub <2 x i64> %i.s, %i.m
  store <2 x i64> %i.t, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 240), align 8
  %i.u = load <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 256), align 8
  %i.v = sub <2 x i64> %i.u, %i.n
  store <2 x i64> %i.v, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 256), align 8
  %i.w = load <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 272), align 8
  %i.x = sub <2 x i64> %i.w, %i.o
  store <2 x i64> %i.x, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 272), align 8
  %i.y = load <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 288), align 8
  %i.z = sub <2 x i64> %i.y, %i.p
  store <2 x i64> %i.z, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 288), align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @ProcessInterrupts() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v8i64(<8 x i64>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{i64 2149786304}
!5 = !{i64 2149786408}
!6 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!7 = !{i64 2149786747}
!8 = !{i64 2149786841}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
end_hunk_0
