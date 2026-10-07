Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/git_xet.git_xet.731ec678f938a728-cgu.09?download=true
inline.NumInlined: 1013
inline.NumDeleted: 489
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMNtCslc8SwK8fohf_5bytes5bytesNtB3_5Bytes5sliceINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs9SMuO7kbZ2K_7git_xet:bb.a
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !12 ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %3, ptr %i.c, align 8
  %.not = icmp ugt i64 %2, %3
  br i1 %.not, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.h, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.417.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not30 = icmp ugt i64 %3, %i.g
  br i1 %.not30, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.421.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.i, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.425.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %3, %2
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %1, align 8, !nonnull !12, !align !14, !noundef !12
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !12, !noundef !12
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noundef !12
  tail call void %i.l(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull align 8 %i.m, ptr noundef %i.o, i64 noundef %i.g)
  %i.p = sub i64 %3, %2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !noundef !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %2
  store ptr %i.s, ptr %i.q, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noundef !12
  %i.v = getelementptr i8, ptr %i.u, i64 %2
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = getelementptr i8, ptr null, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.z, align 8
  store ptr @9, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sink = phi i64 [ 0, %bb.g ], [ %i.p, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.aa, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMNtNtCsf1bHqHEg0eP_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_9any_value10AnyValueIdNtB13_8AnyValueE3getB11_ECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !12 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.val7 = load i128, ptr %1, align 8
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0819, i64 16 ; 2 uses
  %i.h = add i64 %.sroa.8.018, 1
  %i.i = icmp eq ptr %i.g, %i.e
  br i1 %i.i, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0819 = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.8.018 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %.val = load i128, ptr %.sroa.0.0819, align 8
  %i.j = icmp eq i128 %.val, %.val7
  br i1 %i.j, label %bb.c, label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.d
  %.sroa.0.0 = phi ptr [ %i.p, %bb.d ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.sroa.0.0

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !12 ; 2 uses
  %i.m = icmp ult i64 %.sroa.8.018, %i.l
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !12, !noundef !12
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.8.018
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.018, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1q_10XetRuntime14spawn_blockingNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory23merge_shards_backgroundRNtNtCsG258MDvU3F_3std4path7PathBufB4v_E0INtNtCskKLDkoKarTP_4core6result6ResultNtB2U_16ShardMergeResultNtNtB2Y_5error9CoreErrorEE0B5a_ECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.f = atomicrmw add ptr @_RNvNvMs_NtNtNtCsUrhh0HcRih_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !103 ; 2 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(88) %2, i64 88, i1 false), !noalias !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !103
  invoke void @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.d unwind label %bb.h, !noalias !105

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !103
  call void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1t_10XetRuntime14spawn_blockingNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory23merge_shards_backgroundRNtNtCsG258MDvU3F_3std4path7PathBufB4y_E0INtNtCskKLDkoKarTP_4core6result6ResultNtB2X_16ShardMergeResultNtNtB31_5error9CoreErrorEE0ENtNtBQ_8schedule16BlockingScheduleECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.f), !noalias !105
  %i.g = load ptr, ptr %i.a, align 8, !noalias !103, !nonnull !12, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !noalias !103, !nonnull !12, !noundef !12 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !103
  %i.j = invoke { i64, ptr } @_RNvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noundef nonnull %i.g, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %_RINvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1w_10XetRuntime14spawn_blockingNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory23merge_shards_backgroundRNtNtCsG258MDvU3F_3std4path7PathBufB4B_E0INtNtCskKLDkoKarTP_4core6result6ResultNtB30_16ShardMergeResultNtNtB34_5error9CoreErrorEE0B5g_ECs9SMuO7kbZ2K_7git_xet.exit unwind label %bb.e, !noalias !106 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = invoke noundef zeroext i1 @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.i)
          to label %.noexc.i unwind label %bb.g, !noalias !106

.noexc.i:                                         ; preds = %bb.e
  br i1 %i.l, label %bb.f, label %common.resume

bb.f:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCsUrhh0HcRih_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.i)
          to label %common.resume unwind label %bb.g, !noalias !106

bb.g:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !106
  unreachable

common.resume:                                    ; preds = %bb.o, %.noexc, %.noexc.i, %bb.f, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.k, %.noexc.i ], [ %i.n, %bb.h ], [ %i.r, %.noexc ], [ %i.r, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1J_10XetRuntime14spawn_blockingNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory23merge_shards_backgroundRNtNtCsG258MDvU3F_3std4path7PathBufB4O_E0INtNtB4_6result6ResultNtB3d_16ShardMergeResultNtNtB3h_5error9CoreErrorEE0EECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(88) %i.c) #27
          to label %common.resume unwind label %bb.g, !noalias !105

_RINvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1w_10XetRuntime14spawn_blockingNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory23merge_shards_backgroundRNtNtCsG258MDvU3F_3std4path7PathBufB4B_E0INtNtCskKLDkoKarTP_4core6result6ResultNtB30_16ShardMergeResultNtNtB34_5error9CoreErrorEE0B5g_ECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.d
  %i.o = extractvalue { i64, ptr } %i.j, 0
  %i.p = extractvalue { i64, ptr } %i.j, 1        ; 2 uses
  %i.q = trunc nuw i64 %i.o to i1
  %.not = icmp ne ptr %i.p, null
  %or.cond.not = select i1 %i.q, i1 %.not, i1 false, !prof !15
  br i1 %or.cond.not, label %bb.j, label %bb.i, !prof !15

bb.i:                                             ; preds = %_RINvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1w_10XetRuntime14spawn_blockingNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory23merge_shards_backgroundRNtNtCsG258MDvU3F_3std4path7PathBufB4B_E0INtNtCskKLDkoKarTP_4core6result6ResultNtB30_16ShardMergeResultNtNtB34_5error9CoreErrorEE0B5g_ECs9SMuO7kbZ2K_7git_xet.exit
  ret ptr %i.i

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1w_10XetRuntime14spawn_blockingNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory23merge_shards_backgroundRNtNtCsG258MDvU3F_3std4path7PathBufB4B_E0INtNtCskKLDkoKarTP_4core6result6ResultNtB30_16ShardMergeResultNtNtB34_5error9CoreErrorEE0B5g_ECs9SMuO7kbZ2K_7git_xet.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.p, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #28
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val14 = load ptr, ptr %i.e, align 8, !nonnull !12, !noundef !12
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9SMuO7kbZ2K_7git_xet(ptr nonnull %.val14) #27
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.t = invoke noundef zeroext i1 @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.i)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.n
  br i1 %i.t, label %bb.o, label %common.resume

bb.o:                                             ; preds = %.noexc
  invoke void @_RNvMs_NtNtNtCsUrhh0HcRih_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.i)
          to label %common.resume unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1q_10XetRuntime14spawn_blockingNCNCINvMNtNtCsjHtSR7YjKD4_8xet_data10processing6sha256NtB2X_15Sha256Generator6updateNtNtCslc8SwK8fohf_5bytes5bytes5BytesE00INtNtCskKLDkoKarTP_4core6result6ResultNtCs6rZvBWPOMOk_4sha26Sha256NtNtNtBa_4task5error9JoinErrorEE0B4O_ECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(144) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [144 x i8], align 8               ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.f = atomicrmw add ptr @_RNvNvMs_NtNtNtCsUrhh0HcRih_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !112 ; 2 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(144) %2, i64 144, i1 false), !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !112
  invoke void @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.d unwind label %bb.h, !noalias !114

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !112
  call void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1t_10XetRuntime14spawn_blockingNCNCINvMNtNtCsjHtSR7YjKD4_8xet_data10processing6sha256NtB30_15Sha256Generator6updateNtNtCslc8SwK8fohf_5bytes5bytes5BytesE00INtNtCskKLDkoKarTP_4core6result6ResultNtCs6rZvBWPOMOk_4sha26Sha256NtNtB2_5error9JoinErrorEE0ENtNtBQ_8schedule16BlockingScheduleECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(144) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.f), !noalias !114
  %i.g = load ptr, ptr %i.a, align 8, !noalias !112, !nonnull !12, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !noalias !112, !nonnull !12, !noundef !12 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !112
  %i.j = invoke { i64, ptr } @_RNvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noundef nonnull %i.g, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %_RINvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1w_10XetRuntime14spawn_blockingNCNCINvMNtNtCsjHtSR7YjKD4_8xet_data10processing6sha256NtB33_15Sha256Generator6updateNtNtCslc8SwK8fohf_5bytes5bytes5BytesE00INtNtCskKLDkoKarTP_4core6result6ResultNtCs6rZvBWPOMOk_4sha26Sha256NtNtNtBa_4task5error9JoinErrorEE0B4U_ECs9SMuO7kbZ2K_7git_xet.exit unwind label %bb.e, !noalias !115 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = invoke noundef zeroext i1 @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.i)
          to label %.noexc.i unwind label %bb.g, !noalias !115

.noexc.i:                                         ; preds = %bb.e
  br i1 %i.l, label %bb.f, label %common.resume

bb.f:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCsUrhh0HcRih_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.i)
          to label %common.resume unwind label %bb.g, !noalias !115

bb.g:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !115
  unreachable

