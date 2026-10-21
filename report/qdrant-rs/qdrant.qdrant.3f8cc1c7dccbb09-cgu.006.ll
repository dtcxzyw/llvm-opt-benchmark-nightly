Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.006?download=true
inline.NumInlined: 9340
inline.NumDeleted: 3748
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXsc_NtNtCsiHzErX7aQFk_12futures_util6stream17futures_unorderedINtB6_16FuturesUnorderedNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB1x_15ShardReplicaSet5count0EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorB1q_E9from_iterINtNtNtB35_8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTRINtNtB4M_4sync3ArcB2t_EINtNtB37_6option6OptionRNtNtCs607s0NAIaWN_7segment5types8ShardKeyEEENCNCNvMNtNtB1B_10collection9point_opsNtB77_10Collection5count00EECsl8OoimOLbh_6qdrant:bb.a

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1648) #25
          to label %.noexc.i unwind label %bb.c, !noalias !9205

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB2w_15ShardReplicaSet5count0EEECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 dereferenceable(1648) %i.b) #24
          to label %bb.j unwind label %bb.d, !noalias !9205

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !9205
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB2i_15ShardReplicaSet5count0EEE3newCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1648) %i.f, ptr noundef nonnull align 8 dereferenceable(1648) %i.b, i64 1648, i1 false), !noalias !9205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9205
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9205
  store i64 1, ptr %i.a, align 8, !noalias !9205
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.l, align 8, !noalias !9205
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.m, align 8, !noalias !9205
  %.sroa.4.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx10.i, align 8, !noalias !9205
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx.i, align 8, !noalias !9205
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.k, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !9205
  %.sroa.612.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.j, ptr %.sroa.612.0..sroa_idx.i, align 8, !noalias !9205
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !9207
  %i.n = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 9057) 64, i64 noundef 8) #23, !noalias !9207 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.h, !prof !40

bb.e:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB2i_15ShardReplicaSet5count0EEE3newCsl8OoimOLbh_6qdrant.exit.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #25
          to label %.noexc24.i unwind label %bb.f, !noalias !9205

.noexc24.i:                                       ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB2X_15ShardReplicaSet5count0EEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #24
          to label %bb.j unwind label %bb.g, !noalias !9205

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !9205
  unreachable

bb.h:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB2i_15ShardReplicaSet5count0EEE3newCsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !9205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.n, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTRINtNtB14_4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEINtNtBc_6option6OptionRNtNtCs607s0NAIaWN_7segment5types8ShardKeyEEENCNCNvMNtNtB2b_10collection9point_opsNtB4q_10Collection5count00ENtNtNtBa_6traits8iterator8Iterator4foldINtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered16FuturesUnorderedNCNvMNtB27_8read_opsB25_5count0ENCINvXsc_B5Z_B5W_INtNtB5n_7collect12FromIteratorB7d_E9from_iterBN_E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.i:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTRINtNtB1g_4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEINtNtB4_6option6OptionRNtNtCs607s0NAIaWN_7segment5types8ShardKeyEEENCNCNvMNtNtB2n_10collection9point_opsNtB4C_10Collection5count00EECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.j
  resume { ptr, i32 } %eh.lpad-body

