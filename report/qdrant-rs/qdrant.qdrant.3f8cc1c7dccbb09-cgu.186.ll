Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.186?download=true
inline.NumInlined: 203
inline.NumDeleted: 97
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3A_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4O_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant:bb.a
.split44.i:                                       ; preds = %bb.o
  %i.ab = icmp eq i32 %.sroa.42.0.copyload.i14.i, %.sroa.4.0.copyload.i9.i
  %i.ac = icmp ult i32 %.sroa.42.0.copyload.i14.i, %.sroa.4.0.copyload.i9.i
  %i.ad = icmp ult i32 %.sroa.53.0.copyload.i16.i, %.sroa.5.0.copyload.i11.i
  %spec.select.i20.i = select i1 %i.ab, i1 %i.ad, i1 %i.ac
  br i1 %spec.select.i20.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4V_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit22.thread.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit22.i: ; preds = %bb.o
  %i.ae = icmp slt i32 %.sroa.01.0.copyload.i12.i, %.sroa.0.0.copyload.i7.i
  br i1 %i.ae, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4V_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit22.thread.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit22.thread.i: ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit22.i, %.split44.i, %.split45.i, %bb.n
  %i.af = add nuw nsw i64 %.sroa.01.0.i64.i, 1    ; 2 uses
  %exitcond75.not.i = icmp eq i64 %i.af, %i.m
  br i1 %exitcond75.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4V_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph65.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i, %bb.q
  %.sroa.53.0.copyload.i32.i = phi i32 [ %.sroa.5.0.copyload.i27.i, %bb.q ], [ %.sroa.5.0.copyload.i.i, %.preheader.i ]
  %.sroa.42.0.copyload.i30.i = phi i32 [ %.sroa.4.0.copyload.i25.i, %bb.q ], [ %.sroa.4.0.copyload.i.i, %.preheader.i ] ; 2 uses
  %.sroa.01.0.copyload.i28.i = phi i32 [ %.sroa.0.0.copyload.i23.i, %bb.q ], [ %.sroa.0.0.copyload.i.i, %.preheader.i ] ; 2 uses
  %.sroa.01.1.i58.i = phi i64 [ %i.ap, %bb.q ], [ 2, %.preheader.i ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.01.1.i58.i ; 3 uses
  %i.ah = add nsw i64 %.sroa.01.1.i58.i, -1
  %i.ai = icmp samesign ult i64 %i.ah, %i.m
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %.sroa.0.0.copyload.i23.i = load i32, ptr %i.aj, align 8, !alias.scope !40, !noalias !41 ; 4 uses
  %.sroa.4.0..sroa_idx.i24.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 100
  %.sroa.4.0.copyload.i25.i = load i32, ptr %.sroa.4.0..sroa_idx.i24.i, align 4, !alias.scope !40, !noalias !41 ; 3 uses
  %.sroa.5.0..sroa_idx.i26.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  %.sroa.5.0.copyload.i27.i = load i32, ptr %.sroa.5.0..sroa_idx.i26.i, align 8, !alias.scope !40, !noalias !41 ; 2 uses
  %.not2.i.i.i.i34.i = icmp eq i32 %.sroa.0.0.copyload.i23.i, 0
  br i1 %.not2.i.i.i.i34.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4V_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.preheader.i
  %i.ak = icmp eq i32 %.sroa.01.0.copyload.i28.i, %.sroa.0.0.copyload.i23.i
  br i1 %i.ak, label %.split47.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit38.i

.split47.i:                                       ; preds = %bb.p
  %i.al = icmp eq i32 %.sroa.42.0.copyload.i30.i, %.sroa.4.0.copyload.i25.i
  %i.am = icmp ult i32 %.sroa.42.0.copyload.i30.i, %.sroa.4.0.copyload.i25.i
  %i.an = icmp ult i32 %.sroa.53.0.copyload.i32.i, %.sroa.5.0.copyload.i27.i
  %spec.select.i36.i = select i1 %i.al, i1 %i.an, i1 %i.am
  br i1 %spec.select.i36.i, label %bb.q, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4V_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit38.i: ; preds = %bb.p
  %i.ao = icmp slt i32 %.sroa.01.0.copyload.i28.i, %.sroa.0.0.copyload.i23.i
  br i1 %i.ao, label %bb.q, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4V_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit.i

bb.q:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit38.i, %.split47.i
  %i.ap = add nuw nsw i64 %.sroa.01.1.i58.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4V_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4V_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.q, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit38.i, %.split47.i, %.lr.ph.preheader.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit22.thread.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit22.i, %.split44.i, %.split45.i, %.critedge.preheader.i, %.preheader.i
  %.sroa.3.0.i.i = phi i1 [ false, %.critedge.preheader.i ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ true, %.preheader.i ], [ false, %.split45.i ], [ false, %.split44.i ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit22.i ], [ true, %.lr.ph.preheader.i ], [ true, %.split47.i ], [ true, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit38.i ], [ true, %bb.q ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.critedge.preheader.i ], [ %i.m, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ 2, %.preheader.i ], [ %.sroa.01.0.i64.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit22.i ], [ %.sroa.01.0.i64.i, %.split44.i ], [ %.sroa.01.0.i64.i, %.split45.i ], [ %i.m, %bb.q ], [ %.sroa.01.1.i58.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB45_15ShardReplicaSet19local_optimizations0s_00E0Csl8OoimOLbh_6qdrant.exit38.i ], [ %.sroa.01.1.i58.i, %.split47.i ], [ %.sroa.01.1.i58.i, %.lr.ph.preheader.i ] ; 7 uses
  %i.aq = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aq)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.r

bb.r:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4V_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.u, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i

bb.s:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 42700796466920259) %i.m, i64 %.sroa.01.0)
  %i.ar = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.i
  %..i39.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 42700796466920259) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4Y_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i39.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.as = shl nuw nsw i64 %..i39.i, 1
  %i.at = or disjoint i64 %i.as, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.u, %bb.r, %bb.j
  %.sroa.0.0.i54.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.r ], [ %.sroa.0.0.i.i, %bb.u ], [ %.sroa.0.0.i.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i ]
  %i.au = shl nuw nsw i64 %.sroa.0.0.i54.i, 1
  %i.av = or disjoint i64 %i.au, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.r
  %i.aw = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.u
  %i.ax = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.0.0.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bc, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ay = xor i64 %.sroa.0.017.i.i.i, -1
  %i.az = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.ba = getelementptr [216 x i8], ptr %i.ax, i64 %i.ay
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.az, ptr noundef nonnull %i.ba, i64 noundef 27)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.v, !noalias !42

bb.v:                                             ; preds = %.lr.ph.i.i.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !noalias !42
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bc = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bc, %i.aw
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.t, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.av, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i ], [ %i.at, %bb.t ], [ %i.ar, %bb.s ] ; 2 uses
  %i.bd = lshr i64 %.sroa.023.0, 1
  %i.be = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bf = sub nsw i64 %factor, %i.bd
  %i.bg = add nuw nsw i64 %i.be, %factor
  %i.bh = mul i64 %i.bf, %.sroa.0.0
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = xor i64 %i.bi, %i.bh
  %i.bk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bj, i1 false)
  %i.bl = trunc nuw nsw i64 %i.bk to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4Z_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit
  %.sroa.02.136 = phi i64 [ %i.bm, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4Z_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4Z_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bm = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bo, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.w

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4Z_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4Z_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4Z_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bq, align 1
  br i1 %i.k, label %bb.ad, label %bb.ae

bb.w:                                             ; preds = %.lr.ph
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bm
  %i.bs = load i64, ptr %i.br, align 8, !noundef !5 ; 3 uses
  %i.bt = lshr i64 %i.bs, 1                       ; 5 uses
  %i.bu = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bv = add nuw i64 %i.bt, %i.bu                ; 5 uses
  %i.bw = sub i64 %.sroa.09.0, %i.bv
  %i.bx = getelementptr inbounds nuw [216 x i8], ptr %0, i64 %i.bw ; 3 uses
  %i.by = icmp samesign ugt i64 %i.bv, %3
  %i.bz = trunc i64 %.sroa.023.135 to i1
  %i.ca = or i64 %i.bs, %.sroa.023.135
  %i.cb = trunc i64 %i.ca to i1
  %or.cond3.i = or i1 %i.by, %i.cb
  br i1 %or.cond3.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cc = trunc i64 %i.bs to i1
  br i1 %i.cc, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.cd = shl nuw nsw i64 %i.bv, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4Z_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit

bb.z:                                             ; preds = %bb.aa, %bb.x
  br i1 %i.bz, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.ce = or i64 %i.bt, 1
  %i.cf = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 1
  %i.ci = xor i32 %i.ch, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4Y_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.bx, i64 noundef range(i64 0, 42700796466920259) %i.bt, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.z

bb.ab:                                            ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw [216 x i8], ptr %i.bx, i64 %i.bt
  %i.ck = or i64 %i.bu, 1
  %i.cl = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.ck, i1 true)
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 1
  %i.co = xor i32 %i.cn, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4Y_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.cj, i64 noundef range(i64 0, 42700796466920259) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3B_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4P_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.bx, i64 noundef range(i64 0, 42700796466920259) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i64 noundef %i.bt, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cp = shl nuw nsw i64 %i.bv, 1
  %i.cq = or disjoint i64 %i.cp, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4Z_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4Z_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.y, %bb.ac
  %.sroa.0.0.i = phi i64 [ %i.cq, %bb.ac ], [ %i.cd, %bb.y ] ; 2 uses
  %i.cr = icmp ugt i64 %i.bm, 1
  br i1 %i.cr, label %.lr.ph, label %._crit_edge

bb.ad:                                            ; preds = %._crit_edge
  %i.cs = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.ct = lshr i64 %.sroa.018.0, 1
  %i.cu = add nuw i64 %i.ct, %.sroa.09.0
  br label %bb.f

bb.ae:                                            ; preds = %._crit_edge
  %i.cv = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cv, 0
  br i1 %.not30, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cw = or i64 %1, 1
  %i.cx = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.cw, i1 true)
  %i.cy = trunc nuw nsw i64 %i.cx to i32
  %i.cz = shl nuw nsw i32 %i.cy, 1
  %i.da = xor i32 %i.cz, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4Y_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 42700796466920259) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.da, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
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
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cu, %bb.ad ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cs, %bb.ad ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4W_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit
  %.sroa.021.0 = phi i8 [ %i.bl, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4W_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4W_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 14 uses
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
  %.sroa.01.0.i64.i = phi i64 [ %i.af, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ 2, %.critedge.preheader.i ] ; 6 uses
  %i.w = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.01.0.i64.i ; 3 uses
  %i.x = add nsw i64 %.sroa.01.0.i64.i, -1
  %i.y = icmp samesign ult i64 %i.x, %i.m
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %.sroa.0.0.copyload.i7.i = load i32, ptr %i.z, align 8, !alias.scope !74, !noalias !75 ; 4 uses
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
  %i.aa = icmp eq i32 %.sroa.01.0.copyload.i12.i, %.sroa.0.0.copyload.i7.i
  br i1 %i.aa, label %.split44.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.i

.split44.i:                                       ; preds = %bb.o
  %i.ab = icmp eq i32 %.sroa.42.0.copyload.i14.i, %.sroa.4.0.copyload.i9.i
  %i.ac = icmp ult i32 %.sroa.42.0.copyload.i14.i, %.sroa.4.0.copyload.i9.i
  %i.ad = icmp ult i32 %.sroa.53.0.copyload.i16.i, %.sroa.5.0.copyload.i11.i
  %spec.select.i20.i = select i1 %i.ab, i1 %i.ad, i1 %i.ac
  br i1 %spec.select.i20.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.i: ; preds = %bb.o
  %i.ae = icmp slt i32 %.sroa.01.0.copyload.i12.i, %.sroa.0.0.copyload.i7.i
  br i1 %i.ae, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i: ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.i, %.split44.i, %.split45.i, %bb.n
  %i.af = add nuw nsw i64 %.sroa.01.0.i64.i, 1    ; 2 uses
  %exitcond75.not.i = icmp eq i64 %i.af, %i.m
  br i1 %exitcond75.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph65.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i, %bb.q
  %.sroa.53.0.copyload.i32.i = phi i32 [ %.sroa.5.0.copyload.i27.i, %bb.q ], [ %.sroa.5.0.copyload.i.i, %.preheader.i ]
  %.sroa.42.0.copyload.i30.i = phi i32 [ %.sroa.4.0.copyload.i25.i, %bb.q ], [ %.sroa.4.0.copyload.i.i, %.preheader.i ] ; 2 uses
  %.sroa.01.0.copyload.i28.i = phi i32 [ %.sroa.0.0.copyload.i23.i, %bb.q ], [ %.sroa.0.0.copyload.i.i, %.preheader.i ] ; 2 uses
  %.sroa.01.1.i58.i = phi i64 [ %i.ap, %bb.q ], [ 2, %.preheader.i ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.01.1.i58.i ; 3 uses
  %i.ah = add nsw i64 %.sroa.01.1.i58.i, -1
  %i.ai = icmp samesign ult i64 %i.ah, %i.m
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %.sroa.0.0.copyload.i23.i = load i32, ptr %i.aj, align 8, !alias.scope !76, !noalias !77 ; 4 uses
  %.sroa.4.0..sroa_idx.i24.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 100
  %.sroa.4.0.copyload.i25.i = load i32, ptr %.sroa.4.0..sroa_idx.i24.i, align 4, !alias.scope !76, !noalias !77 ; 3 uses
  %.sroa.5.0..sroa_idx.i26.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  %.sroa.5.0.copyload.i27.i = load i32, ptr %.sroa.5.0..sroa_idx.i26.i, align 8, !alias.scope !76, !noalias !77 ; 2 uses
  %.not2.i.i.i.i34.i = icmp eq i32 %.sroa.0.0.copyload.i23.i, 0
  br i1 %.not2.i.i.i.i34.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.preheader.i
  %i.ak = icmp eq i32 %.sroa.01.0.copyload.i28.i, %.sroa.0.0.copyload.i23.i
  br i1 %i.ak, label %.split47.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit38.i

.split47.i:                                       ; preds = %bb.p
  %i.al = icmp eq i32 %.sroa.42.0.copyload.i30.i, %.sroa.4.0.copyload.i25.i
  %i.am = icmp ult i32 %.sroa.42.0.copyload.i30.i, %.sroa.4.0.copyload.i25.i
  %i.an = icmp ult i32 %.sroa.53.0.copyload.i32.i, %.sroa.5.0.copyload.i27.i
  %spec.select.i36.i = select i1 %i.al, i1 %i.an, i1 %i.am
  br i1 %spec.select.i36.i, label %bb.q, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit38.i: ; preds = %bb.p
  %i.ao = icmp slt i32 %.sroa.01.0.copyload.i28.i, %.sroa.0.0.copyload.i23.i
  br i1 %i.ao, label %bb.q, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i

bb.q:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit38.i, %.split47.i
  %i.ap = add nuw nsw i64 %.sroa.01.1.i58.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.q, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit38.i, %.split47.i, %.lr.ph.preheader.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.i, %.split44.i, %.split45.i, %.critedge.preheader.i, %.preheader.i
  %.sroa.3.0.i.i = phi i1 [ false, %.critedge.preheader.i ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ true, %.preheader.i ], [ false, %.split45.i ], [ false, %.split44.i ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.i ], [ true, %.lr.ph.preheader.i ], [ true, %.split47.i ], [ true, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit38.i ], [ true, %bb.q ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.critedge.preheader.i ], [ %i.m, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ 2, %.preheader.i ], [ %.sroa.01.0.i64.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.i ], [ %.sroa.01.0.i64.i, %.split44.i ], [ %.sroa.01.0.i64.i, %.split45.i ], [ %i.m, %bb.q ], [ %.sroa.01.1.i58.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit38.i ], [ %.sroa.01.1.i58.i, %.split47.i ], [ %.sroa.01.1.i58.i, %.lr.ph.preheader.i ] ; 7 uses
  %i.aq = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aq)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.r

bb.r:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.u, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i

bb.s:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 42700796466920259) %i.m, i64 %.sroa.01.0)
  %i.ar = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4W_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.i
  %..i39.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 42700796466920259) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Y_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i39.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.as = shl nuw nsw i64 %..i39.i, 1
  %i.at = or disjoint i64 %i.as, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4W_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.u, %bb.r, %bb.j
  %.sroa.0.0.i54.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.r ], [ %.sroa.0.0.i.i, %bb.u ], [ %.sroa.0.0.i.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i ]
  %i.au = shl nuw nsw i64 %.sroa.0.0.i54.i, 1
  %i.av = or disjoint i64 %i.au, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4W_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.r
  %i.aw = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.u
  %i.ax = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.0.0.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bc, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ay = xor i64 %.sroa.0.017.i.i.i, -1
  %i.az = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.ba = getelementptr [216 x i8], ptr %i.ax, i64 %i.ay
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.az, ptr noundef nonnull %i.ba, i64 noundef 27)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.v, !noalias !78