common.resume:                                    ; preds = %bb.o, %.noexc, %.noexc.i, %bb.f, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.k, %.noexc.i ], [ %i.n, %bb.h ], [ %i.r, %.noexc ], [ %i.r, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1J_10XetRuntime14spawn_blockingNCNCINvMNtNtCsjHtSR7YjKD4_8xet_data10processing6sha256NtB3g_15Sha256Generator6updateNtNtCslc8SwK8fohf_5bytes5bytes5BytesE00INtNtB4_6result6ResultNtCs6rZvBWPOMOk_4sha26Sha256NtNtNtBI_4task5error9JoinErrorEE0EECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(144) %i.c) #27
          to label %common.resume unwind label %bb.g, !noalias !114

_RINvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1w_10XetRuntime14spawn_blockingNCNCINvMNtNtCsjHtSR7YjKD4_8xet_data10processing6sha256NtB33_15Sha256Generator6updateNtNtCslc8SwK8fohf_5bytes5bytes5BytesE00INtNtCskKLDkoKarTP_4core6result6ResultNtCs6rZvBWPOMOk_4sha26Sha256NtNtNtBa_4task5error9JoinErrorEE0B4U_ECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.d
  %i.o = extractvalue { i64, ptr } %i.j, 0
  %i.p = extractvalue { i64, ptr } %i.j, 1        ; 2 uses
  %i.q = trunc nuw i64 %i.o to i1
  %.not = icmp ne ptr %i.p, null
  %or.cond.not = select i1 %i.q, i1 %.not, i1 false, !prof !15
  br i1 %or.cond.not, label %bb.j, label %bb.i, !prof !15

bb.i:                                             ; preds = %_RINvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1w_10XetRuntime14spawn_blockingNCNCINvMNtNtCsjHtSR7YjKD4_8xet_data10processing6sha256NtB33_15Sha256Generator6updateNtNtCslc8SwK8fohf_5bytes5bytes5BytesE00INtNtCskKLDkoKarTP_4core6result6ResultNtCs6rZvBWPOMOk_4sha26Sha256NtNtNtBa_4task5error9JoinErrorEE0B4U_ECs9SMuO7kbZ2K_7git_xet.exit
  ret ptr %i.i

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1w_10XetRuntime14spawn_blockingNCNCINvMNtNtCsjHtSR7YjKD4_8xet_data10processing6sha256NtB33_15Sha256Generator6updateNtNtCslc8SwK8fohf_5bytes5bytes5BytesE00INtNtCskKLDkoKarTP_4core6result6ResultNtCs6rZvBWPOMOk_4sha26Sha256NtNtNtBa_4task5error9JoinErrorEE0B4U_ECs9SMuO7kbZ2K_7git_xet.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.p, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #28
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val = load ptr, ptr %i.e, align 8, !nonnull !12, !noundef !12
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9SMuO7kbZ2K_7git_xet(ptr nonnull %.val) #27
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.t = invoke noundef zeroext i1 @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.i)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.n
  br i1 %i.t, label %bb.o, label %common.resume

bb.o:                                             ; preds = %.noexc
  invoke void @_RNvMs_NtNtNtCsUrhh0HcRih_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.i)
          to label %common.resume unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1q_10XetRuntime14spawn_blockingNCNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtB2Y_17FileUploadSession17register_new_xorb000INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format20SerializedXorbObjectNtNtB5p_5error9CoreErrorEE0B4H_ECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(176) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [176 x i8], align 8               ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.f = atomicrmw add ptr @_RNvNvMs_NtNtNtCsUrhh0HcRih_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !121 ; 2 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(176) %2, i64 176, i1 false), !noalias !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !121
  invoke void @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.d unwind label %bb.h, !noalias !123

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !121
  call void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1t_10XetRuntime14spawn_blockingNCNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtB31_17FileUploadSession17register_new_xorb000INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format20SerializedXorbObjectNtNtB5s_5error9CoreErrorEE0ENtNtBQ_8schedule16BlockingScheduleECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(176) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.f), !noalias !123
  %i.g = load ptr, ptr %i.a, align 8, !noalias !121, !nonnull !12, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !noalias !121, !nonnull !12, !noundef !12 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !121
  %i.j = invoke { i64, ptr } @_RNvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noundef nonnull %i.g, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %_RINvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1w_10XetRuntime14spawn_blockingNCNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtB34_17FileUploadSession17register_new_xorb000INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format20SerializedXorbObjectNtNtB5v_5error9CoreErrorEE0B4N_ECs9SMuO7kbZ2K_7git_xet.exit unwind label %bb.e, !noalias !124 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = invoke noundef zeroext i1 @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.i)
          to label %.noexc.i unwind label %bb.g, !noalias !124

.noexc.i:                                         ; preds = %bb.e
  br i1 %i.l, label %bb.f, label %common.resume

bb.f:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCsUrhh0HcRih_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.i)
          to label %common.resume unwind label %bb.g, !noalias !124

bb.g:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !124
  unreachable

