inline.NumInlined: 11
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PgStat_PendingIO = type { [3 x [5 x [8 x i64]]], [3 x [5 x [8 x i64]]], [3 x [5 x [8 x %struct.instr_time]]] }
%struct.instr_time = type { i64 }
%struct.BufferUsage = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.instr_time, %struct.instr_time, %struct.instr_time, %struct.instr_time, %struct.instr_time, %struct.instr_time }
%struct.PgStat_LocalState = type { ptr, ptr, ptr, %struct.PgStat_Snapshot }
%struct.PgStat_Snapshot = type { i32, i64, [14 x i8], %struct.PgStat_ArchiverStats, %struct.PgStat_BgWriterStats, %struct.PgStat_CheckpointerStats, %struct.PgStat_IO, %struct.PgStat_Lock, [8 x %struct.PgStat_SLRUStats], %struct.PgStat_WalStats, [9 x i8], [9 x ptr], ptr, ptr }
%struct.PgStat_ArchiverStats = type { i64, [41 x i8], i64, i64, [41 x i8], i64, i64 }
%struct.PgStat_BgWriterStats = type { i64, i64, i64, i64 }
%struct.PgStat_CheckpointerStats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.PgStat_IO = type { i64, [20 x %struct.PgStat_BktypeIO] }
%struct.PgStat_BktypeIO = type { [3 x [5 x [8 x i64]]], [3 x [5 x [8 x i64]]], [3 x [5 x [8 x i64]]] }
%struct.PgStat_Lock = type { i64, [12 x %struct.PgStat_LockEntry] }
%struct.PgStat_LockEntry = type { i64, i64, i64 }
%struct.PgStat_SLRUStats = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.PgStat_WalStats = type { %struct.PgStat_WalCounters, i64 }
%struct.PgStat_WalCounters = type { i64, i64, i64, i64, i64 }
%struct.timespec = type { i64, i64 }

@PendingIOStats = internal unnamed_addr global %struct.PgStat_PendingIO zeroinitializer, align 8
@have_iostats = internal unnamed_addr global i1 false, align 1
@pgstat_report_fixed = external local_unnamed_addr global i8, align 1
@pgStatBlockWriteTime = external local_unnamed_addr global i64, align 8
@pgBufferUsage = external local_unnamed_addr global %struct.BufferUsage, align 8
@pgStatBlockReadTime = external local_unnamed_addr global i64, align 8
@pgStatLocal = external global %struct.PgStat_LocalState, align 8
@MyBackendType = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [9 x i8] c"bulkread\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"bulkwrite\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"vacuum\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"unrecognized IOContext value: %d\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"pgstat_io.c\00", align 1
@__func__.pgstat_get_io_context_name = private unnamed_addr constant [27 x i8] c"pgstat_get_io_context_name\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"relation\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"temp relation\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"wal\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"unrecognized IOObject value: %d\00", align 1
@__func__.pgstat_get_io_object_name = private unnamed_addr constant [26 x i8] c"pgstat_get_io_object_name\00", align 1
@timing_tsc_enabled = external local_unnamed_addr global i8, align 1
@ticks_per_ns_scaled = external local_unnamed_addr global i64, align 8
@max_ticks_no_overflow = external local_unnamed_addr global i64, align 8
@switch.table.pgstat_get_io_context_name = private unnamed_addr constant [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], align 8
@switch.table.pgstat_get_io_object_name = private unnamed_addr constant [3 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9], align 8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @pgstat_bktype_io_stats_valid(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 3
  %i.b = add nsw i32 %1, -14
  %or.cond27.i.i = icmp ult i32 %i.b, 3
  %i.c = and i32 %1, -2
  %or.cond31.i.i = icmp eq i32 %i.c, 10           ; 11 uses
  %i.d = add i32 %1, -3
  %or.cond39.i.i = icmp ult i32 %i.d, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.g = and i32 %1, -2
  %switch = icmp eq i32 %i.g, 10
  %i.h = and i32 %1, -2
  %switch126 = icmp eq i32 %i.h, 10
  br label %.preheader38

.preheader38:                                     ; preds = %bb.a, %bb.bd
  %indvars.iv51 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next52, %bb.bd ] ; 6 uses
  %i.i = icmp eq i64 %indvars.iv51, 2             ; 4 uses
  %i.j = icmp eq i64 %indvars.iv51, 1             ; 6 uses
  %i.k = icmp ne i64 %indvars.iv51, 2             ; 2 uses
  %or.cond29.i.i = and i1 %or.cond27.i.i, %i.k    ; 16 uses
  %i.l = getelementptr inbounds nuw [320 x i8], ptr %i.e, i64 %indvars.iv51
  %i.m = getelementptr inbounds nuw [320 x i8], ptr %i.f, i64 %indvars.iv51
  %brmerge148 = or i1 %or.cond29.i.i, %or.cond31.i.i
  %brmerge149 = or i1 %or.cond29.i.i, %or.cond31.i.i
  %brmerge151 = or i1 %or.cond29.i.i, %or.cond31.i.i
  br label %.preheader