bb.v:                                             ; preds = %.lr.ph.i.i.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !noalias !78
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bc = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bc, %i.aw
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4W_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.t, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.av, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i ], [ %i.at, %bb.t ], [ %i.ar, %bb.s ] ; 2 uses
  %i.bd = lshr i64 %.sroa.023.0, 1
  %i.be = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bf = sub nsw i64 %factor, %i.bd
  %i.bg = add nuw nsw i64 %i.be, %factor
  %i.bh = mul i64 %i.bf, %.sroa.0.0
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = xor i64 %i.bi, %i.bh
  %i.bk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bj, i1 false)
  %i.bl = trunc nuw nsw i64 %i.bk to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit
  %.sroa.02.136 = phi i64 [ %i.bm, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bm = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bo, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.w

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bq, align 1
  br i1 %i.k, label %bb.ad, label %bb.ae

bb.w:                                             ; preds = %.lr.ph
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bm
  %i.bs = load i64, ptr %i.br, align 8, !noundef !5 ; 3 uses
  %i.bt = lshr i64 %i.bs, 1                       ; 5 uses
  %i.bu = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bv = add nuw i64 %i.bt, %i.bu                ; 5 uses
  %i.bw = sub i64 %.sroa.09.0, %i.bv
  %i.bx = getelementptr inbounds nuw [216 x i8], ptr %0, i64 %i.bw ; 3 uses
  %i.by = icmp samesign ugt i64 %i.bv, %3
  %i.bz = trunc i64 %.sroa.023.135 to i1
  %i.ca = or i64 %i.bs, %.sroa.023.135
  %i.cb = trunc i64 %i.ca to i1
  %or.cond3.i = or i1 %i.by, %i.cb
  br i1 %or.cond3.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cc = trunc i64 %i.bs to i1
  br i1 %i.cc, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.cd = shl nuw nsw i64 %i.bv, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit

bb.z:                                             ; preds = %bb.aa, %bb.x
  br i1 %i.bz, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.ce = or i64 %i.bt, 1
  %i.cf = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 1
  %i.ci = xor i32 %i.ch, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Y_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.bx, i64 noundef range(i64 0, 42700796466920259) %i.bt, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.z

bb.ab:                                            ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw [216 x i8], ptr %i.bx, i64 %i.bt
  %i.ck = or i64 %i.bu, 1
  %i.cl = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.ck, i1 true)
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 1
  %i.co = xor i32 %i.cn, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Y_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.cj, i64 noundef range(i64 0, 42700796466920259) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3B_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4P_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.bx, i64 noundef range(i64 0, 42700796466920259) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i64 noundef %i.bt, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cp = shl nuw nsw i64 %i.bv, 1
  %i.cq = or disjoint i64 %i.cp, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.y, %bb.ac
  %.sroa.0.0.i = phi i64 [ %i.cq, %bb.ac ], [ %i.cd, %bb.y ] ; 2 uses
  %i.cr = icmp ugt i64 %i.bm, 1
  br i1 %i.cr, label %.lr.ph, label %._crit_edge

bb.ad:                                            ; preds = %._crit_edge
  %i.cs = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.ct = lshr i64 %.sroa.018.0, 1
  %i.cu = add nuw i64 %i.ct, %.sroa.09.0
  br label %bb.f

bb.ae:                                            ; preds = %._crit_edge
  %i.cv = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cv, 0
  br i1 %.not30, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cw = or i64 %1, 1
  %i.cx = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.cw, i1 true)
  %i.cy = trunc nuw nsw i64 %i.cx to i32
  %i.cz = shl nuw nsw i32 %i.cy, 1
  %i.da = xor i32 %i.cz, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Y_10Collection13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 42700796466920259) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.da, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
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
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cu, %bb.ad ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cs, %bb.ad ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4W_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit
  %.sroa.021.0 = phi i8 [ %i.bl, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4W_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4W_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 14 uses
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
  %.sroa.01.0.i64.i = phi i64 [ %i.af, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ 2, %.critedge.preheader.i ] ; 6 uses
  %i.w = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.01.0.i64.i ; 3 uses
  %i.x = add nsw i64 %.sroa.01.0.i64.i, -1
  %i.y = icmp samesign ult i64 %i.x, %i.m
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %.sroa.0.0.copyload.i7.i = load i32, ptr %i.z, align 8, !alias.scope !110, !noalias !111 ; 4 uses
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
  %i.aa = icmp eq i32 %.sroa.01.0.copyload.i12.i, %.sroa.0.0.copyload.i7.i
  br i1 %i.aa, label %.split44.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.i

.split44.i:                                       ; preds = %bb.o
  %i.ab = icmp eq i32 %.sroa.42.0.copyload.i14.i, %.sroa.4.0.copyload.i9.i
  %i.ac = icmp ult i32 %.sroa.42.0.copyload.i14.i, %.sroa.4.0.copyload.i9.i
  %i.ad = icmp ult i32 %.sroa.53.0.copyload.i16.i, %.sroa.5.0.copyload.i11.i
  %spec.select.i20.i = select i1 %i.ab, i1 %i.ad, i1 %i.ac
  br i1 %spec.select.i20.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.i: ; preds = %bb.o
  %i.ae = icmp slt i32 %.sroa.01.0.copyload.i12.i, %.sroa.0.0.copyload.i7.i
  br i1 %i.ae, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i: ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.i, %.split44.i, %.split45.i, %bb.n
  %i.af = add nuw nsw i64 %.sroa.01.0.i64.i, 1    ; 2 uses
  %exitcond75.not.i = icmp eq i64 %i.af, %i.m
  br i1 %exitcond75.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph65.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i, %bb.q
  %.sroa.53.0.copyload.i32.i = phi i32 [ %.sroa.5.0.copyload.i27.i, %bb.q ], [ %.sroa.5.0.copyload.i.i, %.preheader.i ]
  %.sroa.42.0.copyload.i30.i = phi i32 [ %.sroa.4.0.copyload.i25.i, %bb.q ], [ %.sroa.4.0.copyload.i.i, %.preheader.i ] ; 2 uses
  %.sroa.01.0.copyload.i28.i = phi i32 [ %.sroa.0.0.copyload.i23.i, %bb.q ], [ %.sroa.0.0.copyload.i.i, %.preheader.i ] ; 2 uses
  %.sroa.01.1.i58.i = phi i64 [ %i.ap, %bb.q ], [ 2, %.preheader.i ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.01.1.i58.i ; 3 uses
  %i.ah = add nsw i64 %.sroa.01.1.i58.i, -1
  %i.ai = icmp samesign ult i64 %i.ah, %i.m
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %.sroa.0.0.copyload.i23.i = load i32, ptr %i.aj, align 8, !alias.scope !112, !noalias !113 ; 4 uses
  %.sroa.4.0..sroa_idx.i24.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 100
  %.sroa.4.0.copyload.i25.i = load i32, ptr %.sroa.4.0..sroa_idx.i24.i, align 4, !alias.scope !112, !noalias !113 ; 3 uses
  %.sroa.5.0..sroa_idx.i26.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  %.sroa.5.0.copyload.i27.i = load i32, ptr %.sroa.5.0..sroa_idx.i26.i, align 8, !alias.scope !112, !noalias !113 ; 2 uses
  %.not2.i.i.i.i34.i = icmp eq i32 %.sroa.0.0.copyload.i23.i, 0
  br i1 %.not2.i.i.i.i34.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.preheader.i
  %i.ak = icmp eq i32 %.sroa.01.0.copyload.i28.i, %.sroa.0.0.copyload.i23.i
  br i1 %i.ak, label %.split47.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit38.i

.split47.i:                                       ; preds = %bb.p
  %i.al = icmp eq i32 %.sroa.42.0.copyload.i30.i, %.sroa.4.0.copyload.i25.i
  %i.am = icmp ult i32 %.sroa.42.0.copyload.i30.i, %.sroa.4.0.copyload.i25.i
  %i.an = icmp ult i32 %.sroa.53.0.copyload.i32.i, %.sroa.5.0.copyload.i27.i
  %spec.select.i36.i = select i1 %i.al, i1 %i.an, i1 %i.am
  br i1 %spec.select.i36.i, label %bb.q, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit38.i: ; preds = %bb.p
  %i.ao = icmp slt i32 %.sroa.01.0.copyload.i28.i, %.sroa.0.0.copyload.i23.i
  br i1 %i.ao, label %bb.q, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i

bb.q:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit38.i, %.split47.i
  %i.ap = add nuw nsw i64 %.sroa.01.1.i58.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.q, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit38.i, %.split47.i, %.lr.ph.preheader.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.i, %.split44.i, %.split45.i, %.critedge.preheader.i, %.preheader.i
  %.sroa.3.0.i.i = phi i1 [ false, %.critedge.preheader.i ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ true, %.preheader.i ], [ false, %.split45.i ], [ false, %.split44.i ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.i ], [ true, %.lr.ph.preheader.i ], [ true, %.split47.i ], [ true, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit38.i ], [ true, %bb.q ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.critedge.preheader.i ], [ %i.m, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ 2, %.preheader.i ], [ %.sroa.01.0.i64.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.i ], [ %.sroa.01.0.i64.i, %.split44.i ], [ %.sroa.01.0.i64.i, %.split45.i ], [ %i.m, %bb.q ], [ %.sroa.01.1.i58.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB45_10Collection13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit38.i ], [ %.sroa.01.1.i58.i, %.split47.i ], [ %.sroa.01.1.i58.i, %.lr.ph.preheader.i ] ; 7 uses
  %i.aq = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aq)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.r

bb.r:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4V_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.u, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i

bb.s:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 42700796466920259) %i.m, i64 %.sroa.01.0)
  %i.ar = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4W_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.i
  %..i39.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 42700796466920259) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Y_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i39.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.as = shl nuw nsw i64 %..i39.i, 1
  %i.at = or disjoint i64 %i.as, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4W_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.u, %bb.r, %bb.j
  %.sroa.0.0.i54.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.r ], [ %.sroa.0.0.i.i, %bb.u ], [ %.sroa.0.0.i.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i ]
  %i.au = shl nuw nsw i64 %.sroa.0.0.i54.i, 1
  %i.av = or disjoint i64 %i.au, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4W_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.r
  %i.aw = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.u
  %i.ax = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.0.0.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bc, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ay = xor i64 %.sroa.0.017.i.i.i, -1
  %i.az = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.ba = getelementptr [216 x i8], ptr %i.ax, i64 %i.ay
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.az, ptr noundef nonnull %i.ba, i64 noundef 27)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.v, !noalias !114

bb.v:                                             ; preds = %.lr.ph.i.i.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !noalias !114
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bc = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bc, %i.aw
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4W_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.t, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.av, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i ], [ %i.at, %bb.t ], [ %i.ar, %bb.s ] ; 2 uses
  %i.bd = lshr i64 %.sroa.023.0, 1
  %i.be = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bf = sub nsw i64 %factor, %i.bd
  %i.bg = add nuw nsw i64 %i.be, %factor
  %i.bh = mul i64 %i.bf, %.sroa.0.0
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = xor i64 %i.bi, %i.bh
  %i.bk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bj, i1 false)
  %i.bl = trunc nuw nsw i64 %i.bk to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit
  %.sroa.02.136 = phi i64 [ %i.bm, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bm = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bo, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.w

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bq, align 1
  br i1 %i.k, label %bb.ad, label %bb.ae

bb.w:                                             ; preds = %.lr.ph
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bm
  %i.bs = load i64, ptr %i.br, align 8, !noundef !5 ; 3 uses
  %i.bt = lshr i64 %i.bs, 1                       ; 5 uses
  %i.bu = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bv = add nuw i64 %i.bt, %i.bu                ; 5 uses
  %i.bw = sub i64 %.sroa.09.0, %i.bv
  %i.bx = getelementptr inbounds nuw [216 x i8], ptr %0, i64 %i.bw ; 3 uses
  %i.by = icmp samesign ugt i64 %i.bv, %3
  %i.bz = trunc i64 %.sroa.023.135 to i1
  %i.ca = or i64 %i.bs, %.sroa.023.135
  %i.cb = trunc i64 %i.ca to i1
  %or.cond3.i = or i1 %i.by, %i.cb
  br i1 %or.cond3.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cc = trunc i64 %i.bs to i1
  br i1 %i.cc, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.cd = shl nuw nsw i64 %i.bv, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit

bb.z:                                             ; preds = %bb.aa, %bb.x
  br i1 %i.bz, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.ce = or i64 %i.bt, 1
  %i.cf = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 1
  %i.ci = xor i32 %i.ch, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Y_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.bx, i64 noundef range(i64 0, 42700796466920259) %i.bt, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.z

bb.ab:                                            ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw [216 x i8], ptr %i.bx, i64 %i.bt
  %i.ck = or i64 %i.bu, 1
  %i.cl = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.ck, i1 true)
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 1
  %i.co = xor i32 %i.cn, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Y_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.cj, i64 noundef range(i64 0, 42700796466920259) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3B_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4P_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.bx, i64 noundef range(i64 0, 42700796466920259) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i64 noundef %i.bt, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cp = shl nuw nsw i64 %i.bv, 1
  %i.cq = or disjoint i64 %i.cp, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Z_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.y, %bb.ac
  %.sroa.0.0.i = phi i64 [ %i.cq, %bb.ac ], [ %i.cd, %bb.y ] ; 2 uses
  %i.cr = icmp ugt i64 %i.bm, 1
  br i1 %i.cr, label %.lr.ph, label %._crit_edge

bb.ad:                                            ; preds = %._crit_edge
  %i.cs = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.ct = lshr i64 %.sroa.018.0, 1
  %i.cu = add nuw i64 %i.ct, %.sroa.09.0
  br label %bb.f