common.resume:                                    ; preds = %bb.o, %.noexc, %.noexc.i, %bb.f, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.k, %.noexc.i ], [ %i.n, %bb.h ], [ %i.r, %.noexc ], [ %i.r, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1J_10XetRuntime14spawn_blockingNCNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtB3h_17FileUploadSession17register_new_xorb000INtNtB4_6result6ResultNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format20SerializedXorbObjectNtNtB5s_5error9CoreErrorEE0EECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(176) %i.c) #27
          to label %common.resume unwind label %bb.g, !noalias !123

_RINvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1w_10XetRuntime14spawn_blockingNCNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtB34_17FileUploadSession17register_new_xorb000INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format20SerializedXorbObjectNtNtB5v_5error9CoreErrorEE0B4N_ECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.d
  %i.o = extractvalue { i64, ptr } %i.j, 0
  %i.p = extractvalue { i64, ptr } %i.j, 1        ; 2 uses
  %i.q = trunc nuw i64 %i.o to i1
  %.not = icmp ne ptr %i.p, null
  %or.cond.not = select i1 %i.q, i1 %.not, i1 false, !prof !15
  br i1 %or.cond.not, label %bb.j, label %bb.i, !prof !15

bb.i:                                             ; preds = %_RINvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1w_10XetRuntime14spawn_blockingNCNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtB34_17FileUploadSession17register_new_xorb000INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format20SerializedXorbObjectNtNtB5v_5error9CoreErrorEE0B4N_ECs9SMuO7kbZ2K_7git_xet.exit
  ret ptr %i.i

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1w_10XetRuntime14spawn_blockingNCNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtB34_17FileUploadSession17register_new_xorb000INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format20SerializedXorbObjectNtNtB5v_5error9CoreErrorEE0B4N_ECs9SMuO7kbZ2K_7git_xet.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.p, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #28
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val = load ptr, ptr %i.e, align 8, !nonnull !12, !noundef !12
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9SMuO7kbZ2K_7git_xet(ptr nonnull %.val) #27
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.t = invoke noundef zeroext i1 @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.i)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.n
  br i1 %i.t, label %bb.o, label %common.resume

bb.o:                                             ; preds = %.noexc
  invoke void @_RNvMs_NtNtNtCsUrhh0HcRih_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.i)
          to label %common.resume unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1q_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB31_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB35_13deduplication8chunking7ChunkerEE0B4F_ECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(104) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [104 x i8], align 8               ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.f = atomicrmw add ptr @_RNvNvMs_NtNtNtCsUrhh0HcRih_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !130 ; 2 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(104) %2, i64 104, i1 false), !noalias !131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !130
  invoke void @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.d unwind label %bb.h, !noalias !132

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !130
  call void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1t_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB34_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB38_13deduplication8chunking7ChunkerEE0ENtNtBQ_8schedule16BlockingScheduleECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.f), !noalias !132
  %i.g = load ptr, ptr %i.a, align 8, !noalias !130, !nonnull !12, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !noalias !130, !nonnull !12, !noundef !12 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !130
  %i.j = invoke { i64, ptr } @_RNvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noundef nonnull %i.g, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %_RINvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1w_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB37_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3b_13deduplication8chunking7ChunkerEE0B4L_ECs9SMuO7kbZ2K_7git_xet.exit unwind label %bb.e, !noalias !133 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = invoke noundef zeroext i1 @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.i)
          to label %.noexc.i unwind label %bb.g, !noalias !133

.noexc.i:                                         ; preds = %bb.e
  br i1 %i.l, label %bb.f, label %common.resume

bb.f:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCsUrhh0HcRih_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.i)
          to label %common.resume unwind label %bb.g, !noalias !133

bb.g:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !133
  unreachable

common.resume:                                    ; preds = %bb.o, %.noexc, %.noexc.i, %bb.f, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.k, %.noexc.i ], [ %i.n, %bb.h ], [ %i.r, %.noexc ], [ %i.r, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1J_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3k_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3o_13deduplication8chunking7ChunkerEE0EECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(104) %i.c) #27
          to label %common.resume unwind label %bb.g, !noalias !132

_RINvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1w_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB37_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3b_13deduplication8chunking7ChunkerEE0B4L_ECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.d
  %i.o = extractvalue { i64, ptr } %i.j, 0
  %i.p = extractvalue { i64, ptr } %i.j, 1        ; 2 uses
  %i.q = trunc nuw i64 %i.o to i1
  %.not = icmp ne ptr %i.p, null
  %or.cond.not = select i1 %i.q, i1 %.not, i1 false, !prof !15
  br i1 %or.cond.not, label %bb.j, label %bb.i, !prof !15

