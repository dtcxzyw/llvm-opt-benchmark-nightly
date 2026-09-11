Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.186?download=true
inline.NumInlined: 203
inline.NumDeleted: 97
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3A_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4O_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 42700796466920259) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.ad, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ad ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cq, %bb.ad ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.co, %bb.ad ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit
  %.sroa.021.0 = phi i8 [ %i.bh, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 12 uses
  %i.n = getelementptr inbounds nuw [216 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4V_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit.i, %bb.h
  br i1 %4, label %bb.t, label %bb.s

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 312
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.p, align 8, !alias.scope !34, !noalias !35 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 316
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !alias.scope !34, !noalias !35 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 320
  %.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !34, !noalias !35 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.q, align 8, !alias.scope !36, !noalias !37 ; 3 uses
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 100
  %.sroa.42.0.copyload.i.i = load i32, ptr %.sroa.42.0..sroa_idx.i.i, align 4, !alias.scope !36, !noalias !37 ; 2 uses
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %.sroa.53.0.copyload.i.i = load i32, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !36, !noalias !37
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.01.0.copyload.i.i, 0
  %.not1.i.i.i.i.not.i = icmp eq i32 %.sroa.0.0.copyload.i.i, 0 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.split.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not1.i.i.i.i.not.i, label %.critedge.preheader.i, label %bb.m

.split.i:                                         ; preds = %bb.k
  br i1 %.not1.i.i.i.i.not.i, label %.critedge.preheader.i, label %.preheader.i

bb.m:                                             ; preds = %bb.l
  %i.r = icmp eq i32 %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  br i1 %i.r, label %.split42.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit.i

.split42.i:                                       ; preds = %bb.m
  %i.s = icmp eq i32 %.sroa.42.0.copyload.i.i, %.sroa.4.0.copyload.i.i
  %i.t = icmp ult i32 %.sroa.42.0.copyload.i.i, %.sroa.4.0.copyload.i.i
  %i.u = icmp ult i32 %.sroa.53.0.copyload.i.i, %.sroa.5.0.copyload.i.i
  %spec.select.i.i = select i1 %i.s, i1 %i.u, i1 %i.t
  br i1 %spec.select.i.i, label %.preheader.i, label %.critedge.preheader.i

.preheader.i:                                     ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit.i, %.split42.i, %.split.i
  %.not70.i = icmp eq i64 %i.m, 2
  br i1 %.not70.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4V_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.m
  %i.v = icmp slt i32 %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  br i1 %i.v, label %.preheader.i, label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit.i, %.split42.i, %.split.i, %bb.l
  %.not71.i = icmp eq i64 %i.m, 2
  br i1 %.not71.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4V_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph65.i

.lr.ph65.i:                                       ; preds = %.critedge.preheader.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit22.thread.i
  %.sroa.53.0.copyload.i16.i = phi i32 [ %.sroa.5.0.copyload.i11.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ %.sroa.5.0.copyload.i.i, %.critedge.preheader.i ]
  %.sroa.42.0.copyload.i14.i = phi i32 [ %.sroa.4.0.copyload.i9.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ %.sroa.4.0.copyload.i.i, %.critedge.preheader.i ] ; 2 uses
  %.sroa.01.0.copyload.i12.i = phi i32 [ %.sroa.0.0.copyload.i7.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ %.sroa.0.0.copyload.i.i, %.critedge.preheader.i ] ; 3 uses
  %.sroa.01.0.i64.i = phi i64 [ %i.ad, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ 2, %.critedge.preheader.i ] ; 5 uses
  %i.w = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.01.0.i64.i ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %.sroa.0.0.copyload.i7.i = load i32, ptr %i.x, align 8, !alias.scope !38, !noalias !39 ; 4 uses
  %.sroa.4.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.w, i64 100
  %.sroa.4.0.copyload.i9.i = load i32, ptr %.sroa.4.0..sroa_idx.i8.i, align 4, !alias.scope !38, !noalias !39 ; 3 uses
  %.sroa.5.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %.sroa.5.0.copyload.i11.i = load i32, ptr %.sroa.5.0..sroa_idx.i10.i, align 8, !alias.scope !38, !noalias !39 ; 2 uses
  %.not.i.i.i.i17.i = icmp eq i32 %.sroa.01.0.copyload.i12.i, 0
  %.not1.i.i.i.i21.not.i = icmp eq i32 %.sroa.0.0.copyload.i7.i, 0 ; 2 uses
  br i1 %.not.i.i.i.i17.i, label %.split45.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph65.i
  br i1 %.not1.i.i.i.i21.not.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit22.thread.i, label %bb.o

.split45.i:                                       ; preds = %.lr.ph65.i
  br i1 %.not1.i.i.i.i21.not.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit22.thread.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4V_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit.i

bb.o:                                             ; preds = %bb.n
  %i.y = icmp eq i32 %.sroa.01.0.copyload.i12.i, %.sroa.0.0.copyload.i7.i
  br i1 %i.y, label %.split44.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit22.i

.split44.i:                                       ; preds = %bb.o
  %i.z = icmp eq i32 %.sroa.42.0.copyload.i14.i, %.sroa.4.0.copyload.i9.i
  %i.aa = icmp ult i32 %.sroa.42.0.copyload.i14.i, %.sroa.4.0.copyload.i9.i
  %i.ab = icmp ult i32 %.sroa.53.0.copyload.i16.i, %.sroa.5.0.copyload.i11.i
  %spec.select.i20.i = select i1 %i.z, i1 %i.ab, i1 %i.aa
  br i1 %spec.select.i20.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4V_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit22.thread.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit22.i: ; preds = %bb.o
  %i.ac = icmp slt i32 %.sroa.01.0.copyload.i12.i, %.sroa.0.0.copyload.i7.i
  br i1 %i.ac, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4V_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit22.thread.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit22.thread.i: ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit22.i, %.split44.i, %.split45.i, %bb.n
  %i.ad = add nuw nsw i64 %.sroa.01.0.i64.i, 1    ; 2 uses
  %exitcond75.not.i = icmp eq i64 %i.ad, %i.m
  br i1 %exitcond75.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4V_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph65.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i, %bb.q
  %.sroa.53.0.copyload.i32.i = phi i32 [ %.sroa.5.0.copyload.i27.i, %bb.q ], [ %.sroa.5.0.copyload.i.i, %.preheader.i ]
  %.sroa.42.0.copyload.i30.i = phi i32 [ %.sroa.4.0.copyload.i25.i, %bb.q ], [ %.sroa.4.0.copyload.i.i, %.preheader.i ] ; 2 uses
  %.sroa.01.0.copyload.i28.i = phi i32 [ %.sroa.0.0.copyload.i23.i, %bb.q ], [ %.sroa.0.0.copyload.i.i, %.preheader.i ] ; 2 uses
  %.sroa.01.1.i58.i = phi i64 [ %i.al, %bb.q ], [ 2, %.preheader.i ] ; 5 uses
  %i.ae = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.01.1.i58.i ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %.sroa.0.0.copyload.i23.i = load i32, ptr %i.af, align 8, !alias.scope !40, !noalias !41 ; 4 uses
  %.sroa.4.0..sroa_idx.i24.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 100
  %.sroa.4.0.copyload.i25.i = load i32, ptr %.sroa.4.0..sroa_idx.i24.i, align 4, !alias.scope !40, !noalias !41 ; 3 uses
  %.sroa.5.0..sroa_idx.i26.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %.sroa.5.0.copyload.i27.i = load i32, ptr %.sroa.5.0..sroa_idx.i26.i, align 8, !alias.scope !40, !noalias !41 ; 2 uses
  %.not2.i.i.i.i34.i = icmp eq i32 %.sroa.0.0.copyload.i23.i, 0
  br i1 %.not2.i.i.i.i34.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4V_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.preheader.i
  %i.ag = icmp eq i32 %.sroa.01.0.copyload.i28.i, %.sroa.0.0.copyload.i23.i
  br i1 %i.ag, label %.split47.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit38.i

.split47.i:                                       ; preds = %bb.p
  %i.ah = icmp eq i32 %.sroa.42.0.copyload.i30.i, %.sroa.4.0.copyload.i25.i
  %i.ai = icmp ult i32 %.sroa.42.0.copyload.i30.i, %.sroa.4.0.copyload.i25.i
  %i.aj = icmp ult i32 %.sroa.53.0.copyload.i32.i, %.sroa.5.0.copyload.i27.i
  %spec.select.i36.i = select i1 %i.ah, i1 %i.aj, i1 %i.ai
  br i1 %spec.select.i36.i, label %bb.q, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4V_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit38.i: ; preds = %bb.p
  %i.ak = icmp slt i32 %.sroa.01.0.copyload.i28.i, %.sroa.0.0.copyload.i23.i
  br i1 %i.ak, label %bb.q, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4V_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit.i

bb.q:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit38.i, %.split47.i
  %i.al = add nuw nsw i64 %.sroa.01.1.i58.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.al, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4V_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4V_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.q, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit38.i, %.split47.i, %.lr.ph.preheader.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit22.thread.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit22.i, %.split44.i, %.split45.i, %.critedge.preheader.i, %.preheader.i
  %.sroa.3.0.i.i = phi i1 [ false, %.critedge.preheader.i ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ true, %.preheader.i ], [ false, %.split45.i ], [ false, %.split44.i ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit22.i ], [ true, %.lr.ph.preheader.i ], [ true, %.split47.i ], [ true, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit38.i ], [ true, %bb.q ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.critedge.preheader.i ], [ %i.m, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ 2, %.preheader.i ], [ %.sroa.01.0.i64.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit22.i ], [ %.sroa.01.0.i64.i, %.split44.i ], [ %.sroa.01.0.i64.i, %.split45.i ], [ %i.m, %bb.q ], [ %.sroa.01.1.i58.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit38.i ], [ %.sroa.01.1.i58.i, %.split47.i ], [ %.sroa.01.1.i58.i, %.lr.ph.preheader.i ] ; 7 uses
  %i.am = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.am)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.r

bb.r:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4V_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.u, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i

bb.s:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 42700796466920259) %i.m, i64 %.sroa.01.0)
  %i.an = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.i
  %..i39.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 42700796466920259) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4Y_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i39.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.ao = shl nuw nsw i64 %..i39.i, 1
  %i.ap = or disjoint i64 %i.ao, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.u, %bb.r, %bb.j
  %.sroa.0.0.i54.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.r ], [ %.sroa.0.0.i.i, %bb.u ], [ %.sroa.0.0.i.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i ]
  %i.aq = shl nuw nsw i64 %.sroa.0.0.i54.i, 1
  %i.ar = or disjoint i64 %i.aq, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.r
  %i.as = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.u
  %i.at = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.0.0.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.ay, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.au = xor i64 %.sroa.0.017.i.i.i, -1
  %i.av = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.aw = getelementptr [216 x i8], ptr %i.at, i64 %i.au
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw, i64 noundef 27)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.v, !noalias !42

