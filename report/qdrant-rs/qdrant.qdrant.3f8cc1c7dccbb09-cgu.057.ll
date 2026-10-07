Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.057?download=true
inline.NumInlined: 1147
inline.NumDeleted: 580
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [33 x i8] c"\1EOS can't spawn worker thread: \C0\00", align 1
@_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID = external global { { { i64 } } }

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtCsPYQCUnoTxQ_10collection10collection3mmr27mmr_from_points_with_vectorINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlattenINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB3F_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEE0s_0INtNtB2N_6result6ResultB4o_NtNtNtB4D_6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(240) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [240 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.g = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !25 ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(240) %2, i64 240, i1 false), !noalias !26
  %.val.i = load i64, ptr %1, align 8, !range !7, !alias.scope !24, !noalias !27, !noundef !8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.i = load ptr, ptr %i.h, align 8, !alias.scope !24, !noalias !27
  %i.i = trunc nuw i64 %.val.i to i1
  %.sroa.01.0.v.i.i = select i1 %i.i, i64 528, i64 512
  %.sroa.01.0.i.i = getelementptr inbounds nuw i8, ptr %.val5.i, i64 %.sroa.01.0.v.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !noalias !25, !noundef !8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 24
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = atomicrmw add ptr %i.k, i64 1 monotonic, align 8, !noalias !25
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.j, align 8, !noalias !25, !nonnull !8, !noundef !8
  %i.p = load ptr, ptr %i.l, align 8, !noalias !25, !nonnull !8, !align !9, !noundef !8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.c
  %.sroa.5.0.i.i = phi ptr [ %i.p, %bb.e ], [ undef, %bb.c ]
  %.sroa.0.0.i.i = phi ptr [ %i.o, %bb.e ], [ null, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25
  call void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtCsPYQCUnoTxQ_10collection10collection3mmr27mmr_from_points_with_vectorINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlattenINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB3I_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEE0s_0ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(240) %i.b, ptr noundef %.sroa.0.0.i.i, ptr %.sroa.5.0.i.i, i64 noundef %i.g), !noalias !25
  %i.q = load ptr, ptr %i.a, align 8, !noalias !25, !nonnull !8, !noundef !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !noalias !25, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !25
  store ptr %i.s, ptr %i.c, align 8, !noalias !25
  %i.t = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noundef nonnull %i.q, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtCsPYQCUnoTxQ_10collection10collection3mmr27mmr_from_points_with_vectorINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlattenINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB3L_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEE0s_0INtNtB2T_6result6ResultB4u_NtNtNtB4J_6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant.exit unwind label %bb.h, !noalias !28 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointENtNtNtB2i_6common15operation_error14OperationErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %common.resume unwind label %bb.i, !noalias !28

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !28
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.h ], [ %i.z, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtCsPYQCUnoTxQ_10collection10collection3mmr27mmr_from_points_with_vectorINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlattenINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB3L_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEE0s_0INtNtB2T_6result6ResultB4u_NtNtNtB4J_6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.g
  %i.w = extractvalue { i64, ptr } %i.t, 0
  %i.x = extractvalue { i64, ptr } %i.t, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.s, ptr %i.f, align 8
  %i.y = trunc nuw i64 %i.w to i1
  %.not = icmp ne ptr %i.x, null
  %or.cond.not = select i1 %i.y, i1 %.not, i1 false, !prof !10
  br i1 %or.cond.not, label %bb.k, label %bb.j, !prof !10

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtCsPYQCUnoTxQ_10collection10collection3mmr27mmr_from_points_with_vectorINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlattenINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB3L_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEE0s_0INtNtB2T_6result6ResultB4u_NtNtNtB4J_6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.s

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtCsPYQCUnoTxQ_10collection10collection3mmr27mmr_from_points_with_vectorINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlattenINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB3L_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEE0s_0INtNtB2T_6result6ResultB4u_NtNtNtB4J_6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.x, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #11
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val) #12
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointENtNtNtB2i_6common15operation_error14OperationErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %common.resume unwind label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB1w_10LocalShard25internal_scroll_by_id_raw000INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB4p_6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(280) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [280 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.g = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !35 ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(280) %2, i64 280, i1 false), !noalias !36
  %.val.i = load i64, ptr %1, align 8, !range !7, !alias.scope !34, !noalias !37, !noundef !8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.i = load ptr, ptr %i.h, align 8, !alias.scope !34, !noalias !37
  %i.i = trunc nuw i64 %.val.i to i1
  %.sroa.01.0.v.i.i = select i1 %i.i, i64 528, i64 512
  %.sroa.01.0.i.i = getelementptr inbounds nuw i8, ptr %.val5.i, i64 %.sroa.01.0.v.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !noalias !35, !noundef !8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 24
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = atomicrmw add ptr %i.k, i64 1 monotonic, align 8, !noalias !35
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.j, align 8, !noalias !35, !nonnull !8, !noundef !8
  %i.p = load ptr, ptr %i.l, align 8, !noalias !35, !nonnull !8, !align !9, !noundef !8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.c
  %.sroa.5.0.i.i = phi ptr [ %i.p, %bb.e ], [ undef, %bb.c ]
  %.sroa.0.0.i.i = phi ptr [ %i.o, %bb.e ], [ null, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35
  call void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB1z_10LocalShard25internal_scroll_by_id_raw000ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(280) %i.b, ptr noundef %.sroa.0.0.i.i, ptr %.sroa.5.0.i.i, i64 noundef %i.g), !noalias !35
  %i.q = load ptr, ptr %i.a, align 8, !noalias !35, !nonnull !8, !noundef !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !noalias !35, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !35
  store ptr %i.s, ptr %i.c, align 8, !noalias !35
  %i.t = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noundef nonnull %i.q, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB1C_10LocalShard25internal_scroll_by_id_raw000INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB4v_6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant.exit unwind label %bb.h, !noalias !38 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB2i_6common15operation_error14OperationErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %common.resume unwind label %bb.i, !noalias !38

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !38
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.h ], [ %i.z, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB1C_10LocalShard25internal_scroll_by_id_raw000INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB4v_6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.g
  %i.w = extractvalue { i64, ptr } %i.t, 0
  %i.x = extractvalue { i64, ptr } %i.t, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.s, ptr %i.f, align 8
  %i.y = trunc nuw i64 %i.w to i1
  %.not = icmp ne ptr %i.x, null
  %or.cond.not = select i1 %i.y, i1 %.not, i1 false, !prof !10
  br i1 %or.cond.not, label %bb.k, label %bb.j, !prof !10

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB1C_10LocalShard25internal_scroll_by_id_raw000INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB4v_6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.s

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB1C_10LocalShard25internal_scroll_by_id_raw000INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB4v_6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.x, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #11
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val) #12
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB2i_6common15operation_error14OperationErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %common.resume unwind label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMNtCsPYQCUnoTxQ_10collection14update_handlerNtB1s_13UpdateHandler23store_clocks_if_changed00uECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.g = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !45 ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(56) %2, i64 56, i1 false), !noalias !46
  %.val.i = load i64, ptr %1, align 8, !range !7, !alias.scope !44, !noalias !47, !noundef !8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.i = load ptr, ptr %i.h, align 8, !alias.scope !44, !noalias !47
  %i.i = trunc nuw i64 %.val.i to i1
  %.sroa.01.0.v.i.i = select i1 %i.i, i64 528, i64 512
  %.sroa.01.0.i.i = getelementptr inbounds nuw i8, ptr %.val5.i, i64 %.sroa.01.0.v.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !noalias !45, !noundef !8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 24
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = atomicrmw add ptr %i.k, i64 1 monotonic, align 8, !noalias !45
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.j, align 8, !noalias !45, !nonnull !8, !noundef !8
  %i.p = load ptr, ptr %i.l, align 8, !noalias !45, !nonnull !8, !align !9, !noundef !8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.c
  %.sroa.5.0.i.i = phi ptr [ %i.p, %bb.e ], [ undef, %bb.c ]
  %.sroa.0.0.i.i = phi ptr [ %i.o, %bb.e ], [ null, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45
  call void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMNtCsPYQCUnoTxQ_10collection14update_handlerNtB1v_13UpdateHandler23store_clocks_if_changed00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.b, ptr noundef %.sroa.0.0.i.i, ptr %.sroa.5.0.i.i, i64 noundef %i.g), !noalias !45
  %i.q = load ptr, ptr %i.a, align 8, !noalias !45, !nonnull !8, !noundef !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !noalias !45, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !45
  store ptr %i.s, ptr %i.c, align 8, !noalias !45
  %i.t = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noundef nonnull %i.q, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtCsPYQCUnoTxQ_10collection14update_handlerNtB1y_13UpdateHandler23store_clocks_if_changed00uECsl8OoimOLbh_6qdrant.exit unwind label %bb.h, !noalias !48 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %common.resume unwind label %bb.i, !noalias !48

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !48
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.h ], [ %i.z, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtCsPYQCUnoTxQ_10collection14update_handlerNtB1y_13UpdateHandler23store_clocks_if_changed00uECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.g
  %i.w = extractvalue { i64, ptr } %i.t, 0
  %i.x = extractvalue { i64, ptr } %i.t, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.s, ptr %i.f, align 8
  %i.y = trunc nuw i64 %i.w to i1
  %.not = icmp ne ptr %i.x, null
  %or.cond.not = select i1 %i.y, i1 %.not, i1 false, !prof !10
  br i1 %or.cond.not, label %bb.k, label %bb.j, !prof !10

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtCsPYQCUnoTxQ_10collection14update_handlerNtB1y_13UpdateHandler23store_clocks_if_changed00uECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.s

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtCsPYQCUnoTxQ_10collection14update_handlerNtB1y_13UpdateHandler23store_clocks_if_changed00uECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.x, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #11
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val) #12
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %common.resume unwind label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMNtNtCsPYQCUnoTxQ_10collection18collection_manager17segments_searcherNtB1s_16SegmentsSearcher12retrieve_raw00INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtNtB4y_10data_types14segment_record16SegmentRecordRawENtNtNtB4y_6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(168) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [168 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.g = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !55 ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(168) %2, i64 168, i1 false), !noalias !56
  %.val.i = load i64, ptr %1, align 8, !range !7, !alias.scope !54, !noalias !57, !noundef !8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.i = load ptr, ptr %i.h, align 8, !alias.scope !54, !noalias !57
  %i.i = trunc nuw i64 %.val.i to i1
  %.sroa.01.0.v.i.i = select i1 %i.i, i64 528, i64 512
  %.sroa.01.0.i.i = getelementptr inbounds nuw i8, ptr %.val5.i, i64 %.sroa.01.0.v.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !noalias !55, !noundef !8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 24
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = atomicrmw add ptr %i.k, i64 1 monotonic, align 8, !noalias !55
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.j, align 8, !noalias !55, !nonnull !8, !noundef !8
  %i.p = load ptr, ptr %i.l, align 8, !noalias !55, !nonnull !8, !align !9, !noundef !8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.c
  %.sroa.5.0.i.i = phi ptr [ %i.p, %bb.e ], [ undef, %bb.c ]
  %.sroa.0.0.i.i = phi ptr [ %i.o, %bb.e ], [ null, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !55
  call void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMNtNtCsPYQCUnoTxQ_10collection18collection_manager17segments_searcherNtB1v_16SegmentsSearcher12retrieve_raw00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.b, ptr noundef %.sroa.0.0.i.i, ptr %.sroa.5.0.i.i, i64 noundef %i.g), !noalias !55
  %i.q = load ptr, ptr %i.a, align 8, !noalias !55, !nonnull !8, !noundef !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !noalias !55, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !55
  store ptr %i.s, ptr %i.c, align 8, !noalias !55
  %i.t = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noundef nonnull %i.q, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsPYQCUnoTxQ_10collection18collection_manager17segments_searcherNtB1y_16SegmentsSearcher12retrieve_raw00INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtNtB4E_10data_types14segment_record16SegmentRecordRawENtNtNtB4E_6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant.exit unwind label %bb.h, !noalias !58 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtNtB2r_10data_types14segment_record16SegmentRecordRawENtNtNtB2r_6common15operation_error14OperationErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %common.resume unwind label %bb.i, !noalias !58

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !58
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.h ], [ %i.z, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsPYQCUnoTxQ_10collection18collection_manager17segments_searcherNtB1y_16SegmentsSearcher12retrieve_raw00INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtNtB4E_10data_types14segment_record16SegmentRecordRawENtNtNtB4E_6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.g
  %i.w = extractvalue { i64, ptr } %i.t, 0
  %i.x = extractvalue { i64, ptr } %i.t, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.s, ptr %i.f, align 8
  %i.y = trunc nuw i64 %i.w to i1
  %.not = icmp ne ptr %i.x, null
  %or.cond.not = select i1 %i.y, i1 %.not, i1 false, !prof !10
  br i1 %or.cond.not, label %bb.k, label %bb.j, !prof !10

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsPYQCUnoTxQ_10collection18collection_manager17segments_searcherNtB1y_16SegmentsSearcher12retrieve_raw00INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtNtB4E_10data_types14segment_record16SegmentRecordRawENtNtNtB4E_6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.s

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsPYQCUnoTxQ_10collection18collection_manager17segments_searcherNtB1y_16SegmentsSearcher12retrieve_raw00INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtNtB4E_10data_types14segment_record16SegmentRecordRawENtNtNtB4E_6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.x, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #11
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val) #12
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtNtB2r_10data_types14segment_record16SegmentRecordRawENtNtNtB2r_6common15operation_error14OperationErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %common.resume unwind label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMNtNtCsl8OoimOLbh_6qdrant6common9telemetryNtB1s_18TelemetryCollector12prepare_data00INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtB1u_13telemetry_ops21collections_telemetry20CollectionsTelemetryNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEEB1w_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(128) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [128 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.g = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !65 ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(128) %2, i64 128, i1 false), !noalias !66
  %.val.i = load i64, ptr %1, align 8, !range !7, !alias.scope !64, !noalias !67, !noundef !8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.i = load ptr, ptr %i.h, align 8, !alias.scope !64, !noalias !67
  %i.i = trunc nuw i64 %.val.i to i1
  %.sroa.01.0.v.i.i = select i1 %i.i, i64 528, i64 512
  %.sroa.01.0.i.i = getelementptr inbounds nuw i8, ptr %.val5.i, i64 %.sroa.01.0.v.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !noalias !65, !noundef !8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 24
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = atomicrmw add ptr %i.k, i64 1 monotonic, align 8, !noalias !65
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.j, align 8, !noalias !65, !nonnull !8, !noundef !8
  %i.p = load ptr, ptr %i.l, align 8, !noalias !65, !nonnull !8, !align !9, !noundef !8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.c
  %.sroa.5.0.i.i = phi ptr [ %i.p, %bb.e ], [ undef, %bb.c ]
  %.sroa.0.0.i.i = phi ptr [ %i.o, %bb.e ], [ null, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !65
  call void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMNtNtCsl8OoimOLbh_6qdrant6common9telemetryNtB1v_18TelemetryCollector12prepare_data00ENtNtBR_8schedule16BlockingScheduleEB1z_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.b, ptr noundef %.sroa.0.0.i.i, ptr %.sroa.5.0.i.i, i64 noundef %i.g), !noalias !65
  %i.q = load ptr, ptr %i.a, align 8, !noalias !65, !nonnull !8, !noundef !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !noalias !65, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !65
  store ptr %i.s, ptr %i.c, align 8, !noalias !65
  %i.t = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noundef nonnull %i.q, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsl8OoimOLbh_6qdrant6common9telemetryNtB1y_18TelemetryCollector12prepare_data00INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtB1A_13telemetry_ops21collections_telemetry20CollectionsTelemetryNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEEB1C_.exit unwind label %bb.h, !noalias !68 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21collections_telemetry20CollectionsTelemetryNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEENtNtNtB1a_3ops4drop4Drop4dropB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %common.resume unwind label %bb.i, !noalias !68

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !68
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.h ], [ %i.z, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsl8OoimOLbh_6qdrant6common9telemetryNtB1y_18TelemetryCollector12prepare_data00INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtB1A_13telemetry_ops21collections_telemetry20CollectionsTelemetryNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEEB1C_.exit: ; preds = %bb.g
  %i.w = extractvalue { i64, ptr } %i.t, 0
  %i.x = extractvalue { i64, ptr } %i.t, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.s, ptr %i.f, align 8
  %i.y = trunc nuw i64 %i.w to i1
  %.not = icmp ne ptr %i.x, null
  %or.cond.not = select i1 %i.y, i1 %.not, i1 false, !prof !10
  br i1 %or.cond.not, label %bb.k, label %bb.j, !prof !10

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsl8OoimOLbh_6qdrant6common9telemetryNtB1y_18TelemetryCollector12prepare_data00INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtB1A_13telemetry_ops21collections_telemetry20CollectionsTelemetryNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEEB1C_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.s

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsl8OoimOLbh_6qdrant6common9telemetryNtB1y_18TelemetryCollector12prepare_data00INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtB1A_13telemetry_ops21collections_telemetry20CollectionsTelemetryNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEEB1C_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.x, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #11
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val) #12
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21collections_telemetry20CollectionsTelemetryNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEENtNtNtB1a_3ops4drop4Drop4dropB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %common.resume unwind label %bb.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsjZG7hsAZr3B_5tokio4time5sleep5SleepEEECsl8OoimOLbh_6qdrant(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.a = load i64, ptr %.0.val, align 8, !range !7, !alias.scope !79, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 4 uses
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !82, !nonnull !8, !noundef !8
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !82
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #13
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.g = load ptr, ptr %i.b, align 8, !alias.scope !85, !nonnull !8, !noundef !8
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !85
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #13
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjZG7hsAZr3B_5tokio7runtime5TimerEECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.k) #12
          to label %bb.i unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjZG7hsAZr3B_5tokio7runtime5TimerEECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsjZG7hsAZr3B_5tokio4time5sleep5SleepEECsl8OoimOLbh_6qdrant.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.n, %bb.h ], [ %i.j, %bb.f ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 112, i64 noundef 8) #14
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsjZG7hsAZr3B_5tokio4time5sleep5SleepEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 112, i64 noundef 8) #14
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtCs607s0NAIaWN_7segment5types7PayloadEEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types7PayloadEEECsl8OoimOLbh_6qdrant.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types7PayloadEENtNtNtBK_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types7PayloadEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types7PayloadEENtNtNtBR_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types7PayloadEEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types7PayloadEEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types7PayloadEEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types7PayloadEENtNtNtBR_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsl8OoimOLbh_6qdrant.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEECsl8OoimOLbh_6qdrant.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs607s0NAIaWN_7segment5types9ConditionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs607s0NAIaWN_7segment5types9ConditionEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