bb.ae:                                            ; preds = %._crit_edge
  %i.cv = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cv, 0
  br i1 %.not30, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cw = or i64 %1, 1
  %i.cx = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.cw, i1 true)
  %i.cy = trunc nuw nsw i64 %i.cx to i32
  %i.cz = shl nuw nsw i32 %i.cy, 1
  %i.da = xor i32 %i.cz, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB4Y_10Collection13optimizations0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 42700796466920259) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.da, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
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
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cu, %bb.ad ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cs, %bb.ad ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit
  %.sroa.021.0 = phi i8 [ %i.bl, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 14 uses
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
  %.sroa.01.0.i64.i = phi i64 [ %i.af, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ 2, %.critedge.preheader.i ] ; 6 uses
  %i.w = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.01.0.i64.i ; 3 uses
  %i.x = add nsw i64 %.sroa.01.0.i64.i, -1
  %i.y = icmp samesign ult i64 %i.x, %i.m
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %.sroa.0.0.copyload.i7.i = load i32, ptr %i.z, align 8, !alias.scope !146, !noalias !147 ; 4 uses
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
  %i.aa = icmp eq i32 %.sroa.01.0.copyload.i12.i, %.sroa.0.0.copyload.i7.i
  br i1 %i.aa, label %.split44.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.i

.split44.i:                                       ; preds = %bb.o
  %i.ab = icmp eq i32 %.sroa.42.0.copyload.i14.i, %.sroa.4.0.copyload.i9.i
  %i.ac = icmp ult i32 %.sroa.42.0.copyload.i14.i, %.sroa.4.0.copyload.i9.i
  %i.ad = icmp ult i32 %.sroa.53.0.copyload.i16.i, %.sroa.5.0.copyload.i11.i
  %spec.select.i20.i = select i1 %i.ab, i1 %i.ad, i1 %i.ac
  br i1 %spec.select.i20.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.i: ; preds = %bb.o
  %i.ae = icmp slt i32 %.sroa.01.0.copyload.i12.i, %.sroa.0.0.copyload.i7.i
  br i1 %i.ae, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i: ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.i, %.split44.i, %.split45.i, %bb.n
  %i.af = add nuw nsw i64 %.sroa.01.0.i64.i, 1    ; 2 uses
  %exitcond75.not.i = icmp eq i64 %i.af, %i.m
  br i1 %exitcond75.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph65.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i, %bb.q
  %.sroa.53.0.copyload.i32.i = phi i32 [ %.sroa.5.0.copyload.i27.i, %bb.q ], [ %.sroa.5.0.copyload.i.i, %.preheader.i ]
  %.sroa.42.0.copyload.i30.i = phi i32 [ %.sroa.4.0.copyload.i25.i, %bb.q ], [ %.sroa.4.0.copyload.i.i, %.preheader.i ] ; 2 uses
  %.sroa.01.0.copyload.i28.i = phi i32 [ %.sroa.0.0.copyload.i23.i, %bb.q ], [ %.sroa.0.0.copyload.i.i, %.preheader.i ] ; 2 uses
  %.sroa.01.1.i58.i = phi i64 [ %i.ap, %bb.q ], [ 2, %.preheader.i ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.01.1.i58.i ; 3 uses
  %i.ah = add nsw i64 %.sroa.01.1.i58.i, -1
  %i.ai = icmp samesign ult i64 %i.ah, %i.m
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %.sroa.0.0.copyload.i23.i = load i32, ptr %i.aj, align 8, !alias.scope !148, !noalias !149 ; 4 uses
  %.sroa.4.0..sroa_idx.i24.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 100
  %.sroa.4.0.copyload.i25.i = load i32, ptr %.sroa.4.0..sroa_idx.i24.i, align 4, !alias.scope !148, !noalias !149 ; 3 uses
  %.sroa.5.0..sroa_idx.i26.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  %.sroa.5.0.copyload.i27.i = load i32, ptr %.sroa.5.0..sroa_idx.i26.i, align 8, !alias.scope !148, !noalias !149 ; 2 uses
  %.not2.i.i.i.i34.i = icmp eq i32 %.sroa.0.0.copyload.i23.i, 0
  br i1 %.not2.i.i.i.i34.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.preheader.i
  %i.ak = icmp eq i32 %.sroa.01.0.copyload.i28.i, %.sroa.0.0.copyload.i23.i
  br i1 %i.ak, label %.split47.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit38.i

.split47.i:                                       ; preds = %bb.p
  %i.al = icmp eq i32 %.sroa.42.0.copyload.i30.i, %.sroa.4.0.copyload.i25.i
  %i.am = icmp ult i32 %.sroa.42.0.copyload.i30.i, %.sroa.4.0.copyload.i25.i
  %i.an = icmp ult i32 %.sroa.53.0.copyload.i32.i, %.sroa.5.0.copyload.i27.i
  %spec.select.i36.i = select i1 %i.al, i1 %i.an, i1 %i.am
  br i1 %spec.select.i36.i, label %bb.q, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit38.i: ; preds = %bb.p
  %i.ao = icmp slt i32 %.sroa.01.0.copyload.i28.i, %.sroa.0.0.copyload.i23.i
  br i1 %i.ao, label %bb.q, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i

bb.q:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit38.i, %.split47.i
  %i.ap = add nuw nsw i64 %.sroa.01.1.i58.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.q, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit38.i, %.split47.i, %.lr.ph.preheader.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.i, %.split44.i, %.split45.i, %.critedge.preheader.i, %.preheader.i
  %.sroa.3.0.i.i = phi i1 [ false, %.critedge.preheader.i ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ true, %.preheader.i ], [ false, %.split45.i ], [ false, %.split44.i ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.i ], [ true, %.lr.ph.preheader.i ], [ true, %.split47.i ], [ true, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit38.i ], [ true, %bb.q ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.critedge.preheader.i ], [ %i.m, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ 2, %.preheader.i ], [ %.sroa.01.0.i64.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit22.i ], [ %.sroa.01.0.i64.i, %.split44.i ], [ %.sroa.01.0.i64.i, %.split45.i ], [ %i.m, %bb.q ], [ %.sroa.01.1.i58.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s0_0E0Csl8OoimOLbh_6qdrant.exit38.i ], [ %.sroa.01.1.i58.i, %.split47.i ], [ %.sroa.01.1.i58.i, %.lr.ph.preheader.i ] ; 7 uses
  %i.aq = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aq)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.r

bb.r:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.u, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i

bb.s:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 42700796466920259) %i.m, i64 %.sroa.01.0)
  %i.ar = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.i
  %..i39.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 42700796466920259) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i39.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.as = shl nuw nsw i64 %..i39.i, 1
  %i.at = or disjoint i64 %i.as, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.u, %bb.r, %bb.j
  %.sroa.0.0.i54.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.r ], [ %.sroa.0.0.i.i, %bb.u ], [ %.sroa.0.0.i.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i ]
  %i.au = shl nuw nsw i64 %.sroa.0.0.i54.i, 1
  %i.av = or disjoint i64 %i.au, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.r
  %i.aw = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.u
  %i.ax = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.0.0.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bc, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ay = xor i64 %.sroa.0.017.i.i.i, -1
  %i.az = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.ba = getelementptr [216 x i8], ptr %i.ax, i64 %i.ay
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.az, ptr noundef nonnull %i.ba, i64 noundef 27)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.v, !noalias !150

bb.v:                                             ; preds = %.lr.ph.i.i.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !noalias !150
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bc = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bc, %i.aw
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.t, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.av, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i ], [ %i.at, %bb.t ], [ %i.ar, %bb.s ] ; 2 uses
  %i.bd = lshr i64 %.sroa.023.0, 1
  %i.be = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bf = sub nsw i64 %factor, %i.bd
  %i.bg = add nuw nsw i64 %i.be, %factor
  %i.bh = mul i64 %i.bf, %.sroa.0.0
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = xor i64 %i.bi, %i.bh
  %i.bk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bj, i1 false)
  %i.bl = trunc nuw nsw i64 %i.bk to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit
  %.sroa.02.136 = phi i64 [ %i.bm, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bm = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bo, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.w

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bq, align 1
  br i1 %i.k, label %bb.ad, label %bb.ae

bb.w:                                             ; preds = %.lr.ph
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bm
  %i.bs = load i64, ptr %i.br, align 8, !noundef !5 ; 3 uses
  %i.bt = lshr i64 %i.bs, 1                       ; 5 uses
  %i.bu = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bv = add nuw i64 %i.bt, %i.bu                ; 5 uses
  %i.bw = sub i64 %.sroa.09.0, %i.bv
  %i.bx = getelementptr inbounds nuw [216 x i8], ptr %0, i64 %i.bw ; 3 uses
  %i.by = icmp samesign ugt i64 %i.bv, %3
  %i.bz = trunc i64 %.sroa.023.135 to i1
  %i.ca = or i64 %i.bs, %.sroa.023.135
  %i.cb = trunc i64 %i.ca to i1
  %or.cond3.i = or i1 %i.by, %i.cb
  br i1 %or.cond3.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cc = trunc i64 %i.bs to i1
  br i1 %i.cc, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.cd = shl nuw nsw i64 %i.bv, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit

bb.z:                                             ; preds = %bb.aa, %bb.x
  br i1 %i.bz, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.ce = or i64 %i.bt, 1
  %i.cf = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 1
  %i.ci = xor i32 %i.ch, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.bx, i64 noundef range(i64 0, 42700796466920259) %i.bt, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.z

bb.ab:                                            ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw [216 x i8], ptr %i.bx, i64 %i.bt
  %i.ck = or i64 %i.bu, 1
  %i.cl = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.ck, i1 true)
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 1
  %i.co = xor i32 %i.cn, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.cj, i64 noundef range(i64 0, 42700796466920259) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3B_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4N_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.bx, i64 noundef range(i64 0, 42700796466920259) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i64 noundef %i.bt, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cp = shl nuw nsw i64 %i.bv, 1
  %i.cq = or disjoint i64 %i.cp, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.y, %bb.ac
  %.sroa.0.0.i = phi i64 [ %i.cq, %bb.ac ], [ %i.cd, %bb.y ] ; 2 uses
  %i.cr = icmp ugt i64 %i.bm, 1
  br i1 %i.cr, label %.lr.ph, label %._crit_edge

bb.ad:                                            ; preds = %._crit_edge
  %i.cs = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.ct = lshr i64 %.sroa.018.0, 1
  %i.cu = add nuw i64 %i.ct, %.sroa.09.0
  br label %bb.f

bb.ae:                                            ; preds = %._crit_edge
  %i.cv = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cv, 0
  br i1 %.not30, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cw = or i64 %1, 1
  %i.cx = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.cw, i1 true)
  %i.cy = trunc nuw nsw i64 %i.cx to i32
  %i.cz = shl nuw nsw i32 %i.cy, 1
  %i.da = xor i32 %i.cz, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet13optimizations0s0_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 42700796466920259) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.da, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
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
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cu, %bb.ad ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cs, %bb.ad ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit
  %.sroa.021.0 = phi i8 [ %i.bl, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 14 uses
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
  %.sroa.01.0.i64.i = phi i64 [ %i.af, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ 2, %.critedge.preheader.i ] ; 6 uses
  %i.w = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.01.0.i64.i ; 3 uses
  %i.x = add nsw i64 %.sroa.01.0.i64.i, -1
  %i.y = icmp samesign ult i64 %i.x, %i.m
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %.sroa.0.0.copyload.i7.i = load i32, ptr %i.z, align 8, !alias.scope !182, !noalias !183 ; 4 uses
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
  %i.aa = icmp eq i32 %.sroa.01.0.copyload.i12.i, %.sroa.0.0.copyload.i7.i
  br i1 %i.aa, label %.split44.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.i

.split44.i:                                       ; preds = %bb.o
  %i.ab = icmp eq i32 %.sroa.42.0.copyload.i14.i, %.sroa.4.0.copyload.i9.i
  %i.ac = icmp ult i32 %.sroa.42.0.copyload.i14.i, %.sroa.4.0.copyload.i9.i
  %i.ad = icmp ult i32 %.sroa.53.0.copyload.i16.i, %.sroa.5.0.copyload.i11.i
  %spec.select.i20.i = select i1 %i.ab, i1 %i.ad, i1 %i.ac
  br i1 %spec.select.i20.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.i: ; preds = %bb.o
  %i.ae = icmp slt i32 %.sroa.01.0.copyload.i12.i, %.sroa.0.0.copyload.i7.i
  br i1 %i.ae, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i: ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.i, %.split44.i, %.split45.i, %bb.n
  %i.af = add nuw nsw i64 %.sroa.01.0.i64.i, 1    ; 2 uses
  %exitcond75.not.i = icmp eq i64 %i.af, %i.m
  br i1 %exitcond75.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph65.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i, %bb.q
  %.sroa.53.0.copyload.i32.i = phi i32 [ %.sroa.5.0.copyload.i27.i, %bb.q ], [ %.sroa.5.0.copyload.i.i, %.preheader.i ]
  %.sroa.42.0.copyload.i30.i = phi i32 [ %.sroa.4.0.copyload.i25.i, %bb.q ], [ %.sroa.4.0.copyload.i.i, %.preheader.i ] ; 2 uses
  %.sroa.01.0.copyload.i28.i = phi i32 [ %.sroa.0.0.copyload.i23.i, %bb.q ], [ %.sroa.0.0.copyload.i.i, %.preheader.i ] ; 2 uses
  %.sroa.01.1.i58.i = phi i64 [ %i.ap, %bb.q ], [ 2, %.preheader.i ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.01.1.i58.i ; 3 uses
  %i.ah = add nsw i64 %.sroa.01.1.i58.i, -1
  %i.ai = icmp samesign ult i64 %i.ah, %i.m
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %.sroa.0.0.copyload.i23.i = load i32, ptr %i.aj, align 8, !alias.scope !184, !noalias !185 ; 4 uses
  %.sroa.4.0..sroa_idx.i24.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 100
  %.sroa.4.0.copyload.i25.i = load i32, ptr %.sroa.4.0..sroa_idx.i24.i, align 4, !alias.scope !184, !noalias !185 ; 3 uses
  %.sroa.5.0..sroa_idx.i26.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  %.sroa.5.0.copyload.i27.i = load i32, ptr %.sroa.5.0..sroa_idx.i26.i, align 8, !alias.scope !184, !noalias !185 ; 2 uses
  %.not2.i.i.i.i34.i = icmp eq i32 %.sroa.0.0.copyload.i23.i, 0
  br i1 %.not2.i.i.i.i34.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.preheader.i
  %i.ak = icmp eq i32 %.sroa.01.0.copyload.i28.i, %.sroa.0.0.copyload.i23.i
  br i1 %i.ak, label %.split47.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit38.i

.split47.i:                                       ; preds = %bb.p
  %i.al = icmp eq i32 %.sroa.42.0.copyload.i30.i, %.sroa.4.0.copyload.i25.i
  %i.am = icmp ult i32 %.sroa.42.0.copyload.i30.i, %.sroa.4.0.copyload.i25.i
  %i.an = icmp ult i32 %.sroa.53.0.copyload.i32.i, %.sroa.5.0.copyload.i27.i
  %spec.select.i36.i = select i1 %i.al, i1 %i.an, i1 %i.am
  br i1 %spec.select.i36.i, label %bb.q, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit38.i: ; preds = %bb.p
  %i.ao = icmp slt i32 %.sroa.01.0.copyload.i28.i, %.sroa.0.0.copyload.i23.i
  br i1 %i.ao, label %bb.q, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i

bb.q:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit38.i, %.split47.i
  %i.ap = add nuw nsw i64 %.sroa.01.1.i58.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.q, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit38.i, %.split47.i, %.lr.ph.preheader.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.i, %.split44.i, %.split45.i, %.critedge.preheader.i, %.preheader.i
  %.sroa.3.0.i.i = phi i1 [ false, %.critedge.preheader.i ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ true, %.preheader.i ], [ false, %.split45.i ], [ false, %.split44.i ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.i ], [ true, %.lr.ph.preheader.i ], [ true, %.split47.i ], [ true, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit38.i ], [ true, %bb.q ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.critedge.preheader.i ], [ %i.m, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ 2, %.preheader.i ], [ %.sroa.01.0.i64.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit22.i ], [ %.sroa.01.0.i64.i, %.split44.i ], [ %.sroa.01.0.i64.i, %.split45.i ], [ %i.m, %bb.q ], [ %.sroa.01.1.i58.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet13optimizations0s_0E0Csl8OoimOLbh_6qdrant.exit38.i ], [ %.sroa.01.1.i58.i, %.split47.i ], [ %.sroa.01.1.i58.i, %.lr.ph.preheader.i ] ; 7 uses
  %i.aq = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aq)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.r

bb.r:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.u, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i

bb.s:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 42700796466920259) %i.m, i64 %.sroa.01.0)
  %i.ar = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.i
  %..i39.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 42700796466920259) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i39.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.as = shl nuw nsw i64 %..i39.i, 1
  %i.at = or disjoint i64 %i.as, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.u, %bb.r, %bb.j
  %.sroa.0.0.i54.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.r ], [ %.sroa.0.0.i.i, %bb.u ], [ %.sroa.0.0.i.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i ]
  %i.au = shl nuw nsw i64 %.sroa.0.0.i54.i, 1
  %i.av = or disjoint i64 %i.au, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.r
  %i.aw = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.u
  %i.ax = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.0.0.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bc, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ay = xor i64 %.sroa.0.017.i.i.i, -1
  %i.az = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.ba = getelementptr [216 x i8], ptr %i.ax, i64 %i.ay
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.az, ptr noundef nonnull %i.ba, i64 noundef 27)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.v, !noalias !186