.preheader:                                       ; preds = %.preheader38, %bb.bc
  %indvars.iv = phi i64 [ 0, %.preheader38 ], [ %indvars.iv.next, %bb.bc ] ; 17 uses
  %i.n = icmp samesign ult i64 %indvars.iv, 2
  %or.cond3.i.i = and i1 %i.i, %i.n               ; 8 uses
  %i.o = icmp ne i64 %indvars.iv, 3
  %or.cond5.i.i = and i1 %i.j, %i.o               ; 8 uses
  %i.p = icmp eq i64 %indvars.iv, 3               ; 2 uses
  %or.cond23.i.i = and i1 %i.j, %i.p              ; 8 uses
  %i.q = icmp eq i64 %indvars.iv, 4
  %or.cond37.i.i = and i1 %i.a, %i.q              ; 8 uses
  %i.r = icmp eq i64 %indvars.iv, 1
  %or.cond41.not.i.i.not47 = and i1 %or.cond39.i.i, %i.r ; 8 uses
  %i.s = icmp eq i64 %indvars.iv, 0
  %i.t = icmp eq i64 %indvars.iv, 2               ; 2 uses
  %or.cond33.i = and i1 %i.i, %i.t                ; 7 uses
  %or.cond39.i = and i1 %i.i, %i.p                ; 6 uses
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %indvars.iv ; 8 uses
  %i.v = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %indvars.iv ; 16 uses
  switch i32 %1, label %pgstat_tracks_io_op.exit.thread [
    i32 16, label %bb.b
    i32 15, label %bb.b
    i32 6, label %bb.b
    i32 14, label %bb.b
    i32 17, label %bb.b
    i32 18, label %bb.b
    i32 3, label %bb.b
    i32 4, label %bb.b
    i32 1, label %bb.b
    i32 5, label %bb.b
    i32 10, label %bb.b
    i32 11, label %bb.b
    i32 12, label %bb.b
    i32 7, label %bb.b
    i32 8, label %bb.b
    i32 13, label %bb.b
  ]

bb.b:                                             ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %brmerge = or i1 %or.cond3.i.i, %or.cond5.i.i
  br i1 %brmerge, label %pgstat_tracks_io_op.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %1, label %switch.edge.thread.i.i [
    i32 16, label %switch.edge.i.i
    i32 15, label %switch.edge.i.i
    i32 13, label %switch.edge.i.i
    i32 11, label %switch.edge.i.i
    i32 10, label %switch.edge.i.i
    i32 8, label %switch.edge.i.i
    i32 4, label %switch.edge.i.i
    i32 3, label %switch.edge.i.i
    i32 14, label %switch.edge.i.i
  ]

switch.edge.i.i:                                  ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %brmerge44 = select i1 %or.cond23.i.i, i1 true, i1 %or.cond29.i.i
  %brmerge147 = or i1 %brmerge44, %or.cond31.i.i
  br i1 %brmerge147, label %pgstat_tracks_io_op.exit.thread, label %bb.d

switch.edge.thread.i.i:                           ; preds = %bb.c
  br i1 %brmerge148, label %pgstat_tracks_io_op.exit.thread, label %bb.d

bb.d:                                             ; preds = %switch.edge.thread.i.i, %switch.edge.i.i
  %i.w = or i1 %or.cond41.not.i.i.not47, %switch
  %or.cond = or i1 %i.w, %or.cond37.i.i
  %brmerge121 = or i1 %or.cond, %or.cond33.i
  %brmerge122 = or i1 %brmerge121, %or.cond39.i
  br i1 %brmerge122, label %pgstat_tracks_io_op.exit.thread, label %pgstat_tracks_io_op.exit

pgstat_tracks_io_op.exit:                         ; preds = %bb.d
  %i.x = load i64, ptr %i.u, align 8
  %.not32 = icmp eq i64 %i.x, 0
  br i1 %.not32, label %bb.f, label %bb.e

bb.e:                                             ; preds = %pgstat_tracks_io_op.exit
  %i.y = load i64, ptr %i.v, align 8
  %i.z = icmp slt i64 %i.y, 1
  br i1 %i.z, label %.loopexit, label %bb.f