bb.j:                                             ; preds = %bb.c, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRINtNtB9_4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEINtNtCskKLDkoKarTP_4core6option6OptionRNtNtCs607s0NAIaWN_7segment5types8ShardKeyEEENtNtNtB2r_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTRINtNtB1g_4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEINtNtB4_6option6OptionRNtNtCs607s0NAIaWN_7segment5types8ShardKeyEEENCNCNvMNtNtB2n_10collection9point_opsNtB4C_10Collection5count00EECsl8OoimOLbh_6qdrant.exit unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsc_NtNtCsiHzErX7aQFk_12futures_util6stream17futures_unorderedINtB6_16FuturesUnorderedNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB1x_15ShardReplicaSet5facet0EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorB1q_E9from_iterINtNtNtB35_8adapters3map3MapINtNtNtB37_5slice4iter4IterTRINtNtCsexYYUdYSQU6_5alloc4sync3ArcB2t_EINtNtB37_6option6OptionRNtNtCs607s0NAIaWN_7segment5types8ShardKeyEEENCNCNvMNtNtB1B_10collection5facetNtB70_10Collection14facet_internal00EECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [1624 x i8], align 8              ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9214
  store i64 1, ptr %i.b, align 8, !noalias !9214
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.d, align 8, !noalias !9214
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.e, align 8, !noalias !9214
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !9214
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1584
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1616
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i, i8 0, i64 32, i1 false), !noalias !9214
  store i8 1, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !9214
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1617
  store i8 0, ptr %.sroa.10.0..sroa_idx.i, align 1, !noalias !9214
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !9215
  %i.f = tail call noundef align 8 dereferenceable_or_null(1624) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 9057) 1624, i64 noundef 8) #23, !noalias !9215 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB2i_15ShardReplicaSet5facet0EEE3newCsl8OoimOLbh_6qdrant.exit.i, !prof !40

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1624) #25
          to label %.noexc.i unwind label %bb.c, !noalias !9214

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB2w_15ShardReplicaSet5facet0EEECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 dereferenceable(1624) %i.b) #24
          to label %common.resume unwind label %bb.d, !noalias !9214

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !9214
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.c ], [ %i.p, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB2i_15ShardReplicaSet5facet0EEE3newCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1624) %i.f, ptr noundef nonnull align 8 dereferenceable(1624) %i.b, i64 1624, i1 false), !noalias !9214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9214
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9214
  store i64 1, ptr %i.a, align 8, !noalias !9214
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.l, align 8, !noalias !9214
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.m, align 8, !noalias !9214
  %.sroa.4.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx10.i, align 8, !noalias !9214
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx.i, align 8, !noalias !9214
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.k, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !9214
  %.sroa.612.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.j, ptr %.sroa.612.0..sroa_idx.i, align 8, !noalias !9214
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !9216
  %i.n = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 9057) 64, i64 noundef 8) #23, !noalias !9216 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.h, !prof !40

bb.e:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB2i_15ShardReplicaSet5facet0EEE3newCsl8OoimOLbh_6qdrant.exit.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #25
          to label %.noexc24.i unwind label %bb.f, !noalias !9214

.noexc24.i:                                       ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB2X_15ShardReplicaSet5facet0EEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #24
          to label %common.resume unwind label %bb.g, !noalias !9214

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !9214
  unreachable

bb.h:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered4task4TaskNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB2i_15ShardReplicaSet5facet0EEE3newCsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !9214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.n, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEINtNtBc_6option6OptionRNtNtCs607s0NAIaWN_7segment5types8ShardKeyEEENCNCNvMNtNtB23_10collection5facetNtB4i_10Collection14facet_internal00ENtNtNtBa_6traits8iterator8Iterator4foldINtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered16FuturesUnorderedNCNvMNtB1Z_8read_opsB1X_5facet0ENCINvXsc_B5X_B5U_INtNtB5l_7collect12FromIteratorB7b_E9from_iterBN_E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtNtCsiHzErX7aQFk_12futures_util6stream17futures_unorderedINtB6_16FuturesUnorderedINtNtNtBa_6future6either6EitherINtNtB1v_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB2p_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecIB4u_IB4u_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMNtB2p_8read_opsB3A_11query_batch00E0s_0NCB2h_s0_0EIB1W_INtNtCskKLDkoKarTP_4core3pin3PinINtNtB4y_5boxed3BoxDNtNtNtB71_6future6future6Futurep6OutputINtNtB71_6result6ResultB4t_NtNtNtB2t_10operations5types15CollectionErrorENtNtB71_6marker4SendEL_EENCNCB2h_s2_00EEEINtNtNtNtB71_4iter6traits7collect6ExtendB1q_E6extendINtNtB71_6option6OptionB1q_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %.promoted = load i64, ptr %i.b, align 8        ; 2 uses
  %.not4 = icmp eq i64 %.promoted, -1
  br i1 %.not4, label %bb.b, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.promoted, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  invoke void @_RNvMs4_NtNtCsiHzErX7aQFk_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtNtB9_6future6either6EitherINtNtB1u_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB2o_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecIB4t_IB4t_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMNtB2o_8read_opsB3z_11query_batch00E0s_0NCB2g_s0_0EIB1V_INtNtCskKLDkoKarTP_4core3pin3PinINtNtB4x_5boxed3BoxDNtNtNtB70_6future6future6Futurep6OutputINtNtB70_6result6ResultB4s_NtNtNtB2s_10operations5types15CollectionErrorENtNtB70_6marker4SendEL_EENCNCB2g_s2_00EEE4pushCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.a)
          to label %._crit_edge.split.us unwind label %.split