end_hunk_0
begin_hunk_1_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator16HwMeasurementAccECsl8OoimOLbh_6qdrant:bb.a
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator13HwSharedDrainEECsl8OoimOLbh_6qdrant.exit3 unwind label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator13HwSharedDrainEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1119, !nonnull !8, !noundef !8
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !1119
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator13HwSharedDrainEECsl8OoimOLbh_6qdrant.exit5

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator13HwSharedDrainEECsl8OoimOLbh_6qdrant.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator13HwSharedDrainE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #13
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator13HwSharedDrainEECsl8OoimOLbh_6qdrant.exit5 unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator13HwSharedDrainEECsl8OoimOLbh_6qdrant.exit3: ; preds = %bb.c, %bb.d, %bb.g
  %.pn = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.d, %bb.d ], [ %i.d, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1122)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1123, !nonnull !8, !noundef !8
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !1123
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslmvYCXbQjWR_6common15cpu_utilization14CpuUtilizationECsl8OoimOLbh_6qdrant.exit

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator13HwSharedDrainEECsl8OoimOLbh_6qdrant.exit3
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCslmvYCXbQjWR_6common15cpu_utilization19CpuUtilizationInnerE9drop_slowCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #13
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslmvYCXbQjWR_6common15cpu_utilization14CpuUtilizationECsl8OoimOLbh_6qdrant.exit unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator13HwSharedDrainEECsl8OoimOLbh_6qdrant.exit3

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator13HwSharedDrainEECsl8OoimOLbh_6qdrant.exit5: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator13HwSharedDrainEECsl8OoimOLbh_6qdrant.exit, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1127, !nonnull !8, !noundef !8
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !1127
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslmvYCXbQjWR_6common15cpu_utilization14CpuUtilizationECsl8OoimOLbh_6qdrant.exit7

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator13HwSharedDrainEECsl8OoimOLbh_6qdrant.exit5
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCslmvYCXbQjWR_6common15cpu_utilization19CpuUtilizationInnerE9drop_slowCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslmvYCXbQjWR_6common15cpu_utilization14CpuUtilizationECsl8OoimOLbh_6qdrant.exit7

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslmvYCXbQjWR_6common15cpu_utilization14CpuUtilizationECsl8OoimOLbh_6qdrant.exit7: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator13HwSharedDrainEECsl8OoimOLbh_6qdrant.exit5, %bb.h
  ret void

bb.i:                                             ; preds = %bb.f, %bb.d
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslmvYCXbQjWR_6common15cpu_utilization14CpuUtilizationECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator13HwSharedDrainEECsl8OoimOLbh_6qdrant.exit3, %bb.f
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9clock_map8ClockMapECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9clock_map3KeyNtBR_5ClockEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9clock_map3KeyNtB1x_5ClockEECsl8OoimOLbh_6qdrant.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1132, !noundef !8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9clock_map3KeyNtB1T_5ClockEEECsl8OoimOLbh_6qdrant.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9clock_map3KeyNtBR_5ClockEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9clock_map3KeyNtB1T_5ClockEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9clock_map3KeyNtB1x_5ClockEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1133, !noundef !8
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9clock_map3KeyNtB1T_5ClockEEECsl8OoimOLbh_6qdrant.exit1, label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9clock_map3KeyNtB1x_5ClockEECsl8OoimOLbh_6qdrant.exit
  tail call void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9clock_map3KeyNtBR_5ClockEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9clock_map3KeyNtB1T_5ClockEEECsl8OoimOLbh_6qdrant.exit1

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9clock_map3KeyNtB1T_5ClockEEECsl8OoimOLbh_6qdrant.exit1: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9clock_map3KeyNtB1x_5ClockEECsl8OoimOLbh_6qdrant.exit, %bb.d
  ret void

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9clock_map3KeyNtB1T_5ClockEEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCINvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1a_10LocalShard16do_with_segmentsjNCNCNvB19_23local_update_queue_info00E0jECsl8OoimOLbh_6qdrant(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %1, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.i = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.j = extractvalue { i64, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.i, 1        ; 4 uses
  store i64 %i.j, ptr %i.f, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr %i.k, ptr %i.l, align 8
  %i.m = trunc nuw i64 %i.j to i1                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %. = select i1 %i.m, i64 504, i64 568
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.o = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !1154 ; 2 uses
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !noalias !1154, !noundef !8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !noalias !1154
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.p, align 8, !noalias !1154, !nonnull !8, !noundef !8
  %i.v = load ptr, ptr %i.r, align 8, !noalias !1154, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.v, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.u, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1154
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1u_10LocalShard16do_with_segmentsjNCNCNvB1t_23local_update_queue_info00E0ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr nonnull %1, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.o)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.w = load ptr, ptr %i.a, align 8, !noalias !1154, !nonnull !8, !noundef !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !noalias !1154, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1154
  store ptr %i.y, ptr %i.b, align 8, !noalias !1154
  %i.z = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noundef nonnull %i.w, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1x_10LocalShard16do_with_segmentsjNCNCNvB1w_23local_update_queue_info00E0jECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !1155 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandlejENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.body unwind label %bb.j, !noalias !1155

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1155
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1x_10LocalShard16do_with_segmentsjNCNCNvB1w_23local_update_queue_info00E0jECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.ac = extractvalue { i64, ptr } %i.z, 0
  %i.ad = extractvalue { i64, ptr } %i.z, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1156
  store ptr %i.y, ptr %i.e, align 8, !noalias !1156
  %i.ae = trunc nuw i64 %i.ac to i1
  %.not.i = icmp ne ptr %i.ad, null
  %or.cond.not.i = select i1 %i.ae, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1x_10LocalShard16do_with_segmentsjNCNCNvB1w_23local_update_queue_info00E0jECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1156
  store ptr %i.ad, ptr %i.d, align 8, !noalias !1156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1156
  store ptr %i.d, ptr %i.c, align 8, !noalias !1156
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1156
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #11
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !1156, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandlejENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body unwind label %bb.n

bb.p:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.p ], [ %i.aa, %bb.i ], [ %i.af, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.f) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1x_10LocalShard16do_with_segmentsjNCNCNvB1w_23local_update_queue_info00E0jECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1156
  call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  %i.ai = load i64, ptr %i.f, align 8, !range !7, !alias.scope !1159, !noundef !8
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  %i.ak = load ptr, ptr %i.l, align 8, !alias.scope !1162, !nonnull !8, !noundef !8
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !1162
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1163)
  call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  %i.an = load ptr, ptr %i.l, align 8, !alias.scope !1165, !nonnull !8, !noundef !8
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !1165
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.y