pgstat_tracks_io_op.exit.thread:                  ; preds = %switch.edge.thread.i.i, %switch.edge.i.i, %bb.d, %bb.b, %.preheader
  %i.aa = load i64, ptr %i.v, align 8
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %pgstat_tracks_io_op.exit.thread, %pgstat_tracks_io_op.exit, %bb.e
  switch i32 %1, label %pgstat_tracks_io_op.exit.thread.1 [
    i32 16, label %bb.g
    i32 15, label %bb.g
    i32 6, label %bb.g
    i32 14, label %bb.g
    i32 17, label %bb.g
    i32 18, label %bb.g
    i32 3, label %bb.g
    i32 4, label %bb.g
    i32 1, label %bb.g
    i32 5, label %bb.g
    i32 10, label %bb.g
    i32 11, label %bb.g
    i32 12, label %bb.g
    i32 7, label %bb.g
    i32 8, label %bb.g
    i32 13, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %brmerge.1 = or i1 %or.cond3.i.i, %or.cond5.i.i
  br i1 %brmerge.1, label %pgstat_tracks_io_op.exit.thread.1, label %bb.h

bb.h:                                             ; preds = %bb.g
  switch i32 %1, label %switch.edge.thread.i.i.1 [
    i32 16, label %switch.edge.i.i.1
    i32 15, label %switch.edge.i.i.1
    i32 13, label %switch.edge.i.i.1
    i32 11, label %switch.edge.i.i.1
    i32 10, label %switch.edge.i.i.1
    i32 8, label %switch.edge.i.i.1
    i32 4, label %switch.edge.i.i.1
    i32 3, label %switch.edge.i.i.1
    i32 14, label %switch.edge.i.i.1
  ]

switch.edge.i.i.1:                                ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %brmerge44.1 = select i1 %or.cond23.i.i, i1 true, i1 %or.cond29.i.i
  br i1 %brmerge44.1, label %pgstat_tracks_io_op.exit.thread.1, label %bb.i

switch.edge.thread.i.i.1:                         ; preds = %bb.h
  br i1 %or.cond29.i.i, label %pgstat_tracks_io_op.exit.thread.1, label %bb.i

bb.i:                                             ; preds = %switch.edge.thread.i.i.1, %switch.edge.i.i.1
  br i1 %or.cond31.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %brmerge45.1 = or i1 %or.cond37.i.i, %or.cond41.not.i.i.not47
  %brmerge124 = or i1 %brmerge45.1, %i.j
  br i1 %brmerge124, label %pgstat_tracks_io_op.exit.thread.1, label %pgstat_tracks_io_op.exit.1

bb.k:                                             ; preds = %bb.i
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %i.ab, label %pgstat_tracks_io_object.exit.thread95.i.1 [
    i32 4, label %pgstat_tracks_io_op.exit.thread.1
    i32 1, label %pgstat_tracks_io_op.exit.thread.1
    i32 0, label %pgstat_tracks_io_op.exit.thread.1
  ]

pgstat_tracks_io_object.exit.thread95.i.1:        ; preds = %bb.k
  br i1 %i.j, label %pgstat_tracks_io_op.exit.thread.1, label %pgstat_tracks_io_op.exit.1

pgstat_tracks_io_op.exit.1:                       ; preds = %pgstat_tracks_io_object.exit.thread95.i.1, %bb.j
  switch i64 %indvars.iv, label %bb.l [
    i64 4, label %pgstat_tracks_io_op.exit.thread.1
    i64 1, label %pgstat_tracks_io_op.exit.thread.1
    i64 0, label %pgstat_tracks_io_op.exit.thread.1
  ]

bb.l:                                             ; preds = %pgstat_tracks_io_op.exit.1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ad = load i64, ptr %i.ac, align 8
  %.not32.1 = icmp eq i64 %i.ad, 0
  br i1 %.not32.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = icmp slt i64 %i.af, 1
  br i1 %i.ag, label %.loopexit, label %bb.n

pgstat_tracks_io_op.exit.thread.1:                ; preds = %pgstat_tracks_io_op.exit.1, %pgstat_tracks_io_op.exit.1, %pgstat_tracks_io_op.exit.1, %bb.j, %pgstat_tracks_io_object.exit.thread95.i.1, %bb.k, %bb.k, %bb.k, %switch.edge.thread.i.i.1, %switch.edge.i.i.1, %bb.g, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ai = load i64, ptr %i.ah, align 8
  %.not.1 = icmp eq i64 %i.ai, 0
  br i1 %.not.1, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %pgstat_tracks_io_op.exit.thread.1, %bb.m, %bb.l
  switch i32 %1, label %pgstat_tracks_io_op.exit.thread.2 [
    i32 16, label %bb.o
    i32 15, label %bb.o
    i32 6, label %bb.o
    i32 14, label %bb.o
    i32 17, label %bb.o
    i32 18, label %bb.o
    i32 3, label %bb.o
    i32 4, label %bb.o
    i32 1, label %bb.o
    i32 5, label %bb.o
    i32 10, label %bb.o
    i32 11, label %bb.o
    i32 12, label %bb.o
    i32 7, label %bb.o
    i32 8, label %bb.o
    i32 13, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  %brmerge.2 = or i1 %or.cond3.i.i, %or.cond5.i.i
  br i1 %brmerge.2, label %pgstat_tracks_io_op.exit.thread.2, label %bb.p

bb.p:                                             ; preds = %bb.o
  switch i32 %1, label %switch.edge.thread.i.i.2 [
    i32 16, label %switch.edge.i.i.2
    i32 15, label %switch.edge.i.i.2
    i32 13, label %switch.edge.i.i.2
    i32 11, label %switch.edge.i.i.2
    i32 10, label %switch.edge.i.i.2
end_hunk_0