._crit_edge.split.us:                             ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

.split:                                           ; preds = %.lr.ph.split.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %i.b, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherINtNtB12_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB2l_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecIB4q_IB4q_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMNtB2l_8read_opsB3w_11query_batch00E0s_0NCB2d_s0_0EIB1S_INtNtB4_3pin3PinINtNtB4u_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultB4p_NtNtNtB2p_10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EENCNCB2d_s2_00EEEECsl8OoimOLbh_6qdrant(ptr noundef nonnull readonly align 8 %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherINtNtB14_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB2n_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecIB4s_IB4s_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMNtB2n_8read_opsB3y_11query_batch00E0s_0NCB2f_s0_0EIB1U_INtNtB4_3pin3PinINtNtB4w_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultB4r_NtNtNtB2r_10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EENCNCB2f_s2_00EEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.c

bb.b:                                             ; preds = %._crit_edge.split.us, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %.split
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherINtNtB14_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB2n_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecIB4s_IB4s_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMNtB2n_8read_opsB3y_11query_batch00E0s_0NCB2f_s0_0EIB1U_INtNtB4_3pin3PinINtNtB4w_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultB4r_NtNtNtB2r_10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EENCNCB2f_s2_00EEEECsl8OoimOLbh_6qdrant.exit: ; preds = %.split
  resume { ptr, i32 } %lpad.loopexit.split-lp
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtNtCsiHzErX7aQFk_12futures_util6stream17futures_unorderedINtB6_16FuturesUnorderedINtNtNtBa_6future6either6EitherINtNtB1v_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB2p_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecIB4u_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCNCNvMNtB2p_8read_opsB3A_11core_search00E0s_0NCB2h_s0_0EIB1W_INtNtCskKLDkoKarTP_4core3pin3PinINtNtB4y_5boxed3BoxDNtNtNtB6V_6future6future6Futurep6OutputINtNtB6V_6result6ResultB4t_NtNtNtB2t_10operations5types15CollectionErrorENtNtB6V_6marker4SendEL_EENCNCB2h_s2_00EEEINtNtNtNtB6V_4iter6traits7collect6ExtendB1q_E6extendINtNtB6V_6option6OptionB1q_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %.promoted = load i64, ptr %i.b, align 8        ; 2 uses
  %.not4 = icmp eq i64 %.promoted, -1
  br i1 %.not4, label %bb.b, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.promoted, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  invoke void @_RNvMs4_NtNtCsiHzErX7aQFk_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtNtB9_6future6either6EitherINtNtB1u_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB2o_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecIB4t_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCNCNvMNtB2o_8read_opsB3z_11core_search00E0s_0NCB2g_s0_0EIB1V_INtNtCskKLDkoKarTP_4core3pin3PinINtNtB4x_5boxed3BoxDNtNtNtB6U_6future6future6Futurep6OutputINtNtB6U_6result6ResultB4s_NtNtNtB2s_10operations5types15CollectionErrorENtNtB6U_6marker4SendEL_EENCNCB2g_s2_00EEE4pushCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.a)
          to label %._crit_edge.split.us unwind label %.split

._crit_edge.split.us:                             ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