bb.v:                                             ; preds = %bb.w, %.body
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtBH_10LocalShard16do_with_segmentsjNCNCNvBG_23local_update_queue_info00E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCINvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1a_15ShardReplicaSet8wait_forNCNCNvB19_14wait_for_local00E0bECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !1194 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1194, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !1194
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !1194, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !1194, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1194
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1u_15ShardReplicaSet8wait_forNCNCNvB1t_14wait_for_local00E0ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !1194, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1194, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1194
  store ptr %i.w, ptr %i.c, align 8, !noalias !1194
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1x_15ShardReplicaSet8wait_forNCNCNvB1w_14wait_for_local00E0bECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !1195 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandlebENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !1195

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1195
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1x_15ShardReplicaSet8wait_forNCNCNvB1w_14wait_for_local00E0bECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1196
  store ptr %i.w, ptr %i.f, align 8, !noalias !1196
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1x_15ShardReplicaSet8wait_forNCNCNvB1w_14wait_for_local00E0bECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1196
  store ptr %i.ab, ptr %i.e, align 8, !noalias !1196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1196
  store ptr %i.e, ptr %i.d, align 8, !noalias !1196
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1196
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !1197

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !1196, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !1197

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1197
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandlebENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !1197

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1x_15ShardReplicaSet8wait_forNCNCNvB1w_14wait_for_local00E0bECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1196
  call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !1200, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !1203, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !1203
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !1206, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !1206
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  %i.ap = load ptr, ptr %0, align 8, !alias.scope !1210, !nonnull !8, !noundef !8
  %i.aq = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !1210
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateEE9drop_slowB1E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #13
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCINvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1a_15ShardReplicaSet8wait_forNCNCNvB19_20wait_for_local_state00E0bECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !1239 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1239, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !1239
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !1239, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !1239, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1239
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1u_15ShardReplicaSet8wait_forNCNCNvB1t_20wait_for_local_state00E0ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !1239, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1239, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1239
  store ptr %i.w, ptr %i.c, align 8, !noalias !1239
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1x_15ShardReplicaSet8wait_forNCNCNvB1w_20wait_for_local_state00E0bECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !1240 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandlebENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !1240

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1240
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1x_15ShardReplicaSet8wait_forNCNCNvB1w_20wait_for_local_state00E0bECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1241
  store ptr %i.w, ptr %i.f, align 8, !noalias !1241
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1x_15ShardReplicaSet8wait_forNCNCNvB1w_20wait_for_local_state00E0bECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1241
  store ptr %i.ab, ptr %i.e, align 8, !noalias !1241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1241
  store ptr %i.e, ptr %i.d, align 8, !noalias !1241
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1241
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !1242

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !1241, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !1242

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1242
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandlebENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !1242

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1x_15ShardReplicaSet8wait_forNCNCNvB1w_20wait_for_local_state00E0bECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1241
  call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !1245, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  call void @llvm.experimental.noalias.scope.decl(metadata !1247)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !1248, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !1248
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !1251, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !1251
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !1255, !nonnull !8, !noundef !8
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !1255
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateEE9drop_slowB1E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap) #13
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvMs7_NtCslmvYCXbQjWR_6common7tar_extINtB1f_10BuilderExtINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB1f_9WriteSeekNtNtCskKLDkoKarTP_4core6marker4SendEL_EE9run_asyncuNtNtNtB2X_2io5error5ErrorNCNCNvB1b_11append_data00E00INtNtB2X_6result6ResultuB3I_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(568) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [568 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !1278 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(568) %i.b, ptr noundef nonnull align 8 dereferenceable(568) %0, i64 568, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1278, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !1278
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !1278, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !1278, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1278
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvMs7_NtCslmvYCXbQjWR_6common7tar_extINtB1z_10BuilderExtINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB1z_9WriteSeekNtNtCskKLDkoKarTP_4core6marker4SendEL_EE9run_asyncuNtNtNtB3h_2io5error5ErrorNCNCNvB1v_11append_data00E00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(568) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !1278, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1278, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1278
  store ptr %i.w, ptr %i.c, align 8, !noalias !1278
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvMs7_NtCslmvYCXbQjWR_6common7tar_extINtB1C_10BuilderExtINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB1C_9WriteSeekNtNtCskKLDkoKarTP_4core6marker4SendEL_EE9run_asyncuNtNtNtB3k_2io5error5ErrorNCNCNvB1y_11append_data00E00INtNtB3k_6result6ResultuB45_EECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !1279 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !1279

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1279
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvMs7_NtCslmvYCXbQjWR_6common7tar_extINtB1C_10BuilderExtINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB1C_9WriteSeekNtNtCskKLDkoKarTP_4core6marker4SendEL_EE9run_asyncuNtNtNtB3k_2io5error5ErrorNCNCNvB1y_11append_data00E00INtNtB3k_6result6ResultuB45_EECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1280
  store ptr %i.w, ptr %i.f, align 8, !noalias !1280
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvMs7_NtCslmvYCXbQjWR_6common7tar_extINtB1C_10BuilderExtINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB1C_9WriteSeekNtNtCskKLDkoKarTP_4core6marker4SendEL_EE9run_asyncuNtNtNtB3k_2io5error5ErrorNCNCNvB1y_11append_data00E00INtNtB3k_6result6ResultuB45_EECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1280
  store ptr %i.ab, ptr %i.e, align 8, !noalias !1280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1280
  store ptr %i.e, ptr %i.d, align 8, !noalias !1280
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1280
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !1281

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !1280, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !1281

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1281
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !1281

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvMs7_NtCslmvYCXbQjWR_6common7tar_extINtB1C_10BuilderExtINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB1C_9WriteSeekNtNtCskKLDkoKarTP_4core6marker4SendEL_EE9run_asyncuNtNtNtB3k_2io5error5ErrorNCNCNvB1y_11append_data00E00INtNtB3k_6result6ResultuB45_EECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1280
  call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !1284, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  call void @llvm.experimental.noalias.scope.decl(metadata !1286)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !1287, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !1287
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1288)
  call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !1290, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !1290
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvMs7_NtCslmvYCXbQjWR_6common7tar_extINtBM_10BuilderExtINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBM_9WriteSeekNtNtB4_6marker4SendEL_EE9run_asyncuNtNtNtB4_2io5error5ErrorNCNCNvBI_11append_data00E00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(568) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtCskKLDkoKarTP_4core6result6ResultINtNtB28_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorENCNCNvNtNtB3J_9snapshots12download_tar23download_and_unpack_tar00E00B23_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !1313 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1313
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1313, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !1313
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !1313, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !1313, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1313
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtCskKLDkoKarTP_4core6result6ResultINtNtB2s_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorENCNCNvNtNtB43_9snapshots12download_tar23download_and_unpack_tar00E00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !1313, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1313, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1313
  store ptr %i.w, ptr %i.c, align 8, !noalias !1313
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtCskKLDkoKarTP_4core6result6ResultINtNtB2v_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorENCNCNvNtNtB46_9snapshots12download_tar23download_and_unpack_tar00E00B2q_ECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !1314 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtB1a_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !1314

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1314
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtCskKLDkoKarTP_4core6result6ResultINtNtB2v_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorENCNCNvNtNtB46_9snapshots12download_tar23download_and_unpack_tar00E00B2q_ECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1315
  store ptr %i.w, ptr %i.f, align 8, !noalias !1315
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtCskKLDkoKarTP_4core6result6ResultINtNtB2v_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorENCNCNvNtNtB46_9snapshots12download_tar23download_and_unpack_tar00E00B2q_ECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1315
  store ptr %i.ab, ptr %i.e, align 8, !noalias !1315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1315
  store ptr %i.e, ptr %i.d, align 8, !noalias !1315
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1315
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !1316

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !1315, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !1316

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1316
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtB1a_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !1316

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtCskKLDkoKarTP_4core6result6ResultINtNtB2v_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorENCNCNvNtNtB46_9snapshots12download_tar23download_and_unpack_tar00E00B2q_ECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1315
  call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !1319, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  call void @llvm.experimental.noalias.scope.decl(metadata !1321)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !1322, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !1322
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1323)
  call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !1325, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !1325
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorENCNCNvNtNtB2Z_9snapshots12download_tar23download_and_unpack_tar00E00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(72) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventENtNtNtB3g_15content_manager6errors12StorageErrorENCNCNvNtNtCsl8OoimOLbh_6qdrant6common5audit24fetch_cluster_audit_logs00E00B23_EB4S_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [128 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !1348 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef nonnull align 8 dereferenceable(128) %0, i64 128, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1348, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !1348
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !1348, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !1348, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1348
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventENtNtNtB3A_15content_manager6errors12StorageErrorENCNCNvNtNtCsl8OoimOLbh_6qdrant6common5audit24fetch_cluster_audit_logs00E00ENtNtBR_8schedule16BlockingScheduleEB5c_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !1348, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1348, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1348
  store ptr %i.w, ptr %i.c, align 8, !noalias !1348
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventENtNtNtB3D_15content_manager6errors12StorageErrorENCNCNvNtNtCsl8OoimOLbh_6qdrant6common5audit24fetch_cluster_audit_logs00E00B2q_EB5f_.exit.i unwind label %bb.i, !noalias !1349 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventENtNtNtB2i_15content_manager6errors12StorageErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !1349

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1349
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventENtNtNtB3D_15content_manager6errors12StorageErrorENCNCNvNtNtCsl8OoimOLbh_6qdrant6common5audit24fetch_cluster_audit_logs00E00B2q_EB5f_.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1350
  store ptr %i.w, ptr %i.f, align 8, !noalias !1350
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventENtNtNtB3D_15content_manager6errors12StorageErrorENCNCNvNtNtCsl8OoimOLbh_6qdrant6common5audit24fetch_cluster_audit_logs00E00B2q_EB5f_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1350
  store ptr %i.ab, ptr %i.e, align 8, !noalias !1350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1350
  store ptr %i.e, ptr %i.d, align 8, !noalias !1350
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1350
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !1351

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !1350, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !1351

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1351
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventENtNtNtB2i_15content_manager6errors12StorageErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !1351

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventENtNtNtB3D_15content_manager6errors12StorageErrorENCNCNvNtNtCsl8OoimOLbh_6qdrant6common5audit24fetch_cluster_audit_logs00E00B2q_EB5f_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1350
  call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !1354, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !1357, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !1357
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !1360, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !1360
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventENtNtNtB2x_15content_manager6errors12StorageErrorENCNCNvNtNtCsl8OoimOLbh_6qdrant6common5audit24fetch_cluster_audit_logs00E00EB49_(ptr noalias nofree noundef align 8 dereferenceable(128) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventENtNtNtB3g_15content_manager6errors12StorageErrorENCNCNvXs_NtNtNtCsl8OoimOLbh_6qdrant5tonic3api19qdrant_internal_apiNtB4R_21QdrantInternalServiceNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant22qdrant_internal_server14QdrantInternal13get_audit_log0s1_0E00B23_EB4X_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [128 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !1383 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef nonnull align 8 dereferenceable(128) %0, i64 128, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1383, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !1383
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !1383, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !1383, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1383
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventENtNtNtB3A_15content_manager6errors12StorageErrorENCNCNvXs_NtNtNtCsl8OoimOLbh_6qdrant5tonic3api19qdrant_internal_apiNtB5b_21QdrantInternalServiceNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant22qdrant_internal_server14QdrantInternal13get_audit_log0s1_0E00ENtNtBR_8schedule16BlockingScheduleEB5h_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !1383, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1383, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1383
  store ptr %i.w, ptr %i.c, align 8, !noalias !1383
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventENtNtNtB3D_15content_manager6errors12StorageErrorENCNCNvXs_NtNtNtCsl8OoimOLbh_6qdrant5tonic3api19qdrant_internal_apiNtB5e_21QdrantInternalServiceNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant22qdrant_internal_server14QdrantInternal13get_audit_log0s1_0E00B2q_EB5k_.exit.i unwind label %bb.i, !noalias !1384 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventENtNtNtB2i_15content_manager6errors12StorageErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !1384

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1384
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventENtNtNtB3D_15content_manager6errors12StorageErrorENCNCNvXs_NtNtNtCsl8OoimOLbh_6qdrant5tonic3api19qdrant_internal_apiNtB5e_21QdrantInternalServiceNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant22qdrant_internal_server14QdrantInternal13get_audit_log0s1_0E00B2q_EB5k_.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1385
  store ptr %i.w, ptr %i.f, align 8, !noalias !1385
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventENtNtNtB3D_15content_manager6errors12StorageErrorENCNCNvXs_NtNtNtCsl8OoimOLbh_6qdrant5tonic3api19qdrant_internal_apiNtB5e_21QdrantInternalServiceNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant22qdrant_internal_server14QdrantInternal13get_audit_log0s1_0E00B2q_EB5k_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1385
  store ptr %i.ab, ptr %i.e, align 8, !noalias !1385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1385
  store ptr %i.e, ptr %i.d, align 8, !noalias !1385
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1385
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !1386

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !1385, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !1386

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1386
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventENtNtNtB2i_15content_manager6errors12StorageErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !1386

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventENtNtNtB3D_15content_manager6errors12StorageErrorENCNCNvXs_NtNtNtCsl8OoimOLbh_6qdrant5tonic3api19qdrant_internal_apiNtB5e_21QdrantInternalServiceNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant22qdrant_internal_server14QdrantInternal13get_audit_log0s1_0E00B2q_EB5k_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1385
  call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  call void @llvm.experimental.noalias.scope.decl(metadata !1388)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !1389, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !1392, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !1392
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1393)
  call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !1395, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !1395
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventENtNtNtB2x_15content_manager6errors12StorageErrorENCNCNvXs_NtNtNtCsl8OoimOLbh_6qdrant5tonic3api19qdrant_internal_apiNtB48_21QdrantInternalServiceNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant22qdrant_internal_server14QdrantInternal13get_audit_log0s1_0E00EB4e_(ptr noalias nofree noundef align 8 dereferenceable(128) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtB56_10LocalShard17snapshot_manifest00E00B23_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !1418 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1418
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1418, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !1418
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !1418, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !1418, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1418
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtB5q_10LocalShard17snapshot_manifest00E00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !1418, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1418, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1418
  store ptr %i.w, ptr %i.c, align 8, !noalias !1418
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtB5t_10LocalShard17snapshot_manifest00E00B2q_ECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !1419 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !1419

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1419
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtB5t_10LocalShard17snapshot_manifest00E00B2q_ECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1420
  store ptr %i.w, ptr %i.f, align 8, !noalias !1420
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtB5t_10LocalShard17snapshot_manifest00E00B2q_ECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1420
  store ptr %i.ab, ptr %i.e, align 8, !noalias !1420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1420
  store ptr %i.e, ptr %i.d, align 8, !noalias !1420
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1420
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !1421

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !1420, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !1421

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1421
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !1421

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtB5t_10LocalShard17snapshot_manifest00E00B2q_ECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1420
  call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !1424, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1425)
  call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !1427, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !1427
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !1430, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !1430
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtB4_6result6ResultNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtB4n_10LocalShard17snapshot_manifest00E00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtCscmBEibYz9XM_6cancel8blocking21spawn_cancel_on_tokenINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENCNCNvMNtNtB2N_6shards12shard_holderNtB3T_11ShardHolder22restore_shard_snapshot00E00B24_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !1453 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1453
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1453, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !1453
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !1453, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !1453, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1453
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtCscmBEibYz9XM_6cancel8blocking21spawn_cancel_on_tokenINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENCNCNvMNtNtB37_6shards12shard_holderNtB4d_11ShardHolder22restore_shard_snapshot00E00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !1453, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1453, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1453
  store ptr %i.w, ptr %i.c, align 8, !noalias !1453
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtCscmBEibYz9XM_6cancel8blocking21spawn_cancel_on_tokenINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENCNCNvMNtNtB3a_6shards12shard_holderNtB4g_11ShardHolder22restore_shard_snapshot00E00B2r_ECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !1454 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !1454

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1454
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtCscmBEibYz9XM_6cancel8blocking21spawn_cancel_on_tokenINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENCNCNvMNtNtB3a_6shards12shard_holderNtB4g_11ShardHolder22restore_shard_snapshot00E00B2r_ECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1455
  store ptr %i.w, ptr %i.f, align 8, !noalias !1455
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtCscmBEibYz9XM_6cancel8blocking21spawn_cancel_on_tokenINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENCNCNvMNtNtB3a_6shards12shard_holderNtB4g_11ShardHolder22restore_shard_snapshot00E00B2r_ECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1455
  store ptr %i.ab, ptr %i.e, align 8, !noalias !1455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1455
  store ptr %i.e, ptr %i.d, align 8, !noalias !1455
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1455
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !1456

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !1455, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !1456

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1456
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !1456

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtCscmBEibYz9XM_6cancel8blocking21spawn_cancel_on_tokenINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENCNCNvMNtNtB3a_6shards12shard_holderNtB4g_11ShardHolder22restore_shard_snapshot00E00B2r_ECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1455
  call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !1459, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1460)
  call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !1462, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !1462
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !1465, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !1465
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvNtCscmBEibYz9XM_6cancel8blocking21spawn_cancel_on_tokenINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENCNCNvMNtNtB24_6shards12shard_holderNtB3a_11ShardHolder22restore_shard_snapshot00E00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(80) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtB8_2fs10create_dir10create_dirRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2n_2io5error5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !1488 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1488, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !1488
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !1488, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !1488, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1488
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtB6_2fs10create_dir10create_dirRNtNtCsG258MDvU3F_3std4path4PathE00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !1488, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1488, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1488
  store ptr %i.w, ptr %i.c, align 8, !noalias !1488
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs10create_dir10create_dirRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2K_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !1489 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !1489

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1489
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs10create_dir10create_dirRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2K_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1490
  store ptr %i.w, ptr %i.f, align 8, !noalias !1490
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs10create_dir10create_dirRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2K_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1490
  store ptr %i.ab, ptr %i.e, align 8, !noalias !1490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1490
  store ptr %i.e, ptr %i.d, align 8, !noalias !1490
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1490
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !1491

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !1490, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !1491

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1491
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !1491

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs10create_dir10create_dirRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2K_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1490
  call void @llvm.experimental.noalias.scope.decl(metadata !1492)
  call void @llvm.experimental.noalias.scope.decl(metadata !1493)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !1494, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1495)
  call void @llvm.experimental.noalias.scope.decl(metadata !1496)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !1497, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !1497
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1498)
  call void @llvm.experimental.noalias.scope.decl(metadata !1499)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !1500, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !1500
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvNtNtCsjZG7hsAZr3B_5tokio2fs10create_dir10create_dirRNtNtCsG258MDvU3F_3std4path4PathE00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtB8_2fs11remove_file11remove_fileRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2p_2io5error5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !1523 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1523, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !1523
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !1523, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !1523, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1523
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtB6_2fs11remove_file11remove_fileRNtNtCsG258MDvU3F_3std4path4PathE00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !1523, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1523, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1523
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1523
  store ptr %i.w, ptr %i.c, align 8, !noalias !1523
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs11remove_file11remove_fileRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2M_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !1524 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !1524

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1524
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs11remove_file11remove_fileRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2M_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1523
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1525
  store ptr %i.w, ptr %i.f, align 8, !noalias !1525
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs11remove_file11remove_fileRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2M_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1525
  store ptr %i.ab, ptr %i.e, align 8, !noalias !1525
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1525
  store ptr %i.e, ptr %i.d, align 8, !noalias !1525
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1525
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !1526

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !1525, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !1526

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1526
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !1526

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs11remove_file11remove_fileRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2M_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1525
  call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  call void @llvm.experimental.noalias.scope.decl(metadata !1528)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !1529, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !1532, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !1532
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1533)
  call void @llvm.experimental.noalias.scope.decl(metadata !1534)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !1535, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !1535
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvNtNtCsjZG7hsAZr3B_5tokio2fs11remove_file11remove_fileRNtNtCsG258MDvU3F_3std4path4PathE00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtB8_2fs14create_dir_all14create_dir_allRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2v_2io5error5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !1558 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1558
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1558, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !1558
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !1558, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !1558, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1558
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtB6_2fs14create_dir_all14create_dir_allRNtNtCsG258MDvU3F_3std4path4PathE00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !1558, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1558, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1558
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1558
  store ptr %i.w, ptr %i.c, align 8, !noalias !1558
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14create_dir_all14create_dir_allRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2S_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !1559 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !1559

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1559
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14create_dir_all14create_dir_allRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2S_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1558
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1560
  store ptr %i.w, ptr %i.f, align 8, !noalias !1560
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14create_dir_all14create_dir_allRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2S_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1560
  store ptr %i.ab, ptr %i.e, align 8, !noalias !1560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1560
  store ptr %i.e, ptr %i.d, align 8, !noalias !1560
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1560
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !1561

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !1560, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !1561

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1561
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !1561

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14create_dir_all14create_dir_allRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2S_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1560
  call void @llvm.experimental.noalias.scope.decl(metadata !1562)
  call void @llvm.experimental.noalias.scope.decl(metadata !1563)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !1564, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1565)
  call void @llvm.experimental.noalias.scope.decl(metadata !1566)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !1567, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !1567
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1568)
  call void @llvm.experimental.noalias.scope.decl(metadata !1569)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !1570, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !1570
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvNtNtCsjZG7hsAZr3B_5tokio2fs14create_dir_all14create_dir_allRNtNtCsG258MDvU3F_3std4path4PathE00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtB8_2fs14read_to_string14read_to_stringRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtB2v_2io5error5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !1593 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1593
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1593, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !1593
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !1593, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !1593, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1593
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtB6_2fs14read_to_string14read_to_stringRNtNtCsG258MDvU3F_3std4path4PathE00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !1593, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1593, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1593
  store ptr %i.w, ptr %i.c, align 8, !noalias !1593
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14read_to_string14read_to_stringRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtB2S_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !1594 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !1594

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1594
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14read_to_string14read_to_stringRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtB2S_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1595
  store ptr %i.w, ptr %i.f, align 8, !noalias !1595
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14read_to_string14read_to_stringRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtB2S_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1595
  store ptr %i.ab, ptr %i.e, align 8, !noalias !1595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1595
  store ptr %i.e, ptr %i.d, align 8, !noalias !1595
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1595
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !1596

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !1595, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !1596

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1596
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !1596

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14read_to_string14read_to_stringRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtB2S_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1595
  call void @llvm.experimental.noalias.scope.decl(metadata !1597)
  call void @llvm.experimental.noalias.scope.decl(metadata !1598)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !1599, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1600)
  call void @llvm.experimental.noalias.scope.decl(metadata !1601)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !1602, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !1602
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1603)
  call void @llvm.experimental.noalias.scope.decl(metadata !1604)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !1605, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !1605
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvNtNtCsjZG7hsAZr3B_5tokio2fs14read_to_string14read_to_stringRNtNtCsG258MDvU3F_3std4path4PathE00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtB8_2fs14remove_dir_all14remove_dir_allRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2v_2io5error5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !1628 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1628
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1628, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !1628
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !1628, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !1628, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1628
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtB6_2fs14remove_dir_all14remove_dir_allRNtNtCsG258MDvU3F_3std4path4PathE00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !1628, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1628, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1628
  store ptr %i.w, ptr %i.c, align 8, !noalias !1628
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14remove_dir_all14remove_dir_allRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2S_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !1629 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !1629

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1629
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14remove_dir_all14remove_dir_allRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2S_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1630
  store ptr %i.w, ptr %i.f, align 8, !noalias !1630
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14remove_dir_all14remove_dir_allRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2S_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1630
  store ptr %i.ab, ptr %i.e, align 8, !noalias !1630
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1630
  store ptr %i.e, ptr %i.d, align 8, !noalias !1630
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1630
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !1631

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !1630, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !1631

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1631
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !1631

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs14remove_dir_all14remove_dir_allRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2S_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1630
  call void @llvm.experimental.noalias.scope.decl(metadata !1632)
  call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !1634, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1635)
  call void @llvm.experimental.noalias.scope.decl(metadata !1636)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !1637, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !1637
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  call void @llvm.experimental.noalias.scope.decl(metadata !1639)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !1640, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !1640
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvNtNtCsjZG7hsAZr3B_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCsG258MDvU3F_3std4path4PathE00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtB8_2fs4copy4copyRNtNtCsG258MDvU3F_3std4path4PathB1v_E00INtNtCskKLDkoKarTP_4core6result6ResultyNtNtNtB2d_2io5error5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !1663 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1663
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1663, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !1663
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !1663, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !1663, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1663
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtB6_2fs4copy4copyRNtNtCsG258MDvU3F_3std4path4PathB1P_E00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !1663, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1663, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1663
  store ptr %i.w, ptr %i.c, align 8, !noalias !1663
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs4copy4copyRNtNtCsG258MDvU3F_3std4path4PathB1S_E00INtNtCskKLDkoKarTP_4core6result6ResultyNtNtNtB2A_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !1664 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultyNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !1664

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1664
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs4copy4copyRNtNtCsG258MDvU3F_3std4path4PathB1S_E00INtNtCskKLDkoKarTP_4core6result6ResultyNtNtNtB2A_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1665
  store ptr %i.w, ptr %i.f, align 8, !noalias !1665
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs4copy4copyRNtNtCsG258MDvU3F_3std4path4PathB1S_E00INtNtCskKLDkoKarTP_4core6result6ResultyNtNtNtB2A_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1665
  store ptr %i.ab, ptr %i.e, align 8, !noalias !1665
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1665
  store ptr %i.e, ptr %i.d, align 8, !noalias !1665
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1665
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !1666

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !1665, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !1666

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1666
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultyNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !1666

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs4copy4copyRNtNtCsG258MDvU3F_3std4path4PathB1S_E00INtNtCskKLDkoKarTP_4core6result6ResultyNtNtNtB2A_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1665
  call void @llvm.experimental.noalias.scope.decl(metadata !1667)
  call void @llvm.experimental.noalias.scope.decl(metadata !1668)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !1669, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1670)
  call void @llvm.experimental.noalias.scope.decl(metadata !1671)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !1672, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !1672
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1673)
  call void @llvm.experimental.noalias.scope.decl(metadata !1674)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !1675, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !1675
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvNtNtCsjZG7hsAZr3B_5tokio2fs4copy4copyRNtNtCsG258MDvU3F_3std4path4PathB1j_E00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtB8_2fs8metadata8metadataRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultNtNtB1I_2fs8MetadataNtNtNtB2h_2io5error5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !1698 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1698, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !1698
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !1698, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !1698, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1698
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtB6_2fs8metadata8metadataRNtNtCsG258MDvU3F_3std4path4PathE00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !1698, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1698, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1698
  store ptr %i.w, ptr %i.c, align 8, !noalias !1698
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs8metadata8metadataRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultNtNtB25_2fs8MetadataNtNtNtB2E_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !1699 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !1699

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1699
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs8metadata8metadataRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultNtNtB25_2fs8MetadataNtNtNtB2E_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1700
  store ptr %i.w, ptr %i.f, align 8, !noalias !1700
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs8metadata8metadataRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultNtNtB25_2fs8MetadataNtNtNtB2E_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1700
  store ptr %i.ab, ptr %i.e, align 8, !noalias !1700
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1700
  store ptr %i.e, ptr %i.d, align 8, !noalias !1700
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1700
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !1701

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !1700, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !1701

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1701
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !1701

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs8metadata8metadataRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultNtNtB25_2fs8MetadataNtNtNtB2E_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1700
  call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  call void @llvm.experimental.noalias.scope.decl(metadata !1703)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !1704, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1705)
  call void @llvm.experimental.noalias.scope.decl(metadata !1706)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !1707, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !1707
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1708)
  call void @llvm.experimental.noalias.scope.decl(metadata !1709)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !1710, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !1710
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvNtNtCsjZG7hsAZr3B_5tokio2fs8metadata8metadataRNtNtCsG258MDvU3F_3std4path4PathE00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtB8_2fs8read_dir8read_dirRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultNtB1b_7ReadDirNtNtNtB2h_2io5error5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !1733 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1733
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1733, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !1733
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !1733, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !1733, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1733
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtB6_2fs8read_dir8read_dirRNtNtCsG258MDvU3F_3std4path4PathE00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !1733, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1733, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1733
  store ptr %i.w, ptr %i.c, align 8, !noalias !1733
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs8read_dir8read_dirRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultNtB1y_7ReadDirNtNtNtB2E_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !1734 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtBb_2fs8read_dir7ReadDirNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !1734

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1734
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs8read_dir8read_dirRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultNtB1y_7ReadDirNtNtNtB2E_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1735
  store ptr %i.w, ptr %i.f, align 8, !noalias !1735
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs8read_dir8read_dirRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultNtB1y_7ReadDirNtNtNtB2E_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1735
  store ptr %i.ab, ptr %i.e, align 8, !noalias !1735
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1735
  store ptr %i.e, ptr %i.d, align 8, !noalias !1735
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1735
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !1736

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !1735, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !1736

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1736
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtBb_2fs8read_dir7ReadDirNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !1736

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs8read_dir8read_dirRNtNtCsG258MDvU3F_3std4path4PathE00INtNtCskKLDkoKarTP_4core6result6ResultNtB1y_7ReadDirNtNtNtB2E_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1735
  call void @llvm.experimental.noalias.scope.decl(metadata !1737)
  call void @llvm.experimental.noalias.scope.decl(metadata !1738)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !1739, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1740)
  call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !1742, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !1742
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1743)
  call void @llvm.experimental.noalias.scope.decl(metadata !1744)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !1745, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !1745
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvNtNtCsjZG7hsAZr3B_5tokio2fs8read_dir8read_dirRNtNtCsG258MDvU3F_3std4path4PathE00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtCsPYQCUnoTxQ_10collection6common10file_utils8move_dirNtNtCsG258MDvU3F_3std4path7PathBufB26_E00INtNtCskKLDkoKarTP_4core6result6ResultyNtNtNtB1f_10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !1768 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1768, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !1768
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !1768, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !1768, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1768
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtCsPYQCUnoTxQ_10collection6common10file_utils8move_dirNtNtCsG258MDvU3F_3std4path7PathBufB2q_E00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !1768, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1768, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1768
  store ptr %i.w, ptr %i.c, align 8, !noalias !1768
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtCsPYQCUnoTxQ_10collection6common10file_utils8move_dirNtNtCsG258MDvU3F_3std4path7PathBufB2t_E00INtNtCskKLDkoKarTP_4core6result6ResultyNtNtNtB1C_10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !1769 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultyNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !1769

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1769
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtCsPYQCUnoTxQ_10collection6common10file_utils8move_dirNtNtCsG258MDvU3F_3std4path7PathBufB2t_E00INtNtCskKLDkoKarTP_4core6result6ResultyNtNtNtB1C_10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1770
  store ptr %i.w, ptr %i.f, align 8, !noalias !1770
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtCsPYQCUnoTxQ_10collection6common10file_utils8move_dirNtNtCsG258MDvU3F_3std4path7PathBufB2t_E00INtNtCskKLDkoKarTP_4core6result6ResultyNtNtNtB1C_10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1770
  store ptr %i.ab, ptr %i.e, align 8, !noalias !1770
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1770
  store ptr %i.e, ptr %i.d, align 8, !noalias !1770
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1770
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !1771

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !1770, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !1771

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1771
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultyNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !1771

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtCsPYQCUnoTxQ_10collection6common10file_utils8move_dirNtNtCsG258MDvU3F_3std4path7PathBufB2t_E00INtNtCskKLDkoKarTP_4core6result6ResultyNtNtNtB1C_10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1770
  call void @llvm.experimental.noalias.scope.decl(metadata !1772)
  call void @llvm.experimental.noalias.scope.decl(metadata !1773)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !1774, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1775)
  call void @llvm.experimental.noalias.scope.decl(metadata !1776)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !1777, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !1777
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1778)
  call void @llvm.experimental.noalias.scope.decl(metadata !1779)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !1780, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !1780
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvNtNtCsPYQCUnoTxQ_10collection6common10file_utils8move_dirNtNtCsG258MDvU3F_3std4path7PathBufB1D_E00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1f_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream0s0_000INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1l_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !1809 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1809
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1809, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !1809
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !1809, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !1809, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1809
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1z_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream0s0_000ENtNtBR_8schedule16BlockingScheduleEB1F_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !1809, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1809, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1809
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1809
  store ptr %i.w, ptr %i.c, align 8, !noalias !1809
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1C_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream0s0_000INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1I_.exit.i unwind label %bb.i, !noalias !1810 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !1810

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1810
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1C_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream0s0_000INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1I_.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1809
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1811
  store ptr %i.w, ptr %i.f, align 8, !noalias !1811
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1C_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream0s0_000INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1I_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1811
  store ptr %i.ab, ptr %i.e, align 8, !noalias !1811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1811
  store ptr %i.e, ptr %i.d, align 8, !noalias !1811
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1811
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !1812

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !1811, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !1812

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1812
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !1812

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1C_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream0s0_000INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1I_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1811
  call void @llvm.experimental.noalias.scope.decl(metadata !1813)
  call void @llvm.experimental.noalias.scope.decl(metadata !1814)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !1815, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1816)
  call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !1818, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !1818
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1819)
  call void @llvm.experimental.noalias.scope.decl(metadata !1820)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !1821, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !1821
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1824)
  %i.ap = load ptr, ptr %0, align 8, !alias.scope !1825, !nonnull !8, !noundef !8
  %i.aq = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !1825
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileE9drop_slowCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #13
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1d_10LocalShard4load0s4_00INtNtCskKLDkoKarTP_4core6result6ResultINtNtB2y_6option6OptionNtNtCs607s0NAIaWN_7segment7segment7SegmentENtNtNtB1h_10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !1848 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1848, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !1848
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !1848, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !1848, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1848
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1x_10LocalShard4load0s4_00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !1848, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1848, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1848
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1848
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1848
  store ptr %i.w, ptr %i.c, align 8, !noalias !1848
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1A_10LocalShard4load0s4_00INtNtCskKLDkoKarTP_4core6result6ResultINtNtB2V_6option6OptionNtNtCs607s0NAIaWN_7segment7segment7SegmentENtNtNtB1E_10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !1849 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtB1a_6option6OptionNtNtCs607s0NAIaWN_7segment7segment7SegmentENtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !1849

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1849
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1A_10LocalShard4load0s4_00INtNtCskKLDkoKarTP_4core6result6ResultINtNtB2V_6option6OptionNtNtCs607s0NAIaWN_7segment7segment7SegmentENtNtNtB1E_10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1848
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1850
  store ptr %i.w, ptr %i.f, align 8, !noalias !1850
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1A_10LocalShard4load0s4_00INtNtCskKLDkoKarTP_4core6result6ResultINtNtB2V_6option6OptionNtNtCs607s0NAIaWN_7segment7segment7SegmentENtNtNtB1E_10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1850
  store ptr %i.ab, ptr %i.e, align 8, !noalias !1850
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1850
  store ptr %i.e, ptr %i.d, align 8, !noalias !1850
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1850
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !1851

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !1850, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !1851

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1851
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtB1a_6option6OptionNtNtCs607s0NAIaWN_7segment7segment7SegmentENtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !1851

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1A_10LocalShard4load0s4_00INtNtCskKLDkoKarTP_4core6result6ResultINtNtB2V_6option6OptionNtNtCs607s0NAIaWN_7segment7segment7SegmentENtNtNtB1E_10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1850
  call void @llvm.experimental.noalias.scope.decl(metadata !1852)
  call void @llvm.experimental.noalias.scope.decl(metadata !1853)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !1854, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1855)
  call void @llvm.experimental.noalias.scope.decl(metadata !1856)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !1857, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !1857
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1858)
  call void @llvm.experimental.noalias.scope.decl(metadata !1859)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !1860, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !1860
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtBK_10LocalShard4load0s4_00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(72) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtB1f_10LocalShard20get_snapshot_creator000INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1j_10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(536) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [536 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !1883 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1883
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.b, ptr noundef nonnull align 8 dereferenceable(536) %0, i64 536, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1883, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !1883
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !1883, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !1883, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1883
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtB1z_10LocalShard20get_snapshot_creator000ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(536) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !1883, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1883, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1883
  store ptr %i.w, ptr %i.c, align 8, !noalias !1883
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtB1C_10LocalShard20get_snapshot_creator000INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1G_10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !1884 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !1884

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1884
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtB1C_10LocalShard20get_snapshot_creator000INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1G_10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1885
  store ptr %i.w, ptr %i.f, align 8, !noalias !1885
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtB1C_10LocalShard20get_snapshot_creator000INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1G_10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1885
  store ptr %i.ab, ptr %i.e, align 8, !noalias !1885
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1885
  store ptr %i.e, ptr %i.d, align 8, !noalias !1885
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1885
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !1886

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !1885, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !1886

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1886
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !1886

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtB1C_10LocalShard20get_snapshot_creator000INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1G_10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1885
  call void @llvm.experimental.noalias.scope.decl(metadata !1887)
  call void @llvm.experimental.noalias.scope.decl(metadata !1888)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !1889, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1890)
  call void @llvm.experimental.noalias.scope.decl(metadata !1891)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !1892, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !1892
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1893)
  call void @llvm.experimental.noalias.scope.decl(metadata !1894)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !1895, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !1895
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtBM_10LocalShard20get_snapshot_creator000ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(536) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set9snapshotsNtB1f_15ShardReplicaSet26restore_local_replica_from0s_00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB3b_2io5error5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !1918 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1918
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1918, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !1918
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !1918, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !1918, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1918
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set9snapshotsNtB1z_15ShardReplicaSet26restore_local_replica_from0s_00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !1918, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1918, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1918
  store ptr %i.w, ptr %i.c, align 8, !noalias !1918
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set9snapshotsNtB1C_15ShardReplicaSet26restore_local_replica_from0s_00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB3y_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !1919 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !1919

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1919
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set9snapshotsNtB1C_15ShardReplicaSet26restore_local_replica_from0s_00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB3y_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1920
  store ptr %i.w, ptr %i.f, align 8, !noalias !1920
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set9snapshotsNtB1C_15ShardReplicaSet26restore_local_replica_from0s_00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB3y_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1920
  store ptr %i.ab, ptr %i.e, align 8, !noalias !1920
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1920
  store ptr %i.e, ptr %i.d, align 8, !noalias !1920
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1920
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !1921

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !1920, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !1921

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1921
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !1921

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set9snapshotsNtB1C_15ShardReplicaSet26restore_local_replica_from0s_00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB3y_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1920
  call void @llvm.experimental.noalias.scope.decl(metadata !1922)
  call void @llvm.experimental.noalias.scope.decl(metadata !1923)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !1924, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1925)
  call void @llvm.experimental.noalias.scope.decl(metadata !1926)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !1927, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !1927
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1928)
  call void @llvm.experimental.noalias.scope.decl(metadata !1929)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !1930, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !1930
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set9snapshotsNtBM_15ShardReplicaSet26restore_local_replica_from0s_00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set9snapshotsNtB1f_15ShardReplicaSet26restore_local_replica_from0s_0s_0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB3d_2io5error5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !1953 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1953
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1953, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !1953
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !1953, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !1953, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1953
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set9snapshotsNtB1z_15ShardReplicaSet26restore_local_replica_from0s_0s_0ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !1953, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1953, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1953
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1953
  store ptr %i.w, ptr %i.c, align 8, !noalias !1953
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set9snapshotsNtB1C_15ShardReplicaSet26restore_local_replica_from0s_0s_0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB3A_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !1954 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !1954

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1954
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set9snapshotsNtB1C_15ShardReplicaSet26restore_local_replica_from0s_0s_0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB3A_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1953
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1955
  store ptr %i.w, ptr %i.f, align 8, !noalias !1955
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set9snapshotsNtB1C_15ShardReplicaSet26restore_local_replica_from0s_0s_0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB3A_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1955
  store ptr %i.ab, ptr %i.e, align 8, !noalias !1955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1955
  store ptr %i.e, ptr %i.d, align 8, !noalias !1955
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1955
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !1956

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !1955, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !1956

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1956
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !1956

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set9snapshotsNtB1C_15ShardReplicaSet26restore_local_replica_from0s_0s_0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB3A_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1955
  call void @llvm.experimental.noalias.scope.decl(metadata !1957)
  call void @llvm.experimental.noalias.scope.decl(metadata !1958)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !1959, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1960)
  call void @llvm.experimental.noalias.scope.decl(metadata !1961)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !1962, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !1962
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1963)
  call void @llvm.experimental.noalias.scope.decl(metadata !1964)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !1965, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !1965
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set9snapshotsNtBM_15ShardReplicaSet26restore_local_replica_from0s_0s_0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvMNtNtB8_2fs12open_optionsNtB1b_11OpenOptions8std_open00INtNtCskKLDkoKarTP_4core6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB28_2io5error5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !1988 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1988
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1988, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !1988
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !1988, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !1988, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1988
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMNtNtB6_2fs12open_optionsNtB1v_11OpenOptions8std_open00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !1988, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1988, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1988
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1988
  store ptr %i.w, ptr %i.c, align 8, !noalias !1988
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtBc_2fs12open_optionsNtB1y_11OpenOptions8std_open00INtNtCskKLDkoKarTP_4core6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB2v_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !1989 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !1989

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1989
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtBc_2fs12open_optionsNtB1y_11OpenOptions8std_open00INtNtCskKLDkoKarTP_4core6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB2v_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1988
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1990
  store ptr %i.w, ptr %i.f, align 8, !noalias !1990
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtBc_2fs12open_optionsNtB1y_11OpenOptions8std_open00INtNtCskKLDkoKarTP_4core6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB2v_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1990
  store ptr %i.ab, ptr %i.e, align 8, !noalias !1990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1990
  store ptr %i.e, ptr %i.d, align 8, !noalias !1990
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1990
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !1991

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !1990, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !1991

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !1991
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !1991

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtBc_2fs12open_optionsNtB1y_11OpenOptions8std_open00INtNtCskKLDkoKarTP_4core6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB2v_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1990
  call void @llvm.experimental.noalias.scope.decl(metadata !1992)
  call void @llvm.experimental.noalias.scope.decl(metadata !1993)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !1994, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1995)
  call void @llvm.experimental.noalias.scope.decl(metadata !1996)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !1997, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !1997
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1998)
  call void @llvm.experimental.noalias.scope.decl(metadata !1999)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !2000, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2000
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBI_11OpenOptions8std_open00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(40) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvMNtNtB8_2fs4fileNtB1b_4File8sync_all00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1R_2io5error5ErrorEECsl8OoimOLbh_6qdrant(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 4 uses
  store i64 %i.i, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  %i.l = trunc nuw i64 %i.i to i1                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %. = select i1 %i.l, i64 504, i64 568
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.n = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !2027 ; 2 uses
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.l, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !noalias !2027, !noundef !8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = atomicrmw add ptr %i.p, i64 1 monotonic, align 8, !noalias !2027
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.o, align 8, !noalias !2027, !nonnull !8, !noundef !8
  %i.u = load ptr, ptr %i.q, align 8, !noalias !2027, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.u, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2027
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMNtNtB6_2fs4fileNtB1v_4File8sync_all00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.n)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.v = load ptr, ptr %i.a, align 8, !noalias !2027, !nonnull !8, !noundef !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !noalias !2027, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2027
  store ptr %i.x, ptr %i.b, align 8, !noalias !2027
  %i.y = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noundef nonnull %i.v, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtBc_2fs4fileNtB1y_4File8sync_all00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2e_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !2028 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.body unwind label %bb.j, !noalias !2028