bb.v:                                             ; preds = %.lr.ph.i.i.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !noalias !42
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ay = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ay, %i.as
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.t, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ar, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i ], [ %i.ap, %bb.t ], [ %i.an, %bb.s ] ; 2 uses
  %i.az = lshr i64 %.sroa.023.0, 1
  %i.ba = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bb = sub nsw i64 %factor, %i.az
  %i.bc = add nuw nsw i64 %i.ba, %factor
  %i.bd = mul i64 %i.bb, %.sroa.0.0
  %i.be = mul i64 %i.bc, %.sroa.0.0
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bf, i1 false)
  %i.bh = trunc nuw nsw i64 %i.bg to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4Z_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit
  %.sroa.02.136 = phi i64 [ %i.bi, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4Z_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4Z_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bi = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bk, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.w

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4Z_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4Z_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4Z_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bm, align 1
  br i1 %i.k, label %bb.ad, label %bb.ae

bb.w:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bi
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !5 ; 3 uses
  %i.bp = lshr i64 %i.bo, 1                       ; 5 uses
  %i.bq = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.br = add nuw i64 %i.bp, %i.bq                ; 5 uses
  %i.bs = sub i64 %.sroa.09.0, %i.br
  %i.bt = getelementptr inbounds nuw [216 x i8], ptr %0, i64 %i.bs ; 3 uses
  %i.bu = icmp samesign ugt i64 %i.br, %3
  %i.bv = trunc i64 %.sroa.023.135 to i1
  %i.bw = or i64 %i.bo, %.sroa.023.135
  %i.bx = trunc i64 %i.bw to i1
  %or.cond3.i = or i1 %i.bu, %i.bx
  br i1 %or.cond3.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.by = trunc i64 %i.bo to i1
  br i1 %i.by, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.bz = shl nuw nsw i64 %i.br, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4Z_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit

bb.z:                                             ; preds = %bb.aa, %bb.x
  br i1 %i.bv, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.ca = or i64 %i.bp, 1
  %i.cb = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.ca, i1 true)
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 1
  %i.ce = xor i32 %i.cd, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4Y_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 42700796466920259) %i.bp, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.ce, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.z

bb.ab:                                            ; preds = %bb.z
  %i.cf = getelementptr inbounds nuw [216 x i8], ptr %i.bt, i64 %i.bp
  %i.cg = or i64 %i.bq, 1
  %i.ch = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 1
  %i.ck = xor i32 %i.cj, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4Y_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.cf, i64 noundef range(i64 0, 42700796466920259) %i.bq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3B_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4P_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 42700796466920259) %i.br, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i64 noundef %i.bp, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cl = shl nuw nsw i64 %i.br, 1
  %i.cm = or disjoint i64 %i.cl, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4Z_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4Z_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.y, %bb.ac
  %.sroa.0.0.i = phi i64 [ %i.cm, %bb.ac ], [ %i.bz, %bb.y ] ; 2 uses
  %i.cn = icmp ugt i64 %i.bi, 1
  br i1 %i.cn, label %.lr.ph, label %._crit_edge

bb.ad:                                            ; preds = %._crit_edge
  %i.co = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cp = lshr i64 %.sroa.018.0, 1
  %i.cq = add nuw i64 %i.cp, %.sroa.09.0
  br label %bb.f

bb.ae:                                            ; preds = %._crit_edge
  %i.cr = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cr, 0
  br i1 %.not30, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cs = or i64 %1, 1
  %i.ct = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4Y_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 42700796466920259) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %bb.ag
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3A_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4O_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 42700796466920259) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.ad, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ad ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cq, %bb.ad ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.co, %bb.ad ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4W_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit
  %.sroa.021.0 = phi i8 [ %i.bh, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4W_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4W_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 12 uses
  %i.n = getelementptr inbounds nuw [216 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i, %bb.h
  br i1 %4, label %bb.t, label %bb.s

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 312
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.p, align 8, !alias.scope !70, !noalias !71 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 316
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !alias.scope !70, !noalias !71 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 320
  %.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !70, !noalias !71 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.q, align 8, !alias.scope !72, !noalias !73 ; 3 uses
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 100
  %.sroa.42.0.copyload.i.i = load i32, ptr %.sroa.42.0..sroa_idx.i.i, align 4, !alias.scope !72, !noalias !73 ; 2 uses
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %.sroa.53.0.copyload.i.i = load i32, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !72, !noalias !73
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.01.0.copyload.i.i, 0
  %.not1.i.i.i.i.not.i = icmp eq i32 %.sroa.0.0.copyload.i.i, 0 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.split.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not1.i.i.i.i.not.i, label %.critedge.preheader.i, label %bb.m

.split.i:                                         ; preds = %bb.k
  br i1 %.not1.i.i.i.i.not.i, label %.critedge.preheader.i, label %.preheader.i

bb.m:                                             ; preds = %bb.l
  %i.r = icmp eq i32 %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  br i1 %i.r, label %.split42.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit.i

.split42.i:                                       ; preds = %bb.m
  %i.s = icmp eq i32 %.sroa.42.0.copyload.i.i, %.sroa.4.0.copyload.i.i
  %i.t = icmp ult i32 %.sroa.42.0.copyload.i.i, %.sroa.4.0.copyload.i.i
  %i.u = icmp ult i32 %.sroa.53.0.copyload.i.i, %.sroa.5.0.copyload.i.i
  %spec.select.i.i = select i1 %i.s, i1 %i.u, i1 %i.t
  br i1 %spec.select.i.i, label %.preheader.i, label %.critedge.preheader.i

.preheader.i:                                     ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit.i, %.split42.i, %.split.i
  %.not70.i = icmp eq i64 %i.m, 2
  br i1 %.not70.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.m
  %i.v = icmp slt i32 %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  br i1 %i.v, label %.preheader.i, label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit.i, %.split42.i, %.split.i, %bb.l
  %.not71.i = icmp eq i64 %i.m, 2
  br i1 %.not71.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph65.i

.lr.ph65.i:                                       ; preds = %.critedge.preheader.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i
  %.sroa.53.0.copyload.i16.i = phi i32 [ %.sroa.5.0.copyload.i11.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ %.sroa.5.0.copyload.i.i, %.critedge.preheader.i ]
  %.sroa.42.0.copyload.i14.i = phi i32 [ %.sroa.4.0.copyload.i9.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ %.sroa.4.0.copyload.i.i, %.critedge.preheader.i ] ; 2 uses
  %.sroa.01.0.copyload.i12.i = phi i32 [ %.sroa.0.0.copyload.i7.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ %.sroa.0.0.copyload.i.i, %.critedge.preheader.i ] ; 3 uses
  %.sroa.01.0.i64.i = phi i64 [ %i.ad, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ 2, %.critedge.preheader.i ] ; 5 uses
  %i.w = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.01.0.i64.i ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %.sroa.0.0.copyload.i7.i = load i32, ptr %i.x, align 8, !alias.scope !74, !noalias !75 ; 4 uses
  %.sroa.4.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.w, i64 100
  %.sroa.4.0.copyload.i9.i = load i32, ptr %.sroa.4.0..sroa_idx.i8.i, align 4, !alias.scope !74, !noalias !75 ; 3 uses
  %.sroa.5.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %.sroa.5.0.copyload.i11.i = load i32, ptr %.sroa.5.0..sroa_idx.i10.i, align 8, !alias.scope !74, !noalias !75 ; 2 uses
  %.not.i.i.i.i17.i = icmp eq i32 %.sroa.01.0.copyload.i12.i, 0
  %.not1.i.i.i.i21.not.i = icmp eq i32 %.sroa.0.0.copyload.i7.i, 0 ; 2 uses
  br i1 %.not.i.i.i.i17.i, label %.split45.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph65.i
  br i1 %.not1.i.i.i.i21.not.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i, label %bb.o

.split45.i:                                       ; preds = %.lr.ph65.i
  br i1 %.not1.i.i.i.i21.not.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i

bb.o:                                             ; preds = %bb.n
  %i.y = icmp eq i32 %.sroa.01.0.copyload.i12.i, %.sroa.0.0.copyload.i7.i
  br i1 %i.y, label %.split44.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.i

.split44.i:                                       ; preds = %bb.o
  %i.z = icmp eq i32 %.sroa.42.0.copyload.i14.i, %.sroa.4.0.copyload.i9.i
  %i.aa = icmp ult i32 %.sroa.42.0.copyload.i14.i, %.sroa.4.0.copyload.i9.i
  %i.ab = icmp ult i32 %.sroa.53.0.copyload.i16.i, %.sroa.5.0.copyload.i11.i
  %spec.select.i20.i = select i1 %i.z, i1 %i.ab, i1 %i.aa
  br i1 %spec.select.i20.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.i: ; preds = %bb.o
  %i.ac = icmp slt i32 %.sroa.01.0.copyload.i12.i, %.sroa.0.0.copyload.i7.i
  br i1 %i.ac, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i: ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.i, %.split44.i, %.split45.i, %bb.n
  %i.ad = add nuw nsw i64 %.sroa.01.0.i64.i, 1    ; 2 uses
  %exitcond75.not.i = icmp eq i64 %i.ad, %i.m
  br i1 %exitcond75.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph65.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i, %bb.q
  %.sroa.53.0.copyload.i32.i = phi i32 [ %.sroa.5.0.copyload.i27.i, %bb.q ], [ %.sroa.5.0.copyload.i.i, %.preheader.i ]
  %.sroa.42.0.copyload.i30.i = phi i32 [ %.sroa.4.0.copyload.i25.i, %bb.q ], [ %.sroa.4.0.copyload.i.i, %.preheader.i ] ; 2 uses
  %.sroa.01.0.copyload.i28.i = phi i32 [ %.sroa.0.0.copyload.i23.i, %bb.q ], [ %.sroa.0.0.copyload.i.i, %.preheader.i ] ; 2 uses
  %.sroa.01.1.i58.i = phi i64 [ %i.al, %bb.q ], [ 2, %.preheader.i ] ; 5 uses
  %i.ae = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.01.1.i58.i ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %.sroa.0.0.copyload.i23.i = load i32, ptr %i.af, align 8, !alias.scope !76, !noalias !77 ; 4 uses
  %.sroa.4.0..sroa_idx.i24.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 100
  %.sroa.4.0.copyload.i25.i = load i32, ptr %.sroa.4.0..sroa_idx.i24.i, align 4, !alias.scope !76, !noalias !77 ; 3 uses
  %.sroa.5.0..sroa_idx.i26.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %.sroa.5.0.copyload.i27.i = load i32, ptr %.sroa.5.0..sroa_idx.i26.i, align 8, !alias.scope !76, !noalias !77 ; 2 uses
  %.not2.i.i.i.i34.i = icmp eq i32 %.sroa.0.0.copyload.i23.i, 0
  br i1 %.not2.i.i.i.i34.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.preheader.i
  %i.ag = icmp eq i32 %.sroa.01.0.copyload.i28.i, %.sroa.0.0.copyload.i23.i
  br i1 %i.ag, label %.split47.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit38.i

.split47.i:                                       ; preds = %bb.p
  %i.ah = icmp eq i32 %.sroa.42.0.copyload.i30.i, %.sroa.4.0.copyload.i25.i
  %i.ai = icmp ult i32 %.sroa.42.0.copyload.i30.i, %.sroa.4.0.copyload.i25.i
  %i.aj = icmp ult i32 %.sroa.53.0.copyload.i32.i, %.sroa.5.0.copyload.i27.i
  %spec.select.i36.i = select i1 %i.ah, i1 %i.aj, i1 %i.ai
  br i1 %spec.select.i36.i, label %bb.q, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit38.i: ; preds = %bb.p
  %i.ak = icmp slt i32 %.sroa.01.0.copyload.i28.i, %.sroa.0.0.copyload.i23.i
  br i1 %i.ak, label %bb.q, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i

bb.q:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit38.i, %.split47.i
  %i.al = add nuw nsw i64 %.sroa.01.1.i58.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.al, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.q, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit38.i, %.split47.i, %.lr.ph.preheader.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.i, %.split44.i, %.split45.i, %.critedge.preheader.i, %.preheader.i
  %.sroa.3.0.i.i = phi i1 [ false, %.critedge.preheader.i ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ true, %.preheader.i ], [ false, %.split45.i ], [ false, %.split44.i ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.i ], [ true, %.lr.ph.preheader.i ], [ true, %.split47.i ], [ true, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit38.i ], [ true, %bb.q ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.critedge.preheader.i ], [ %i.m, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ 2, %.preheader.i ], [ %.sroa.01.0.i64.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.i ], [ %.sroa.01.0.i64.i, %.split44.i ], [ %.sroa.01.0.i64.i, %.split45.i ], [ %i.m, %bb.q ], [ %.sroa.01.1.i58.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit38.i ], [ %.sroa.01.1.i58.i, %.split47.i ], [ %.sroa.01.1.i58.i, %.lr.ph.preheader.i ] ; 7 uses
  %i.am = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.am)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.r

bb.r:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.u, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i

bb.s:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 42700796466920259) %i.m, i64 %.sroa.01.0)
  %i.an = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4W_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.i
  %..i39.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 42700796466920259) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Y_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i39.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.ao = shl nuw nsw i64 %..i39.i, 1
  %i.ap = or disjoint i64 %i.ao, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4W_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.u, %bb.r, %bb.j
  %.sroa.0.0.i54.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.r ], [ %.sroa.0.0.i.i, %bb.u ], [ %.sroa.0.0.i.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i ]
  %i.aq = shl nuw nsw i64 %.sroa.0.0.i54.i, 1
  %i.ar = or disjoint i64 %i.aq, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4W_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.r
  %i.as = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.u
  %i.at = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.0.0.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.ay, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.au = xor i64 %.sroa.0.017.i.i.i, -1
  %i.av = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.aw = getelementptr [216 x i8], ptr %i.at, i64 %i.au
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw, i64 noundef 27)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.v, !noalias !78