.split:                                           ; preds = %.lr.ph.split.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %i.b, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherINtNtB12_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB2l_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecIB4q_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCNCNvMNtB2l_8read_opsB3w_11core_search00E0s_0NCB2d_s0_0EIB1S_INtNtB4_3pin3PinINtNtB4u_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultB4p_NtNtNtB2p_10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EENCNCB2d_s2_00EEEECsl8OoimOLbh_6qdrant(ptr noundef nonnull readonly align 8 %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherINtNtB14_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB2n_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecIB4s_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCNCNvMNtB2n_8read_opsB3y_11core_search00E0s_0NCB2f_s0_0EIB1U_INtNtB4_3pin3PinINtNtB4w_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultB4r_NtNtNtB2r_10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EENCNCB2f_s2_00EEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.c

bb.b:                                             ; preds = %._crit_edge.split.us, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %.split
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherINtNtB14_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB2n_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecIB4s_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCNCNvMNtB2n_8read_opsB3y_11core_search00E0s_0NCB2f_s0_0EIB1U_INtNtB4_3pin3PinINtNtB4w_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultB4r_NtNtNtB2r_10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EENCNCB2f_s2_00EEEECsl8OoimOLbh_6qdrant.exit: ; preds = %.split
  resume { ptr, i32 } %lpad.loopexit.split-lp
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtNtCsiHzErX7aQFk_12futures_util6stream17futures_unorderedINtB6_16FuturesUnorderedINtNtNtBa_6future6either6EitherINtNtB1v_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB2p_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENCNCNvMNtB2p_8read_opsB3A_9scroll_by00E0s_0NCB2h_s0_0EIB1W_INtNtCskKLDkoKarTP_4core3pin3PinINtNtB4y_5boxed3BoxDNtNtNtB79_6future6future6Futurep6OutputINtNtB79_6result6ResultB4t_NtNtNtB2t_10operations5types15CollectionErrorENtNtB79_6marker4SendEL_EENCNCB2h_s2_00EEEINtNtNtNtB79_4iter6traits7collect6ExtendB1q_E6extendINtNtB79_6option6OptionB1q_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %.promoted = load i64, ptr %i.b, align 8        ; 2 uses
  %.not4 = icmp eq i64 %.promoted, -1
  br i1 %.not4, label %bb.b, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.promoted, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  invoke void @_RNvMs4_NtNtCsiHzErX7aQFk_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtNtB9_6future6either6EitherINtNtB1u_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB2o_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENCNCNvMNtB2o_8read_opsB3z_9scroll_by00E0s_0NCB2g_s0_0EIB1V_INtNtCskKLDkoKarTP_4core3pin3PinINtNtB4x_5boxed3BoxDNtNtNtB78_6future6future6Futurep6OutputINtNtB78_6result6ResultB4s_NtNtNtB2s_10operations5types15CollectionErrorENtNtB78_6marker4SendEL_EENCNCB2g_s2_00EEE4pushCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.a)
          to label %._crit_edge.split.us unwind label %.split

._crit_edge.split.us:                             ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