bb.i:                                             ; preds = %_RINvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1w_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB37_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3b_13deduplication8chunking7ChunkerEE0B4L_ECs9SMuO7kbZ2K_7git_xet.exit
  ret ptr %i.i

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1w_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB37_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3b_13deduplication8chunking7ChunkerEE0B4L_ECs9SMuO7kbZ2K_7git_xet.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.p, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #28
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val = load ptr, ptr %i.e, align 8, !nonnull !12, !noundef !12
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9SMuO7kbZ2K_7git_xet(ptr nonnull %.val) #27
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.t = invoke noundef zeroext i1 @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.i)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.n
  br i1 %i.t, label %bb.o, label %common.resume

bb.o:                                             ; preds = %.noexc
  invoke void @_RNvMs_NtNtNtCsUrhh0HcRih_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.i)
          to label %common.resume unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol12recv_requestNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockECs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.510.0..sroa_idx, align 8
  %i.c = invoke { i64, ptr } @_RNvXs8_NtNtCsG258MDvU3F_3std2io5stdioNtB5_9StdinLockNtNtNtCsexYYUdYSQU6_5alloc2io8buf_read7BufRead9read_line(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #27
          to label %common.resume unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.e = extractvalue { i64, ptr } %i.c, 0
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !12, !noundef !12
  %i.h = load i64, ptr %.sroa.510.0..sroa_idx, align 8, !noundef !12
  invoke void @_RNvXs_NtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol13protocol_specNtB4_23LFSProtocolRequestEventNtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.h)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.i = load i64, ptr %i.a, align 8, !range !146, !noundef !12 ; 2 uses
  %i.j = icmp eq i64 %i.i, -1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  br i1 %i.j, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.513.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  store i64 %i.i, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.b, align 8, !alias.scope !147 ; 2 uses
  %i.m = icmp eq i64 %.val2.i.i, 0
  br i1 %i.m, label %common.resume, label %common.resume.sink.split

bb.h:                                             ; preds = %bb.f
  %.val.i.i = load i64, ptr %i.b, align 8, !alias.scope !147 ; 2 uses
  %i.n = icmp eq i64 %.val.i.i, 0
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit22, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit22.sink.split