bb.v:                                             ; preds = %.lr.ph.i.i.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !noalias !78
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ay = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ay, %i.as
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4W_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.t, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ar, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i ], [ %i.ap, %bb.t ], [ %i.an, %bb.s ] ; 2 uses
  %i.az = lshr i64 %.sroa.023.0, 1
  %i.ba = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bb = sub nsw i64 %factor, %i.az
  %i.bc = add nuw nsw i64 %i.ba, %factor
  %i.bd = mul i64 %i.bb, %.sroa.0.0
  %i.be = mul i64 %i.bc, %.sroa.0.0
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bf, i1 false)
  %i.bh = trunc nuw nsw i64 %i.bg to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit
  %.sroa.02.136 = phi i64 [ %i.bi, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bi = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bk, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.w

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bm, align 1
  br i1 %i.k, label %bb.ad, label %bb.ae

bb.w:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bi
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !5 ; 3 uses
  %i.bp = lshr i64 %i.bo, 1                       ; 5 uses
  %i.bq = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.br = add nuw i64 %i.bp, %i.bq                ; 5 uses
  %i.bs = sub i64 %.sroa.09.0, %i.br
  %i.bt = getelementptr inbounds nuw [216 x i8], ptr %0, i64 %i.bs ; 3 uses
  %i.bu = icmp samesign ugt i64 %i.br, %3
  %i.bv = trunc i64 %.sroa.023.135 to i1
  %i.bw = or i64 %i.bo, %.sroa.023.135
  %i.bx = trunc i64 %i.bw to i1
  %or.cond3.i = or i1 %i.bu, %i.bx
  br i1 %or.cond3.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.by = trunc i64 %i.bo to i1
  br i1 %i.by, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.bz = shl nuw nsw i64 %i.br, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit

bb.z:                                             ; preds = %bb.aa, %bb.x
  br i1 %i.bv, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.ca = or i64 %i.bp, 1
  %i.cb = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.ca, i1 true)
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 1
  %i.ce = xor i32 %i.cd, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Y_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 42700796466920259) %i.bp, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.ce, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.z

bb.ab:                                            ; preds = %bb.z
  %i.cf = getelementptr inbounds nuw [216 x i8], ptr %i.bt, i64 %i.bp
  %i.cg = or i64 %i.bq, 1
  %i.ch = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 1
  %i.ck = xor i32 %i.cj, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Y_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.cf, i64 noundef range(i64 0, 42700796466920259) %i.bq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3B_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4P_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 42700796466920259) %i.br, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i64 noundef %i.bp, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cl = shl nuw nsw i64 %i.br, 1
  %i.cm = or disjoint i64 %i.cl, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.y, %bb.ac
  %.sroa.0.0.i = phi i64 [ %i.cm, %bb.ac ], [ %i.bz, %bb.y ] ; 2 uses
  %i.cn = icmp ugt i64 %i.bi, 1
  br i1 %i.cn, label %.lr.ph, label %._crit_edge

bb.ad:                                            ; preds = %._crit_edge
  %i.co = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cp = lshr i64 %.sroa.018.0, 1
  %i.cq = add nuw i64 %i.cp, %.sroa.09.0
  br label %bb.f