.split:                                           ; preds = %.lr.ph.split.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %i.b, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherINtNtB12_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB2l_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENCNCNvMNtB2l_8read_opsB3w_9scroll_by00E0s_0NCB2d_s0_0EIB1S_INtNtB4_3pin3PinINtNtB4u_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultB4p_NtNtNtB2p_10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EENCNCB2d_s2_00EEEECsl8OoimOLbh_6qdrant(ptr noundef nonnull readonly align 8 %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherINtNtB14_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB2n_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENCNCNvMNtB2n_8read_opsB3y_9scroll_by00E0s_0NCB2f_s0_0EIB1U_INtNtB4_3pin3PinINtNtB4w_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultB4r_NtNtNtB2r_10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EENCNCB2f_s2_00EEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.c

bb.b:                                             ; preds = %._crit_edge.split.us, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %.split
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherINtNtB14_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB2n_15ShardReplicaSet30execute_cluster_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENCNCNvMNtB2n_8read_opsB3y_9scroll_by00E0s_0NCB2f_s0_0EIB1U_INtNtB4_3pin3PinINtNtB4w_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultB4r_NtNtNtB2r_10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EENCNCB2f_s2_00EEEECsl8OoimOLbh_6qdrant.exit: ; preds = %.split
  resume { ptr, i32 } %lpad.loopexit.split-lp
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtNtCsiHzErX7aQFk_12futures_util6stream17futures_unorderedINtB6_16FuturesUnorderedINtNtNtBa_6future6either6EitherINtNtB1v_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB2p_15ShardReplicaSet30execute_cluster_read_operationNtNtNtB2t_10operations5types14CollectionInfoNCNCNvMNtB2p_8read_opsB3A_4info00E0s_0NCB2h_s0_0EIB1W_INtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB68_6future6future6Futurep6OutputINtNtB68_6result6ResultB4t_NtB4v_15CollectionErrorENtNtB68_6marker4SendEL_EENCNCB2h_s2_00EEEINtNtNtNtB68_4iter6traits7collect6ExtendB1q_E6extendINtNtB68_6option6OptionB1q_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.not5 = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %.not5, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherINtNtB14_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB2n_15ShardReplicaSet30execute_cluster_read_operationNtNtNtB2r_10operations5types14CollectionInfoNCNCNvMNtB2n_8read_opsB3y_4info00E0s_0NCB2f_s0_0EIB1U_INtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultB4r_NtB4t_15CollectionErrorENtNtB4_6marker4SendEL_EENCNCB2f_s2_00EEEECsl8OoimOLbh_6qdrant.exit1, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.sroa.0.0.copyload, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, i64 48, i1 false)
  call void @_RNvMs4_NtNtCsiHzErX7aQFk_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtNtB9_6future6either6EitherINtNtB1u_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB2o_15ShardReplicaSet30execute_cluster_read_operationNtNtNtB2s_10operations5types14CollectionInfoNCNCNvMNtB2o_8read_opsB3z_4info00E0s_0NCB2g_s0_0EIB1V_INtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB67_6future6future6Futurep6OutputINtNtB67_6result6ResultB4s_NtB4u_15CollectionErrorENtNtB67_6marker4SendEL_EENCNCB2g_s2_00EEE4pushCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherINtNtB14_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB2n_15ShardReplicaSet30execute_cluster_read_operationNtNtNtB2r_10operations5types14CollectionInfoNCNCNvMNtB2n_8read_opsB3y_4info00E0s_0NCB2f_s0_0EIB1U_INtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultB4r_NtB4t_15CollectionErrorENtNtB4_6marker4SendEL_EENCNCB2f_s2_00EEEECsl8OoimOLbh_6qdrant.exit1

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherINtNtB14_6future3MapNCNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtB2n_15ShardReplicaSet30execute_cluster_read_operationNtNtNtB2r_10operations5types14CollectionInfoNCNCNvMNtB2n_8read_opsB3y_4info00E0s_0NCB2f_s0_0EIB1U_INtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultB4r_NtB4t_15CollectionErrorENtNtB4_6marker4SendEL_EENCNCB2f_s2_00EEEECsl8OoimOLbh_6qdrant.exit1: ; preds = %.lr.ph.split.us, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtNtBa_6future6either6EitherNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB1Y_15ShardReplicaSet11update_impl0s1_0NCNCB1R_s0_00EENtNtB8_6stream9StreamExt7collectINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCskKLDkoKarTP_4core6result6ResultTyNtNtNtB22_10operations5types12UpdateResultETyNtB5v_15CollectionErrorEEEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMNtNtNtCsiHzErX7aQFk_12futures_util6stream6stream7collectINtB2_7CollectINtNtB6_17futures_unordered16FuturesUnorderedINtNtNtB8_6future6either6EitherNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB2x_15ShardReplicaSet11update_impl0s1_0NCNCB2q_s0_00EEINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCskKLDkoKarTP_4core6result6ResultTyNtNtNtB2B_10operations5types12UpdateResultETyNtB5y_15CollectionErrorEEEE3newCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtNtBa_6future6either6EitherNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB1Y_15ShardReplicaSet11update_impl0s3_0NCNCB1R_s0_00EENtNtB8_6stream9StreamExt7collectINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCskKLDkoKarTP_4core6result6ResultTyNtNtNtB22_10operations5types12UpdateResultETyNtB5v_15CollectionErrorEEEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMNtNtNtCsiHzErX7aQFk_12futures_util6stream6stream7collectINtB2_7CollectINtNtB6_17futures_unordered16FuturesUnorderedINtNtNtB8_6future6either6EitherNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB2x_15ShardReplicaSet11update_impl0s3_0NCNCB2q_s0_00EEINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCskKLDkoKarTP_4core6result6ResultTyNtNtNtB2B_10operations5types12UpdateResultETyNtB5y_15CollectionErrorEEEE3newCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB1v_10Collection16update_all_local000ENtNtB8_6stream9StreamExt7collectINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCskKLDkoKarTP_4core6result6ResultINtNtB44_6option6OptionNtNtNtB1x_10operations5types12UpdateResultENtB50_15CollectionErrorEEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMNtNtNtCsiHzErX7aQFk_12futures_util6stream6stream7collectINtB2_7CollectINtNtB6_17futures_unordered16FuturesUnorderedNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB24_10Collection16update_all_local000EINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCskKLDkoKarTP_4core6result6ResultINtNtB47_6option6OptionNtNtNtB26_10operations5types12UpdateResultENtB53_15CollectionErrorEEE3newCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB1t_10Collection18update_from_client00ENtNtB8_6stream9StreamExt7collectINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtB1v_10operations5types12UpdateResultNtB4C_15CollectionErrorEEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMNtNtNtCsiHzErX7aQFk_12futures_util6stream6stream7collectINtB2_7CollectINtNtB6_17futures_unordered16FuturesUnorderedNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB22_10Collection18update_from_client00EINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtB24_10operations5types12UpdateResultNtB4F_15CollectionErrorEEE3newCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered16FuturesUnorderedNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB1r_10Collection18update_from_client0ENtNtB8_10try_stream12TryStreamExt11try_collectINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtB1t_10operations5types12UpdateResultEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMNtNtNtCsiHzErX7aQFk_12futures_util6stream10try_stream11try_collectINtB2_10TryCollectINtNtB6_17futures_unordered16FuturesUnorderedNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB2e_10Collection18update_from_client0EINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtB2g_10operations5types12UpdateResultEE3newCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered16FuturesUnorderedNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1p_15ShardReplicaSet22truncate_unapplied_wal0ENtNtB8_6stream9StreamExt7collectINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCskKLDkoKarTP_4core6result6ResultjNtNtNtB1t_10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMNtNtNtCsiHzErX7aQFk_12futures_util6stream6stream7collectINtB2_7CollectINtNtB6_17futures_unordered16FuturesUnorderedNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1Y_15ShardReplicaSet22truncate_unapplied_wal0EINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCskKLDkoKarTP_4core6result6ResultjNtNtNtB22_10operations5types15CollectionErrorEEE3newCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtBa_15ShardReplicaSet4info000Csl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([936 x i8]) align 8 captures(address) dereferenceable(936) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !21, !noundef !17
  switch i8 %i.b, label %default.unreachable9 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
  ]