bb.v:                                             ; preds = %.lr.ph.i.i.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !noalias !186
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bc = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bc, %i.aw
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.t, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.av, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i ], [ %i.at, %bb.t ], [ %i.ar, %bb.s ] ; 2 uses
  %i.bd = lshr i64 %.sroa.023.0, 1
  %i.be = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bf = sub nsw i64 %factor, %i.bd
  %i.bg = add nuw nsw i64 %i.be, %factor
  %i.bh = mul i64 %i.bf, %.sroa.0.0
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = xor i64 %i.bi, %i.bh
  %i.bk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bj, i1 false)
  %i.bl = trunc nuw nsw i64 %i.bk to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit
  %.sroa.02.136 = phi i64 [ %i.bm, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bm = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bo, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.w

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bq, align 1
  br i1 %i.k, label %bb.ad, label %bb.ae

bb.w:                                             ; preds = %.lr.ph
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bm
  %i.bs = load i64, ptr %i.br, align 8, !noundef !5 ; 3 uses
  %i.bt = lshr i64 %i.bs, 1                       ; 5 uses
  %i.bu = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bv = add nuw i64 %i.bt, %i.bu                ; 5 uses
  %i.bw = sub i64 %.sroa.09.0, %i.bv
  %i.bx = getelementptr inbounds nuw [216 x i8], ptr %0, i64 %i.bw ; 3 uses
  %i.by = icmp samesign ugt i64 %i.bv, %3
  %i.bz = trunc i64 %.sroa.023.135 to i1
  %i.ca = or i64 %i.bs, %.sroa.023.135
  %i.cb = trunc i64 %i.ca to i1
  %or.cond3.i = or i1 %i.by, %i.cb
  br i1 %or.cond3.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cc = trunc i64 %i.bs to i1
  br i1 %i.cc, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.cd = shl nuw nsw i64 %i.bv, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit

bb.z:                                             ; preds = %bb.aa, %bb.x
  br i1 %i.bz, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.ce = or i64 %i.bt, 1
  %i.cf = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 1
  %i.ci = xor i32 %i.ch, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.bx, i64 noundef range(i64 0, 42700796466920259) %i.bt, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.z

bb.ab:                                            ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw [216 x i8], ptr %i.bx, i64 %i.bt
  %i.ck = or i64 %i.bu, 1
  %i.cl = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.ck, i1 true)
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 1
  %i.co = xor i32 %i.cn, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.cj, i64 noundef range(i64 0, 42700796466920259) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3B_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4N_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.bx, i64 noundef range(i64 0, 42700796466920259) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i64 noundef %i.bt, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cp = shl nuw nsw i64 %i.bv, 1
  %i.cq = or disjoint i64 %i.cp, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.y, %bb.ac
  %.sroa.0.0.i = phi i64 [ %i.cq, %bb.ac ], [ %i.cd, %bb.y ] ; 2 uses
  %i.cr = icmp ugt i64 %i.bm, 1
  br i1 %i.cr, label %.lr.ph, label %._crit_edge

bb.ad:                                            ; preds = %._crit_edge
  %i.cs = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.ct = lshr i64 %.sroa.018.0, 1
  %i.cu = add nuw i64 %i.ct, %.sroa.09.0
  br label %bb.f

bb.ae:                                            ; preds = %._crit_edge
  %i.cv = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cv, 0
  br i1 %.not30, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cw = or i64 %1, 1
  %i.cx = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.cw, i1 true)
  %i.cy = trunc nuw nsw i64 %i.cx to i32
  %i.cz = shl nuw nsw i32 %i.cy, 1
  %i.da = xor i32 %i.cz, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet13optimizations0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 42700796466920259) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.da, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
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
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cu, %bb.ad ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cs, %bb.ad ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit
  %.sroa.021.0 = phi i8 [ %i.bl, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 14 uses
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
  %.sroa.01.0.i64.i = phi i64 [ %i.af, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ 2, %.critedge.preheader.i ] ; 6 uses
  %i.w = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.01.0.i64.i ; 3 uses
  %i.x = add nsw i64 %.sroa.01.0.i64.i, -1
  %i.y = icmp samesign ult i64 %i.x, %i.m
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %.sroa.0.0.copyload.i7.i = load i32, ptr %i.z, align 8, !alias.scope !218, !noalias !219 ; 4 uses
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
  %i.aa = icmp eq i32 %.sroa.01.0.copyload.i12.i, %.sroa.0.0.copyload.i7.i
  br i1 %i.aa, label %.split44.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.i

.split44.i:                                       ; preds = %bb.o
  %i.ab = icmp eq i32 %.sroa.42.0.copyload.i14.i, %.sroa.4.0.copyload.i9.i
  %i.ac = icmp ult i32 %.sroa.42.0.copyload.i14.i, %.sroa.4.0.copyload.i9.i
  %i.ad = icmp ult i32 %.sroa.53.0.copyload.i16.i, %.sroa.5.0.copyload.i11.i
  %spec.select.i20.i = select i1 %i.ab, i1 %i.ad, i1 %i.ac
  br i1 %spec.select.i20.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.thread.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.i: ; preds = %bb.o
  %i.ae = icmp slt i32 %.sroa.01.0.copyload.i12.i, %.sroa.0.0.copyload.i7.i
  br i1 %i.ae, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.thread.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.thread.i: ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.i, %.split44.i, %.split45.i, %bb.n
  %i.af = add nuw nsw i64 %.sroa.01.0.i64.i, 1    ; 2 uses
  %exitcond75.not.i = icmp eq i64 %i.af, %i.m
  br i1 %exitcond75.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph65.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i, %bb.q
  %.sroa.53.0.copyload.i32.i = phi i32 [ %.sroa.5.0.copyload.i27.i, %bb.q ], [ %.sroa.5.0.copyload.i.i, %.preheader.i ]
  %.sroa.42.0.copyload.i30.i = phi i32 [ %.sroa.4.0.copyload.i25.i, %bb.q ], [ %.sroa.4.0.copyload.i.i, %.preheader.i ] ; 2 uses
  %.sroa.01.0.copyload.i28.i = phi i32 [ %.sroa.0.0.copyload.i23.i, %bb.q ], [ %.sroa.0.0.copyload.i.i, %.preheader.i ] ; 2 uses
  %.sroa.01.1.i58.i = phi i64 [ %i.ap, %bb.q ], [ 2, %.preheader.i ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.01.1.i58.i ; 3 uses
  %i.ah = add nsw i64 %.sroa.01.1.i58.i, -1
  %i.ai = icmp samesign ult i64 %i.ah, %i.m
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %.sroa.0.0.copyload.i23.i = load i32, ptr %i.aj, align 8, !alias.scope !220, !noalias !221 ; 4 uses
  %.sroa.4.0..sroa_idx.i24.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 100
  %.sroa.4.0.copyload.i25.i = load i32, ptr %.sroa.4.0..sroa_idx.i24.i, align 4, !alias.scope !220, !noalias !221 ; 3 uses
  %.sroa.5.0..sroa_idx.i26.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  %.sroa.5.0.copyload.i27.i = load i32, ptr %.sroa.5.0..sroa_idx.i26.i, align 8, !alias.scope !220, !noalias !221 ; 2 uses
  %.not2.i.i.i.i34.i = icmp eq i32 %.sroa.0.0.copyload.i23.i, 0
  br i1 %.not2.i.i.i.i34.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.preheader.i
  %i.ak = icmp eq i32 %.sroa.01.0.copyload.i28.i, %.sroa.0.0.copyload.i23.i
  br i1 %i.ak, label %.split47.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit38.i

.split47.i:                                       ; preds = %bb.p
  %i.al = icmp eq i32 %.sroa.42.0.copyload.i30.i, %.sroa.4.0.copyload.i25.i
  %i.am = icmp ult i32 %.sroa.42.0.copyload.i30.i, %.sroa.4.0.copyload.i25.i
  %i.an = icmp ult i32 %.sroa.53.0.copyload.i32.i, %.sroa.5.0.copyload.i27.i
  %spec.select.i36.i = select i1 %i.al, i1 %i.an, i1 %i.am
  br i1 %spec.select.i36.i, label %bb.q, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit38.i: ; preds = %bb.p
  %i.ao = icmp slt i32 %.sroa.01.0.copyload.i28.i, %.sroa.0.0.copyload.i23.i
  br i1 %i.ao, label %bb.q, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit.i

bb.q:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit38.i, %.split47.i
  %i.ap = add nuw nsw i64 %.sroa.01.1.i58.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.q, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit38.i, %.split47.i, %.lr.ph.preheader.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.thread.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.i, %.split44.i, %.split45.i, %.critedge.preheader.i, %.preheader.i
  %.sroa.3.0.i.i = phi i1 [ false, %.critedge.preheader.i ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ true, %.preheader.i ], [ false, %.split45.i ], [ false, %.split44.i ], [ false, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.i ], [ true, %.lr.ph.preheader.i ], [ true, %.split47.i ], [ true, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit38.i ], [ true, %bb.q ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.critedge.preheader.i ], [ %i.m, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.thread.i ], [ 2, %.preheader.i ], [ %.sroa.01.0.i64.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit22.i ], [ %.sroa.01.0.i64.i, %.split44.i ], [ %.sroa.01.0.i64.i, %.split45.i ], [ %i.m, %bb.q ], [ %.sroa.01.1.i58.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization11sort_by_keyINtNtCskKLDkoKarTP_4core3cmp7ReverseINtNtB1U_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB2R_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB43_15ShardReplicaSet19local_optimizations00E0Csl8OoimOLbh_6qdrant.exit38.i ], [ %.sroa.01.1.i58.i, %.split47.i ], [ %.sroa.01.1.i58.i, %.lr.ph.preheader.i ] ; 7 uses
  %i.aq = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aq)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.r

bb.r:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3H_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4T_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.u, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i

bb.s:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 42700796466920259) %i.m, i64 %.sroa.01.0)
  %i.ar = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.i
  %..i39.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 42700796466920259) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i39.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.as = shl nuw nsw i64 %..i39.i, 1
  %i.at = or disjoint i64 %i.as, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.u, %bb.r, %bb.j
  %.sroa.0.0.i54.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.r ], [ %.sroa.0.0.i.i, %bb.u ], [ %.sroa.0.0.i.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i ]
  %i.au = shl nuw nsw i64 %.sroa.0.0.i54.i, 1
  %i.av = or disjoint i64 %i.au, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.r
  %i.aw = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.u
  %i.ax = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.0.0.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bc, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ay = xor i64 %.sroa.0.017.i.i.i, -1
  %i.az = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.ba = getelementptr [216 x i8], ptr %i.ax, i64 %i.ay
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.az, ptr noundef nonnull %i.ba, i64 noundef 27)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.v, !noalias !222

bb.v:                                             ; preds = %.lr.ph.i.i.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !noalias !222
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bc = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bc, %i.aw
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3I_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4U_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.t, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.av, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12Optimization7reverseCsl8OoimOLbh_6qdrant.exit.i ], [ %i.at, %bb.t ], [ %i.ar, %bb.s ] ; 2 uses
  %i.bd = lshr i64 %.sroa.023.0, 1
  %i.be = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bf = sub nsw i64 %factor, %i.bd
  %i.bg = add nuw nsw i64 %i.be, %factor
  %i.bh = mul i64 %i.bf, %.sroa.0.0
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = xor i64 %i.bi, %i.bh
  %i.bk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bj, i1 false)
  %i.bl = trunc nuw nsw i64 %i.bk to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit
  %.sroa.02.136 = phi i64 [ %i.bm, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bm = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bo, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.w

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bq, align 1
  br i1 %i.k, label %bb.ad, label %bb.ae

bb.w:                                             ; preds = %.lr.ph
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bm
  %i.bs = load i64, ptr %i.br, align 8, !noundef !5 ; 3 uses
  %i.bt = lshr i64 %i.bs, 1                       ; 5 uses
  %i.bu = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bv = add nuw i64 %i.bt, %i.bu                ; 5 uses
  %i.bw = sub i64 %.sroa.09.0, %i.bv
  %i.bx = getelementptr inbounds nuw [216 x i8], ptr %0, i64 %i.bw ; 3 uses
  %i.by = icmp samesign ugt i64 %i.bv, %3
  %i.bz = trunc i64 %.sroa.023.135 to i1
  %i.ca = or i64 %i.bs, %.sroa.023.135
  %i.cb = trunc i64 %i.ca to i1
  %or.cond3.i = or i1 %i.by, %i.cb
  br i1 %or.cond3.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cc = trunc i64 %i.bs to i1
  br i1 %i.cc, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.cd = shl nuw nsw i64 %i.bv, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit

bb.z:                                             ; preds = %bb.aa, %bb.x
  br i1 %i.bz, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.ce = or i64 %i.bt, 1
  %i.cf = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 1
  %i.ci = xor i32 %i.ch, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.bx, i64 noundef range(i64 0, 42700796466920259) %i.bt, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.z

bb.ab:                                            ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw [216 x i8], ptr %i.bx, i64 %i.bt
  %i.ck = or i64 %i.bu, 1
  %i.cl = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.ck, i1 true)
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 1
  %i.co = xor i32 %i.cn, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.cj, i64 noundef range(i64 0, 42700796466920259) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3B_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4N_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.bx, i64 noundef range(i64 0, 42700796466920259) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i64 noundef %i.bt, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cp = shl nuw nsw i64 %i.bv, 1
  %i.cq = or disjoint i64 %i.cp, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3L_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4X_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.y, %bb.ac
  %.sroa.0.0.i = phi i64 [ %i.cq, %bb.ac ], [ %i.cd, %bb.y ] ; 2 uses
  %i.cr = icmp ugt i64 %i.bm, 1
  br i1 %i.cr, label %.lr.ph, label %._crit_edge