bb.ae:                                            ; preds = %._crit_edge
  %i.cr = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cr, 0
  br i1 %.not30, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cs = or i64 %1, 1
  %i.ct = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Y_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 42700796466920259) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %bb.ag
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3A_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4O_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 42700796466920259) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.ad, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ad ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cq, %bb.ad ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.co, %bb.ad ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4W_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit
  %.sroa.021.0 = phi i8 [ %i.bh, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4W_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4W_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 12 uses
  %i.n = getelementptr inbounds nuw [216 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i, %bb.h
  br i1 %4, label %bb.t, label %bb.s

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 312
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.p, align 8, !alias.scope !106, !noalias !107 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 316
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !alias.scope !106, !noalias !107 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 320
  %.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !106, !noalias !107 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.q, align 8, !alias.scope !108, !noalias !109 ; 3 uses
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 100
  %.sroa.42.0.copyload.i.i = load i32, ptr %.sroa.42.0..sroa_idx.i.i, align 4, !alias.scope !108, !noalias !109 ; 2 uses
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %.sroa.53.0.copyload.i.i = load i32, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !108, !noalias !109
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.01.0.copyload.i.i, 0
  %.not1.i.i.i.i.not.i = icmp eq i32 %.sroa.0.0.copyload.i.i, 0 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.split.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not1.i.i.i.i.not.i, label %.critedge.preheader.i, label %bb.m

.split.i:                                         ; preds = %bb.k
  br i1 %.not1.i.i.i.i.not.i, label %.critedge.preheader.i, label %.preheader.i

bb.m:                                             ; preds = %bb.l
  %i.r = icmp eq i32 %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  br i1 %i.r, label %.split42.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit.i

.split42.i:                                       ; preds = %bb.m
  %i.s = icmp eq i32 %.sroa.42.0.copyload.i.i, %.sroa.4.0.copyload.i.i
  %i.t = icmp ult i32 %.sroa.42.0.copyload.i.i, %.sroa.4.0.copyload.i.i
  %i.u = icmp ult i32 %.sroa.53.0.copyload.i.i, %.sroa.5.0.copyload.i.i
  %spec.select.i.i = select i1 %i.s, i1 %i.u, i1 %i.t
  br i1 %spec.select.i.i, label %.preheader.i, label %.critedge.preheader.i

.preheader.i:                                     ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit.i, %.split42.i, %.split.i
  %.not70.i = icmp eq i64 %i.m, 2
  br i1 %.not70.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.m
  %i.v = icmp slt i32 %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  br i1 %i.v, label %.preheader.i, label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit.i, %.split42.i, %.split.i, %bb.l
  %.not71.i = icmp eq i64 %i.m, 2
  br i1 %.not71.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph65.i

.lr.ph65.i:                                       ; preds = %.critedge.preheader.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i
  %.sroa.53.0.copyload.i16.i = phi i32 [ %.sroa.5.0.copyload.i11.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ %.sroa.5.0.copyload.i.i, %.critedge.preheader.i ]
  %.sroa.42.0.copyload.i14.i = phi i32 [ %.sroa.4.0.copyload.i9.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ %.sroa.4.0.copyload.i.i, %.critedge.preheader.i ] ; 2 uses
  %.sroa.01.0.copyload.i12.i = phi i32 [ %.sroa.0.0.copyload.i7.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ %.sroa.0.0.copyload.i.i, %.critedge.preheader.i ] ; 3 uses
  %.sroa.01.0.i64.i = phi i64 [ %i.ad, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ 2, %.critedge.preheader.i ] ; 5 uses
  %i.w = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.01.0.i64.i ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %.sroa.0.0.copyload.i7.i = load i32, ptr %i.x, align 8, !alias.scope !110, !noalias !111 ; 4 uses
  %.sroa.4.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.w, i64 100
  %.sroa.4.0.copyload.i9.i = load i32, ptr %.sroa.4.0..sroa_idx.i8.i, align 4, !alias.scope !110, !noalias !111 ; 3 uses
  %.sroa.5.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %.sroa.5.0.copyload.i11.i = load i32, ptr %.sroa.5.0..sroa_idx.i10.i, align 8, !alias.scope !110, !noalias !111 ; 2 uses
  %.not.i.i.i.i17.i = icmp eq i32 %.sroa.01.0.copyload.i12.i, 0
  %.not1.i.i.i.i21.not.i = icmp eq i32 %.sroa.0.0.copyload.i7.i, 0 ; 2 uses
  br i1 %.not.i.i.i.i17.i, label %.split45.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph65.i
  br i1 %.not1.i.i.i.i21.not.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i, label %bb.o

.split45.i:                                       ; preds = %.lr.ph65.i
  br i1 %.not1.i.i.i.i21.not.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i

bb.o:                                             ; preds = %bb.n
  %i.y = icmp eq i32 %.sroa.01.0.copyload.i12.i, %.sroa.0.0.copyload.i7.i
  br i1 %i.y, label %.split44.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.i

.split44.i:                                       ; preds = %bb.o
  %i.z = icmp eq i32 %.sroa.42.0.copyload.i14.i, %.sroa.4.0.copyload.i9.i
  %i.aa = icmp ult i32 %.sroa.42.0.copyload.i14.i, %.sroa.4.0.copyload.i9.i
  %i.ab = icmp ult i32 %.sroa.53.0.copyload.i16.i, %.sroa.5.0.copyload.i11.i
  %spec.select.i20.i = select i1 %i.z, i1 %i.ab, i1 %i.aa
  br i1 %spec.select.i20.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.i: ; preds = %bb.o
  %i.ac = icmp slt i32 %.sroa.01.0.copyload.i12.i, %.sroa.0.0.copyload.i7.i
  br i1 %i.ac, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i: ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.i, %.split44.i, %.split45.i, %bb.n
  %i.ad = add nuw nsw i64 %.sroa.01.0.i64.i, 1    ; 2 uses
  %exitcond75.not.i = icmp eq i64 %i.ad, %i.m
  br i1 %exitcond75.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph65.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i, %bb.q
  %.sroa.53.0.copyload.i32.i = phi i32 [ %.sroa.5.0.copyload.i27.i, %bb.q ], [ %.sroa.5.0.copyload.i.i, %.preheader.i ]
  %.sroa.42.0.copyload.i30.i = phi i32 [ %.sroa.4.0.copyload.i25.i, %bb.q ], [ %.sroa.4.0.copyload.i.i, %.preheader.i ] ; 2 uses
  %.sroa.01.0.copyload.i28.i = phi i32 [ %.sroa.0.0.copyload.i23.i, %bb.q ], [ %.sroa.0.0.copyload.i.i, %.preheader.i ] ; 2 uses
  %.sroa.01.1.i58.i = phi i64 [ %i.al, %bb.q ], [ 2, %.preheader.i ] ; 5 uses
  %i.ae = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.01.1.i58.i ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %.sroa.0.0.copyload.i23.i = load i32, ptr %i.af, align 8, !alias.scope !112, !noalias !113 ; 4 uses
  %.sroa.4.0..sroa_idx.i24.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 100
  %.sroa.4.0.copyload.i25.i = load i32, ptr %.sroa.4.0..sroa_idx.i24.i, align 4, !alias.scope !112, !noalias !113 ; 3 uses
  %.sroa.5.0..sroa_idx.i26.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %.sroa.5.0.copyload.i27.i = load i32, ptr %.sroa.5.0..sroa_idx.i26.i, align 8, !alias.scope !112, !noalias !113 ; 2 uses
  %.not2.i.i.i.i34.i = icmp eq i32 %.sroa.0.0.copyload.i23.i, 0
  br i1 %.not2.i.i.i.i34.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.preheader.i
  %i.ag = icmp eq i32 %.sroa.01.0.copyload.i28.i, %.sroa.0.0.copyload.i23.i
  br i1 %i.ag, label %.split47.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit38.i

.split47.i:                                       ; preds = %bb.p
  %i.ah = icmp eq i32 %.sroa.42.0.copyload.i30.i, %.sroa.4.0.copyload.i25.i
  %i.ai = icmp ult i32 %.sroa.42.0.copyload.i30.i, %.sroa.4.0.copyload.i25.i
  %i.aj = icmp ult i32 %.sroa.53.0.copyload.i32.i, %.sroa.5.0.copyload.i27.i
  %spec.select.i36.i = select i1 %i.ah, i1 %i.aj, i1 %i.ai
  br i1 %spec.select.i36.i, label %bb.q, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit38.i: ; preds = %bb.p
  %i.ak = icmp slt i32 %.sroa.01.0.copyload.i28.i, %.sroa.0.0.copyload.i23.i
  br i1 %i.ak, label %bb.q, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i

bb.q:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit38.i, %.split47.i
  %i.al = add nuw nsw i64 %.sroa.01.1.i58.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.al, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.q, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit38.i, %.split47.i, %.lr.ph.preheader.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.i, %.split44.i, %.split45.i, %.critedge.preheader.i, %.preheader.i
  %.sroa.3.0.i.i = phi i1 [ false, %.critedge.preheader.i ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ true, %.preheader.i ], [ false, %.split45.i ], [ false, %.split44.i ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.i ], [ true, %.lr.ph.preheader.i ], [ true, %.split47.i ], [ true, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit38.i ], [ true, %bb.q ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.critedge.preheader.i ], [ %i.m, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ 2, %.preheader.i ], [ %.sroa.01.0.i64.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.i ], [ %.sroa.01.0.i64.i, %.split44.i ], [ %.sroa.01.0.i64.i, %.split45.i ], [ %i.m, %bb.q ], [ %.sroa.01.1.i58.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit38.i ], [ %.sroa.01.1.i58.i, %.split47.i ], [ %.sroa.01.1.i58.i, %.lr.ph.preheader.i ] ; 7 uses
  %i.am = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.am)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.r

bb.r:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.u, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i

bb.s:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 42700796466920259) %i.m, i64 %.sroa.01.0)
  %i.an = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4W_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.i
  %..i39.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 42700796466920259) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Y_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i39.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.ao = shl nuw nsw i64 %..i39.i, 1
  %i.ap = or disjoint i64 %i.ao, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4W_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.u, %bb.r, %bb.j
  %.sroa.0.0.i54.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.r ], [ %.sroa.0.0.i.i, %bb.u ], [ %.sroa.0.0.i.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i ]
  %i.aq = shl nuw nsw i64 %.sroa.0.0.i54.i, 1
  %i.ar = or disjoint i64 %i.aq, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4W_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.r
  %i.as = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.u
  %i.at = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.0.0.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.ay, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.au = xor i64 %.sroa.0.017.i.i.i, -1
  %i.av = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.aw = getelementptr [216 x i8], ptr %i.at, i64 %i.au
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw, i64 noundef 27)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.v, !noalias !114

bb.v:                                             ; preds = %.lr.ph.i.i.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !noalias !114
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ay = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ay, %i.as
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4W_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.t, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ar, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i ], [ %i.ap, %bb.t ], [ %i.an, %bb.s ] ; 2 uses
  %i.az = lshr i64 %.sroa.023.0, 1
  %i.ba = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bb = sub nsw i64 %factor, %i.az
  %i.bc = add nuw nsw i64 %i.ba, %factor
  %i.bd = mul i64 %i.bb, %.sroa.0.0
  %i.be = mul i64 %i.bc, %.sroa.0.0
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bf, i1 false)
  %i.bh = trunc nuw nsw i64 %i.bg to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit
  %.sroa.02.136 = phi i64 [ %i.bi, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bi = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bk, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.w

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bm, align 1
  br i1 %i.k, label %bb.ad, label %bb.ae

bb.w:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bi
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !5 ; 3 uses
  %i.bp = lshr i64 %i.bo, 1                       ; 5 uses
  %i.bq = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.br = add nuw i64 %i.bp, %i.bq                ; 5 uses
  %i.bs = sub i64 %.sroa.09.0, %i.br
  %i.bt = getelementptr inbounds nuw [216 x i8], ptr %0, i64 %i.bs ; 3 uses
  %i.bu = icmp samesign ugt i64 %i.br, %3
  %i.bv = trunc i64 %.sroa.023.135 to i1
  %i.bw = or i64 %i.bo, %.sroa.023.135
  %i.bx = trunc i64 %i.bw to i1
  %or.cond3.i = or i1 %i.bu, %i.bx
  br i1 %or.cond3.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.by = trunc i64 %i.bo to i1
  br i1 %i.by, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.bz = shl nuw nsw i64 %i.br, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit

bb.z:                                             ; preds = %bb.aa, %bb.x
  br i1 %i.bv, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.ca = or i64 %i.bp, 1
  %i.cb = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.ca, i1 true)
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 1
  %i.ce = xor i32 %i.cd, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Y_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 42700796466920259) %i.bp, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.ce, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.z

bb.ab:                                            ; preds = %bb.z
  %i.cf = getelementptr inbounds nuw [216 x i8], ptr %i.bt, i64 %i.bp
  %i.cg = or i64 %i.bq, 1
  %i.ch = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 1
  %i.ck = xor i32 %i.cj, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Y_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.cf, i64 noundef range(i64 0, 42700796466920259) %i.bq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3B_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4P_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 42700796466920259) %i.br, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i64 noundef %i.bp, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cl = shl nuw nsw i64 %i.br, 1
  %i.cm = or disjoint i64 %i.cl, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.y, %bb.ac
  %.sroa.0.0.i = phi i64 [ %i.cm, %bb.ac ], [ %i.bz, %bb.y ] ; 2 uses
  %i.cn = icmp ugt i64 %i.bi, 1
  br i1 %i.cn, label %.lr.ph, label %._crit_edge