common.resume.sink.split:                         ; preds = %bb.g, %bb.k
  %.val2.i.i17.sink = phi i64 [ %.val2.i.i17, %bb.k ], [ %.val2.i.i, %bb.g ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.p, %bb.k ], [ %i.l, %bb.g ]
  %.val3.i.i18 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !12, !noundef !12
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i18, i64 noundef %.val2.i.i17.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !12
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.b, %bb.k, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.k ], [ %i.l, %bb.g ], [ %i.d, %bb.b ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit22.sink.split: ; preds = %bb.h, %bb.l
  %.val.i.i.sink = phi i64 [ %.val.i.i20, %bb.l ], [ %.val.i.i, %bb.h ]
  %.val1.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !12, !noundef !12
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !12
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit22

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit22: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit22.sink.split, %bb.h, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.425.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.o, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i17 = load i64, ptr %i.b, align 8, !alias.scope !148 ; 2 uses
  %i.q = icmp eq i64 %.val2.i.i17, 0
  br i1 %i.q, label %common.resume, label %common.resume.sink.split

bb.l:                                             ; preds = %bb.j
  %.val.i.i20 = load i64, ptr %i.b, align 8, !alias.scope !148 ; 2 uses
  %i.r = icmp eq i64 %.val.i.i20, 0
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit22, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit22.sink.split

bb.m:                                             ; preds = %bb.c
  %i.s = extractvalue { i64, ptr } %i.c, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.t, align 8
  %.sroa.4.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx23, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.n:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECs9SMuO7kbZ2K_7git_xet(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs9SMuO7kbZ2K_7git_xet.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !12 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !16, !invariant.load !12 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs9SMuO7kbZ2K_7git_xet.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !17, !invariant.load !12
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %i.g) #25
end_hunk_0
begin_hunk_1_@_RINvNtNtNtCsUrhh0HcRih_5tokio7runtime4task3raw8shutdownINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_managerNtB28_16ShardFileManager15register_shards0s0_00EEINtNtB1s_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9SMuO7kbZ2K_7git_xet:bb.a
bb.a:
  tail call void @_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_managerNtB2k_16ShardFileManager15register_shards0s0_00EEINtNtB1E_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCsUrhh0HcRih_5tokio7runtime4task3raw8shutdownINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_managerNtB28_16ShardFileManager15register_shards0s0_00EEINtNtB1s_4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCNvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_managerNtB2k_16ShardFileManager15register_shards0s0_00EEINtNtB1E_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCsUrhh0HcRih_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB28_10XetRuntime14spawn_blockingNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory23merge_shards_backgroundRNtNtCsG258MDvU3F_3std4path7PathBufB5d_E0INtNtCskKLDkoKarTP_4core6result6ResultNtB3C_16ShardMergeResultNtNtB3G_5error9CoreErrorEE0EENtNtBW_8schedule16BlockingScheduleECs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory23merge_shards_backgroundRNtNtCsG258MDvU3F_3std4path7PathBufB5p_E0INtNtCskKLDkoKarTP_4core6result6ResultNtB3O_16ShardMergeResultNtNtB3S_5error9CoreErrorEE0EENtNtB18_8schedule16BlockingScheduleE8shutdownCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCsUrhh0HcRih_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB28_10XetRuntime14spawn_blockingNCNCINvMNtNtCsjHtSR7YjKD4_8xet_data10processing6sha256NtB3F_15Sha256Generator6updateNtNtCslc8SwK8fohf_5bytes5bytes5BytesE00INtNtCskKLDkoKarTP_4core6result6ResultNtCs6rZvBWPOMOk_4sha26Sha256NtNtB4_5error9JoinErrorEE0EENtNtBW_8schedule16BlockingScheduleECs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCINvMNtNtCsjHtSR7YjKD4_8xet_data10processing6sha256NtB3R_15Sha256Generator6updateNtNtCslc8SwK8fohf_5bytes5bytes5BytesE00INtNtCskKLDkoKarTP_4core6result6ResultNtCs6rZvBWPOMOk_4sha26Sha256NtNtB7_5error9JoinErrorEE0EENtNtB18_8schedule16BlockingScheduleE8shutdownCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCsUrhh0HcRih_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB28_10XetRuntime14spawn_blockingNCNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtB3G_17FileUploadSession17register_new_xorb000INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format20SerializedXorbObjectNtNtB67_5error9CoreErrorEE0EENtNtBW_8schedule16BlockingScheduleECs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtB3S_17FileUploadSession17register_new_xorb000INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format20SerializedXorbObjectNtNtB6j_5error9CoreErrorEE0EENtNtB18_8schedule16BlockingScheduleE8shutdownCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCsUrhh0HcRih_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB28_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3J_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1y_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3N_13deduplication8chunking7ChunkerEE0EENtNtBW_8schedule16BlockingScheduleECs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2k_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3V_17SingleFileCleaner19add_data_chunk_impl000TINtNtB1K_4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3Z_13deduplication8chunking7ChunkerEE0EENtNtB18_8schedule16BlockingScheduleE8shutdownCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCsUrhh0HcRih_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_managerNtB2c_16ShardFileManager15register_shards0s_0EENtNtBW_8schedule16BlockingScheduleECs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_managerNtB2o_16ShardFileManager15register_shards0s_0EENtNtB18_8schedule16BlockingScheduleE8shutdownCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCsUrhh0HcRih_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1z_10XetRuntime14spawn_blockingNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory23merge_shards_backgroundRNtNtCsG258MDvU3F_3std4path7PathBufB4E_E0INtNtCskKLDkoKarTP_4core6result6ResultNtB33_16ShardMergeResultNtNtB37_5error9CoreErrorEE0ENtNtBW_8schedule16BlockingScheduleECs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17session_directory23merge_shards_backgroundRNtNtCsG258MDvU3F_3std4path7PathBufB4Q_E0INtNtCskKLDkoKarTP_4core6result6ResultNtB3f_16ShardMergeResultNtNtB3j_5error9CoreErrorEE0ENtNtB18_8schedule16BlockingScheduleE8shutdownCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCsUrhh0HcRih_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1z_10XetRuntime14spawn_blockingNCNCINvMNtNtCsjHtSR7YjKD4_8xet_data10processing6sha256NtB36_15Sha256Generator6updateNtNtCslc8SwK8fohf_5bytes5bytes5BytesE00INtNtCskKLDkoKarTP_4core6result6ResultNtCs6rZvBWPOMOk_4sha26Sha256NtNtB4_5error9JoinErrorEE0ENtNtBW_8schedule16BlockingScheduleECs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCINvMNtNtCsjHtSR7YjKD4_8xet_data10processing6sha256NtB3i_15Sha256Generator6updateNtNtCslc8SwK8fohf_5bytes5bytes5BytesE00INtNtCskKLDkoKarTP_4core6result6ResultNtCs6rZvBWPOMOk_4sha26Sha256NtNtB7_5error9JoinErrorEE0ENtNtB18_8schedule16BlockingScheduleE8shutdownCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCsUrhh0HcRih_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1z_10XetRuntime14spawn_blockingNCNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtB37_17FileUploadSession17register_new_xorb000INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format20SerializedXorbObjectNtNtB5y_5error9CoreErrorEE0ENtNtBW_8schedule16BlockingScheduleECs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtB3j_17FileUploadSession17register_new_xorb000INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format20SerializedXorbObjectNtNtB5K_5error9CoreErrorEE0ENtNtB18_8schedule16BlockingScheduleE8shutdownCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCsUrhh0HcRih_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1z_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3a_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3e_13deduplication8chunking7ChunkerEE0ENtNtBW_8schedule16BlockingScheduleECs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1L_10XetRuntime14spawn_blockingNCNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB3m_17SingleFileCleaner19add_data_chunk_impl000TINtNtCsexYYUdYSQU6_5alloc4sync3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENtNtNtB3q_13deduplication8chunking7ChunkerEE0ENtNtB18_8schedule16BlockingScheduleE8shutdownCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCsUrhh0HcRih_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_managerNtB1D_16ShardFileManager15register_shards0s_0ENtNtBW_8schedule16BlockingScheduleECs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_managerNtB1P_16ShardFileManager15register_shards0s_0ENtNtB18_8schedule16BlockingScheduleE8shutdownCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCsUrhh0HcRih_5tokio7runtime4task3raw8shutdownNCNCINvMs_NtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lockINtB11_10RwTaskLockNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_manager15ShardBookkeeperNtNtB2f_5error9CoreErrorE6updateNCNCNCNvMs0_B2b_NtB2b_16ShardFileManager15register_shards0s0_00NCB4f_s0_0E00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs_NtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lockINtB1d_10RwTaskLockNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_manager15ShardBookkeeperNtNtB2r_5error9CoreErrorE6updateNCNCNCNvMs0_B2n_NtB2n_16ShardFileManager15register_shards0s0_00NCB4r_s0_0E00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCsUrhh0HcRih_5tokio7runtime4task3raw8shutdownNCNCINvMs_NtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lockINtB11_10RwTaskLockNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_manager15ShardBookkeeperNtNtB2f_5error9CoreErrorE6updateNCNCNCNvMs0_B2b_NtB2b_16ShardFileManager15register_shards0s0_00NCB4f_s0_0E00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessNCNCINvMs_NtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lockINtB1d_10RwTaskLockNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_manager15ShardBookkeeperNtNtB2r_5error9CoreErrorE6updateNCNCNCNvMs0_B2n_NtB2n_16ShardFileManager15register_shards0s0_00NCB4r_s0_0E00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCsUrhh0HcRih_5tokio7runtime4task3raw8shutdownNCNCNCNvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_managerNtB13_16ShardFileManager15register_shards0s0_00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNCNvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_managerNtB1f_16ShardFileManager15register_shards0s0_00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCsUrhh0HcRih_5tokio7runtime4task3raw8shutdownNCNCNCNvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_managerNtB13_16ShardFileManager15register_shards0s0_00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCsUrhh0HcRih_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNCNvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_managerNtB1f_16ShardFileManager15register_shards0s0_00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_managerNtB1d_16ShardFileManager15register_shards0s_0INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecTyTmmEEENtNtB1h_5error9CoreErrorEECs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  %i.g = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.h = invoke { i64, ptr } @_RNvMNtNtCsUrhh0HcRih_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 3 uses
  store i64 %i.i, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.k, align 8
  %i.l = trunc nuw i64 %i.i to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %. = select i1 %i.l, i64 512, i64 760
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.n = atomicrmw add ptr @_RNvNvMs_NtNtNtCsUrhh0HcRih_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !3172 ; 2 uses
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3172
  store ptr %0, ptr %i.c, align 8, !noalias !3172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3172
  invoke void @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime8blocking8scheduleNtB2_16BlockingSchedule3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %bb.e unwind label %bb.i, !noalias !3173

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3172
  invoke void @_RINvNtNtCsUrhh0HcRih_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_managerNtB1x_16ShardFileManager15register_shards0s_0ENtNtBQ_8schedule16BlockingScheduleECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.n)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.e
  %i.o = load ptr, ptr %i.a, align 8, !noalias !3172, !nonnull !12, !noundef !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !noalias !3172, !nonnull !12, !noundef !12 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3172
  %i.r = invoke { i64, ptr } @_RNvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noundef nonnull %i.o, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %_RINvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_managerNtB1A_16ShardFileManager15register_shards0s_0INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecTyTmmEEENtNtB1E_5error9CoreErrorEECs9SMuO7kbZ2K_7git_xet.exit.i unwind label %bb.f, !noalias !3174 ; 2 uses