bb.j:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2028
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtBc_2fs4fileNtB1y_4File8sync_all00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2e_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.ab = extractvalue { i64, ptr } %i.y, 0
  %i.ac = extractvalue { i64, ptr } %i.y, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2029
  store ptr %i.x, ptr %i.e, align 8, !noalias !2029
  %i.ad = trunc nuw i64 %i.ab to i1
  %.not.i = icmp ne ptr %i.ac, null
  %or.cond.not.i = select i1 %i.ad, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtBc_2fs4fileNtB1y_4File8sync_all00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2e_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2029
  store ptr %i.ac, ptr %i.d, align 8, !noalias !2029
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2029
  store ptr %i.d, ptr %i.c, align 8, !noalias !2029
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2029
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !2029, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body unwind label %bb.n

bb.p:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.p ], [ %i.z, %bb.i ], [ %i.ae, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.f) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtBc_2fs4fileNtB1y_4File8sync_all00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2e_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2029
  call void @llvm.experimental.noalias.scope.decl(metadata !2030)
  call void @llvm.experimental.noalias.scope.decl(metadata !2031)
  %i.ah = load i64, ptr %i.f, align 8, !range !7, !alias.scope !2032, !noundef !8
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2033)
  call void @llvm.experimental.noalias.scope.decl(metadata !2034)
  %i.aj = load ptr, ptr %i.k, align 8, !alias.scope !2035, !nonnull !8, !noundef !8
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !2035
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2036)
  call void @llvm.experimental.noalias.scope.decl(metadata !2037)
  %i.am = load ptr, ptr %i.k, align 8, !alias.scope !2038, !nonnull !8, !noundef !8
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !2038
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.x