bb.ad:                                            ; preds = %._crit_edge
  %i.co = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cp = lshr i64 %.sroa.018.0, 1
  %i.cq = add nuw i64 %i.cp, %.sroa.09.0
  br label %bb.f

bb.ae:                                            ; preds = %._crit_edge
  %i.cr = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cr, 0
  br i1 %.not30, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cs = or i64 %1, 1
  %i.ct = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Y_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 42700796466920259) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %bb.ag
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3A_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4M_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 42700796466920259) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.ad, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ad ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cq, %bb.ad ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.co, %bb.ad ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit
  %.sroa.021.0 = phi i8 [ %i.bh, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 12 uses
  %i.n = getelementptr inbounds nuw [216 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i, %bb.h
  br i1 %4, label %bb.t, label %bb.s

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 312
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.p, align 8, !alias.scope !142, !noalias !143 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 316
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !alias.scope !142, !noalias !143 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 320
  %.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !142, !noalias !143 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.q, align 8, !alias.scope !144, !noalias !145 ; 3 uses
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 100
  %.sroa.42.0.copyload.i.i = load i32, ptr %.sroa.42.0..sroa_idx.i.i, align 4, !alias.scope !144, !noalias !145 ; 2 uses
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %.sroa.53.0.copyload.i.i = load i32, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !144, !noalias !145
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.01.0.copyload.i.i, 0
  %.not1.i.i.i.i.not.i = icmp eq i32 %.sroa.0.0.copyload.i.i, 0 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.split.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not1.i.i.i.i.not.i, label %.critedge.preheader.i, label %bb.m

.split.i:                                         ; preds = %bb.k
  br i1 %.not1.i.i.i.i.not.i, label %.critedge.preheader.i, label %.preheader.i

bb.m:                                             ; preds = %bb.l
  %i.r = icmp eq i32 %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  br i1 %i.r, label %.split42.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit.i

.split42.i:                                       ; preds = %bb.m
  %i.s = icmp eq i32 %.sroa.42.0.copyload.i.i, %.sroa.4.0.copyload.i.i
  %i.t = icmp ult i32 %.sroa.42.0.copyload.i.i, %.sroa.4.0.copyload.i.i
  %i.u = icmp ult i32 %.sroa.53.0.copyload.i.i, %.sroa.5.0.copyload.i.i
  %spec.select.i.i = select i1 %i.s, i1 %i.u, i1 %i.t
  br i1 %spec.select.i.i, label %.preheader.i, label %.critedge.preheader.i

.preheader.i:                                     ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit.i, %.split42.i, %.split.i
  %.not70.i = icmp eq i64 %i.m, 2
  br i1 %.not70.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.m
  %i.v = icmp slt i32 %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  br i1 %i.v, label %.preheader.i, label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit.i, %.split42.i, %.split.i, %bb.l
  %.not71.i = icmp eq i64 %i.m, 2
  br i1 %.not71.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph65.i

.lr.ph65.i:                                       ; preds = %.critedge.preheader.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i
  %.sroa.53.0.copyload.i16.i = phi i32 [ %.sroa.5.0.copyload.i11.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ %.sroa.5.0.copyload.i.i, %.critedge.preheader.i ]
  %.sroa.42.0.copyload.i14.i = phi i32 [ %.sroa.4.0.copyload.i9.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ %.sroa.4.0.copyload.i.i, %.critedge.preheader.i ] ; 2 uses
  %.sroa.01.0.copyload.i12.i = phi i32 [ %.sroa.0.0.copyload.i7.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ %.sroa.0.0.copyload.i.i, %.critedge.preheader.i ] ; 3 uses
  %.sroa.01.0.i64.i = phi i64 [ %i.ad, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ 2, %.critedge.preheader.i ] ; 5 uses
  %i.w = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.01.0.i64.i ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %.sroa.0.0.copyload.i7.i = load i32, ptr %i.x, align 8, !alias.scope !146, !noalias !147 ; 4 uses
  %.sroa.4.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.w, i64 100
  %.sroa.4.0.copyload.i9.i = load i32, ptr %.sroa.4.0..sroa_idx.i8.i, align 4, !alias.scope !146, !noalias !147 ; 3 uses
  %.sroa.5.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %.sroa.5.0.copyload.i11.i = load i32, ptr %.sroa.5.0..sroa_idx.i10.i, align 8, !alias.scope !146, !noalias !147 ; 2 uses
  %.not.i.i.i.i17.i = icmp eq i32 %.sroa.01.0.copyload.i12.i, 0
  %.not1.i.i.i.i21.not.i = icmp eq i32 %.sroa.0.0.copyload.i7.i, 0 ; 2 uses
  br i1 %.not.i.i.i.i17.i, label %.split45.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph65.i
  br i1 %.not1.i.i.i.i21.not.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i, label %bb.o

.split45.i:                                       ; preds = %.lr.ph65.i
  br i1 %.not1.i.i.i.i21.not.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i

bb.o:                                             ; preds = %bb.n
  %i.y = icmp eq i32 %.sroa.01.0.copyload.i12.i, %.sroa.0.0.copyload.i7.i
  br i1 %i.y, label %.split44.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.i

.split44.i:                                       ; preds = %bb.o
  %i.z = icmp eq i32 %.sroa.42.0.copyload.i14.i, %.sroa.4.0.copyload.i9.i
  %i.aa = icmp ult i32 %.sroa.42.0.copyload.i14.i, %.sroa.4.0.copyload.i9.i
  %i.ab = icmp ult i32 %.sroa.53.0.copyload.i16.i, %.sroa.5.0.copyload.i11.i
  %spec.select.i20.i = select i1 %i.z, i1 %i.ab, i1 %i.aa
  br i1 %spec.select.i20.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.i: ; preds = %bb.o
  %i.ac = icmp slt i32 %.sroa.01.0.copyload.i12.i, %.sroa.0.0.copyload.i7.i
  br i1 %i.ac, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i: ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.i, %.split44.i, %.split45.i, %bb.n
  %i.ad = add nuw nsw i64 %.sroa.01.0.i64.i, 1    ; 2 uses
  %exitcond75.not.i = icmp eq i64 %i.ad, %i.m
  br i1 %exitcond75.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph65.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i, %bb.q
  %.sroa.53.0.copyload.i32.i = phi i32 [ %.sroa.5.0.copyload.i27.i, %bb.q ], [ %.sroa.5.0.copyload.i.i, %.preheader.i ]
  %.sroa.42.0.copyload.i30.i = phi i32 [ %.sroa.4.0.copyload.i25.i, %bb.q ], [ %.sroa.4.0.copyload.i.i, %.preheader.i ] ; 2 uses
  %.sroa.01.0.copyload.i28.i = phi i32 [ %.sroa.0.0.copyload.i23.i, %bb.q ], [ %.sroa.0.0.copyload.i.i, %.preheader.i ] ; 2 uses
  %.sroa.01.1.i58.i = phi i64 [ %i.al, %bb.q ], [ 2, %.preheader.i ] ; 5 uses
  %i.ae = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.01.1.i58.i ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %.sroa.0.0.copyload.i23.i = load i32, ptr %i.af, align 8, !alias.scope !148, !noalias !149 ; 4 uses
  %.sroa.4.0..sroa_idx.i24.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 100
  %.sroa.4.0.copyload.i25.i = load i32, ptr %.sroa.4.0..sroa_idx.i24.i, align 4, !alias.scope !148, !noalias !149 ; 3 uses
  %.sroa.5.0..sroa_idx.i26.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %.sroa.5.0.copyload.i27.i = load i32, ptr %.sroa.5.0..sroa_idx.i26.i, align 8, !alias.scope !148, !noalias !149 ; 2 uses
  %.not2.i.i.i.i34.i = icmp eq i32 %.sroa.0.0.copyload.i23.i, 0
  br i1 %.not2.i.i.i.i34.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.preheader.i
  %i.ag = icmp eq i32 %.sroa.01.0.copyload.i28.i, %.sroa.0.0.copyload.i23.i
  br i1 %i.ag, label %.split47.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit38.i

.split47.i:                                       ; preds = %bb.p
  %i.ah = icmp eq i32 %.sroa.42.0.copyload.i30.i, %.sroa.4.0.copyload.i25.i
  %i.ai = icmp ult i32 %.sroa.42.0.copyload.i30.i, %.sroa.4.0.copyload.i25.i
  %i.aj = icmp ult i32 %.sroa.53.0.copyload.i32.i, %.sroa.5.0.copyload.i27.i
  %spec.select.i36.i = select i1 %i.ah, i1 %i.aj, i1 %i.ai
  br i1 %spec.select.i36.i, label %bb.q, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit38.i: ; preds = %bb.p
  %i.ak = icmp slt i32 %.sroa.01.0.copyload.i28.i, %.sroa.0.0.copyload.i23.i
  br i1 %i.ak, label %bb.q, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i

bb.q:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit38.i, %.split47.i
  %i.al = add nuw nsw i64 %.sroa.01.1.i58.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.al, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.q, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit38.i, %.split47.i, %.lr.ph.preheader.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.i, %.split44.i, %.split45.i, %.critedge.preheader.i, %.preheader.i
  %.sroa.3.0.i.i = phi i1 [ false, %.critedge.preheader.i ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ true, %.preheader.i ], [ false, %.split45.i ], [ false, %.split44.i ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.i ], [ true, %.lr.ph.preheader.i ], [ true, %.split47.i ], [ true, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit38.i ], [ true, %bb.q ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.critedge.preheader.i ], [ %i.m, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ 2, %.preheader.i ], [ %.sroa.01.0.i64.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.i ], [ %.sroa.01.0.i64.i, %.split44.i ], [ %.sroa.01.0.i64.i, %.split45.i ], [ %i.m, %bb.q ], [ %.sroa.01.1.i58.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit38.i ], [ %.sroa.01.1.i58.i, %.split47.i ], [ %.sroa.01.1.i58.i, %.lr.ph.preheader.i ] ; 7 uses
  %i.am = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.am)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.r

bb.r:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.u, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i

bb.s:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 42700796466920259) %i.m, i64 %.sroa.01.0)
  %i.an = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.i
  %..i39.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 42700796466920259) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i39.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.ao = shl nuw nsw i64 %..i39.i, 1
  %i.ap = or disjoint i64 %i.ao, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.u, %bb.r, %bb.j
  %.sroa.0.0.i54.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.r ], [ %.sroa.0.0.i.i, %bb.u ], [ %.sroa.0.0.i.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i ]
  %i.aq = shl nuw nsw i64 %.sroa.0.0.i54.i, 1
  %i.ar = or disjoint i64 %i.aq, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.r
  %i.as = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.u
  %i.at = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.0.0.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.ay, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.au = xor i64 %.sroa.0.017.i.i.i, -1
  %i.av = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.aw = getelementptr [216 x i8], ptr %i.at, i64 %i.au
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw, i64 noundef 27)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.v, !noalias !150