bb.ad:                                            ; preds = %._crit_edge
  %i.cs = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.ct = lshr i64 %.sroa.018.0, 1
  %i.cu = add nuw i64 %i.ct, %.sroa.09.0
  br label %bb.f

bb.ae:                                            ; preds = %._crit_edge
  %i.cv = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cv, 0
  br i1 %.not30, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cw = or i64 %1, 1
  %i.cx = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.cw, i1 true)
  %i.cy = trunc nuw nsw i64 %i.cx to i32
  %i.cz = shl nuw nsw i32 %i.cy, 1
  %i.da = xor i32 %i.cz, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3K_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4W_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 42700796466920259) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 42700796466920259) %3, i32 noundef %i.da, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(216) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %bb.ag
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keymNCNCNvMNtNtB12_10collection14collection_opsNtB2Y_10Collection12cluster_info0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

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

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cf, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cd, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNCNvMNtNtB19_10collection14collection_opsNtB36_10Collection12cluster_info0s_0E0ECsl8OoimOLbh_6qdrant.exit
  %.sroa.021.0 = phi i8 [ %i.aw, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNCNvMNtNtB19_10collection14collection_opsNtB36_10Collection12cluster_info0s_0E0ECsl8OoimOLbh_6qdrant.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNCNvMNtNtB19_10collection14collection_opsNtB36_10Collection12cluster_info0s_0E0ECsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNCNvMNtNtB18_10collection14collection_opsNtB35_10Collection12cluster_info0s_0E0ECsl8OoimOLbh_6qdrant.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfo7reverseCsl8OoimOLbh_6qdrant.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 72
  %.val10.i = load i32, ptr %i.p, align 8, !alias.scope !227, !noalias !228, !noundef !5 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 32
  %.val11.i = load i32, ptr %i.q, align 8, !alias.scope !227, !noalias !228, !noundef !5
  %i.r = icmp uge i32 %.val10.i, %.val11.i        ; 2 uses
  %.not32.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.r, label %.preheader21.i, label %.preheader.i

.preheader21.i:                                   ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfo7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not32.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %.preheader21.i, %bb.l
  %.val9.i = phi i32 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader21.i ]
  %.sroa.01.0.i23.i = phi i64 [ %i.v, %bb.l ], [ 2, %.preheader21.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.0.i23.i
  %i.t = getelementptr i8, ptr %i.s, i64 32
  %.val8.i = load i32, ptr %i.t, align 8, !alias.scope !227, !noalias !228, !noundef !5 ; 2 uses
  %i.u = icmp ult i32 %.val8.i, %.val9.i
  br i1 %i.u, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNCNvMNtNtB18_10collection14collection_opsNtB35_10Collection12cluster_info0s_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.v = add nuw nsw i64 %.sroa.01.0.i23.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.v, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNCNvMNtNtB18_10collection14collection_opsNtB35_10Collection12cluster_info0s_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.i

.lr.ph27.i:                                       ; preds = %.preheader.i, %bb.m
  %.val7.i = phi i32 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader.i ]
  %.sroa.01.1.i26.i = phi i64 [ %i.z, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.1.i26.i
  %i.x = getelementptr i8, ptr %i.w, i64 32
  %.val.i = load i32, ptr %i.x, align 8, !alias.scope !227, !noalias !228, !noundef !5 ; 2 uses
  %i.y = icmp ult i32 %.val.i, %.val7.i
  br i1 %i.y, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNCNvMNtNtB18_10collection14collection_opsNtB35_10Collection12cluster_info0s_0E0ECsl8OoimOLbh_6qdrant.exit.i

bb.m:                                             ; preds = %.lr.ph27.i
  %i.z = add nuw nsw i64 %.sroa.01.1.i26.i, 1     ; 2 uses
  %exitcond35.not.i = icmp eq i64 %i.z, %i.m
  br i1 %exitcond35.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNCNvMNtNtB18_10collection14collection_opsNtB35_10Collection12cluster_info0s_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph27.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNCNvMNtNtB18_10collection14collection_opsNtB35_10Collection12cluster_info0s_0E0ECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.m, %.lr.ph27.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i23.i, %.lr.ph.i ], [ %.sroa.01.1.i26.i, %.lr.ph27.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.aa = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aa)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNCNvMNtNtB18_10collection14collection_opsNtB35_10Collection12cluster_info0s_0E0ECsl8OoimOLbh_6qdrant.exit.i
  %i.ab = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ab, 0
  %or.cond.i = or i1 %i.r, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfo7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNCNvMNtNtB19_10collection14collection_opsNtB36_10Collection12cluster_info0s_0E0ECsl8OoimOLbh_6qdrant.exit

bb.p:                                             ; preds = %bb.i
  %..i12.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keymNCNCNvMNtNtB1b_10collection14collection_opsNtB38_10Collection12cluster_info0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i12.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.ad = shl nuw nsw i64 %..i12.i, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNCNvMNtNtB19_10collection14collection_opsNtB36_10Collection12cluster_info0s_0E0ECsl8OoimOLbh_6qdrant.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfo7reverseCsl8OoimOLbh_6qdrant.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoECsl8OoimOLbh_6qdrant.exit.i.i.i, %.preheader21.i, %bb.n, %bb.j
  %.sroa.0.0.i18.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader21.i ], [ %.sroa.0.0.i495660.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoECsl8OoimOLbh_6qdrant.exit.i.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNCNvMNtNtB19_10collection14collection_opsNtB36_10Collection12cluster_info0s_0E0ECsl8OoimOLbh_6qdrant.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ah = phi i64 [ %i.ab, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i495660.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.0.i495660.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoECsl8OoimOLbh_6qdrant.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.an, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoECsl8OoimOLbh_6qdrant.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.aj = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.al = getelementptr [40 x i8], ptr %i.ai, i64 %i.aj
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al, i64 noundef 5)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.q, !noalias !228

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !noalias !228
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.an = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.an, %i.ah
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfo7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNCNvMNtNtB19_10collection14collection_opsNtB36_10Collection12cluster_info0s_0E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfo7reverseCsl8OoimOLbh_6qdrant.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ag, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfo7reverseCsl8OoimOLbh_6qdrant.exit.i ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.ao = lshr i64 %.sroa.023.0, 1
  %i.ap = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aq = sub nsw i64 %factor, %i.ao
  %i.ar = add nuw i64 %i.ap, %factor
  %i.as = mul i64 %i.aq, %.sroa.0.0
  %i.at = mul i64 %i.ar, %.sroa.0.0
  %i.au = xor i64 %i.at, %i.as
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.au, i1 false)
  %i.aw = trunc nuw nsw i64 %i.av to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNCNvMNtNtB1c_10collection14collection_opsNtB39_10Collection12cluster_info0s_0E0ECsl8OoimOLbh_6qdrant.exit
  %.sroa.02.136 = phi i64 [ %i.ax, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNCNvMNtNtB1c_10collection14collection_opsNtB39_10Collection12cluster_info0s_0E0ECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNCNvMNtNtB1c_10collection14collection_opsNtB39_10Collection12cluster_info0s_0E0ECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ax = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.az, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNCNvMNtNtB1c_10collection14collection_opsNtB39_10Collection12cluster_info0s_0E0ECsl8OoimOLbh_6qdrant.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNCNvMNtNtB1c_10collection14collection_opsNtB39_10Collection12cluster_info0s_0E0ECsl8OoimOLbh_6qdrant.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNCNvMNtNtB1c_10collection14collection_opsNtB39_10Collection12cluster_info0s_0E0ECsl8OoimOLbh_6qdrant.exit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bb, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ax
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !5 ; 3 uses
  %i.be = lshr i64 %i.bd, 1                       ; 5 uses
  %i.bf = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bg = add nuw i64 %i.be, %i.bf                ; 5 uses
  %i.bh = sub i64 %.sroa.09.0, %i.bg
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.bh ; 3 uses
  %i.bj = icmp samesign ugt i64 %i.bg, %3
  %i.bk = trunc i64 %.sroa.023.135 to i1
  %i.bl = or i64 %i.bd, %.sroa.023.135
  %i.bm = trunc i64 %i.bl to i1
  %or.cond3.i = or i1 %i.bj, %i.bm
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = trunc i64 %i.bd to i1
  br i1 %i.bn, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bo = shl nuw nsw i64 %i.bg, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNCNvMNtNtB1c_10collection14collection_opsNtB39_10Collection12cluster_info0s_0E0ECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bk, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bp = or i64 %i.be, 1
  %i.bq = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 1
  %i.bt = xor i32 %i.bs, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keymNCNCNvMNtNtB1b_10collection14collection_opsNtB38_10Collection12cluster_info0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 230584300921369396) %i.be, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.bt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %i.be
  %i.bv = or i64 %i.bf, 1
  %i.bw = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keymNCNCNvMNtNtB1b_10collection14collection_opsNtB38_10Collection12cluster_info0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 230584300921369396) %i.bf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keymNCNCNvMNtNtB13_10collection14collection_opsNtB2Z_10Collection12cluster_info0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 230584300921369396) %i.bg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i64 noundef %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ca = shl nuw nsw i64 %i.bg, 1
  %i.cb = or disjoint i64 %i.ca, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNCNvMNtNtB1c_10collection14collection_opsNtB39_10Collection12cluster_info0s_0E0ECsl8OoimOLbh_6qdrant.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNCNvMNtNtB1c_10collection14collection_opsNtB39_10Collection12cluster_info0s_0E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cb, %bb.x ], [ %i.bo, %bb.t ] ; 2 uses
  %i.cc = icmp ugt i64 %i.ax, 1
  br i1 %i.cc, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cd = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.ce = lshr i64 %.sroa.018.0, 1
  %i.cf = add nuw i64 %i.ce, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cg = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cg, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ch = or i64 %1, 1
  %i.ci = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = xor i32 %i.ck, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsPYQCUnoTxQ_10collection10operations5types14LocalShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keymNCNCNvMNtNtB1b_10collection14collection_opsNtB38_10Collection12cluster_info0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keymNCNCNvMNtNtB12_10collection14collection_opsNtB2Z_10Collection12cluster_info0s0_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

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

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cf, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cd, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNCNvMNtNtB19_10collection14collection_opsNtB37_10Collection12cluster_info0s0_0E0ECsl8OoimOLbh_6qdrant.exit
  %.sroa.021.0 = phi i8 [ %i.aw, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNCNvMNtNtB19_10collection14collection_opsNtB37_10Collection12cluster_info0s0_0E0ECsl8OoimOLbh_6qdrant.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNCNvMNtNtB19_10collection14collection_opsNtB37_10Collection12cluster_info0s0_0E0ECsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNCNvMNtNtB18_10collection14collection_opsNtB36_10Collection12cluster_info0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfo7reverseCsl8OoimOLbh_6qdrant.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 72
  %.val10.i = load i32, ptr %i.p, align 8, !alias.scope !233, !noalias !234, !noundef !5 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 32
  %.val11.i = load i32, ptr %i.q, align 8, !alias.scope !233, !noalias !234, !noundef !5
  %i.r = icmp uge i32 %.val10.i, %.val11.i        ; 2 uses
  %.not32.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.r, label %.preheader21.i, label %.preheader.i

.preheader21.i:                                   ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfo7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not32.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %.preheader21.i, %bb.l
  %.val9.i = phi i32 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader21.i ]
  %.sroa.01.0.i23.i = phi i64 [ %i.v, %bb.l ], [ 2, %.preheader21.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.0.i23.i
  %i.t = getelementptr i8, ptr %i.s, i64 32
  %.val8.i = load i32, ptr %i.t, align 8, !alias.scope !233, !noalias !234, !noundef !5 ; 2 uses
  %i.u = icmp ult i32 %.val8.i, %.val9.i
  br i1 %i.u, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNCNvMNtNtB18_10collection14collection_opsNtB36_10Collection12cluster_info0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.v = add nuw nsw i64 %.sroa.01.0.i23.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.v, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNCNvMNtNtB18_10collection14collection_opsNtB36_10Collection12cluster_info0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.i

.lr.ph27.i:                                       ; preds = %.preheader.i, %bb.m
  %.val7.i = phi i32 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader.i ]
  %.sroa.01.1.i26.i = phi i64 [ %i.z, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.1.i26.i
  %i.x = getelementptr i8, ptr %i.w, i64 32
  %.val.i = load i32, ptr %i.x, align 8, !alias.scope !233, !noalias !234, !noundef !5 ; 2 uses
  %i.y = icmp ult i32 %.val.i, %.val7.i
  br i1 %i.y, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNCNvMNtNtB18_10collection14collection_opsNtB36_10Collection12cluster_info0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i

bb.m:                                             ; preds = %.lr.ph27.i
  %i.z = add nuw nsw i64 %.sroa.01.1.i26.i, 1     ; 2 uses
  %exitcond35.not.i = icmp eq i64 %i.z, %i.m
  br i1 %exitcond35.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNCNvMNtNtB18_10collection14collection_opsNtB36_10Collection12cluster_info0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph27.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNCNvMNtNtB18_10collection14collection_opsNtB36_10Collection12cluster_info0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.m, %.lr.ph27.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i23.i, %.lr.ph.i ], [ %.sroa.01.1.i26.i, %.lr.ph27.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.aa = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aa)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNCNvMNtNtB18_10collection14collection_opsNtB36_10Collection12cluster_info0s0_0E0ECsl8OoimOLbh_6qdrant.exit.i
  %i.ab = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ab, 0
  %or.cond.i = or i1 %i.r, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfo7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNCNvMNtNtB19_10collection14collection_opsNtB37_10Collection12cluster_info0s0_0E0ECsl8OoimOLbh_6qdrant.exit