bb.v:                                             ; preds = %bb.x, %.body
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !2039
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsG258MDvU3F_3std2fs4FileE9drop_slowCsjZG7hsAZr3B_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #13
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14shard_transferNtB1d_10Collection23initiate_shard_transfer00bECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !2062 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2062
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2062, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !2062
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !2062, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !2062, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2062
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14shard_transferNtB1x_10Collection23initiate_shard_transfer00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !2062, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2062, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2062
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2062
  store ptr %i.w, ptr %i.c, align 8, !noalias !2062
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14shard_transferNtB1A_10Collection23initiate_shard_transfer00bECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !2063 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandlebENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !2063

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2063
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14shard_transferNtB1A_10Collection23initiate_shard_transfer00bECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2062
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2064
  store ptr %i.w, ptr %i.f, align 8, !noalias !2064
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14shard_transferNtB1A_10Collection23initiate_shard_transfer00bECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2064
  store ptr %i.ab, ptr %i.e, align 8, !noalias !2064
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2064
  store ptr %i.e, ptr %i.d, align 8, !noalias !2064
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2064
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !2065

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !2064, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !2065

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2065
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandlebENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !2065

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14shard_transferNtB1A_10Collection23initiate_shard_transfer00bECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2064
  call void @llvm.experimental.noalias.scope.decl(metadata !2066)
  call void @llvm.experimental.noalias.scope.decl(metadata !2067)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !2068, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2069)
  call void @llvm.experimental.noalias.scope.decl(metadata !2070)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !2071, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2071
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2072)
  call void @llvm.experimental.noalias.scope.decl(metadata !2073)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !2074, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2074
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14shard_transferNtBK_10Collection23initiate_shard_transfer00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1b_10LocalShard13memory_report00INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtB1f_6common15memory_reporter22CollectionMemoryReportNtNtNtB1f_10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %1, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.i = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.j = extractvalue { i64, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.i, 1        ; 4 uses
  store i64 %i.j, ptr %i.f, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr %i.k, ptr %i.l, align 8
  %i.m = trunc nuw i64 %i.j to i1                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %. = select i1 %i.m, i64 504, i64 568
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.o = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !2095 ; 2 uses
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !noalias !2095, !noundef !8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !noalias !2095
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.p, align 8, !noalias !2095, !nonnull !8, !noundef !8
  %i.v = load ptr, ptr %i.r, align 8, !noalias !2095, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.v, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.u, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2095
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1v_10LocalShard13memory_report00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr nonnull %1, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.o)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.w = load ptr, ptr %i.a, align 8, !noalias !2095, !nonnull !8, !noundef !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !noalias !2095, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2095
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2095
  store ptr %i.y, ptr %i.b, align 8, !noalias !2095
  %i.z = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noundef nonnull %i.w, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1y_10LocalShard13memory_report00INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtB1C_6common15memory_reporter22CollectionMemoryReportNtNtNtB1C_10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !2096 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsPYQCUnoTxQ_10collection6common15memory_reporter22CollectionMemoryReportNtNtNtB1N_10operations5types15CollectionErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.body unwind label %bb.j, !noalias !2096

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2096
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1y_10LocalShard13memory_report00INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtB1C_6common15memory_reporter22CollectionMemoryReportNtNtNtB1C_10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.ac = extractvalue { i64, ptr } %i.z, 0
  %i.ad = extractvalue { i64, ptr } %i.z, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2095
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2097
  store ptr %i.y, ptr %i.e, align 8, !noalias !2097
  %i.ae = trunc nuw i64 %i.ac to i1
  %.not.i = icmp ne ptr %i.ad, null
  %or.cond.not.i = select i1 %i.ae, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1y_10LocalShard13memory_report00INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtB1C_6common15memory_reporter22CollectionMemoryReportNtNtNtB1C_10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2097
  store ptr %i.ad, ptr %i.d, align 8, !noalias !2097
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2097
  store ptr %i.d, ptr %i.c, align 8, !noalias !2097
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2097
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #11
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !2097, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsPYQCUnoTxQ_10collection6common15memory_reporter22CollectionMemoryReportNtNtNtB1N_10operations5types15CollectionErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body unwind label %bb.n

bb.p:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.p ], [ %i.aa, %bb.i ], [ %i.af, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.f) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1y_10LocalShard13memory_report00INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtB1C_6common15memory_reporter22CollectionMemoryReportNtNtNtB1C_10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2097
  call void @llvm.experimental.noalias.scope.decl(metadata !2098)
  call void @llvm.experimental.noalias.scope.decl(metadata !2099)
  %i.ai = load i64, ptr %i.f, align 8, !range !7, !alias.scope !2100, !noundef !8
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2101)
  call void @llvm.experimental.noalias.scope.decl(metadata !2102)
  %i.ak = load ptr, ptr %i.l, align 8, !alias.scope !2103, !nonnull !8, !noundef !8
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !2103
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2104)
  call void @llvm.experimental.noalias.scope.decl(metadata !2105)
  %i.an = load ptr, ptr %i.l, align 8, !alias.scope !2106, !nonnull !8, !noundef !8
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !2106
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.y

bb.v:                                             ; preds = %bb.w, %.body
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtBI_10LocalShard13memory_report00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1b_10LocalShard18local_shard_status00INtNtCskKLDkoKarTP_4core6option6OptionTNtNtNtB1f_10operations5types11ShardStatusNtB3h_16OptimizersStatusEEECsl8OoimOLbh_6qdrant(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %1, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.i = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.j = extractvalue { i64, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.i, 1        ; 4 uses
  store i64 %i.j, ptr %i.f, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr %i.k, ptr %i.l, align 8
  %i.m = trunc nuw i64 %i.j to i1                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %. = select i1 %i.m, i64 504, i64 568
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.o = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !2127 ; 2 uses
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !noalias !2127, !noundef !8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !noalias !2127
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.p, align 8, !noalias !2127, !nonnull !8, !noundef !8
  %i.v = load ptr, ptr %i.r, align 8, !noalias !2127, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.v, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.u, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2127
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1v_10LocalShard18local_shard_status00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr nonnull %1, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.o)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.w = load ptr, ptr %i.a, align 8, !noalias !2127, !nonnull !8, !noundef !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !noalias !2127, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2127
  store ptr %i.y, ptr %i.b, align 8, !noalias !2127
  %i.z = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noundef nonnull %i.w, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1y_10LocalShard18local_shard_status00INtNtCskKLDkoKarTP_4core6option6OptionTNtNtNtB1C_10operations5types11ShardStatusNtB3E_16OptimizersStatusEEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !2128 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6option6OptionTNtNtNtCsPYQCUnoTxQ_10collection10operations5types11ShardStatusNtB1K_16OptimizersStatusEEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.body unwind label %bb.j, !noalias !2128

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2128
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1y_10LocalShard18local_shard_status00INtNtCskKLDkoKarTP_4core6option6OptionTNtNtNtB1C_10operations5types11ShardStatusNtB3E_16OptimizersStatusEEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.ac = extractvalue { i64, ptr } %i.z, 0
  %i.ad = extractvalue { i64, ptr } %i.z, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2129
  store ptr %i.y, ptr %i.e, align 8, !noalias !2129
  %i.ae = trunc nuw i64 %i.ac to i1
  %.not.i = icmp ne ptr %i.ad, null
  %or.cond.not.i = select i1 %i.ae, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1y_10LocalShard18local_shard_status00INtNtCskKLDkoKarTP_4core6option6OptionTNtNtNtB1C_10operations5types11ShardStatusNtB3E_16OptimizersStatusEEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2129
  store ptr %i.ad, ptr %i.d, align 8, !noalias !2129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2129
  store ptr %i.d, ptr %i.c, align 8, !noalias !2129
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2129
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #11
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !2129, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6option6OptionTNtNtNtCsPYQCUnoTxQ_10collection10operations5types11ShardStatusNtB1K_16OptimizersStatusEEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body unwind label %bb.n

bb.p:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.p ], [ %i.aa, %bb.i ], [ %i.af, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.f) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1y_10LocalShard18local_shard_status00INtNtCskKLDkoKarTP_4core6option6OptionTNtNtNtB1C_10operations5types11ShardStatusNtB3E_16OptimizersStatusEEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2129
  call void @llvm.experimental.noalias.scope.decl(metadata !2130)
  call void @llvm.experimental.noalias.scope.decl(metadata !2131)
  %i.ai = load i64, ptr %i.f, align 8, !range !7, !alias.scope !2132, !noundef !8
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2133)
  call void @llvm.experimental.noalias.scope.decl(metadata !2134)
  %i.ak = load ptr, ptr %i.l, align 8, !alias.scope !2135, !nonnull !8, !noundef !8
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !2135
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2136)
  call void @llvm.experimental.noalias.scope.decl(metadata !2137)
  %i.an = load ptr, ptr %i.l, align 8, !alias.scope !2138, !nonnull !8, !noundef !8
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !2138
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.y