bb.v:                                             ; preds = %.lr.ph.i.i.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !noalias !150
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ay = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ay, %i.as
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.t, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ar, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i ], [ %i.ap, %bb.t ], [ %i.an, %bb.s ] ; 2 uses
  %i.az = lshr i64 %.sroa.023.0, 1
  %i.ba = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bb = sub nsw i64 %factor, %i.az
  %i.bc = add nuw nsw i64 %i.ba, %factor
  %i.bd = mul i64 %i.bb, %.sroa.0.0
  %i.be = mul i64 %i.bc, %.sroa.0.0
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bf, i1 false)
  %i.bh = trunc nuw nsw i64 %i.bg to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit
  %.sroa.02.136 = phi i64 [ %i.bi, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bi = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bk, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.w

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bm, align 1
  br i1 %i.k, label %bb.ad, label %bb.ae

bb.w:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bi
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !5 ; 3 uses
  %i.bp = lshr i64 %i.bo, 1                       ; 5 uses
  %i.bq = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.br = add nuw i64 %i.bp, %i.bq                ; 5 uses
  %i.bs = sub i64 %.sroa.09.0, %i.br
  %i.bt = getelementptr inbounds nuw [216 x i8], ptr %0, i64 %i.bs ; 3 uses
  %i.bu = icmp samesign ugt i64 %i.br, %3
  %i.bv = trunc i64 %.sroa.023.135 to i1
  %i.bw = or i64 %i.bo, %.sroa.023.135
  %i.bx = trunc i64 %i.bw to i1
  %or.cond3.i = or i1 %i.bu, %i.bx
  br i1 %or.cond3.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.by = trunc i64 %i.bo to i1
  br i1 %i.by, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.bz = shl nuw nsw i64 %i.br, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit

bb.z:                                             ; preds = %bb.aa, %bb.x
  br i1 %i.bv, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.ca = or i64 %i.bp, 1
  %i.cb = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.ca, i1 true)
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 1
  %i.ce = xor i32 %i.cd, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 42700796466920259) %i.bp, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.ce, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.z

bb.ab:                                            ; preds = %bb.z
  %i.cf = getelementptr inbounds nuw [216 x i8], ptr %i.bt, i64 %i.bp
  %i.cg = or i64 %i.bq, 1
  %i.ch = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 1
  %i.ck = xor i32 %i.cj, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.cf, i64 noundef range(i64 0, 42700796466920259) %i.bq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3B_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4N_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 42700796466920259) %i.br, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i64 noundef %i.bp, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cl = shl nuw nsw i64 %i.br, 1
  %i.cm = or disjoint i64 %i.cl, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.y, %bb.ac
  %.sroa.0.0.i = phi i64 [ %i.cm, %bb.ac ], [ %i.bz, %bb.y ] ; 2 uses
  %i.cn = icmp ugt i64 %i.bi, 1
  br i1 %i.cn, label %.lr.ph, label %._crit_edge

bb.ad:                                            ; preds = %._crit_edge
  %i.co = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cp = lshr i64 %.sroa.018.0, 1
  %i.cq = add nuw i64 %i.cp, %.sroa.09.0
  br label %bb.f

bb.ae:                                            ; preds = %._crit_edge
  %i.cr = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cr, 0
  br i1 %.not30, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cs = or i64 %1, 1
  %i.ct = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 42700796466920259) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %bb.ag
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3A_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4M_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 42700796466920259) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.ad, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ad ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cq, %bb.ad ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.co, %bb.ad ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit
  %.sroa.021.0 = phi i8 [ %i.bh, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 12 uses
  %i.n = getelementptr inbounds nuw [216 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i, %bb.h
  br i1 %4, label %bb.t, label %bb.s

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 312
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.p, align 8, !alias.scope !178, !noalias !179 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 316
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !alias.scope !178, !noalias !179 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 320
  %.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !178, !noalias !179 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.q, align 8, !alias.scope !180, !noalias !181 ; 3 uses
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 100
  %.sroa.42.0.copyload.i.i = load i32, ptr %.sroa.42.0..sroa_idx.i.i, align 4, !alias.scope !180, !noalias !181 ; 2 uses
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %.sroa.53.0.copyload.i.i = load i32, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !180, !noalias !181
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.01.0.copyload.i.i, 0
  %.not1.i.i.i.i.not.i = icmp eq i32 %.sroa.0.0.copyload.i.i, 0 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.split.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not1.i.i.i.i.not.i, label %.critedge.preheader.i, label %bb.m

.split.i:                                         ; preds = %bb.k
  br i1 %.not1.i.i.i.i.not.i, label %.critedge.preheader.i, label %.preheader.i

bb.m:                                             ; preds = %bb.l
  %i.r = icmp eq i32 %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  br i1 %i.r, label %.split42.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit.i

.split42.i:                                       ; preds = %bb.m
  %i.s = icmp eq i32 %.sroa.42.0.copyload.i.i, %.sroa.4.0.copyload.i.i
  %i.t = icmp ult i32 %.sroa.42.0.copyload.i.i, %.sroa.4.0.copyload.i.i
  %i.u = icmp ult i32 %.sroa.53.0.copyload.i.i, %.sroa.5.0.copyload.i.i
  %spec.select.i.i = select i1 %i.s, i1 %i.u, i1 %i.t
  br i1 %spec.select.i.i, label %.preheader.i, label %.critedge.preheader.i

.preheader.i:                                     ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit.i, %.split42.i, %.split.i
  %.not70.i = icmp eq i64 %i.m, 2
  br i1 %.not70.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.m
  %i.v = icmp slt i32 %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  br i1 %i.v, label %.preheader.i, label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit.i, %.split42.i, %.split.i, %bb.l
  %.not71.i = icmp eq i64 %i.m, 2
  br i1 %.not71.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph65.i

.lr.ph65.i:                                       ; preds = %.critedge.preheader.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i
  %.sroa.53.0.copyload.i16.i = phi i32 [ %.sroa.5.0.copyload.i11.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ %.sroa.5.0.copyload.i.i, %.critedge.preheader.i ]
  %.sroa.42.0.copyload.i14.i = phi i32 [ %.sroa.4.0.copyload.i9.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ %.sroa.4.0.copyload.i.i, %.critedge.preheader.i ] ; 2 uses
  %.sroa.01.0.copyload.i12.i = phi i32 [ %.sroa.0.0.copyload.i7.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ %.sroa.0.0.copyload.i.i, %.critedge.preheader.i ] ; 3 uses
  %.sroa.01.0.i64.i = phi i64 [ %i.ad, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ 2, %.critedge.preheader.i ] ; 5 uses
  %i.w = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.01.0.i64.i ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %.sroa.0.0.copyload.i7.i = load i32, ptr %i.x, align 8, !alias.scope !182, !noalias !183 ; 4 uses
  %.sroa.4.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.w, i64 100
  %.sroa.4.0.copyload.i9.i = load i32, ptr %.sroa.4.0..sroa_idx.i8.i, align 4, !alias.scope !182, !noalias !183 ; 3 uses
  %.sroa.5.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %.sroa.5.0.copyload.i11.i = load i32, ptr %.sroa.5.0..sroa_idx.i10.i, align 8, !alias.scope !182, !noalias !183 ; 2 uses
  %.not.i.i.i.i17.i = icmp eq i32 %.sroa.01.0.copyload.i12.i, 0
  %.not1.i.i.i.i21.not.i = icmp eq i32 %.sroa.0.0.copyload.i7.i, 0 ; 2 uses
  br i1 %.not.i.i.i.i17.i, label %.split45.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph65.i
  br i1 %.not1.i.i.i.i21.not.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i, label %bb.o

.split45.i:                                       ; preds = %.lr.ph65.i
  br i1 %.not1.i.i.i.i21.not.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i

bb.o:                                             ; preds = %bb.n
  %i.y = icmp eq i32 %.sroa.01.0.copyload.i12.i, %.sroa.0.0.copyload.i7.i
  br i1 %i.y, label %.split44.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.i

.split44.i:                                       ; preds = %bb.o
  %i.z = icmp eq i32 %.sroa.42.0.copyload.i14.i, %.sroa.4.0.copyload.i9.i
  %i.aa = icmp ult i32 %.sroa.42.0.copyload.i14.i, %.sroa.4.0.copyload.i9.i
  %i.ab = icmp ult i32 %.sroa.53.0.copyload.i16.i, %.sroa.5.0.copyload.i11.i
  %spec.select.i20.i = select i1 %i.z, i1 %i.ab, i1 %i.aa
  br i1 %spec.select.i20.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.i: ; preds = %bb.o
  %i.ac = icmp slt i32 %.sroa.01.0.copyload.i12.i, %.sroa.0.0.copyload.i7.i
  br i1 %i.ac, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i: ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.i, %.split44.i, %.split45.i, %bb.n
  %i.ad = add nuw nsw i64 %.sroa.01.0.i64.i, 1    ; 2 uses
  %exitcond75.not.i = icmp eq i64 %i.ad, %i.m
  br i1 %exitcond75.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph65.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i, %bb.q
  %.sroa.53.0.copyload.i32.i = phi i32 [ %.sroa.5.0.copyload.i27.i, %bb.q ], [ %.sroa.5.0.copyload.i.i, %.preheader.i ]
  %.sroa.42.0.copyload.i30.i = phi i32 [ %.sroa.4.0.copyload.i25.i, %bb.q ], [ %.sroa.4.0.copyload.i.i, %.preheader.i ] ; 2 uses
  %.sroa.01.0.copyload.i28.i = phi i32 [ %.sroa.0.0.copyload.i23.i, %bb.q ], [ %.sroa.0.0.copyload.i.i, %.preheader.i ] ; 2 uses
  %.sroa.01.1.i58.i = phi i64 [ %i.al, %bb.q ], [ 2, %.preheader.i ] ; 5 uses
  %i.ae = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.01.1.i58.i ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %.sroa.0.0.copyload.i23.i = load i32, ptr %i.af, align 8, !alias.scope !184, !noalias !185 ; 4 uses
  %.sroa.4.0..sroa_idx.i24.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 100
  %.sroa.4.0.copyload.i25.i = load i32, ptr %.sroa.4.0..sroa_idx.i24.i, align 4, !alias.scope !184, !noalias !185 ; 3 uses
  %.sroa.5.0..sroa_idx.i26.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %.sroa.5.0.copyload.i27.i = load i32, ptr %.sroa.5.0..sroa_idx.i26.i, align 8, !alias.scope !184, !noalias !185 ; 2 uses
  %.not2.i.i.i.i34.i = icmp eq i32 %.sroa.0.0.copyload.i23.i, 0
  br i1 %.not2.i.i.i.i34.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.preheader.i
  %i.ag = icmp eq i32 %.sroa.01.0.copyload.i28.i, %.sroa.0.0.copyload.i23.i
  br i1 %i.ag, label %.split47.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit38.i

.split47.i:                                       ; preds = %bb.p
  %i.ah = icmp eq i32 %.sroa.42.0.copyload.i30.i, %.sroa.4.0.copyload.i25.i
  %i.ai = icmp ult i32 %.sroa.42.0.copyload.i30.i, %.sroa.4.0.copyload.i25.i
  %i.aj = icmp ult i32 %.sroa.53.0.copyload.i32.i, %.sroa.5.0.copyload.i27.i
  %spec.select.i36.i = select i1 %i.ah, i1 %i.aj, i1 %i.ai
  br i1 %spec.select.i36.i, label %bb.q, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit38.i: ; preds = %bb.p
  %i.ak = icmp slt i32 %.sroa.01.0.copyload.i28.i, %.sroa.0.0.copyload.i23.i
  br i1 %i.ak, label %bb.q, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i

bb.q:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit38.i, %.split47.i
  %i.al = add nuw nsw i64 %.sroa.01.1.i58.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.al, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.q, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit38.i, %.split47.i, %.lr.ph.preheader.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.i, %.split44.i, %.split45.i, %.critedge.preheader.i, %.preheader.i
  %.sroa.3.0.i.i = phi i1 [ false, %.critedge.preheader.i ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ true, %.preheader.i ], [ false, %.split45.i ], [ false, %.split44.i ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.i ], [ true, %.lr.ph.preheader.i ], [ true, %.split47.i ], [ true, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit38.i ], [ true, %bb.q ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.critedge.preheader.i ], [ %i.m, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ 2, %.preheader.i ], [ %.sroa.01.0.i64.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.i ], [ %.sroa.01.0.i64.i, %.split44.i ], [ %.sroa.01.0.i64.i, %.split45.i ], [ %i.m, %bb.q ], [ %.sroa.01.1.i58.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit38.i ], [ %.sroa.01.1.i58.i, %.split47.i ], [ %.sroa.01.1.i58.i, %.lr.ph.preheader.i ] ; 7 uses
  %i.am = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.am)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.r

bb.r:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.u, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i

bb.s:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 42700796466920259) %i.m, i64 %.sroa.01.0)
  %i.an = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.i
  %..i39.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 42700796466920259) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i39.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.ao = shl nuw nsw i64 %..i39.i, 1
  %i.ap = or disjoint i64 %i.ao, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.u, %bb.r, %bb.j
  %.sroa.0.0.i54.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.r ], [ %.sroa.0.0.i.i, %bb.u ], [ %.sroa.0.0.i.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i ]
  %i.aq = shl nuw nsw i64 %.sroa.0.0.i54.i, 1
  %i.ar = or disjoint i64 %i.aq, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.r
  %i.as = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.u
  %i.at = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.0.0.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.ay, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.au = xor i64 %.sroa.0.017.i.i.i, -1
  %i.av = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.aw = getelementptr [216 x i8], ptr %i.at, i64 %i.au
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw, i64 noundef 27)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.v, !noalias !186