bb.f:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = invoke noundef zeroext i1 @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.q)
          to label %.noexc.i.i unwind label %bb.h, !noalias !3174

.noexc.i.i:                                       ; preds = %bb.f
  br i1 %i.t, label %bb.g, label %.body

bb.g:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCsUrhh0HcRih_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.q)
          to label %.body unwind label %bb.h, !noalias !3174

bb.h:                                             ; preds = %bb.j, %bb.g, %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3174
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !3175
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.j, label %.body

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #29
          to label %.body unwind label %bb.h, !noalias !3173

_RINvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_managerNtB1A_16ShardFileManager15register_shards0s_0INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecTyTmmEEENtNtB1E_5error9CoreErrorEECs9SMuO7kbZ2K_7git_xet.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.r, 0
  %i.z = extractvalue { i64, ptr } %i.r, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !15
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_managerNtB1u_16ShardFileManager15register_shards0s_0INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecTyTmmEEENtNtB1y_5error9CoreErrorEECs9SMuO7kbZ2K_7git_xet.exit, !prof !15

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_managerNtB1A_16ShardFileManager15register_shards0s_0INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecTyTmmEEENtNtB1E_5error9CoreErrorEECs9SMuO7kbZ2K_7git_xet.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3176
  store ptr %i.z, ptr %i.e, align 8, !noalias !3176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3176
  store ptr %i.e, ptr %i.d, align 8, !noalias !3176
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !3176
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @12, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #28
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !3176, !nonnull !12, !noundef !12
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9SMuO7kbZ2K_7git_xet(ptr nonnull %.val.i) #27
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.q)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCsUrhh0HcRih_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.q)
          to label %.body unwind label %bb.n