bb.v:                                             ; preds = %bb.w, %.body
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtBI_10LocalShard18local_shard_status00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1b_10LocalShard20estimate_cardinality00INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB3m_6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(224) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [224 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !2161 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.b, ptr noundef nonnull align 8 dereferenceable(224) %0, i64 224, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2161, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !2161
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !2161, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !2161, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2161
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1v_10LocalShard20estimate_cardinality00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(224) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !2161, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2161, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2161
  store ptr %i.w, ptr %i.c, align 8, !noalias !2161
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1y_10LocalShard20estimate_cardinality00INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB3J_6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !2162 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB1N_6common15operation_error14OperationErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !2162

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2162
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1y_10LocalShard20estimate_cardinality00INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB3J_6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2163
  store ptr %i.w, ptr %i.f, align 8, !noalias !2163
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1y_10LocalShard20estimate_cardinality00INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB3J_6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2163
  store ptr %i.ab, ptr %i.e, align 8, !noalias !2163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2163
  store ptr %i.e, ptr %i.d, align 8, !noalias !2163
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2163
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !2164

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !2163, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !2164

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2164
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB1N_6common15operation_error14OperationErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !2164

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1y_10LocalShard20estimate_cardinality00INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB3J_6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2163
  call void @llvm.experimental.noalias.scope.decl(metadata !2165)
  call void @llvm.experimental.noalias.scope.decl(metadata !2166)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !2167, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2168)
  call void @llvm.experimental.noalias.scope.decl(metadata !2169)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !2170, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2170
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2171)
  call void @llvm.experimental.noalias.scope.decl(metadata !2172)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !2173, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2173
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtBI_10LocalShard20estimate_cardinality00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(224) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1b_15ShardReplicaSet27calculate_local_shard_stats0s_0TjjjEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !2196 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2196, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !2196
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !2196, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !2196, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2196
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1v_15ShardReplicaSet27calculate_local_shard_stats0s_0ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !2196, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2196, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2196
  store ptr %i.w, ptr %i.c, align 8, !noalias !2196
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1y_15ShardReplicaSet27calculate_local_shard_stats0s_0TjjjEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !2197 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleTjjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !2197

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2197
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1y_15ShardReplicaSet27calculate_local_shard_stats0s_0TjjjEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2198
  store ptr %i.w, ptr %i.f, align 8, !noalias !2198
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1y_15ShardReplicaSet27calculate_local_shard_stats0s_0TjjjEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2198
  store ptr %i.ab, ptr %i.e, align 8, !noalias !2198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2198
  store ptr %i.e, ptr %i.d, align 8, !noalias !2198
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2198
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !2199

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !2198, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !2199

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2199
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleTjjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !2199

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1y_15ShardReplicaSet27calculate_local_shard_stats0s_0TjjjEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2198
  call void @llvm.experimental.noalias.scope.decl(metadata !2200)
  call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !2202, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2203)
  call void @llvm.experimental.noalias.scope.decl(metadata !2204)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !2205, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2205
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2206)
  call void @llvm.experimental.noalias.scope.decl(metadata !2207)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !2208, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2208
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBI_15ShardReplicaSet27calculate_local_shard_stats0s_0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvMNtNtCsgGgPqgSfnMH_7storage15content_manager3tocNtB1b_14TableOfContent22create_collection_path00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2N_2io5error5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !2231 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2231, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !2231
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !2231, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !2231, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2231
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMNtNtCsgGgPqgSfnMH_7storage15content_manager3tocNtB1v_14TableOfContent22create_collection_path00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !2231, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2231, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2231
  store ptr %i.w, ptr %i.c, align 8, !noalias !2231
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsgGgPqgSfnMH_7storage15content_manager3tocNtB1y_14TableOfContent22create_collection_path00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB3a_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !2232 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !2232

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2232
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsgGgPqgSfnMH_7storage15content_manager3tocNtB1y_14TableOfContent22create_collection_path00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB3a_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2233
  store ptr %i.w, ptr %i.f, align 8, !noalias !2233
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsgGgPqgSfnMH_7storage15content_manager3tocNtB1y_14TableOfContent22create_collection_path00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB3a_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2233
  store ptr %i.ab, ptr %i.e, align 8, !noalias !2233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2233
  store ptr %i.e, ptr %i.d, align 8, !noalias !2233
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2233
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !2234

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !2233, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !2234

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2234
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !2234

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtCsgGgPqgSfnMH_7storage15content_manager3tocNtB1y_14TableOfContent22create_collection_path00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB3a_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2233
  call void @llvm.experimental.noalias.scope.decl(metadata !2235)
  call void @llvm.experimental.noalias.scope.decl(metadata !2236)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !2237, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2238)
  call void @llvm.experimental.noalias.scope.decl(metadata !2239)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !2240, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2240
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2241)
  call void @llvm.experimental.noalias.scope.decl(metadata !2242)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !2243, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2243
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsgGgPqgSfnMH_7storage15content_manager3tocNtBI_14TableOfContent22create_collection_path00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard14resolve_submitNtB1d_10LocalShard30submit_update_filter_resolving0s_0INtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(304) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [304 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !2266 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.b, ptr noundef nonnull align 8 dereferenceable(304) %0, i64 304, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2266, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !2266
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !2266, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !2266, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2266
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard14resolve_submitNtB1x_10LocalShard30submit_update_filter_resolving0s_0ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(304) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !2266, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2266, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2266
  store ptr %i.w, ptr %i.c, align 8, !noalias !2266
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard14resolve_submitNtB1A_10LocalShard30submit_update_filter_resolving0s_0INtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !2267 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !2267

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2267
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard14resolve_submitNtB1A_10LocalShard30submit_update_filter_resolving0s_0INtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2268
  store ptr %i.w, ptr %i.f, align 8, !noalias !2268
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard14resolve_submitNtB1A_10LocalShard30submit_update_filter_resolving0s_0INtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2268
  store ptr %i.ab, ptr %i.e, align 8, !noalias !2268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2268
  store ptr %i.e, ptr %i.d, align 8, !noalias !2268
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2268
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !2269

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !2268, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !2269

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2269
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !2269

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard14resolve_submitNtB1A_10LocalShard30submit_update_filter_resolving0s_0INtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2268
  call void @llvm.experimental.noalias.scope.decl(metadata !2270)
  call void @llvm.experimental.noalias.scope.decl(metadata !2271)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !2272, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2273)
  call void @llvm.experimental.noalias.scope.decl(metadata !2274)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !2275, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2275
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2276)
  call void @llvm.experimental.noalias.scope.decl(metadata !2277)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !2278, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2278
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard14resolve_submitNtBK_10LocalShard30submit_update_filter_resolving0s_0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(304) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard18disk_usage_watcherNtB1b_16DiskUsageWatcher20get_free_space_bytes00INtNtCskKLDkoKarTP_4core6option6OptionyEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !2301 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2301
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2301, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !2301
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !2301, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !2301, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2301
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard18disk_usage_watcherNtB1v_16DiskUsageWatcher20get_free_space_bytes00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !2301, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2301, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2301
  store ptr %i.w, ptr %i.c, align 8, !noalias !2301
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard18disk_usage_watcherNtB1y_16DiskUsageWatcher20get_free_space_bytes00INtNtCskKLDkoKarTP_4core6option6OptionyEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !2302 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6option6OptionyEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !2302

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2302
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard18disk_usage_watcherNtB1y_16DiskUsageWatcher20get_free_space_bytes00INtNtCskKLDkoKarTP_4core6option6OptionyEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2303
  store ptr %i.w, ptr %i.f, align 8, !noalias !2303
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard18disk_usage_watcherNtB1y_16DiskUsageWatcher20get_free_space_bytes00INtNtCskKLDkoKarTP_4core6option6OptionyEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2303
  store ptr %i.ab, ptr %i.e, align 8, !noalias !2303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2303
  store ptr %i.e, ptr %i.d, align 8, !noalias !2303
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2303
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !2304

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !2303, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !2304

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2304
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6option6OptionyEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !2304

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard18disk_usage_watcherNtB1y_16DiskUsageWatcher20get_free_space_bytes00INtNtCskKLDkoKarTP_4core6option6OptionyEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2303
  call void @llvm.experimental.noalias.scope.decl(metadata !2305)
  call void @llvm.experimental.noalias.scope.decl(metadata !2306)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !2307, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2308)
  call void @llvm.experimental.noalias.scope.decl(metadata !2309)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !2310, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2310
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2311)
  call void @llvm.experimental.noalias.scope.decl(metadata !2312)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !2313, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2313
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard18disk_usage_watcherNtBI_16DiskUsageWatcher20get_free_space_bytes00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtB1d_10LocalShard14get_size_stats00INtNtCskKLDkoKarTP_4core6result6ResultNtNtCs607s0NAIaWN_7segment5types9SizeStatsNtNtNtB1h_10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !2336 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2336, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !2336
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !2336, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !2336, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2336
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtB1x_10LocalShard14get_size_stats00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !2336, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2336, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2336
  store ptr %i.w, ptr %i.c, align 8, !noalias !2336
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtB1A_10LocalShard14get_size_stats00INtNtCskKLDkoKarTP_4core6result6ResultNtNtCs607s0NAIaWN_7segment5types9SizeStatsNtNtNtB1E_10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !2337 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs607s0NAIaWN_7segment5types9SizeStatsNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !2337

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2337
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtB1A_10LocalShard14get_size_stats00INtNtCskKLDkoKarTP_4core6result6ResultNtNtCs607s0NAIaWN_7segment5types9SizeStatsNtNtNtB1E_10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2338
  store ptr %i.w, ptr %i.f, align 8, !noalias !2338
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtB1A_10LocalShard14get_size_stats00INtNtCskKLDkoKarTP_4core6result6ResultNtNtCs607s0NAIaWN_7segment5types9SizeStatsNtNtNtB1E_10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2338
  store ptr %i.ab, ptr %i.e, align 8, !noalias !2338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2338
  store ptr %i.e, ptr %i.d, align 8, !noalias !2338
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2338
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !2339

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !2338, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !2339

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2339
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs607s0NAIaWN_7segment5types9SizeStatsNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !2339

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtB1A_10LocalShard14get_size_stats00INtNtCskKLDkoKarTP_4core6result6ResultNtNtCs607s0NAIaWN_7segment5types9SizeStatsNtNtNtB1E_10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2338
  call void @llvm.experimental.noalias.scope.decl(metadata !2340)
  call void @llvm.experimental.noalias.scope.decl(metadata !2341)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !2342, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2343)
  call void @llvm.experimental.noalias.scope.decl(metadata !2344)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !2345, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2345
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2346)
  call void @llvm.experimental.noalias.scope.decl(metadata !2347)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !2348, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2348
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtBK_10LocalShard14get_size_stats00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtB1d_10LocalShard18get_telemetry_data00INtNtCskKLDkoKarTP_4core6result6ResultTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment9telemetry16SegmentTelemetryEINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB3w_6string6StringjEENtNtNtB1h_10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !2371 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2371
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2371, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !2371
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !2371, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !2371, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2371
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtB1x_10LocalShard18get_telemetry_data00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !2371, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2371, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2371
  store ptr %i.w, ptr %i.c, align 8, !noalias !2371
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtB1A_10LocalShard18get_telemetry_data00INtNtCskKLDkoKarTP_4core6result6ResultTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment9telemetry16SegmentTelemetryEINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB3T_6string6StringjEENtNtNtB1E_10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !2372 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment9telemetry16SegmentTelemetryEINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB1N_6string6StringjEENtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !2372

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2372
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtB1A_10LocalShard18get_telemetry_data00INtNtCskKLDkoKarTP_4core6result6ResultTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment9telemetry16SegmentTelemetryEINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB3T_6string6StringjEENtNtNtB1E_10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2373
  store ptr %i.w, ptr %i.f, align 8, !noalias !2373
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtB1A_10LocalShard18get_telemetry_data00INtNtCskKLDkoKarTP_4core6result6ResultTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment9telemetry16SegmentTelemetryEINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB3T_6string6StringjEENtNtNtB1E_10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2373
  store ptr %i.ab, ptr %i.e, align 8, !noalias !2373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2373
  store ptr %i.e, ptr %i.d, align 8, !noalias !2373
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2373
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !2374

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !2373, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !2374

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2374
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment9telemetry16SegmentTelemetryEINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB1N_6string6StringjEENtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !2374

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtB1A_10LocalShard18get_telemetry_data00INtNtCskKLDkoKarTP_4core6result6ResultTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment9telemetry16SegmentTelemetryEINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB3T_6string6StringjEENtNtNtB1E_10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2373
  call void @llvm.experimental.noalias.scope.decl(metadata !2375)
  call void @llvm.experimental.noalias.scope.decl(metadata !2376)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !2377, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2378)
  call void @llvm.experimental.noalias.scope.decl(metadata !2379)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !2380, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2380
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2381)
  call void @llvm.experimental.noalias.scope.decl(metadata !2382)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !2383, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2383
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtBK_10LocalShard18get_telemetry_data00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(56) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtB1d_10LocalShard23get_optimization_status00INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtB1h_10operations5types16OptimizersStatusNtB3x_15CollectionErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !2406 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2406
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2406, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !2406
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !2406, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !2406, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2406
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtB1x_10LocalShard23get_optimization_status00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !2406, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2406, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2406
  store ptr %i.w, ptr %i.c, align 8, !noalias !2406
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtB1A_10LocalShard23get_optimization_status00INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtB1E_10operations5types16OptimizersStatusNtB3U_15CollectionErrorEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !2407 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsPYQCUnoTxQ_10collection10operations5types16OptimizersStatusNtB1J_15CollectionErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !2407

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2407
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtB1A_10LocalShard23get_optimization_status00INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtB1E_10operations5types16OptimizersStatusNtB3U_15CollectionErrorEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2408
  store ptr %i.w, ptr %i.f, align 8, !noalias !2408
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtB1A_10LocalShard23get_optimization_status00INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtB1E_10operations5types16OptimizersStatusNtB3U_15CollectionErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2408
  store ptr %i.ab, ptr %i.e, align 8, !noalias !2408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2408
  store ptr %i.e, ptr %i.d, align 8, !noalias !2408
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2408
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !2409

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !2408, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !2409

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2409
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsPYQCUnoTxQ_10collection10operations5types16OptimizersStatusNtB1J_15CollectionErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !2409

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtB1A_10LocalShard23get_optimization_status00INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtB1E_10operations5types16OptimizersStatusNtB3U_15CollectionErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2408
  call void @llvm.experimental.noalias.scope.decl(metadata !2410)
  call void @llvm.experimental.noalias.scope.decl(metadata !2411)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !2412, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2413)
  call void @llvm.experimental.noalias.scope.decl(metadata !2414)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !2415, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2415
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2416)
  call void @llvm.experimental.noalias.scope.decl(metadata !2417)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !2418, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2418
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtBK_10LocalShard23get_optimization_status00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB1d_15ShardReplicaSet11update_impl0s9_0bECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !2441 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2441
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2441, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !2441
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !2441, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !2441, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2441
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB1x_15ShardReplicaSet11update_impl0s9_0ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !2441, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2441, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2441
  store ptr %i.w, ptr %i.c, align 8, !noalias !2441
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB1A_15ShardReplicaSet11update_impl0s9_0bECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !2442 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandlebENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !2442

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2442
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB1A_15ShardReplicaSet11update_impl0s9_0bECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2443
  store ptr %i.w, ptr %i.f, align 8, !noalias !2443
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB1A_15ShardReplicaSet11update_impl0s9_0bECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2443
  store ptr %i.ab, ptr %i.e, align 8, !noalias !2443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2443
  store ptr %i.e, ptr %i.d, align 8, !noalias !2443
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2443
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !2444

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !2443, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !2444

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2444
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandlebENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !2444

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB1A_15ShardReplicaSet11update_impl0s9_0bECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2443
  call void @llvm.experimental.noalias.scope.decl(metadata !2445)
  call void @llvm.experimental.noalias.scope.decl(metadata !2446)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !2447, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2448)
  call void @llvm.experimental.noalias.scope.decl(metadata !2449)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !2450, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2450
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2451)
  call void @llvm.experimental.noalias.scope.decl(metadata !2452)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !2453, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2453
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtBK_15ShardReplicaSet11update_impl0s9_0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc19collection_meta_opsNtB1d_14TableOfContent17delete_collection00uECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !2476 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2476
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2476, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !2476
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !2476, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !2476, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2476
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc19collection_meta_opsNtB1x_14TableOfContent17delete_collection00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !2476, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2476, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2476
  store ptr %i.w, ptr %i.c, align 8, !noalias !2476
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc19collection_meta_opsNtB1A_14TableOfContent17delete_collection00uECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !2477 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !2477

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2477
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc19collection_meta_opsNtB1A_14TableOfContent17delete_collection00uECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2478
  store ptr %i.w, ptr %i.f, align 8, !noalias !2478
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc19collection_meta_opsNtB1A_14TableOfContent17delete_collection00uECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2478
  store ptr %i.ab, ptr %i.e, align 8, !noalias !2478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2478
  store ptr %i.e, ptr %i.d, align 8, !noalias !2478
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2478
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !2479

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !2478, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !2479

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2479
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !2479

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc19collection_meta_opsNtB1A_14TableOfContent17delete_collection00uECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2478
  call void @llvm.experimental.noalias.scope.decl(metadata !2480)
  call void @llvm.experimental.noalias.scope.decl(metadata !2481)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !2482, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2483)
  call void @llvm.experimental.noalias.scope.decl(metadata !2484)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !2485, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2485
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2486)
  call void @llvm.experimental.noalias.scope.decl(metadata !2487)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !2488, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2488
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc19collection_meta_opsNtBK_14TableOfContent17delete_collection00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvMs7_NtCslmvYCXbQjWR_6common7tar_extINtB1e_10BuilderExtINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB1e_9WriteSeekNtNtCskKLDkoKarTP_4core6marker4SendEL_EE6finish00INtNtB2W_6result6ResultuNtNtNtB2W_2io5error5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !2511 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2511, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !2511
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !2511, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !2511, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2511
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMs7_NtCslmvYCXbQjWR_6common7tar_extINtB1y_10BuilderExtINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB1y_9WriteSeekNtNtCskKLDkoKarTP_4core6marker4SendEL_EE6finish00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !2511, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2511, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2511
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2511
  store ptr %i.w, ptr %i.c, align 8, !noalias !2511
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs7_NtCslmvYCXbQjWR_6common7tar_extINtB1B_10BuilderExtINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB1B_9WriteSeekNtNtCskKLDkoKarTP_4core6marker4SendEL_EE6finish00INtNtB3j_6result6ResultuNtNtNtB3j_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !2512 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !2512

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2512
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs7_NtCslmvYCXbQjWR_6common7tar_extINtB1B_10BuilderExtINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB1B_9WriteSeekNtNtCskKLDkoKarTP_4core6marker4SendEL_EE6finish00INtNtB3j_6result6ResultuNtNtNtB3j_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2511
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2513
  store ptr %i.w, ptr %i.f, align 8, !noalias !2513
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs7_NtCslmvYCXbQjWR_6common7tar_extINtB1B_10BuilderExtINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB1B_9WriteSeekNtNtCskKLDkoKarTP_4core6marker4SendEL_EE6finish00INtNtB3j_6result6ResultuNtNtNtB3j_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2513
  store ptr %i.ab, ptr %i.e, align 8, !noalias !2513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2513
  store ptr %i.e, ptr %i.d, align 8, !noalias !2513
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2513
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !2514

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !2513, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !2514

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2514
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !2514

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs7_NtCslmvYCXbQjWR_6common7tar_extINtB1B_10BuilderExtINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB1B_9WriteSeekNtNtCskKLDkoKarTP_4core6marker4SendEL_EE6finish00INtNtB3j_6result6ResultuNtNtNtB3j_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2513
  call void @llvm.experimental.noalias.scope.decl(metadata !2515)
  call void @llvm.experimental.noalias.scope.decl(metadata !2516)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !2517, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2518)
  call void @llvm.experimental.noalias.scope.decl(metadata !2519)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !2520, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2520
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2521)
  call void @llvm.experimental.noalias.scope.decl(metadata !2522)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !2523, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2523
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %bb.w, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn9

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslmvYCXbQjWR_6common7tar_ext10BuilderExtINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBE_9WriteSeekNtNtB4_6marker4SendEL_EEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvMs_NtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_managerINtB1d_16ConsensusManagerNtNtB1f_3toc14TableOfContentE31propose_consensus_op_with_await00bECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !2552 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2552, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !2552
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !2552, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !2552, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2552
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMs_NtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_managerINtB1x_16ConsensusManagerNtNtB1z_3toc14TableOfContentE31propose_consensus_op_with_await00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !2552, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2552, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2552
  store ptr %i.w, ptr %i.c, align 8, !noalias !2552
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs_NtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_managerINtB1A_16ConsensusManagerNtNtB1C_3toc14TableOfContentE31propose_consensus_op_with_await00bECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !2553 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandlebENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !2553

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2553
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs_NtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_managerINtB1A_16ConsensusManagerNtNtB1C_3toc14TableOfContentE31propose_consensus_op_with_await00bECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2554
  store ptr %i.w, ptr %i.f, align 8, !noalias !2554
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs_NtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_managerINtB1A_16ConsensusManagerNtNtB1C_3toc14TableOfContentE31propose_consensus_op_with_await00bECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2554
  store ptr %i.ab, ptr %i.e, align 8, !noalias !2554
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2554
  store ptr %i.e, ptr %i.d, align 8, !noalias !2554
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2554
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !2555

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !2554, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !2555

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2555
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandlebENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !2555

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs_NtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_managerINtB1A_16ConsensusManagerNtNtB1C_3toc14TableOfContentE31propose_consensus_op_with_await00bECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2554
  call void @llvm.experimental.noalias.scope.decl(metadata !2556)
  call void @llvm.experimental.noalias.scope.decl(metadata !2557)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !2558, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2559)
  call void @llvm.experimental.noalias.scope.decl(metadata !2560)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !2561, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2561
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2562)
  call void @llvm.experimental.noalias.scope.decl(metadata !2563)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !2564, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2564
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.x, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2567)
  %i.ap = load ptr, ptr %0, align 8, !alias.scope !2568, !nonnull !8, !noundef !8
  %i.aq = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !2568
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsPYQCUnoTxQ_10collection6common8is_ready7IsReadyE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #13
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvNtNtB8_2fs10try_exists25try_exists_spawn_blocking00INtNtCskKLDkoKarTP_4core6result6ResultbNtNtNtB24_2io5error5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !2591 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2591
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2591, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !2591
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !2591, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !2591, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2591
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvNtNtB6_2fs10try_exists25try_exists_spawn_blocking00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !2591, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2591, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2591
  store ptr %i.w, ptr %i.c, align 8, !noalias !2591
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtBc_2fs10try_exists25try_exists_spawn_blocking00INtNtCskKLDkoKarTP_4core6result6ResultbNtNtNtB2r_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !2592 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultbNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !2592

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2592
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtBc_2fs10try_exists25try_exists_spawn_blocking00INtNtCskKLDkoKarTP_4core6result6ResultbNtNtNtB2r_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2593
  store ptr %i.w, ptr %i.f, align 8, !noalias !2593
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtBc_2fs10try_exists25try_exists_spawn_blocking00INtNtCskKLDkoKarTP_4core6result6ResultbNtNtNtB2r_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2593
  store ptr %i.ab, ptr %i.e, align 8, !noalias !2593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2593
  store ptr %i.e, ptr %i.d, align 8, !noalias !2593
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2593
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !2594

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !2593, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !2594

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2594
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultbNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !2594

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtBc_2fs10try_exists25try_exists_spawn_blocking00INtNtCskKLDkoKarTP_4core6result6ResultbNtNtNtB2r_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2593
  call void @llvm.experimental.noalias.scope.decl(metadata !2595)
  call void @llvm.experimental.noalias.scope.decl(metadata !2596)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !2597, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2598)
  call void @llvm.experimental.noalias.scope.decl(metadata !2599)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !2600, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2600
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2601)
  call void @llvm.experimental.noalias.scope.decl(metadata !2602)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !2603, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2603
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvNtNtCsjZG7hsAZr3B_5tokio2fs10try_exists25try_exists_spawn_blocking00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvNtNtB8_2fs6rename15rename_blocking00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1P_2io5error5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !2626 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2626
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2626, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !2626
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !2626, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !2626, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2626
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvNtNtB6_2fs6rename15rename_blocking00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !2626, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2626, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2626
  store ptr %i.w, ptr %i.c, align 8, !noalias !2626
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtBc_2fs6rename15rename_blocking00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2c_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !2627 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !2627

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2627
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtBc_2fs6rename15rename_blocking00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2c_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2628
  store ptr %i.w, ptr %i.f, align 8, !noalias !2628
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtBc_2fs6rename15rename_blocking00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2c_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2628
  store ptr %i.ab, ptr %i.e, align 8, !noalias !2628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2628
  store ptr %i.e, ptr %i.d, align 8, !noalias !2628
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2628
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !2629

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !2628, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !2629

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2629
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !2629

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtBc_2fs6rename15rename_blocking00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2c_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2628
  call void @llvm.experimental.noalias.scope.decl(metadata !2630)
  call void @llvm.experimental.noalias.scope.decl(metadata !2631)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !2632, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2633)
  call void @llvm.experimental.noalias.scope.decl(metadata !2634)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !2635, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2635
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2636)
  call void @llvm.experimental.noalias.scope.decl(metadata !2637)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !2638, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2638
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvNtNtCsjZG7hsAZr3B_5tokio2fs6rename15rename_blocking00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvNtNtCsgGgPqgSfnMH_7storage15content_manager9snapshots24__do_create_full_snapshot0s_0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtB1c_6errors12StorageErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !2661 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2661
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2661, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !2661
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !2661, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !2661, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2661
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvNtNtCsgGgPqgSfnMH_7storage15content_manager9snapshots24__do_create_full_snapshot0s_0ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !2661, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2661, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2661
  store ptr %i.w, ptr %i.c, align 8, !noalias !2661
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtCsgGgPqgSfnMH_7storage15content_manager9snapshots24__do_create_full_snapshot0s_0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtB1z_6errors12StorageErrorEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !2662 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !2662

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2662
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtCsgGgPqgSfnMH_7storage15content_manager9snapshots24__do_create_full_snapshot0s_0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtB1z_6errors12StorageErrorEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2663
  store ptr %i.w, ptr %i.f, align 8, !noalias !2663
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtCsgGgPqgSfnMH_7storage15content_manager9snapshots24__do_create_full_snapshot0s_0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtB1z_6errors12StorageErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2663
  store ptr %i.ab, ptr %i.e, align 8, !noalias !2663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2663
  store ptr %i.e, ptr %i.d, align 8, !noalias !2663
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2663
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !2664

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !2663, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !2664

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2664
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !2664

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtCsgGgPqgSfnMH_7storage15content_manager9snapshots24__do_create_full_snapshot0s_0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtB1z_6errors12StorageErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2663
  call void @llvm.experimental.noalias.scope.decl(metadata !2665)
  call void @llvm.experimental.noalias.scope.decl(metadata !2666)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !2667, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2668)
  call void @llvm.experimental.noalias.scope.decl(metadata !2669)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !2670, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2670
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2671)
  call void @llvm.experimental.noalias.scope.decl(metadata !2672)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !2673, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2673
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvNtNtCsgGgPqgSfnMH_7storage15content_manager9snapshots24__do_create_full_snapshot0s_0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(72) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvNtNtNtCsgGgPqgSfnMH_7storage15content_manager9snapshots7recover25__do_recover_from_snapshot00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtB1e_6errors12StorageErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !2696 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2696, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !2696
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !2696, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !2696, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2696
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvNtNtNtCsgGgPqgSfnMH_7storage15content_manager9snapshots7recover25__do_recover_from_snapshot00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !2696, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2696, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2696
  store ptr %i.w, ptr %i.c, align 8, !noalias !2696
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtNtCsgGgPqgSfnMH_7storage15content_manager9snapshots7recover25__do_recover_from_snapshot00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtB1B_6errors12StorageErrorEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !2697 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !2697

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2697
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtNtCsgGgPqgSfnMH_7storage15content_manager9snapshots7recover25__do_recover_from_snapshot00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtB1B_6errors12StorageErrorEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2698
  store ptr %i.w, ptr %i.f, align 8, !noalias !2698
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtNtCsgGgPqgSfnMH_7storage15content_manager9snapshots7recover25__do_recover_from_snapshot00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtB1B_6errors12StorageErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2698
  store ptr %i.ab, ptr %i.e, align 8, !noalias !2698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2698
  store ptr %i.e, ptr %i.d, align 8, !noalias !2698
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2698
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !2699

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !2698, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !2699

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2699
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !2699

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvNtNtNtCsgGgPqgSfnMH_7storage15content_manager9snapshots7recover25__do_recover_from_snapshot00INtNtCskKLDkoKarTP_4core6result6ResultuNtNtB1B_6errors12StorageErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2698
  call void @llvm.experimental.noalias.scope.decl(metadata !2700)
  call void @llvm.experimental.noalias.scope.decl(metadata !2701)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !2702, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2703)
  call void @llvm.experimental.noalias.scope.decl(metadata !2704)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !2705, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2705
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2706)
  call void @llvm.experimental.noalias.scope.decl(metadata !2707)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !2708, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2708
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvNtNtNtCsgGgPqgSfnMH_7storage15content_manager9snapshots7recover25__do_recover_from_snapshot00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(72) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1b_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10list_files00INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB2y_5types10ListedFileENtNtB2y_5error16UniversalIoErrorEEB1h_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !2731 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2731
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2731, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !2731
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !2731, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !2731, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2731
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1v_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10list_files00ENtNtBR_8schedule16BlockingScheduleEB1B_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !2731, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2731, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2731
  store ptr %i.w, ptr %i.c, align 8, !noalias !2731
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1y_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10list_files00INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB2V_5types10ListedFileENtNtB2V_5error16UniversalIoErrorEEB1E_.exit.i unwind label %bb.i, !noalias !2732 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslmvYCXbQjWR_6common12universal_io5types10ListedFileENtNtB2i_5error16UniversalIoErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !2732

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2732
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1y_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10list_files00INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB2V_5types10ListedFileENtNtB2V_5error16UniversalIoErrorEEB1E_.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2733
  store ptr %i.w, ptr %i.f, align 8, !noalias !2733
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1y_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10list_files00INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB2V_5types10ListedFileENtNtB2V_5error16UniversalIoErrorEEB1E_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2733
  store ptr %i.ab, ptr %i.e, align 8, !noalias !2733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2733
  store ptr %i.e, ptr %i.d, align 8, !noalias !2733
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2733
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !2734

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !2733, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !2734

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2734
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslmvYCXbQjWR_6common12universal_io5types10ListedFileENtNtB2i_5error16UniversalIoErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !2734

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1y_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10list_files00INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB2V_5types10ListedFileENtNtB2V_5error16UniversalIoErrorEEB1E_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2733
  call void @llvm.experimental.noalias.scope.decl(metadata !2735)
  call void @llvm.experimental.noalias.scope.decl(metadata !2736)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !2737, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2738)
  call void @llvm.experimental.noalias.scope.decl(metadata !2739)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !2740, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2740
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2741)
  call void @llvm.experimental.noalias.scope.decl(metadata !2742)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !2743, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2743
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtBI_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10list_files00EBO_(ptr noalias nofree noundef align 8 dereferenceable(32) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1b_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10read_batch0s_0INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecIB5z_hEENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1h_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !2766 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2766
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2766, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !2766
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !2766, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !2766, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2766
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1v_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10read_batch0s_0ENtNtBR_8schedule16BlockingScheduleEB1B_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !2766, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2766, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2766
  store ptr %i.w, ptr %i.c, align 8, !noalias !2766
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1y_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10read_batch0s_0INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecIB5W_hEENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1E_.exit.i unwind label %bb.i, !noalias !2767 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecIB1I_hEENtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !2767

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2767
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1y_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10read_batch0s_0INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecIB5W_hEENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1E_.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2768
  store ptr %i.w, ptr %i.f, align 8, !noalias !2768
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1y_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10read_batch0s_0INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecIB5W_hEENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1E_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2768
  store ptr %i.ab, ptr %i.e, align 8, !noalias !2768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2768
  store ptr %i.e, ptr %i.d, align 8, !noalias !2768
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2768
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !2769

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !2768, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !2769

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2769
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecIB1I_hEENtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !2769

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1y_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10read_batch0s_0INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecIB5W_hEENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1E_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2768
  call void @llvm.experimental.noalias.scope.decl(metadata !2770)
  call void @llvm.experimental.noalias.scope.decl(metadata !2771)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !2772, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2773)
  call void @llvm.experimental.noalias.scope.decl(metadata !2774)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !2775, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2775
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2776)
  call void @llvm.experimental.noalias.scope.decl(metadata !2777)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !2778, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2778
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtBI_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10read_batch0s_0EBO_(ptr noalias nofree noundef align 8 dereferenceable(88) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1b_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10read_bytes00INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1h_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !2801 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2801
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2801, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !2801
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !2801, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !2801, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2801
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1v_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10read_bytes00ENtNtBR_8schedule16BlockingScheduleEB1B_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !2801, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2801, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2801
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2801
  store ptr %i.w, ptr %i.c, align 8, !noalias !2801
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1y_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10read_bytes00INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1E_.exit.i unwind label %bb.i, !noalias !2802 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !2802

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2802
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1y_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10read_bytes00INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1E_.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2801
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2803
  store ptr %i.w, ptr %i.f, align 8, !noalias !2803
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1y_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10read_bytes00INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1E_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2803
  store ptr %i.ab, ptr %i.e, align 8, !noalias !2803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2803
  store ptr %i.e, ptr %i.d, align 8, !noalias !2803
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2803
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !2804

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !2803, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !2804

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2804
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !2804

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1y_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10read_bytes00INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1E_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2803
  call void @llvm.experimental.noalias.scope.decl(metadata !2805)
  call void @llvm.experimental.noalias.scope.decl(metadata !2806)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !2807, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2808)
  call void @llvm.experimental.noalias.scope.decl(metadata !2809)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !2810, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2810
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2811)
  call void @llvm.experimental.noalias.scope.decl(metadata !2812)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !2813, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2813
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtBI_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10read_bytes00EBO_(ptr noalias nofree noundef align 8 dereferenceable(80) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1b_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10read_whole00INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1h_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !2836 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2836, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !2836
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !2836, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !2836, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2836
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1v_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10read_whole00ENtNtBR_8schedule16BlockingScheduleEB1B_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !2836, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2836, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2836
  store ptr %i.w, ptr %i.c, align 8, !noalias !2836
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1y_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10read_whole00INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1E_.exit.i unwind label %bb.i, !noalias !2837 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !2837

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2837
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1y_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10read_whole00INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1E_.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2838
  store ptr %i.w, ptr %i.f, align 8, !noalias !2838
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1y_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10read_whole00INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1E_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2838
  store ptr %i.ab, ptr %i.e, align 8, !noalias !2838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2838
  store ptr %i.e, ptr %i.d, align 8, !noalias !2838
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2838
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !2839

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !2838, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !2839

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2839
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !2839

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1y_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10read_whole00INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1E_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2838
  call void @llvm.experimental.noalias.scope.decl(metadata !2840)
  call void @llvm.experimental.noalias.scope.decl(metadata !2841)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !2842, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2843)
  call void @llvm.experimental.noalias.scope.decl(metadata !2844)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !2845, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2845
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2846)
  call void @llvm.experimental.noalias.scope.decl(metadata !2847)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !2848, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2848
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtBI_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead10read_whole00EBO_(ptr noalias nofree noundef align 8 dereferenceable(64) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1b_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_exists00INtNtCskKLDkoKarTP_4core6result6ResultbNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1h_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !2871 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2871
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2871, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !2871
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !2871, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !2871, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2871
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1v_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_exists00ENtNtBR_8schedule16BlockingScheduleEB1B_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !2871, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2871, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2871
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2871
  store ptr %i.w, ptr %i.c, align 8, !noalias !2871
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1y_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_exists00INtNtCskKLDkoKarTP_4core6result6ResultbNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1E_.exit.i unwind label %bb.i, !noalias !2872 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultbNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !2872

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2872
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1y_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_exists00INtNtCskKLDkoKarTP_4core6result6ResultbNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1E_.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2871
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2873
  store ptr %i.w, ptr %i.f, align 8, !noalias !2873
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1y_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_exists00INtNtCskKLDkoKarTP_4core6result6ResultbNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1E_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2873
  store ptr %i.ab, ptr %i.e, align 8, !noalias !2873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2873
  store ptr %i.e, ptr %i.d, align 8, !noalias !2873
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2873
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !2874

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !2873, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !2874

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2874
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultbNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !2874

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1y_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_exists00INtNtCskKLDkoKarTP_4core6result6ResultbNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1E_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2873
  call void @llvm.experimental.noalias.scope.decl(metadata !2875)
  call void @llvm.experimental.noalias.scope.decl(metadata !2876)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !2877, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2878)
  call void @llvm.experimental.noalias.scope.decl(metadata !2879)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !2880, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2880
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2881)
  call void @llvm.experimental.noalias.scope.decl(metadata !2882)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !2883, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2883
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtBI_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_exists00EBO_(ptr noalias nofree noundef align 8 dereferenceable(32) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1b_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_length00INtNtCskKLDkoKarTP_4core6result6ResultyNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1h_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !2906 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2906
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2906, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !2906
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !2906, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !2906, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2906
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1v_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_length00ENtNtBR_8schedule16BlockingScheduleEB1B_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !2906, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2906, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2906
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2906
  store ptr %i.w, ptr %i.c, align 8, !noalias !2906
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1y_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_length00INtNtCskKLDkoKarTP_4core6result6ResultyNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1E_.exit.i unwind label %bb.i, !noalias !2907 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultyNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !2907

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2907
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1y_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_length00INtNtCskKLDkoKarTP_4core6result6ResultyNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1E_.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2906
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2908
  store ptr %i.w, ptr %i.f, align 8, !noalias !2908
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1y_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_length00INtNtCskKLDkoKarTP_4core6result6ResultyNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1E_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2908
  store ptr %i.ab, ptr %i.e, align 8, !noalias !2908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2908
  store ptr %i.e, ptr %i.d, align 8, !noalias !2908
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2908
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !2909

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !2908, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !2909

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2909
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultyNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !2909

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1y_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_length00INtNtCskKLDkoKarTP_4core6result6ResultyNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1E_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2908
  call void @llvm.experimental.noalias.scope.decl(metadata !2910)
  call void @llvm.experimental.noalias.scope.decl(metadata !2911)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !2912, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2913)
  call void @llvm.experimental.noalias.scope.decl(metadata !2914)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !2915, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2915
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2916)
  call void @llvm.experimental.noalias.scope.decl(metadata !2917)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !2918, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2918
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtBI_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead11file_length00EBO_(ptr noalias nofree noundef align 8 dereferenceable(64) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1b_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream00INtNtCskKLDkoKarTP_4core6result6ResultTB2u_NtNtB2y_5types9ReadRangeENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1h_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !2941 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2941
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2941, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !2941
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !2941, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !2941, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2941
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1v_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream00ENtNtBR_8schedule16BlockingScheduleEB1B_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !2941, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2941, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2941
  store ptr %i.w, ptr %i.c, align 8, !noalias !2941
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1y_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream00INtNtCskKLDkoKarTP_4core6result6ResultTB2R_NtNtB2V_5types9ReadRangeENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1E_.exit.i unwind label %bb.i, !noalias !2942 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultTNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileNtNtB1M_5types9ReadRangeENtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !2942

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2942
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1y_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream00INtNtCskKLDkoKarTP_4core6result6ResultTB2R_NtNtB2V_5types9ReadRangeENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1E_.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2943
  store ptr %i.w, ptr %i.f, align 8, !noalias !2943
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1y_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream00INtNtCskKLDkoKarTP_4core6result6ResultTB2R_NtNtB2V_5types9ReadRangeENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1E_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2943
  store ptr %i.ab, ptr %i.e, align 8, !noalias !2943
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2943
  store ptr %i.e, ptr %i.d, align 8, !noalias !2943
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2943
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !2944

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !2943, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !2944

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2944
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultTNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileNtNtB1M_5types9ReadRangeENtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !2944

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1y_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream00INtNtCskKLDkoKarTP_4core6result6ResultTB2R_NtNtB2V_5types9ReadRangeENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1E_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2943
  call void @llvm.experimental.noalias.scope.decl(metadata !2945)
  call void @llvm.experimental.noalias.scope.decl(metadata !2946)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !2947, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2948)
  call void @llvm.experimental.noalias.scope.decl(metadata !2949)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !2950, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2950
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2951)
  call void @llvm.experimental.noalias.scope.decl(metadata !2952)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !2953, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2953
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtBI_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream00EBO_(ptr noalias nofree noundef align 8 dereferenceable(80) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvXs_NtNtNtCsl8OoimOLbh_6qdrant5tonic3api8raft_apiNtB1d_11RaftServiceNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11raft_server4Raft17add_peer_to_known0s3_0bEB1j_(ptr noundef nonnull %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %1, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.i = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.j = extractvalue { i64, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.i, 1        ; 4 uses
  store i64 %i.j, ptr %i.f, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr %i.k, ptr %i.l, align 8
  %i.m = trunc nuw i64 %i.j to i1                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %. = select i1 %i.m, i64 504, i64 568
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.o = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !2982 ; 2 uses
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !noalias !2982, !noundef !8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !noalias !2982
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.p, align 8, !noalias !2982, !nonnull !8, !noundef !8
  %i.v = load ptr, ptr %i.r, align 8, !noalias !2982, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.v, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.u, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2982
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvXs_NtNtNtCsl8OoimOLbh_6qdrant5tonic3api8raft_apiNtB1x_11RaftServiceNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11raft_server4Raft17add_peer_to_known0s3_0ENtNtBR_8schedule16BlockingScheduleEB1D_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, i64 %1, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.o)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.w = load ptr, ptr %i.a, align 8, !noalias !2982, !nonnull !8, !noundef !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !noalias !2982, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2982
  store ptr %i.y, ptr %i.b, align 8, !noalias !2982
  %i.z = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noundef nonnull %i.w, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXs_NtNtNtCsl8OoimOLbh_6qdrant5tonic3api8raft_apiNtB1A_11RaftServiceNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11raft_server4Raft17add_peer_to_known0s3_0bEB1G_.exit.i unwind label %bb.i, !noalias !2983 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandlebENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.body unwind label %bb.j, !noalias !2983

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !2983
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXs_NtNtNtCsl8OoimOLbh_6qdrant5tonic3api8raft_apiNtB1A_11RaftServiceNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11raft_server4Raft17add_peer_to_known0s3_0bEB1G_.exit.i: ; preds = %.noexc
  %i.ac = extractvalue { i64, ptr } %i.z, 0
  %i.ad = extractvalue { i64, ptr } %i.z, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2984
  store ptr %i.y, ptr %i.e, align 8, !noalias !2984
  %i.ae = trunc nuw i64 %i.ac to i1
  %.not.i = icmp ne ptr %i.ad, null
  %or.cond.not.i = select i1 %i.ae, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXs_NtNtNtCsl8OoimOLbh_6qdrant5tonic3api8raft_apiNtB1A_11RaftServiceNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11raft_server4Raft17add_peer_to_known0s3_0bEB1G_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2984
  store ptr %i.ad, ptr %i.d, align 8, !noalias !2984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2984
  store ptr %i.d, ptr %i.c, align 8, !noalias !2984
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2984
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #11
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !2984, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandlebENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body unwind label %bb.n

bb.p:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.p ], [ %i.aa, %bb.i ], [ %i.af, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.f) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvXs_NtNtNtCsl8OoimOLbh_6qdrant5tonic3api8raft_apiNtB1A_11RaftServiceNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11raft_server4Raft17add_peer_to_known0s3_0bEB1G_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2984
  call void @llvm.experimental.noalias.scope.decl(metadata !2985)
  call void @llvm.experimental.noalias.scope.decl(metadata !2986)
  %i.ai = load i64, ptr %i.f, align 8, !range !7, !alias.scope !2987, !noundef !8
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2988)
  call void @llvm.experimental.noalias.scope.decl(metadata !2989)
  %i.ak = load ptr, ptr %i.l, align 8, !alias.scope !2990, !nonnull !8, !noundef !8
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !2990
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !2991)
  call void @llvm.experimental.noalias.scope.decl(metadata !2992)
  %i.an = load ptr, ptr %i.l, align 8, !alias.scope !2993, !nonnull !8, !noundef !8
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !2993
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.y