bb.v:                                             ; preds = %.lr.ph.i.i.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !noalias !186
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ay = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ay, %i.as
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.t, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ar, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i ], [ %i.ap, %bb.t ], [ %i.an, %bb.s ] ; 2 uses
  %i.az = lshr i64 %.sroa.023.0, 1
  %i.ba = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bb = sub nsw i64 %factor, %i.az
  %i.bc = add nuw nsw i64 %i.ba, %factor
  %i.bd = mul i64 %i.bb, %.sroa.0.0
  %i.be = mul i64 %i.bc, %.sroa.0.0
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bf, i1 false)
  %i.bh = trunc nuw nsw i64 %i.bg to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit
  %.sroa.02.136 = phi i64 [ %i.bi, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bi = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bk, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.w

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bm, align 1
  br i1 %i.k, label %bb.ad, label %bb.ae

bb.w:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bi
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !5 ; 3 uses
  %i.bp = lshr i64 %i.bo, 1                       ; 5 uses
  %i.bq = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.br = add nuw i64 %i.bp, %i.bq                ; 5 uses
  %i.bs = sub i64 %.sroa.09.0, %i.br
  %i.bt = getelementptr inbounds nuw [216 x i8], ptr %0, i64 %i.bs ; 3 uses
  %i.bu = icmp samesign ugt i64 %i.br, %3
  %i.bv = trunc i64 %.sroa.023.135 to i1
  %i.bw = or i64 %i.bo, %.sroa.023.135
  %i.bx = trunc i64 %i.bw to i1
  %or.cond3.i = or i1 %i.bu, %i.bx
  br i1 %or.cond3.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.by = trunc i64 %i.bo to i1
  br i1 %i.by, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.bz = shl nuw nsw i64 %i.br, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit

bb.z:                                             ; preds = %bb.aa, %bb.x
  br i1 %i.bv, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.ca = or i64 %i.bp, 1
  %i.cb = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.ca, i1 true)
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 1
  %i.ce = xor i32 %i.cd, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 42700796466920259) %i.bp, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.ce, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.z

bb.ab:                                            ; preds = %bb.z
  %i.cf = getelementptr inbounds nuw [216 x i8], ptr %i.bt, i64 %i.bp
  %i.cg = or i64 %i.bq, 1
  %i.ch = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 1
  %i.ck = xor i32 %i.cj, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.cf, i64 noundef range(i64 0, 42700796466920259) %i.bq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3B_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4N_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 42700796466920259) %i.br, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i64 noundef %i.bp, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cl = shl nuw nsw i64 %i.br, 1
  %i.cm = or disjoint i64 %i.cl, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.y, %bb.ac
  %.sroa.0.0.i = phi i64 [ %i.cm, %bb.ac ], [ %i.bz, %bb.y ] ; 2 uses
  %i.cn = icmp ugt i64 %i.bi, 1
  br i1 %i.cn, label %.lr.ph, label %._crit_edge

bb.ad:                                            ; preds = %._crit_edge
  %i.co = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cp = lshr i64 %.sroa.018.0, 1
  %i.cq = add nuw i64 %i.cp, %.sroa.09.0
  br label %bb.f