bb.p:                                             ; preds = %bb.i
  %..i12.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keymNCNCNvMNtNtB1b_10collection14collection_opsNtB39_10Collection12cluster_info0s0_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i12.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.ad = shl nuw nsw i64 %..i12.i, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNCNvMNtNtB19_10collection14collection_opsNtB37_10Collection12cluster_info0s0_0E0ECsl8OoimOLbh_6qdrant.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfo7reverseCsl8OoimOLbh_6qdrant.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoECsl8OoimOLbh_6qdrant.exit.i.i.i, %.preheader21.i, %bb.n, %bb.j
  %.sroa.0.0.i18.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader21.i ], [ %.sroa.0.0.i495660.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoECsl8OoimOLbh_6qdrant.exit.i.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNCNvMNtNtB19_10collection14collection_opsNtB37_10Collection12cluster_info0s0_0E0ECsl8OoimOLbh_6qdrant.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ah = phi i64 [ %i.ab, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i495660.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.0.i495660.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoECsl8OoimOLbh_6qdrant.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.an, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoECsl8OoimOLbh_6qdrant.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.aj = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.al = getelementptr [40 x i8], ptr %i.ai, i64 %i.aj
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al, i64 noundef 5)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.q, !noalias !234

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !noalias !234
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.an = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.an, %i.ah
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfo7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNCNvMNtNtB19_10collection14collection_opsNtB37_10Collection12cluster_info0s0_0E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfo7reverseCsl8OoimOLbh_6qdrant.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ag, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfo7reverseCsl8OoimOLbh_6qdrant.exit.i ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.ao = lshr i64 %.sroa.023.0, 1
  %i.ap = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aq = sub nsw i64 %factor, %i.ao
  %i.ar = add nuw i64 %i.ap, %factor
  %i.as = mul i64 %i.aq, %.sroa.0.0
  %i.at = mul i64 %i.ar, %.sroa.0.0
  %i.au = xor i64 %i.at, %i.as
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.au, i1 false)
  %i.aw = trunc nuw nsw i64 %i.av to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNCNvMNtNtB1c_10collection14collection_opsNtB3a_10Collection12cluster_info0s0_0E0ECsl8OoimOLbh_6qdrant.exit
  %.sroa.02.136 = phi i64 [ %i.ax, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNCNvMNtNtB1c_10collection14collection_opsNtB3a_10Collection12cluster_info0s0_0E0ECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNCNvMNtNtB1c_10collection14collection_opsNtB3a_10Collection12cluster_info0s0_0E0ECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ax = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.az, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNCNvMNtNtB1c_10collection14collection_opsNtB3a_10Collection12cluster_info0s0_0E0ECsl8OoimOLbh_6qdrant.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNCNvMNtNtB1c_10collection14collection_opsNtB3a_10Collection12cluster_info0s0_0E0ECsl8OoimOLbh_6qdrant.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNCNvMNtNtB1c_10collection14collection_opsNtB3a_10Collection12cluster_info0s0_0E0ECsl8OoimOLbh_6qdrant.exit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bb, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ax
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !5 ; 3 uses
  %i.be = lshr i64 %i.bd, 1                       ; 5 uses
  %i.bf = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bg = add nuw i64 %i.be, %i.bf                ; 5 uses
  %i.bh = sub i64 %.sroa.09.0, %i.bg
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.bh ; 3 uses
  %i.bj = icmp samesign ugt i64 %i.bg, %3
  %i.bk = trunc i64 %.sroa.023.135 to i1
  %i.bl = or i64 %i.bd, %.sroa.023.135
  %i.bm = trunc i64 %i.bl to i1
  %or.cond3.i = or i1 %i.bj, %i.bm
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = trunc i64 %i.bd to i1
  br i1 %i.bn, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bo = shl nuw nsw i64 %i.bg, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNCNvMNtNtB1c_10collection14collection_opsNtB3a_10Collection12cluster_info0s0_0E0ECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bk, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bp = or i64 %i.be, 1
  %i.bq = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 1
  %i.bt = xor i32 %i.bs, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keymNCNCNvMNtNtB1b_10collection14collection_opsNtB39_10Collection12cluster_info0s0_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 230584300921369396) %i.be, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.bt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %i.be
  %i.bv = or i64 %i.bf, 1
  %i.bw = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keymNCNCNvMNtNtB1b_10collection14collection_opsNtB39_10Collection12cluster_info0s0_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 230584300921369396) %i.bf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keymNCNCNvMNtNtB13_10collection14collection_opsNtB30_10Collection12cluster_info0s0_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 230584300921369396) %i.bg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i64 noundef %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ca = shl nuw nsw i64 %i.bg, 1
  %i.cb = or disjoint i64 %i.ca, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNCNvMNtNtB1c_10collection14collection_opsNtB3a_10Collection12cluster_info0s0_0E0ECsl8OoimOLbh_6qdrant.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNCNvMNtNtB1c_10collection14collection_opsNtB3a_10Collection12cluster_info0s0_0E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cb, %bb.x ], [ %i.bo, %bb.t ] ; 2 uses
  %i.cc = icmp ugt i64 %i.ax, 1
  br i1 %i.cc, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cd = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.ce = lshr i64 %.sroa.018.0, 1
  %i.cf = add nuw i64 %i.ce, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cg = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cg, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ch = or i64 %1, 1
  %i.ci = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = xor i32 %i.ck, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsPYQCUnoTxQ_10collection10operations5types15RemoteShardInfoNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keymNCNCNvMNtNtB1b_10collection14collection_opsNtB39_10Collection12cluster_info0s0_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keymNCNvBY_16aggregate_shardss1_0E0EB14_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

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

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cf, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cd, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNvB15_16aggregate_shardss1_0E0EB1b_.exit
  %.sroa.021.0 = phi i8 [ %i.aw, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNvB15_16aggregate_shardss1_0E0EB1b_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNvB15_16aggregate_shardss1_0E0EB1b_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNvB14_16aggregate_shardss1_0E0EB1a_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetry7reverseBC_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 104
  %.val10.i = load i32, ptr %i.p, align 8, !alias.scope !239, !noalias !240, !noundef !5 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 48
  %.val11.i = load i32, ptr %i.q, align 8, !alias.scope !239, !noalias !240, !noundef !5
  %i.r = icmp uge i32 %.val10.i, %.val11.i        ; 2 uses
  %.not32.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.r, label %.preheader21.i, label %.preheader.i

.preheader21.i:                                   ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetry7reverseBC_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not32.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %.preheader21.i, %bb.l
  %.val9.i = phi i32 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader21.i ]
  %.sroa.01.0.i23.i = phi i64 [ %i.v, %bb.l ], [ 2, %.preheader21.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.0.i23.i
  %i.t = getelementptr i8, ptr %i.s, i64 48
  %.val8.i = load i32, ptr %i.t, align 8, !alias.scope !239, !noalias !240, !noundef !5 ; 2 uses
  %i.u = icmp ult i32 %.val8.i, %.val9.i
  br i1 %i.u, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNvB14_16aggregate_shardss1_0E0EB1a_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.v = add nuw nsw i64 %.sroa.01.0.i23.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.v, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNvB14_16aggregate_shardss1_0E0EB1a_.exit.i, label %.lr.ph.i

.lr.ph27.i:                                       ; preds = %.preheader.i, %bb.m
  %.val7.i = phi i32 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader.i ]
  %.sroa.01.1.i26.i = phi i64 [ %i.z, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.1.i26.i
  %i.x = getelementptr i8, ptr %i.w, i64 48
  %.val.i = load i32, ptr %i.x, align 8, !alias.scope !239, !noalias !240, !noundef !5 ; 2 uses
  %i.y = icmp ult i32 %.val.i, %.val7.i
  br i1 %i.y, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNvB14_16aggregate_shardss1_0E0EB1a_.exit.i

bb.m:                                             ; preds = %.lr.ph27.i
  %i.z = add nuw nsw i64 %.sroa.01.1.i26.i, 1     ; 2 uses
  %exitcond35.not.i = icmp eq i64 %i.z, %i.m
  br i1 %exitcond35.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNvB14_16aggregate_shardss1_0E0EB1a_.exit.i, label %.lr.ph27.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNvB14_16aggregate_shardss1_0E0EB1a_.exit.i: ; preds = %bb.m, %.lr.ph27.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i23.i, %.lr.ph.i ], [ %.sroa.01.1.i26.i, %.lr.ph27.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.aa = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aa)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keymNCNvB14_16aggregate_shardss1_0E0EB1a_.exit.i
  %i.ab = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ab, 0
  %or.cond.i = or i1 %i.r, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetry7reverseBC_.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNvB15_16aggregate_shardss1_0E0EB1b_.exit

bb.p:                                             ; preds = %bb.i
  %..i12.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keymNCNvB17_16aggregate_shardss1_0E0EB1d_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i12.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.ad = shl nuw nsw i64 %..i12.i, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNvB15_16aggregate_shardss1_0E0EB1b_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetry7reverseBC_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryEB18_.exit.i.i.i, %.preheader21.i, %bb.n, %bb.j
  %.sroa.0.0.i18.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader21.i ], [ %.sroa.0.0.i495660.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryEB18_.exit.i.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNvB15_16aggregate_shardss1_0E0EB1b_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ah = phi i64 [ %i.ab, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i495660.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.0.i495660.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryEB18_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.an, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryEB18_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.aj = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ak = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.al = getelementptr [56 x i8], ptr %i.ai, i64 %i.aj
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al, i64 noundef 7)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryEB18_.exit.i.i.i unwind label %bb.q, !noalias !240

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !noalias !240
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryEB18_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.an = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.an, %i.ah
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetry7reverseBC_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keymNCNvB15_16aggregate_shardss1_0E0EB1b_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetry7reverseBC_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ag, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetry7reverseBC_.exit.i ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.ao = lshr i64 %.sroa.023.0, 1
  %i.ap = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aq = sub nsw i64 %factor, %i.ao
  %i.ar = add nuw i64 %i.ap, %factor
  %i.as = mul i64 %i.aq, %.sroa.0.0
  %i.at = mul i64 %i.ar, %.sroa.0.0
  %i.au = xor i64 %i.at, %i.as
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.au, i1 false)
  %i.aw = trunc nuw nsw i64 %i.av to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNvB18_16aggregate_shardss1_0E0EB1e_.exit
  %.sroa.02.136 = phi i64 [ %i.ax, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNvB18_16aggregate_shardss1_0E0EB1e_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNvB18_16aggregate_shardss1_0E0EB1e_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ax = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.az, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNvB18_16aggregate_shardss1_0E0EB1e_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNvB18_16aggregate_shardss1_0E0EB1e_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNvB18_16aggregate_shardss1_0E0EB1e_.exit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bb, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ax
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !5 ; 3 uses
  %i.be = lshr i64 %i.bd, 1                       ; 5 uses
  %i.bf = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bg = add nuw i64 %i.be, %i.bf                ; 5 uses
  %i.bh = sub i64 %.sroa.09.0, %i.bg
  %i.bi = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.bh ; 3 uses
  %i.bj = icmp samesign ugt i64 %i.bg, %3
  %i.bk = trunc i64 %.sroa.023.135 to i1
  %i.bl = or i64 %i.bd, %.sroa.023.135
  %i.bm = trunc i64 %i.bl to i1
  %or.cond3.i = or i1 %i.bj, %i.bm
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = trunc i64 %i.bd to i1
  br i1 %i.bn, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bo = shl nuw nsw i64 %i.bg, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNvB18_16aggregate_shardss1_0E0EB1e_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bk, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bp = or i64 %i.be, 1
  %i.bq = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 1
  %i.bt = xor i32 %i.bs, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keymNCNvB17_16aggregate_shardss1_0E0EB1d_(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 164703072086692426) %i.be, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.bt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw [56 x i8], ptr %i.bi, i64 %i.be
  %i.bv = or i64 %i.bf, 1
  %i.bw = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keymNCNvB17_16aggregate_shardss1_0E0EB1d_(ptr noalias nofree noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 164703072086692426) %i.bf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keymNCNvBZ_16aggregate_shardss1_0E0EB15_(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 164703072086692426) %i.bg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i64 noundef %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ca = shl nuw nsw i64 %i.bg, 1
  %i.cb = or disjoint i64 %i.ca, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNvB18_16aggregate_shardss1_0E0EB1e_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keymNCNvB18_16aggregate_shardss1_0E0EB1e_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cb, %bb.x ], [ %i.bo, %bb.t ] ; 2 uses
  %i.cc = icmp ugt i64 %i.ax, 1
  br i1 %i.cc, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cd = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.ce = lshr i64 %.sroa.018.0, 1
  %i.cf = add nuw i64 %i.ce, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cg = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cg, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ch = or i64 %1, 1
  %i.ci = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = xor i32 %i.ck, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry25DistributedShardTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keymNCNvB17_16aggregate_shardss1_0E0EB1d_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keyyNCNvBY_16aggregate_shardss0_0E0EB14_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 48038396025285291) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 48038396025285291) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

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

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cf, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cd, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyyNCNvB15_16aggregate_shardss0_0E0EB1b_.exit
  %.sroa.021.0 = phi i8 [ %i.aw, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyyNCNvB15_16aggregate_shardss0_0E0EB1b_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyyNCNvB15_16aggregate_shardss0_0E0EB1b_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [192 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyyNCNvB14_16aggregate_shardss0_0E0EB1a_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetry7reverseBC_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 320
  %.val10.i = load i64, ptr %i.p, align 8, !alias.scope !245, !noalias !246, !noundef !5 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 128
  %.val11.i = load i64, ptr %i.q, align 8, !alias.scope !245, !noalias !246, !noundef !5
  %i.r = icmp uge i64 %.val10.i, %.val11.i        ; 2 uses
  %.not32.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.r, label %.preheader21.i, label %.preheader.i

.preheader21.i:                                   ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetry7reverseBC_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not32.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %.preheader21.i, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader21.i ]
  %.sroa.01.0.i23.i = phi i64 [ %i.v, %bb.l ], [ 2, %.preheader21.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [192 x i8], ptr %i.n, i64 %.sroa.01.0.i23.i
  %i.t = getelementptr i8, ptr %i.s, i64 128
  %.val8.i = load i64, ptr %i.t, align 8, !alias.scope !245, !noalias !246, !noundef !5 ; 2 uses
  %i.u = icmp ult i64 %.val8.i, %.val9.i
  br i1 %i.u, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyyNCNvB14_16aggregate_shardss0_0E0EB1a_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.v = add nuw nsw i64 %.sroa.01.0.i23.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.v, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyyNCNvB14_16aggregate_shardss0_0E0EB1a_.exit.i, label %.lr.ph.i

.lr.ph27.i:                                       ; preds = %.preheader.i, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader.i ]
  %.sroa.01.1.i26.i = phi i64 [ %i.z, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [192 x i8], ptr %i.n, i64 %.sroa.01.1.i26.i
  %i.x = getelementptr i8, ptr %i.w, i64 128
  %.val.i = load i64, ptr %i.x, align 8, !alias.scope !245, !noalias !246, !noundef !5 ; 2 uses
  %i.y = icmp ult i64 %.val.i, %.val7.i
  br i1 %i.y, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyyNCNvB14_16aggregate_shardss0_0E0EB1a_.exit.i

bb.m:                                             ; preds = %.lr.ph27.i
  %i.z = add nuw nsw i64 %.sroa.01.1.i26.i, 1     ; 2 uses
  %exitcond35.not.i = icmp eq i64 %i.z, %i.m
  br i1 %exitcond35.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyyNCNvB14_16aggregate_shardss0_0E0EB1a_.exit.i, label %.lr.ph27.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyyNCNvB14_16aggregate_shardss0_0E0EB1a_.exit.i: ; preds = %bb.m, %.lr.ph27.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i23.i, %.lr.ph.i ], [ %.sroa.01.1.i26.i, %.lr.ph27.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.aa = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aa)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keyyNCNvB14_16aggregate_shardss0_0E0EB1a_.exit.i
  %i.ab = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ab, 0
  %or.cond.i = or i1 %i.r, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetry7reverseBC_.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 48038396025285291) %i.m, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyyNCNvB15_16aggregate_shardss0_0E0EB1b_.exit