bb.v:                                             ; preds = %bb.x, %.body
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !2994
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager16ConsensusManagerNtNtBL_3toc14TableOfContentEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #13
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNvXs0_NtNtCs6EFb6a2W5dE_10actix_http8encoding7encoderINtB1c_7EncoderNtNtNtB1g_4body5boxed7BoxBodyENtNtB2g_12message_body11MessageBody9poll_nexts_0INtNtCskKLDkoKarTP_4core6result6ResultNtB1c_14ContentEncoderNtNtNtB3x_2io5error5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(168) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [168 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !3017 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef nonnull align 8 dereferenceable(168) %0, i64 168, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !3017, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !3017
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !3017, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !3017, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3017
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNvXs0_NtNtCs6EFb6a2W5dE_10actix_http8encoding7encoderINtB1w_7EncoderNtNtNtB1A_4body5boxed7BoxBodyENtNtB2A_12message_body11MessageBody9poll_nexts_0ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !3017, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !3017, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3017
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3017
  store ptr %i.w, ptr %i.c, align 8, !noalias !3017
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs0_NtNtCs6EFb6a2W5dE_10actix_http8encoding7encoderINtB1z_7EncoderNtNtNtB1D_4body5boxed7BoxBodyENtNtB2D_12message_body11MessageBody9poll_nexts_0INtNtCskKLDkoKarTP_4core6result6ResultNtB1z_14ContentEncoderNtNtNtB3U_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !3018 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs6EFb6a2W5dE_10actix_http8encoding7encoder14ContentEncoderNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !3018

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !3018
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs0_NtNtCs6EFb6a2W5dE_10actix_http8encoding7encoderINtB1z_7EncoderNtNtNtB1D_4body5boxed7BoxBodyENtNtB2D_12message_body11MessageBody9poll_nexts_0INtNtCskKLDkoKarTP_4core6result6ResultNtB1z_14ContentEncoderNtNtNtB3U_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3017
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3019
  store ptr %i.w, ptr %i.f, align 8, !noalias !3019
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs0_NtNtCs6EFb6a2W5dE_10actix_http8encoding7encoderINtB1z_7EncoderNtNtNtB1D_4body5boxed7BoxBodyENtNtB2D_12message_body11MessageBody9poll_nexts_0INtNtCskKLDkoKarTP_4core6result6ResultNtB1z_14ContentEncoderNtNtNtB3U_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3019
  store ptr %i.ab, ptr %i.e, align 8, !noalias !3019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3019
  store ptr %i.e, ptr %i.d, align 8, !noalias !3019
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !3019
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !3020

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !3019, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !3020

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !3020
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs6EFb6a2W5dE_10actix_http8encoding7encoder14ContentEncoderNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !3020

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs0_NtNtCs6EFb6a2W5dE_10actix_http8encoding7encoderINtB1z_7EncoderNtNtNtB1D_4body5boxed7BoxBodyENtNtB2D_12message_body11MessageBody9poll_nexts_0INtNtCskKLDkoKarTP_4core6result6ResultNtB1z_14ContentEncoderNtNtNtB3U_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3019
  call void @llvm.experimental.noalias.scope.decl(metadata !3021)
  call void @llvm.experimental.noalias.scope.decl(metadata !3022)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !3023, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !3024)
  call void @llvm.experimental.noalias.scope.decl(metadata !3025)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !3026, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !3026
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !3027)
  call void @llvm.experimental.noalias.scope.decl(metadata !3028)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !3029, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !3029
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvXs0_NtNtCs6EFb6a2W5dE_10actix_http8encoding7encoderINtBJ_7EncoderNtNtNtBN_4body5boxed7BoxBodyENtNtB1M_12message_body11MessageBody9poll_nexts_0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(168) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4pool14spawn_blockingNCNvXs_NtNtCs6EFb6a2W5dE_10actix_http8encoding7decoderINtB1b_7DecoderINtNtB1f_7payload7PayloadINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtB2F_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtB1f_5error12PayloadErrorEEL_EEEEB3G_9poll_nexts_0IB4x_TINtNtB2F_6option6OptionB4T_ENtB1b_14ContentDecoderENtNtNtB2F_2io5error5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !3052 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i64 %i.i to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.m, i64 504, i64 568
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3052
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(48) %0, i64 48, i1 false), !noalias !3053
  %.sroa.01.0.v.i.i.i = select i1 %i.m, i64 528, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !3052, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !3052
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !noalias !3052, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.p, align 8, !noalias !3052, !nonnull !8, !align !9, !noundef !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %i.t, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3052
  invoke void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNvXs_NtNtCs6EFb6a2W5dE_10actix_http8encoding7decoderINtB1v_7DecoderINtNtB1z_7payload7PayloadINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtB2Z_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtB1z_5error12PayloadErrorEEL_EEEEB40_9poll_nexts_0ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noundef %.sroa.0.0.i.i.i, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !noalias !3052, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !3052, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3052
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3052
  store ptr %i.w, ptr %i.c, align 8, !noalias !3052
  %i.x = invoke { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.u, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs_NtNtCs6EFb6a2W5dE_10actix_http8encoding7decoderINtB1y_7DecoderINtNtB1C_7payload7PayloadINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtB32_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtB1C_5error12PayloadErrorEEL_EEEEB43_9poll_nexts_0IB4U_TINtNtB32_6option6OptionB5g_ENtB1y_14ContentDecoderENtNtNtB32_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i, !noalias !3054 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultTINtNtB1a_6option6OptionNtNtCs14kzo5Se9zC_5bytes5bytes5BytesENtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderENtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body unwind label %bb.j, !noalias !3054

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !3054
  unreachable

_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs_NtNtCs6EFb6a2W5dE_10actix_http8encoding7decoderINtB1y_7DecoderINtNtB1C_7payload7PayloadINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtB32_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtB1C_5error12PayloadErrorEEL_EEEEB43_9poll_nexts_0IB4U_TINtNtB32_6option6OptionB5g_ENtB1y_14ContentDecoderENtNtNtB32_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %.noexc
  %i.aa = extractvalue { i64, ptr } %i.x, 0
  %i.ab = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3052
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3055
  store ptr %i.w, ptr %i.f, align 8, !noalias !3055
  %i.ac = trunc nuw i64 %i.aa to i1
  %.not.i = icmp ne ptr %i.ab, null
  %or.cond.not.i = select i1 %i.ac, i1 %.not.i, i1 false, !prof !10
  br i1 %or.cond.not.i, label %bb.k, label %bb.q, !prof !10

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs_NtNtCs6EFb6a2W5dE_10actix_http8encoding7decoderINtB1y_7DecoderINtNtB1C_7payload7PayloadINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtB32_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtB1C_5error12PayloadErrorEEL_EEEEB43_9poll_nexts_0IB4U_TINtNtB32_6option6OptionB5g_ENtB1y_14ContentDecoderENtNtNtB32_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3055
  store ptr %i.ab, ptr %i.e, align 8, !noalias !3055
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3055
  store ptr %i.e, ptr %i.d, align 8, !noalias !3055
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !3055
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #11
          to label %bb.m unwind label %bb.l, !noalias !3056

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !3055, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #12
          to label %bb.o unwind label %bb.n, !noalias !3056

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10, !noalias !3056
  unreachable

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultTINtNtB1a_6option6OptionNtNtCs14kzo5Se9zC_5bytes5bytes5BytesENtNtNtCs6EFb6a2W5dE_10actix_http8encoding7decoder14ContentDecoderENtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body unwind label %bb.n, !noalias !3056

bb.p:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.y, %bb.i ], [ %i.ad, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #12
          to label %.thread unwind label %bb.v

bb.q:                                             ; preds = %_RINvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNvXs_NtNtCs6EFb6a2W5dE_10actix_http8encoding7decoderINtB1y_7DecoderINtNtB1C_7payload7PayloadINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtB32_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtB1C_5error12PayloadErrorEEL_EEEEB43_9poll_nexts_0IB4U_TINtNtB32_6option6OptionB5g_ENtB1y_14ContentDecoderENtNtNtB32_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3055
  call void @llvm.experimental.noalias.scope.decl(metadata !3057)
  call void @llvm.experimental.noalias.scope.decl(metadata !3058)
  %i.ag = load i64, ptr %i.g, align 8, !range !7, !alias.scope !3059, !noundef !8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !3060)
  call void @llvm.experimental.noalias.scope.decl(metadata !3061)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !3062, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !3062
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !3063)
  call void @llvm.experimental.noalias.scope.decl(metadata !3064)
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !3065, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !3065
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #13
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.w