default.unreachable9:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !17, !align !16, !noundef !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !17, !nonnull !17
  %i.h = invoke { ptr, ptr } %i.g(ptr noundef nonnull %i.c)
          to label %bb.c unwind label %bb.o       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.i = extractvalue { ptr, ptr } %i.h, 0
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.j, ptr %i.l, align 8
  br label %bb.f

.body:                                            ; preds = %bb.o, %bb.n, %bb.m, %bb.g
  %.pn2 = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.ae, %bb.o ], [ %i.y, %bb.n ], [ %i.y, %bb.m ]
  store i8 2, ptr %i.a, align 8
  resume { ptr, i32 } %.pn2

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #26
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #26
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  invoke void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection10operations5types14CollectionInfoNtB2d_15CollectionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([936 x i8]) align 8 captures(address) dereferenceable(936) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  %.val5 = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %1, i64 24
  %.val6 = load ptr, ptr %i.o, align 8, !nonnull !17, !align !16, !noundef !17
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCsPYQCUnoTxQ_10collection10operations5types14CollectionInfoNtB2r_15CollectionErrorENtNtB4_6marker4SendEL_EEECsl8OoimOLbh_6qdrant(ptr %.val5, ptr nonnull %.val6) #24
          to label %.body unwind label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.p = load i64, ptr %0, align 8, !range !26, !noundef !17
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %common.ret, label %bb.i

common.ret:                                       ; preds = %bb.h, %bb.l, %bb.k
  %storemerge = phi i8 [ 1, %bb.l ], [ 1, %bb.k ], [ 3, %bb.h ]
  store i8 %storemerge, ptr %i.a, align 8
  ret void

bb.i:                                             ; preds = %bb.h
  %.val = load ptr, ptr %i.m, align 8             ; 5 uses
  %i.r = getelementptr i8, ptr %1, i64 24
  %.val4 = load ptr, ptr %i.r, align 8, !nonnull !17, !align !16, !noundef !17 ; 5 uses
  %i.s = load ptr, ptr %.val4, align 8, !invariant.load !17 ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.s(ptr noundef nonnull %.val)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !18, !invariant.load !17 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %common.ret, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !19, !invariant.load !17
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #23
  br label %common.ret

bb.m:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !18, !invariant.load !17 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !19, !invariant.load !17
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #23
  br label %.body

bb.o:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
end_hunk_0