bb.p:                                             ; preds = %bb.i
  %..i12.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 48038396025285291) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyyNCNvB17_16aggregate_shardss0_0E0EB1d_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i12.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 48038396025285291) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(192) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  %i.ad = shl nuw nsw i64 %..i12.i, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyyNCNvB15_16aggregate_shardss0_0E0EB1b_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetry7reverseBC_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryEB18_.exit.i.i.i, %.preheader21.i, %bb.n, %bb.j
  %.sroa.0.0.i18.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader21.i ], [ %.sroa.0.0.i495660.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryEB18_.exit.i.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyyNCNvB15_16aggregate_shardss0_0E0EB1b_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ah = phi i64 [ %i.ab, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i495660.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [192 x i8], ptr %i.n, i64 %.sroa.0.0.i495660.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryEB18_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.an, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryEB18_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.aj = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ak = getelementptr inbounds nuw [192 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.al = getelementptr [192 x i8], ptr %i.ai, i64 %i.aj
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al, i64 noundef 24)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryEB18_.exit.i.i.i unwind label %bb.q, !noalias !246

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !noalias !246
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryEB18_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.an = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.an, %i.ah
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetry7reverseBC_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keyyNCNvB15_16aggregate_shardss0_0E0EB1b_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetry7reverseBC_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ag, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetry7reverseBC_.exit.i ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.ao = lshr i64 %.sroa.023.0, 1
  %i.ap = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aq = sub nsw i64 %factor, %i.ao
  %i.ar = add nuw i64 %i.ap, %factor
  %i.as = mul i64 %i.aq, %.sroa.0.0
  %i.at = mul i64 %i.ar, %.sroa.0.0
  %i.au = xor i64 %i.at, %i.as
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.au, i1 false)
  %i.aw = trunc nuw nsw i64 %i.av to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyyNCNvB18_16aggregate_shardss0_0E0EB1e_.exit
  %.sroa.02.136 = phi i64 [ %i.ax, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyyNCNvB18_16aggregate_shardss0_0E0EB1e_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyyNCNvB18_16aggregate_shardss0_0E0EB1e_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ax = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.az, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyyNCNvB18_16aggregate_shardss0_0E0EB1e_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyyNCNvB18_16aggregate_shardss0_0E0EB1e_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyyNCNvB18_16aggregate_shardss0_0E0EB1e_.exit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bb, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ax
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !5 ; 3 uses
  %i.be = lshr i64 %i.bd, 1                       ; 5 uses
  %i.bf = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bg = add nuw i64 %i.be, %i.bf                ; 5 uses
  %i.bh = sub i64 %.sroa.09.0, %i.bg
  %i.bi = getelementptr inbounds nuw [192 x i8], ptr %0, i64 %i.bh ; 3 uses
  %i.bj = icmp samesign ugt i64 %i.bg, %3
  %i.bk = trunc i64 %.sroa.023.135 to i1
  %i.bl = or i64 %i.bd, %.sroa.023.135
  %i.bm = trunc i64 %i.bl to i1
  %or.cond3.i = or i1 %i.bj, %i.bm
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = trunc i64 %i.bd to i1
  br i1 %i.bn, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bo = shl nuw nsw i64 %i.bg, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyyNCNvB18_16aggregate_shardss0_0E0EB1e_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bk, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bp = or i64 %i.be, 1
  %i.bq = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 1
  %i.bt = xor i32 %i.bs, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyyNCNvB17_16aggregate_shardss0_0E0EB1d_(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 48038396025285291) %i.be, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 48038396025285291) %3, i32 noundef %i.bt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(192) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw [192 x i8], ptr %i.bi, i64 %i.be
  %i.bv = or i64 %i.bf, 1
  %i.bw = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyyNCNvB17_16aggregate_shardss0_0E0EB1d_(ptr noalias nofree noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 48038396025285291) %i.bf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 48038396025285291) %3, i32 noundef %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(192) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keyyNCNvBZ_16aggregate_shardss0_0E0EB15_(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 48038396025285291) %i.bg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 48038396025285291) %3, i64 noundef %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ca = shl nuw nsw i64 %i.bg, 1
  %i.cb = or disjoint i64 %i.ca, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyyNCNvB18_16aggregate_shardss0_0E0EB1e_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyyNCNvB18_16aggregate_shardss0_0E0EB1e_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cb, %bb.x ], [ %i.bo, %bb.t ] ; 2 uses
  %i.cc = icmp ugt i64 %i.ax, 1
  br i1 %i.cc, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cd = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.ce = lshr i64 %.sroa.018.0, 1
  %i.cf = add nuw i64 %i.ce, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cg = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cg, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ch = or i64 %1, 1
  %i.ci = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = xor i32 %i.ck, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry27DistributedReplicaTelemetryNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyyNCNvB17_16aggregate_shardss0_0E0EB1d_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 48038396025285291) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 48038396025285291) %3, i32 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(192) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortRNtNtCsexYYUdYSQU6_5alloc6string6StringNvYBW_NtNtBa_3cmp10PartialOrd2ltECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

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

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dh, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.df, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runRNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECsl8OoimOLbh_6qdrant.exit
  %.sroa.021.0 = phi i8 [ %i.by, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runRNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECsl8OoimOLbh_6qdrant.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runRNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECsl8OoimOLbh_6qdrant.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCsexYYUdYSQU6_5alloc6string6String7reverseCsl8OoimOLbh_6qdrant.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val10.i = load ptr, ptr %i.p, align 8, !alias.scope !267, !noalias !268, !nonnull !5, !align !269, !noundef !5 ; 2 uses
  %.val11.i = load ptr, ptr %i.n, align 8, !alias.scope !267, !noalias !268, !nonnull !5, !align !269, !noundef !5 ; 2 uses
  %i.q = getelementptr i8, ptr %.val10.i, i64 8
  %.val.i.i.i = load ptr, ptr %i.q, align 8, !noalias !270, !nonnull !5, !noundef !5 ; 3 uses
  %i.r = getelementptr i8, ptr %.val10.i, i64 16
  %.val1.i.i.i = load i64, ptr %i.r, align 8, !noalias !270, !noundef !5 ; 4 uses
  %i.s = getelementptr i8, ptr %.val11.i, i64 8
  %.val2.i.i.i = load ptr, ptr %i.s, align 8, !noalias !270, !nonnull !5, !noundef !5
  %i.t = getelementptr i8, ptr %.val11.i, i64 16
  %.val3.i.i.i = load i64, ptr %i.t, align 8, !noalias !270, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val1.i.i.i, i64 range(i64 0, -9223372036854775808) %.val3.i.i.i)
  %i.u = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.val2.i.i.i, i64 %spec.store.select.i.i.i.i.i.i.i), !alias.scope !271, !noalias !270 ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp eq i32 %i.u, 0
  %i.x = sub nsw i64 %.val1.i.i.i, %.val3.i.i.i
  %spec.select.i.i.i.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.v
  %i.y = icmp slt i64 %spec.select.i.i.i.i.i.i.i, 0 ; 2 uses
  %.not44.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.y, label %.preheader.i, label %.preheader33.i

.preheader33.i:                                   ; preds = %bb.k
  br i1 %.not44.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCsexYYUdYSQU6_5alloc6string6String7reverseCsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not44.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCsexYYUdYSQU6_5alloc6string6String12split_at_mutCsl8OoimOLbh_6qdrant.exit11.preheader.i.i.i, label %.lr.ph39.i

.lr.ph.i:                                         ; preds = %.preheader33.i, %bb.l
  %.val3.i.i15.i = phi i64 [ %.val1.i.i13.i, %bb.l ], [ %.val1.i.i.i, %.preheader33.i ] ; 2 uses
  %.val2.i.i14.i = phi ptr [ %.val.i.i12.i, %bb.l ], [ %.val.i.i.i, %.preheader33.i ]
  %.sroa.01.0.i35.i = phi i64 [ %i.ah, %bb.l ], [ 2, %.preheader33.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.0.i35.i
  %.val8.i = load ptr, ptr %i.z, align 8, !alias.scope !267, !noalias !268, !nonnull !5, !align !269, !noundef !5 ; 2 uses
  %i.aa = getelementptr i8, ptr %.val8.i, i64 8
  %.val.i.i12.i = load ptr, ptr %i.aa, align 8, !noalias !270, !nonnull !5, !noundef !5 ; 2 uses
  %i.ab = getelementptr i8, ptr %.val8.i, i64 16
  %.val1.i.i13.i = load i64, ptr %i.ab, align 8, !noalias !270, !noundef !5 ; 3 uses
  %spec.store.select.i.i.i.i.i.i16.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val1.i.i13.i, i64 range(i64 0, -9223372036854775808) %.val3.i.i15.i)
  %i.ac = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i12.i, ptr nonnull readonly %.val2.i.i14.i, i64 %spec.store.select.i.i.i.i.i.i16.i), !alias.scope !272, !noalias !270 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = sub nsw i64 %.val1.i.i13.i, %.val3.i.i15.i
  %spec.select.i.i.i.i.i.i17.i = select i1 %i.ae, i64 %i.af, i64 %i.ad
  %i.ag = icmp slt i64 %spec.select.i.i.i.i.i.i17.i, 0
  br i1 %i.ag, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECsl8OoimOLbh_6qdrant.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ah = add nuw nsw i64 %.sroa.01.0.i35.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ah, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph.i

.lr.ph39.i:                                       ; preds = %.preheader.i, %bb.m
  %.val3.i.i21.i = phi i64 [ %.val1.i.i19.i, %bb.m ], [ %.val1.i.i.i, %.preheader.i ] ; 2 uses
  %.val2.i.i20.i = phi ptr [ %.val.i.i18.i, %bb.m ], [ %.val.i.i.i, %.preheader.i ]
  %.sroa.01.1.i38.i = phi i64 [ %i.aq, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.1.i38.i
  %.val.i = load ptr, ptr %i.ai, align 8, !alias.scope !267, !noalias !268, !nonnull !5, !align !269, !noundef !5 ; 2 uses
  %i.aj = getelementptr i8, ptr %.val.i, i64 8
  %.val.i.i18.i = load ptr, ptr %i.aj, align 8, !noalias !270, !nonnull !5, !noundef !5 ; 2 uses
  %i.ak = getelementptr i8, ptr %.val.i, i64 16
  %.val1.i.i19.i = load i64, ptr %i.ak, align 8, !noalias !270, !noundef !5 ; 3 uses
  %spec.store.select.i.i.i.i.i.i22.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val1.i.i19.i, i64 range(i64 0, -9223372036854775808) %.val3.i.i21.i)
  %i.al = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i18.i, ptr nonnull readonly %.val2.i.i20.i, i64 %spec.store.select.i.i.i.i.i.i22.i), !alias.scope !273, !noalias !270 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %i.ao = sub nsw i64 %.val1.i.i19.i, %.val3.i.i21.i
  %spec.select.i.i.i.i.i.i23.i = select i1 %i.an, i64 %i.ao, i64 %i.am
  %i.ap = icmp slt i64 %spec.select.i.i.i.i.i.i23.i, 0
  br i1 %i.ap, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECsl8OoimOLbh_6qdrant.exit.i

bb.m:                                             ; preds = %.lr.ph39.i
  %i.aq = add nuw nsw i64 %.sroa.01.1.i38.i, 1    ; 2 uses
  %exitcond47.not.i = icmp eq i64 %i.aq, %i.m
  br i1 %exitcond47.not.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECsl8OoimOLbh_6qdrant.exit.i, label %.lr.ph39.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph39.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i38.i, %.lr.ph39.i ], [ %.sroa.01.0.i35.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.ar = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.ar)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECsl8OoimOLbh_6qdrant.exit.i
  br i1 %i.y, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCsexYYUdYSQU6_5alloc6string6String7reverseCsl8OoimOLbh_6qdrant.exit.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 %.sroa.01.0)
  %i.as = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runRNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECsl8OoimOLbh_6qdrant.exit

bb.p:                                             ; preds = %bb.i
  %..i24.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortRNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i24.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #10
  %i.at = shl nuw nsw i64 %..i24.i, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runRNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECsl8OoimOLbh_6qdrant.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCsexYYUdYSQU6_5alloc6string6String7reverseCsl8OoimOLbh_6qdrant.exit.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCsexYYUdYSQU6_5alloc6string6String12split_at_mutCsl8OoimOLbh_6qdrant.exit11.i.i.i, %middle.block, %.preheader33.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i30.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader33.i ], [ %.sroa.0.0.i667377.i, %middle.block ], [ %.sroa.0.0.i667377.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCsexYYUdYSQU6_5alloc6string6String12split_at_mutCsl8OoimOLbh_6qdrant.exit11.i.i.i ]
  %i.av = shl nuw nsw i64 %.sroa.0.0.i30.i, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runRNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECsl8OoimOLbh_6qdrant.exit