bb.v:                                             ; preds = %bb.w, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvXs_NtNtCs6EFb6a2W5dE_10actix_http8encoding7decoderINtBI_7DecoderINtNtBM_7payload7PayloadINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtBM_5error12PayloadErrorEEL_EEEEB2V_9poll_nexts_0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %0) #12
          to label %.thread unwind label %bb.v
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull, i1 noundef zeroext, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1u_10LocalShard16do_with_segmentsjNCNCNvB1t_23local_update_queue_info00E0ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef, ptr, ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1u_15ShardReplicaSet8wait_forNCNCNvB1t_14wait_for_local00E0ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1u_15ShardReplicaSet8wait_forNCNCNvB1t_20wait_for_local_state00E0ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvMs7_NtCslmvYCXbQjWR_6common7tar_extINtB1z_10BuilderExtINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB1z_9WriteSeekNtNtCskKLDkoKarTP_4core6marker4SendEL_EE9run_asyncuNtNtNtB3h_2io5error5ErrorNCNCNvB1v_11append_data00E00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(568), ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtCskKLDkoKarTP_4core6result6ResultINtNtB2s_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorENCNCNvNtNtB43_9snapshots12download_tar23download_and_unpack_tar00E00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72), ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventENtNtNtB3A_15content_manager6errors12StorageErrorENCNCNvNtNtCsl8OoimOLbh_6qdrant6common5audit24fetch_cluster_audit_logs00E00ENtNtBR_8schedule16BlockingScheduleEB5c_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(128), ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgGgPqgSfnMH_7storage5audit10AuditEventENtNtNtB3A_15content_manager6errors12StorageErrorENCNCNvXs_NtNtNtCsl8OoimOLbh_6qdrant5tonic3api19qdrant_internal_apiNtB5b_21QdrantInternalServiceNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant22qdrant_internal_server14QdrantInternal13get_audit_log0s1_0E00ENtNtBR_8schedule16BlockingScheduleEB5h_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(128), ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtCscmBEibYz9XM_6cancel8blocking20spawn_cancel_on_dropINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtB5q_10LocalShard17snapshot_manifest00E00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtCscmBEibYz9XM_6cancel8blocking21spawn_cancel_on_tokenINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENCNCNvMNtNtB37_6shards12shard_holderNtB4d_11ShardHolder22restore_shard_snapshot00E00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80), ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtB6_2fs10create_dir10create_dirRNtNtCsG258MDvU3F_3std4path4PathE00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtB6_2fs11remove_file11remove_fileRNtNtCsG258MDvU3F_3std4path4PathE00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtB6_2fs14create_dir_all14create_dir_allRNtNtCsG258MDvU3F_3std4path4PathE00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtB6_2fs14read_to_string14read_to_stringRNtNtCsG258MDvU3F_3std4path4PathE00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtB6_2fs14remove_dir_all14remove_dir_allRNtNtCsG258MDvU3F_3std4path4PathE00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtB6_2fs4copy4copyRNtNtCsG258MDvU3F_3std4path4PathB1P_E00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48), ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtB6_2fs8metadata8metadataRNtNtCsG258MDvU3F_3std4path4PathE00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtB6_2fs8read_dir8read_dirRNtNtCsG258MDvU3F_3std4path4PathE00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtCsPYQCUnoTxQ_10collection10collection3mmr27mmr_from_points_with_vectorINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlattenINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB3I_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEE0s_0ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(240), ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtCsPYQCUnoTxQ_10collection6common10file_utils8move_dirNtNtCsG258MDvU3F_3std4path7PathBufB2q_E00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48), ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB1z_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream0s0_000ENtNtBR_8schedule16BlockingScheduleEB1F_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1x_10LocalShard4load0s4_00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72), ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB1z_10LocalShard25internal_scroll_by_id_raw000ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(280), ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtB1z_10LocalShard20get_snapshot_creator000ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(536), ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set9snapshotsNtB1z_15ShardReplicaSet26restore_local_replica_from0s_00ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set9snapshotsNtB1z_15ShardReplicaSet26restore_local_replica_from0s_0s_0ENtNtBR_8schedule16BlockingScheduleECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_1