bb.q:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.g, %bb.i, %bb.j, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %bb.j ], [ %i.v, %bb.i ], [ %i.s, %.noexc.i.i ], [ %i.s, %bb.g ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(16) %i.f) #27
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_managerNtB1u_16ShardFileManager15register_shards0s_0INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecTyTmmEEENtNtB1y_5error9CoreErrorEECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %_RINvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_managerNtB1A_16ShardFileManager15register_shards0s_0INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecTyTmmEEENtNtB1E_5error9CoreErrorEECs9SMuO7kbZ2K_7git_xet.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3177)
  call void @llvm.experimental.noalias.scope.decl(metadata !3178)
  %i.af = load i64, ptr %i.f, align 8, !range !24, !alias.scope !3179, !noundef !12
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_managerNtB1u_16ShardFileManager15register_shards0s_0INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecTyTmmEEENtNtB1y_5error9CoreErrorEECs9SMuO7kbZ2K_7git_xet.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !3180)
  call void @llvm.experimental.noalias.scope.decl(metadata !3181)
  %i.ah = load ptr, ptr %i.k, align 8, !alias.scope !3182, !nonnull !12, !noundef !12
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !3182
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleECs9SMuO7kbZ2K_7git_xet.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #29
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleECs9SMuO7kbZ2K_7git_xet.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_managerNtB1u_16ShardFileManager15register_shards0s_0INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecTyTmmEEENtNtB1y_5error9CoreErrorEECs9SMuO7kbZ2K_7git_xet.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !3183)
  call void @llvm.experimental.noalias.scope.decl(metadata !3184)
  %i.ak = load ptr, ptr %i.k, align 8, !alias.scope !3185, !nonnull !12, !noundef !12
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !3185
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleECs9SMuO7kbZ2K_7git_xet.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #29
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleECs9SMuO7kbZ2K_7git_xet.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.q

bb.v:                                             ; preds = %bb.x, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !3186
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #29
          to label %.thread unwind label %bb.v
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3189)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !16, !alias.scope !3189, !noundef !12 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, -1) %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3189
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !3189
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !3189
  %i.j = load i64, ptr %i.a, align 8, !range !24, !noalias !3189, !noundef !12
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !34, !noalias !3189, !noundef !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !3189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3189
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #28
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !3189, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3189
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !3189
  %i.q = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !3189
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs9SMuO7kbZ2K_7git_xet(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #3 {
bb.a:
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %2, 3                            ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 %i.a
  %i.c = getelementptr i8, ptr %1, i64 %i.a
  %bound0 = icmp ult ptr %0, %i.c
  %bound1 = icmp ult ptr %1, %i.b
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3201)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.d, align 1, !alias.scope !3202, !noalias !3203
  %wide.load6 = load <2 x i64>, ptr %i.f, align 1, !alias.scope !3202, !noalias !3203
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %wide.load7 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !3203, !noalias !3200
  %wide.load8 = load <2 x i64>, ptr %i.g, align 1, !alias.scope !3203, !noalias !3200
  store <2 x i64> %wide.load7, ptr %i.d, align 1, !alias.scope !3202, !noalias !3203
  store <2 x i64> %wide.load8, ptr %i.f, align 1, !alias.scope !3202, !noalias !3203
  store <2 x i64> %wide.load, ptr %i.e, align 1, !alias.scope !3203, !noalias !3200
  store <2 x i64> %wide.load6, ptr %i.g, align 1, !alias.scope !3203, !noalias !3200
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
end_hunk_1