bb.q:                                             ; preds = %bb.n
  %i.ax = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %.not.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCsexYYUdYSQU6_5alloc6string6String7reverseCsl8OoimOLbh_6qdrant.exit.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCsexYYUdYSQU6_5alloc6string6String12split_at_mutCsl8OoimOLbh_6qdrant.exit11.preheader.i.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCsexYYUdYSQU6_5alloc6string6String12split_at_mutCsl8OoimOLbh_6qdrant.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.ay = phi i64 [ %i.ax, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i667377.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.0.i667377.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ay, 4
  br i1 %min.iters.check, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCsexYYUdYSQU6_5alloc6string6String12split_at_mutCsl8OoimOLbh_6qdrant.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCsexYYUdYSQU6_5alloc6string6String12split_at_mutCsl8OoimOLbh_6qdrant.exit11.preheader.i.i.i
  %n.vec = and i64 %i.ay, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ba = xor i64 %index, -1
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 4 uses
  %i.bc = getelementptr [8 x i8], ptr %i.az, i64 %i.ba ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load = load <2 x ptr>, ptr %i.bb, align 8, !alias.scope !276, !noalias !277
  %wide.load54 = load <2 x ptr>, ptr %i.bd, align 8, !alias.scope !276, !noalias !277
  %i.be = getelementptr i8, ptr %i.bc, i64 -8
  %i.bf = getelementptr i8, ptr %i.bc, i64 -24
  %wide.load55 = load <2 x i64>, ptr %i.be, align 8, !alias.scope !278, !noalias !279
  %wide.load56 = load <2 x i64>, ptr %i.bf, align 8, !alias.scope !278, !noalias !279
  %reverse = shufflevector <2 x i64> %wide.load55, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse57 = shufflevector <2 x i64> %wide.load56, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x i64> %reverse, ptr %i.bb, align 8, !alias.scope !276, !noalias !277
  store <2 x i64> %reverse57, ptr %i.bg, align 8, !alias.scope !276, !noalias !277
  %i.bh = getelementptr i8, ptr %i.bc, i64 -8
  %i.bi = getelementptr i8, ptr %i.bc, i64 -24
  %reverse58 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse59 = shufflevector <2 x ptr> %wide.load54, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse58, ptr %i.bh, align 8, !alias.scope !278, !noalias !279
  store <2 x ptr> %reverse59, ptr %i.bi, align 8, !alias.scope !278, !noalias !279
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !265

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCsexYYUdYSQU6_5alloc6string6String7reverseCsl8OoimOLbh_6qdrant.exit.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCsexYYUdYSQU6_5alloc6string6String12split_at_mutCsl8OoimOLbh_6qdrant.exit11.i.i.i.preheader

_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCsexYYUdYSQU6_5alloc6string6String12split_at_mutCsl8OoimOLbh_6qdrant.exit11.i.i.i.preheader: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCsexYYUdYSQU6_5alloc6string6String12split_at_mutCsl8OoimOLbh_6qdrant.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCsexYYUdYSQU6_5alloc6string6String12split_at_mutCsl8OoimOLbh_6qdrant.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCsexYYUdYSQU6_5alloc6string6String12split_at_mutCsl8OoimOLbh_6qdrant.exit11.i.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCsexYYUdYSQU6_5alloc6string6String12split_at_mutCsl8OoimOLbh_6qdrant.exit11.i.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCsexYYUdYSQU6_5alloc6string6String12split_at_mutCsl8OoimOLbh_6qdrant.exit11.i.i.i.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCsexYYUdYSQU6_5alloc6string6String12split_at_mutCsl8OoimOLbh_6qdrant.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.bp, %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCsexYYUdYSQU6_5alloc6string6String12split_at_mutCsl8OoimOLbh_6qdrant.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCsexYYUdYSQU6_5alloc6string6String12split_at_mutCsl8OoimOLbh_6qdrant.exit11.i.i.i.preheader ] ; 3 uses
  %i.bk = xor i64 %.sroa.0.016.i.i.i, -1
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.az, i64 %i.bk ; 2 uses
  %i.bn = load ptr, ptr %i.bl, align 8, !alias.scope !276, !noalias !277, !nonnull !5, !align !269, !noundef !5
  %i.bo = load i64, ptr %i.bm, align 8, !alias.scope !278, !noalias !279
  store i64 %i.bo, ptr %i.bl, align 8, !alias.scope !276, !noalias !277
  store ptr %i.bn, ptr %i.bm, align 8, !alias.scope !278, !noalias !279
  %i.bp = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bp, %i.ay
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCsexYYUdYSQU6_5alloc6string6String7reverseCsl8OoimOLbh_6qdrant.exit.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCsexYYUdYSQU6_5alloc6string6String12split_at_mutCsl8OoimOLbh_6qdrant.exit11.i.i.i, !llvm.loop !266

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runRNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCsexYYUdYSQU6_5alloc6string6String7reverseCsl8OoimOLbh_6qdrant.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.aw, %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCsexYYUdYSQU6_5alloc6string6String7reverseCsl8OoimOLbh_6qdrant.exit.i ], [ %i.au, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
  %i.bq = lshr i64 %.sroa.023.0, 1
  %i.br = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bs = sub nsw i64 %factor, %i.bq
  %i.bt = add nuw nsw i64 %i.br, %factor
  %i.bu = mul i64 %i.bs, %.sroa.0.0
  %i.bv = mul i64 %i.bt, %.sroa.0.0
  %i.bw = xor i64 %i.bv, %i.bu
  %i.bx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bw, i1 false)
  %i.by = trunc nuw nsw i64 %i.bx to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeRNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECsl8OoimOLbh_6qdrant.exit
  %.sroa.02.136 = phi i64 [ %i.bz, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeRNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeRNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bz = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.cb, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeRNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECsl8OoimOLbh_6qdrant.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeRNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECsl8OoimOLbh_6qdrant.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeRNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECsl8OoimOLbh_6qdrant.exit ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cd, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bz
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !5 ; 3 uses
  %i.cg = lshr i64 %i.cf, 1                       ; 5 uses
  %i.ch = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.ci = add nuw i64 %i.cg, %i.ch                ; 5 uses
  %i.cj = sub i64 %.sroa.09.0, %i.ci
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cj ; 3 uses
  %i.cl = icmp samesign ugt i64 %i.ci, %3
  %i.cm = trunc i64 %.sroa.023.135 to i1
  %i.cn = or i64 %i.cf, %.sroa.023.135
  %i.co = trunc i64 %i.cn to i1
  %or.cond3.i = or i1 %i.cl, %i.co
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cp = trunc i64 %i.cf to i1
  br i1 %i.cp, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cq = shl nuw nsw i64 %i.ci, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeRNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cm, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cr = or i64 %i.cg, 1
  %i.cs = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cr, i1 true)
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %i.cu = shl nuw nsw i32 %i.ct, 1
  %i.cv = xor i32 %i.cu, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortRNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 1152921504606846976) %i.cg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #10
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cg
  %i.cx = or i64 %i.ch, 1
  %i.cy = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cx, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 1
  %i.db = xor i32 %i.da, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortRNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.cw, i64 noundef range(i64 0, 1152921504606846976) %i.ch, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeRNtNtCsexYYUdYSQU6_5alloc6string6StringNvYBX_NtNtBa_3cmp10PartialOrd2ltECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 1152921504606846976) %i.ci, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.cg, ptr noalias nofree noundef nonnull %5)
  %i.dc = shl nuw nsw i64 %i.ci, 1
  %i.dd = or disjoint i64 %i.dc, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeRNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECsl8OoimOLbh_6qdrant.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeRNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.dd, %bb.x ], [ %i.cq, %bb.t ] ; 2 uses
  %i.de = icmp ugt i64 %i.bz, 1
  br i1 %i.de, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.df = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.dg = lshr i64 %.sroa.018.0, 1
  %i.dh = add nuw i64 %i.dg, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.di = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.di, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dj = or i64 %1, 1
  %i.dk = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.dj, i1 true)
  %i.dl = trunc nuw nsw i64 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 1
  %i.dn = xor i32 %i.dm, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortRNtNtCsexYYUdYSQU6_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1_NtNtNtCsiHzErX7aQFk_12futures_util6stream6stream3mapINtB5_3MapINtNtB9_4iter4IterINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1s_6filter6FilterIB2c_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs3TE53SMfxyL_6fs_err3dir8DirEntryENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB4b_10LocalShard4load0s1_0ENCB46_s2_0ENCB46_s3_0EENCB46_s4_0ENtNtCs3aP4uAeNgCL_12futures_core6stream6Stream9poll_nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.34 = alloca [16 x i8], align 8           ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs0_NtNtCsiHzErX7aQFk_12futures_util6stream4iterINtB5_4IterINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB13_6filter6FilterIB1N_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs3TE53SMfxyL_6fs_err3dir8DirEntryENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB3M_10LocalShard4load0s1_0ENCB3H_s2_0ENCB3H_s3_0EENtNtCs3aP4uAeNgCL_12futures_core6stream6Stream9poll_nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.d = load i64, ptr %i.b, align 8, !range !282, !noundef !5 ; 3 uses
  %i.e = icmp eq i64 %i.d, -2
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.34, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.34.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.d, ptr %i.a, align 8
  %.sroa.34.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.34.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.34, i64 16, i1 false)
  %i.f = call noundef nonnull ptr @_RNvXs_NtCsiHzErX7aQFk_12futures_util3fnsNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtBJ_10LocalShard4load0s4_0INtB4_6FnMut1NtNtCsG258MDvU3F_3std4path7PathBufE8call_mutCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.3.0 = phi ptr [ undef, %bb.b ], [ %i.f, %bb.d ], [ null, %bb.c ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.d ], [ 0, %bb.c ]
  %i.g = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.h = insertvalue { i64, ptr } %i.g, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCsiHzErX7aQFk_12futures_util6stream6stream3mapINtB5_3MapINtNtNtB9_10try_stream11into_stream10IntoStreamINtB1a_5MapOkINtNtNtCs5o4a4rbYuNS_10tokio_util5codec11framed_read10FramedReadNtNtNtNtCsjZG7hsAZr3B_5tokio2io4util3mem12DuplexStreamNtNtB28_11bytes_codec10BytesCodecENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards12shard_holderNtB4C_11ShardHolder21stream_shard_snapshot0s0_0EEINtNtBb_3fns8MapErrFnNCINvMNtNtB4G_6common15snapshot_streamNtB6E_14SnapshotStream10new_streamB1Q_NtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENtNtCs3aP4uAeNgCL_12futures_core6stream6Stream9poll_nextCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.sroa.2 = alloca [32 x i8], align 8            ; 2 uses
  %.sroa.53 = alloca [32 x i8], align 8           ; 4 uses
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs2_NtCs3aP4uAeNgCL_12futures_core6streamINtNtNtCsiHzErX7aQFk_12futures_util6stream10try_stream5MapOkINtNtNtCs5o4a4rbYuNS_10tokio_util5codec11framed_read10FramedReadNtNtNtNtCsjZG7hsAZr3B_5tokio2io4util3mem12DuplexStreamNtNtB1J_11bytes_codec10BytesCodecENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards12shard_holderNtB4d_11ShardHolder21stream_shard_snapshot0s0_0ENtB5_9TryStream13try_poll_nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.c = load i64, ptr %i.a, align 8, !range !6, !noundef !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.53)
  %i.e = trunc nuw i64 %i.c to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_RNvXse_NtCsiHzErX7aQFk_12futures_util3fnsINtB5_8MapErrFnNCINvMNtNtCsPYQCUnoTxQ_10collection6common15snapshot_streamNtBY_14SnapshotStream10new_streamINtNtNtB7_6stream10try_stream5MapOkINtNtNtCs5o4a4rbYuNS_10tokio_util5codec11framed_read10FramedReadNtNtNtNtCsjZG7hsAZr3B_5tokio2io4util3mem12DuplexStreamNtNtB30_11bytes_codec10BytesCodecENCNCNvMNtNtB12_6shards12shard_holderNtB5u_11ShardHolder21stream_shard_snapshot0s0_0ENtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EINtB5_6FnMut1INtNtB6P_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesB6J_EE8call_mutCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %.sroa.53, ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %.sroa.2)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.02.0 = phi i64 [ 1, %bb.d ], [ 0, %bb.c ]
  store i64 %.sroa.02.0, ptr %0, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.53, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.53)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCsiHzErX7aQFk_12futures_util6stream6stream3mapINtB5_3MapINtNtNtB9_10try_stream11into_stream10IntoStreamINtB1a_5MapOkINtNtNtCs5o4a4rbYuNS_10tokio_util5codec11framed_read10FramedReadNtNtNtNtCsjZG7hsAZr3B_5tokio2io4util3mem12DuplexStreamNtNtB28_11bytes_codec10BytesCodecENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards12shard_holderNtB4C_11ShardHolder21stream_shard_snapshot0s0_0EEINtNtBb_3fns8MapErrFnNCINvMNtNtB4G_6common15snapshot_streamNtB6E_14SnapshotStream10new_streamB1Q_NtNtNtCskKLDkoKarTP_4core2io5error5ErrorE0EENtNtCs3aP4uAeNgCL_12futures_core6stream6Stream9size_hintCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs0_NtNtNtCsiHzErX7aQFk_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtB7_5MapOkINtNtNtCs5o4a4rbYuNS_10tokio_util5codec11framed_read10FramedReadNtNtNtNtCsjZG7hsAZr3B_5tokio2io4util3mem12DuplexStreamNtNtB1I_11bytes_codec10BytesCodecENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards12shard_holderNtB4c_11ShardHolder21stream_shard_snapshot0s0_0EENtNtCs3aP4uAeNgCL_12futures_core6stream6Stream9size_hintCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCsiHzErX7aQFk_12futures_util6stream6stream3mapINtB5_3MapINtNtNtB9_10try_stream11into_stream10IntoStreamINtNtB9_17futures_unordered16FuturesUnorderedNCINvMs1_NtNtCshMzyYDJGtjv_3api4grpc22transport_channel_poolNtB2I_20TransportChannelPool20with_channel_timeoutINtNtCsgOCJwUSa4vG_5tonic8response8ResponseNtNtB2K_6qdrant26GetConsensusCommitResponseENCNCNvNtNtCsl8OoimOLbh_6qdrant6common6health20get_consensus_commit00NCB5O_0E0EEINtNtBb_3fns9InspectFnINtB74_12InspectErrFnNCNCNvMs_B5Q_NtB5Q_4Task20cluster_commit_index0s0_0EEENtNtCs3aP4uAeNgCL_12futures_core6stream6Stream9poll_nextB5U_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 3 uses
  %i.b = alloca [120 x i8], align 8               ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.3 = alloca [112 x i8], align 8           ; 2 uses
  %i.d = alloca [120 x i8], align 8               ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs2_NtCs3aP4uAeNgCL_12futures_core6streamINtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered16FuturesUnorderedNCINvMs1_NtNtCshMzyYDJGtjv_3api4grpc22transport_channel_poolNtB26_20TransportChannelPool20with_channel_timeoutINtNtCsgOCJwUSa4vG_5tonic8response8ResponseNtNtB28_6qdrant26GetConsensusCommitResponseENCNCNvNtNtCsl8OoimOLbh_6qdrant6common6health20get_consensus_commit00NCB5c_0E0ENtB5_9TryStream13try_poll_nextB5i_(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.f = load i64, ptr %i.d, align 8, !range !283, !noundef !5 ; 3 uses
  %i.g = icmp eq i64 %i.f, -3
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.3.0..sroa_idx, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp eq i64 %i.f, -2
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.f, ptr %i.b, align 8
  %.sroa.3.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.3.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.3, i64 112, i1 false)
  call void @_RNvXs8_NtCsiHzErX7aQFk_12futures_util3fnsINtB5_9InspectFnINtB5_12InspectErrFnNCNCNvMs_NtNtCsl8OoimOLbh_6qdrant6common6healthNtB1m_4Task20cluster_commit_index0s0_0EEINtB5_6FnMut1INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsgOCJwUSa4vG_5tonic8response8ResponseNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant26GetConsensusCommitResponseEINtNtB4c_22transport_channel_pool12RequestErrorNtNtB3w_6status6StatusEEE8call_mutB1q_(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.a, ptr noalias nofree noundef nonnull %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(120) %i.b)
  %.sroa.04.0.copyload = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.04.0 = phi i64 [ %.sroa.04.0.copyload, %bb.d ], [ -2, %bb.c ]
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.56.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.56.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCsiHzErX7aQFk_12futures_util6stream6stream3mapINtB5_3MapINtNtNtB9_10try_stream11into_stream10IntoStreamINtNtCs2Co0DGPNz3P_14http_body_util6stream14BodyDataStreamINtNtNtB1V_11combinators7map_err6MapErrINtNtB2R_8box_body7BoxBodyNtNtCs14kzo5Se9zC_5bytes5bytes5BytesINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB53_6marker4SendNtB5A_4SyncEL_EEINvNtCsibN4lybXtLQ_7reqwest5error6decodeB4p_EEEEINtNtBb_3fns8MapErrFnINvMNtNtB4u_2io5errorNtNtNtB53_2io5error5Error5otherNtB6b_5ErrorEEENtNtCs3aP4uAeNgCL_12futures_core6stream6Stream9poll_nextCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.sroa.2 = alloca [32 x i8], align 8            ; 2 uses
  %.sroa.53 = alloca [32 x i8], align 8           ; 4 uses
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs2_NtCs3aP4uAeNgCL_12futures_core6streamINtNtCs2Co0DGPNz3P_14http_body_util6stream14BodyDataStreamINtNtNtBL_11combinators7map_err6MapErrINtNtB1H_8box_body7BoxBodyNtNtCs14kzo5Se9zC_5bytes5bytes5BytesINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB3S_6marker4SendNtB4p_4SyncEL_EEINvNtCsibN4lybXtLQ_7reqwest5error6decodeB3e_EEENtB5_9TryStream13try_poll_nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.c = load i64, ptr %i.a, align 8, !range !6, !noundef !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.53)
  %i.e = trunc nuw i64 %i.c to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_RNvXse_NtCsiHzErX7aQFk_12futures_util3fnsINtB5_8MapErrFnINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error5otherNtNtCsibN4lybXtLQ_7reqwest5error5ErrorEEINtB5_6FnMut1INtNtB1z_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesB2d_EE8call_mutCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %.sroa.53, ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %.sroa.2)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.02.0 = phi i64 [ 1, %bb.d ], [ 0, %bb.c ]
  store i64 %.sroa.02.0, ptr %0, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.53, i64 32, i1 false)
end_hunk_0