bb.ae:                                            ; preds = %._crit_edge
  %i.cr = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cr, 0
  br i1 %.not30, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cs = or i64 %1, 1
  %i.ct = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 42700796466920259) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %bb.ag
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3A_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4M_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 42700796466920259) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.ad, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ad ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cq, %bb.ad ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.co, %bb.ad ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit
  %.sroa.021.0 = phi i8 [ %i.bh, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 12 uses
  %i.n = getelementptr inbounds nuw [216 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit.i, %bb.h
  br i1 %4, label %bb.t, label %bb.s

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 312
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.p, align 8, !alias.scope !214, !noalias !215 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 316
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !alias.scope !214, !noalias !215 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 320
  %.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !214, !noalias !215 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.q, align 8, !alias.scope !216, !noalias !217 ; 3 uses
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 100
  %.sroa.42.0.copyload.i.i = load i32, ptr %.sroa.42.0..sroa_idx.i.i, align 4, !alias.scope !216, !noalias !217 ; 2 uses
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %.sroa.53.0.copyload.i.i = load i32, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !216, !noalias !217
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.01.0.copyload.i.i, 0
  %.not1.i.i.i.i.not.i = icmp eq i32 %.sroa.0.0.copyload.i.i, 0 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.split.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not1.i.i.i.i.not.i, label %.critedge.preheader.i, label %bb.m

.split.i:                                         ; preds = %bb.k
  br i1 %.not1.i.i.i.i.not.i, label %.critedge.preheader.i, label %.preheader.i

bb.m:                                             ; preds = %bb.l
  %i.r = icmp eq i32 %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  br i1 %i.r, label %.split42.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit.i

.split42.i:                                       ; preds = %bb.m
  %i.s = icmp eq i32 %.sroa.42.0.copyload.i.i, %.sroa.4.0.copyload.i.i
  %i.t = icmp ult i32 %.sroa.42.0.copyload.i.i, %.sroa.4.0.copyload.i.i
  %i.u = icmp ult i32 %.sroa.53.0.copyload.i.i, %.sroa.5.0.copyload.i.i
  %spec.select.i.i = select i1 %i.s, i1 %i.u, i1 %i.t
  br i1 %spec.select.i.i, label %.preheader.i, label %.critedge.preheader.i

.preheader.i:                                     ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit.i, %.split42.i, %.split.i
  %.not70.i = icmp eq i64 %i.m, 2
  br i1 %.not70.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.m
  %i.v = icmp slt i32 %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  br i1 %i.v, label %.preheader.i, label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit.i, %.split42.i, %.split.i, %bb.l
  %.not71.i = icmp eq i64 %i.m, 2
  br i1 %.not71.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph65.i

.lr.ph65.i:                                       ; preds = %.critedge.preheader.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.thread.i
  %.sroa.53.0.copyload.i16.i = phi i32 [ %.sroa.5.0.copyload.i11.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ %.sroa.5.0.copyload.i.i, %.critedge.preheader.i ]
  %.sroa.42.0.copyload.i14.i = phi i32 [ %.sroa.4.0.copyload.i9.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ %.sroa.4.0.copyload.i.i, %.critedge.preheader.i ] ; 2 uses
  %.sroa.01.0.copyload.i12.i = phi i32 [ %.sroa.0.0.copyload.i7.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ %.sroa.0.0.copyload.i.i, %.critedge.preheader.i ] ; 3 uses
  %.sroa.01.0.i64.i = phi i64 [ %i.ad, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ 2, %.critedge.preheader.i ] ; 5 uses
  %i.w = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.01.0.i64.i ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %.sroa.0.0.copyload.i7.i = load i32, ptr %i.x, align 8, !alias.scope !218, !noalias !219 ; 4 uses
  %.sroa.4.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.w, i64 100
  %.sroa.4.0.copyload.i9.i = load i32, ptr %.sroa.4.0..sroa_idx.i8.i, align 4, !alias.scope !218, !noalias !219 ; 3 uses
  %.sroa.5.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %.sroa.5.0.copyload.i11.i = load i32, ptr %.sroa.5.0..sroa_idx.i10.i, align 8, !alias.scope !218, !noalias !219 ; 2 uses
  %.not.i.i.i.i17.i = icmp eq i32 %.sroa.01.0.copyload.i12.i, 0
  %.not1.i.i.i.i21.not.i = icmp eq i32 %.sroa.0.0.copyload.i7.i, 0 ; 2 uses
  br i1 %.not.i.i.i.i17.i, label %.split45.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph65.i
  br i1 %.not1.i.i.i.i21.not.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.thread.i, label %bb.o

.split45.i:                                       ; preds = %.lr.ph65.i
  br i1 %.not1.i.i.i.i21.not.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.thread.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit.i

bb.o:                                             ; preds = %bb.n
  %i.y = icmp eq i32 %.sroa.01.0.copyload.i12.i, %.sroa.0.0.copyload.i7.i
  br i1 %i.y, label %.split44.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.i

.split44.i:                                       ; preds = %bb.o
  %i.z = icmp eq i32 %.sroa.42.0.copyload.i14.i, %.sroa.4.0.copyload.i9.i
  %i.aa = icmp ult i32 %.sroa.42.0.copyload.i14.i, %.sroa.4.0.copyload.i9.i
  %i.ab = icmp ult i32 %.sroa.53.0.copyload.i16.i, %.sroa.5.0.copyload.i11.i
  %spec.select.i20.i = select i1 %i.z, i1 %i.ab, i1 %i.aa
  br i1 %spec.select.i20.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.thread.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.i: ; preds = %bb.o
  %i.ac = icmp slt i32 %.sroa.01.0.copyload.i12.i, %.sroa.0.0.copyload.i7.i
  br i1 %i.ac, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.thread.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.thread.i: ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.i, %.split44.i, %.split45.i, %bb.n
  %i.ad = add nuw nsw i64 %.sroa.01.0.i64.i, 1    ; 2 uses
  %exitcond75.not.i = icmp eq i64 %i.ad, %i.m
  br i1 %exitcond75.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph65.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i, %bb.q
  %.sroa.53.0.copyload.i32.i = phi i32 [ %.sroa.5.0.copyload.i27.i, %bb.q ], [ %.sroa.5.0.copyload.i.i, %.preheader.i ]
  %.sroa.42.0.copyload.i30.i = phi i32 [ %.sroa.4.0.copyload.i25.i, %bb.q ], [ %.sroa.4.0.copyload.i.i, %.preheader.i ] ; 2 uses
  %.sroa.01.0.copyload.i28.i = phi i32 [ %.sroa.0.0.copyload.i23.i, %bb.q ], [ %.sroa.0.0.copyload.i.i, %.preheader.i ] ; 2 uses
  %.sroa.01.1.i58.i = phi i64 [ %i.al, %bb.q ], [ 2, %.preheader.i ] ; 5 uses
  %i.ae = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.01.1.i58.i ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %.sroa.0.0.copyload.i23.i = load i32, ptr %i.af, align 8, !alias.scope !220, !noalias !221 ; 4 uses
  %.sroa.4.0..sroa_idx.i24.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 100
  %.sroa.4.0.copyload.i25.i = load i32, ptr %.sroa.4.0..sroa_idx.i24.i, align 4, !alias.scope !220, !noalias !221 ; 3 uses
  %.sroa.5.0..sroa_idx.i26.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %.sroa.5.0.copyload.i27.i = load i32, ptr %.sroa.5.0..sroa_idx.i26.i, align 8, !alias.scope !220, !noalias !221 ; 2 uses
  %.not2.i.i.i.i34.i = icmp eq i32 %.sroa.0.0.copyload.i23.i, 0
  br i1 %.not2.i.i.i.i34.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.preheader.i
  %i.ag = icmp eq i32 %.sroa.01.0.copyload.i28.i, %.sroa.0.0.copyload.i23.i
  br i1 %i.ag, label %.split47.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit38.i

.split47.i:                                       ; preds = %bb.p
  %i.ah = icmp eq i32 %.sroa.42.0.copyload.i30.i, %.sroa.4.0.copyload.i25.i
  %i.ai = icmp ult i32 %.sroa.42.0.copyload.i30.i, %.sroa.4.0.copyload.i25.i
  %i.aj = icmp ult i32 %.sroa.53.0.copyload.i32.i, %.sroa.5.0.copyload.i27.i
  %spec.select.i36.i = select i1 %i.ah, i1 %i.aj, i1 %i.ai
  br i1 %spec.select.i36.i, label %bb.q, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit38.i: ; preds = %bb.p
  %i.ak = icmp slt i32 %.sroa.01.0.copyload.i28.i, %.sroa.0.0.copyload.i23.i
  br i1 %i.ak, label %bb.q, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit.i

bb.q:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit38.i, %.split47.i
  %i.al = add nuw nsw i64 %.sroa.01.1.i58.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.al, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.q, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit38.i, %.split47.i, %.lr.ph.preheader.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.thread.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.i, %.split44.i, %.split45.i, %.critedge.preheader.i, %.preheader.i
  %.sroa.3.0.i.i = phi i1 [ false, %.critedge.preheader.i ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ true, %.preheader.i ], [ false, %.split45.i ], [ false, %.split44.i ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.i ], [ true, %.lr.ph.preheader.i ], [ true, %.split47.i ], [ true, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit38.i ], [ true, %bb.q ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.critedge.preheader.i ], [ %i.m, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ 2, %.preheader.i ], [ %.sroa.01.0.i64.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.i ], [ %.sroa.01.0.i64.i, %.split44.i ], [ %.sroa.01.0.i64.i, %.split45.i ], [ %i.m, %bb.q ], [ %.sroa.01.1.i58.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit38.i ], [ %.sroa.01.1.i58.i, %.split47.i ], [ %.sroa.01.1.i58.i, %.lr.ph.preheader.i ] ; 7 uses
  %i.am = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.am)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.r

bb.r:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.u, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i

bb.s:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 42700796466920259) %i.m, i64 %.sroa.01.0)
  %i.an = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.i
  %..i39.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 42700796466920259) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i39.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.ao = shl nuw nsw i64 %..i39.i, 1
  %i.ap = or disjoint i64 %i.ao, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.u, %bb.r, %bb.j
  %.sroa.0.0.i54.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.r ], [ %.sroa.0.0.i.i, %bb.u ], [ %.sroa.0.0.i.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i ]
  %i.aq = shl nuw nsw i64 %.sroa.0.0.i54.i, 1
  %i.ar = or disjoint i64 %i.aq, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.r
  %i.as = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.u
  %i.at = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.0.0.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.ay, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.au = xor i64 %.sroa.0.017.i.i.i, -1
  %i.av = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.aw = getelementptr [216 x i8], ptr %i.at, i64 %i.au
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw, i64 noundef 27)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.v, !noalias !222

bb.v:                                             ; preds = %.lr.ph.i.i.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !noalias !222
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ay = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ay, %i.as
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.t, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ar, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i ], [ %i.ap, %bb.t ], [ %i.an, %bb.s ] ; 2 uses
  %i.az = lshr i64 %.sroa.023.0, 1
  %i.ba = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bb = sub nsw i64 %factor, %i.az
  %i.bc = add nuw nsw i64 %i.ba, %factor
  %i.bd = mul i64 %i.bb, %.sroa.0.0
  %i.be = mul i64 %i.bc, %.sroa.0.0
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bf, i1 false)
  %i.bh = trunc nuw nsw i64 %i.bg to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit
  %.sroa.02.136 = phi i64 [ %i.bi, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bi = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bk, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.w

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bm, align 1
  br i1 %i.k, label %bb.ad, label %bb.ae

bb.w:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bi
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !5 ; 3 uses
  %i.bp = lshr i64 %i.bo, 1                       ; 5 uses
  %i.bq = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.br = add nuw i64 %i.bp, %i.bq                ; 5 uses
  %i.bs = sub i64 %.sroa.09.0, %i.br
  %i.bt = getelementptr inbounds nuw [216 x i8], ptr %0, i64 %i.bs ; 3 uses
  %i.bu = icmp samesign ugt i64 %i.br, %3
  %i.bv = trunc i64 %.sroa.023.135 to i1
  %i.bw = or i64 %i.bo, %.sroa.023.135
  %i.bx = trunc i64 %i.bw to i1
  %or.cond3.i = or i1 %i.bu, %i.bx
  br i1 %or.cond3.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.by = trunc i64 %i.bo to i1
  br i1 %i.by, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.bz = shl nuw nsw i64 %i.br, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit

bb.z:                                             ; preds = %bb.aa, %bb.x
  br i1 %i.bv, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.ca = or i64 %i.bp, 1
  %i.cb = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.ca, i1 true)
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 1
  %i.ce = xor i32 %i.cd, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 42700796466920259) %i.bp, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.ce, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.z

bb.ab:                                            ; preds = %bb.z
  %i.cf = getelementptr inbounds nuw [216 x i8], ptr %i.bt, i64 %i.bp
  %i.cg = or i64 %i.bq, 1
  %i.ch = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 1
  %i.ck = xor i32 %i.cj, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.cf, i64 noundef range(i64 0, 42700796466920259) %i.bq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3B_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4N_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 42700796466920259) %i.br, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i64 noundef %i.bp, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cl = shl nuw nsw i64 %i.br, 1
  %i.cm = or disjoint i64 %i.cl, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.y, %bb.ac
  %.sroa.0.0.i = phi i64 [ %i.cm, %bb.ac ], [ %i.bz, %bb.y ] ; 2 uses
  %i.cn = icmp ugt i64 %i.bi, 1
  br i1 %i.cn, label %.lr.ph, label %._crit_edge

bb.ad:                                            ; preds = %._crit_edge
  %i.co = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cp = lshr i64 %.sroa.018.0, 1
  %i.cq = add nuw i64 %i.cp, %.sroa.09.0
  br label %bb.f

bb.ae:                                            ; preds = %._crit_edge
  %i.cr = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cr, 0
  br i1 %.not30, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cs = or i64 %1, 1
  %i.ct = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 42700796466920259) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %bb.ag
end_hunk_0
