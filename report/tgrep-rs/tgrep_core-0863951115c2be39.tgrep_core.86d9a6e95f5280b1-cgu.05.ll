Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.05?download=true
inline.NumInlined: 1022
inline.NumDeleted: 483
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtNtBY_8for_each15ForEachConsumerNCNvMNtB3c_6hybridNtB4D_11HybridIndex13full_snapshots0_0EE0NCBR_s_0uuE0B3c_:bb.a
bb.k:                                             ; preds = %.noexc29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc29, %bb.j
  %.sroa.5.0.i = phi ptr [ %i.ao, %bb.j ], [ undef, %.noexc29 ]
  %.sroa.0.0.i = phi ptr [ %i.an, %bb.j ], [ null, %.noexc29 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ap = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.aq = insertvalue { ptr, ptr } %i.ap, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit:                                        ; preds = %__rust_try.exit, %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 104, i1 false)
  call void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_buNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB21_3vec13DrainProducerTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtNtB1Z_8for_each15ForEachConsumerNCNvMNtB4d_6hybridNtB5F_11HybridIndex13full_snapshots0_0EEs_0E0uE11into_resultB4d_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.r

_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc28
  %.merged.i = phi { ptr, ptr } [ %i.ak, %.noexc28 ], [ %i.aq, %.loopexit.i ] ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.as = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.s, label %bb.l

bb.l:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.at = icmp eq ptr %i.d, %i.as
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.au = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_buNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB21_3vec13DrainProducerTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtNtB1Z_8for_each15ForEachConsumerNCNvMNtB4d_6hybridNtB5F_11HybridIndex13full_snapshots0_0EEs_0E0uENtB5_3Job7executeB4d_)
          to label %bb.o unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.l, %bb.p
  invoke void %i.ar(ptr noundef %i.as)
          to label %__rust_try.exit unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.m
  %i.av = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.ar)
          to label %bb.p unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.aw = icmp eq i64 %i.au, %i.av
  br i1 %i.aw, label %bb.q, label %bb.n

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 104, i1 false)
  call void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_buNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB21_3vec13DrainProducerTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtNtB1Z_8for_each15ForEachConsumerNCNvMNtB4d_6hybridNtB5F_11HybridIndex13full_snapshots0_0EEs_0E0uE10run_inlineB4d_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.c, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.s:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.ax = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ay = icmp eq i64 %i.ax, 3
  br i1 %i.ay, label %.loopexit, label %bb.t, !prof !5

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %1, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.h
  unreachable

bb.v:                                             ; preds = %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

.thread57:                                        ; preds = %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp5
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5range12IterProducerjEINtNtBY_10filter_map17FilterMapConsumerINtNtNtBY_7collect8consumer15CollectConsumerTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENCNvMNtB4y_6hybridNtB5r_11HybridIndex13full_snapshot0EE0NCBR_s_0INtB3g_13CollectResultB3V_EB6o_E0B4y_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %1, ptr noundef nonnull align 128 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [128 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [128 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 16               ; 9 uses
  %i.j = alloca [128 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.m = load i64, ptr %i.l, align 128, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.q = invoke noundef zeroext i1 @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE8is_emptyCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE4pushCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5range12IterProducerjEINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNvMNtB3w_6hybridNtB6U_11HybridIndex13full_snapshot0EEs_0E0B1P_ENtB5_3Job7executeB3w_, ptr noundef nonnull %i.j)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.k, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 496
  %i.v = invoke noundef i64 @_RINvMs_NtNtCs8sO4Nh65sHq_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.u)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.w = and i64 %i.v, 65535                      ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.q, label %bb.e, label %.sink.split.i, !prof !5

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.t, i32 noundef 1)
          to label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.y = lshr i64 %i.v, 16
  %i.z = and i64 %i.y, 65535
  %i.aa = icmp eq i64 %i.z, %i.w
  br i1 %i.aa, label %.sink.split.i, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !6

_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.052.0.copyload = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx53, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.5.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx54, align 8
  %.sroa.6.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.15.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx55, i64 16, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  store i64 %.sroa.5.0.copyload, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = load i64, ptr %.sroa.052.0.copyload, align 8, !noalias !1125, !noundef !4
  %i.ad = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1125, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !1125, !noundef !4
  invoke void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5range12IterProducerjEINtNtB6_10filter_map17FilterMapConsumerINtNtNtB6_7collect8consumer15CollectConsumerTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENCNvMNtB3F_6hybridNtB4y_11HybridIndex13full_snapshot0EEB3F_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef %i.ad, i64 noundef %i.af, i64 noundef %.sroa.7.0.copyload, i64 noundef %.sroa.8.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ah)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #28
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1125
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13.0.copyload50 = load i64, ptr %.sroa.13.0..sroa_idx, align 16
  %i.ak = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store <2 x ptr> %i.ak, ptr %i.i, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.13.0.copyload50, ptr %.sroa.513.0..sroa_idx, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ao = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %i.ap = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao), "nonnull"(ptr %i.ap) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.n, ptr noundef nonnull %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap) #33
          to label %bb.aa unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.p
  %i.aq = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ar = icmp eq i64 %i.aq, 3
  br i1 %i.ar, label %.loopexit72, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = invoke { ptr, ptr } @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE3popCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.at = extractvalue { ptr, ptr } %i.as, 0
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs8_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_7StealerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE5stealCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.au = load i64, ptr %i.c, align 8, !range !7, !noundef !4
  switch i64 %i.au, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.av = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  %i.aw = load ptr, ptr %i.an, align 8, !noundef !4
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.0.i = phi ptr [ %i.aw, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.0.i = phi ptr [ %i.av, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ax = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ay = insertvalue { ptr, ptr } %i.ax, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit72:                                      ; preds = %bb.j, %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5range12IterProducerjEINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNvMNtB3w_6hybridNtB6U_11HybridIndex13full_snapshot0EEs_0E0B1P_E11into_resultB3w_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.d)
          to label %bb.y unwind label %bb.x

_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.as, %.noexc41 ], [ %i.ay, %.loopexit.i ] ; 2 uses
  %i.az = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.ba = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.az, null                 ; 2 uses
  br i1 %.not, label %bb.v, label %bb.n

bb.n:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bb = icmp eq ptr %i.j, %i.ba
  br i1 %i.bb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bc = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5range12IterProducerjEINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNvMNtB3w_6hybridNtB6U_11HybridIndex13full_snapshot0EEs_0E0B1P_ENtB5_3Job7executeB3w_)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n, %bb.r
  invoke void %i.az(ptr noundef %i.ba)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o
  %i.bd = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.az)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.s, label %bb.p

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.g, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5range12IterProducerjEINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNvMNtB3w_6hybridNtB6U_11HybridIndex13full_snapshot0EEs_0E0B1P_E10run_inlineB3w_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.g, i1 noundef zeroext false)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.v:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bg = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bh = icmp eq i64 %i.bg, 3
  br i1 %i.bh, label %.loopexit72, label %bb.w, !prof !5

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit72 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %.loopexit72
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ac unwind label %bb.z

bb.y:                                             ; preds = %.loopexit72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.u

bb.z:                                             ; preds = %.loopexit.split-lp, %bb.x, %bb.ab
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.o, %bb.p, %bb.q, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.w, %bb.s
  %lpad.loopexit.split-lp74 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp74, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEB2i_.exit46 unwind label %bb.z

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEB2i_.exit46: ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.i
  unreachable

bb.ab:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEB2i_.exit46, %.thread
  %.pn3859 = phi { ptr, i32 } [ %i.r, %.thread ], [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEB2i_.exit46 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENCINvNvNtB2p_8plumbing24bridge_producer_consumer6helperINtNtB2r_5range12IterProducerjEINtNtB2p_10filter_map17FilterMapConsumerINtB2l_15CollectConsumerB3m_ENCNvMNtB3Z_6hybridNtB7n_11HybridIndex13full_snapshot0EEs_0E0B2i_EEB3Z_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.j) #29
          to label %bb.ac unwind label %bb.z

bb.ac:                                            ; preds = %bb.x, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEB2i_.exit46, %bb.ab
  %.pn3858 = phi { ptr, i32 } [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEB2i_.exit46 ], [ %.pn3859, %bb.ab ], [ %i.bi, %bb.x ]
  resume { ptr, i32 } %.pn3858
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5range12IterProducerjEINtNtBY_10filter_map17FilterMapConsumerNtNtBY_6extend15ListVecConsumerNCNvMNtCsbzNSmZPCnTx_10tgrep_core6hybridNtB3N_11HybridIndex13full_snapshot0EE0NCBR_s_0INtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB5d_3vec3VecTmIB6a_NtNtB3P_6ondisk12PostingEntryEEEEB56_E0B3P_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(88) %1, ptr noundef nonnull align 128 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [112 x i8], align 8               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [112 x i8], align 8               ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 16               ; 9 uses
  %i.i = alloca [112 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.l = load i64, ptr %i.k, align 128, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 2 uses
  store ptr %i.j, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  store i64 0, ptr %i.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.p = invoke noundef zeroext i1 @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE8is_emptyCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.o)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE4pushCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.o, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTmIB2T_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4k_5range12IterProducerjEINtNtB4i_10filter_map17FilterMapConsumerNtNtB4i_6extend15ListVecConsumerNCNvMNtB3k_6hybridNtB79_11HybridIndex13full_snapshot0EEs_0E0B1P_ENtB5_3Job7executeB3k_, ptr noundef nonnull %i.i)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.j, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 472
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 496
  %i.u = invoke noundef i64 @_RINvMs_NtNtCs8sO4Nh65sHq_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.t)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.v = and i64 %i.u, 65535                      ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.p, label %bb.e, label %.sink.split.i, !prof !5

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.s, i32 noundef 1)
          to label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.x = lshr i64 %i.u, 16
  %i.y = and i64 %i.x, 65535
  %i.z = icmp eq i64 %i.y, %i.v
  br i1 %i.z, label %.sink.split.i, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !6

_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.051.0.copyload = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx52, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.5.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx53, align 8
  %.sroa.6.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx54, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ab = inttoptr i64 %.sroa.5.0.copyload to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = load i64, ptr %.sroa.051.0.copyload, align 8, !noalias !1135, !noundef !4
  %i.ad = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1135, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !1135, !noundef !4
  invoke void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5range12IterProducerjEINtNtB6_10filter_map17FilterMapConsumerNtNtB6_6extend15ListVecConsumerNCNvMNtCsbzNSmZPCnTx_10tgrep_core6hybridNtB2U_11HybridIndex13full_snapshot0EEB2W_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef %i.ad, i64 noundef %i.af, i64 noundef %.sroa.6.0.copyload, i64 noundef %.sroa.7.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ab)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ah)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #28
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.13.0.copyload50 = load i64, ptr %.sroa.13.0..sroa_idx, align 16
  %i.ak = load <2 x ptr>, ptr %i.a, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store <2 x ptr> %i.ak, ptr %i.h, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.13.0.copyload50, ptr %.sroa.513.0..sroa_idx, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ao = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %i.ap = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao), "nonnull"(ptr %i.ap) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.m, ptr noundef nonnull %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap) #33
          to label %bb.aa unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.p
  %i.aq = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ar = icmp eq i64 %i.aq, 3
  br i1 %i.ar, label %.loopexit71, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = invoke { ptr, ptr } @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE3popCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.o)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.at = extractvalue { ptr, ptr } %i.as, 0
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs8_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_7StealerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE5stealCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.au = load i64, ptr %i.b, align 8, !range !7, !noundef !4
  switch i64 %i.au, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.av = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  %i.aw = load ptr, ptr %i.an, align 8, !noundef !4
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.0.i = phi ptr [ %i.aw, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.0.i = phi ptr [ %i.av, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ax = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ay = insertvalue { ptr, ptr } %i.ax, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit71:                                      ; preds = %bb.j, %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.i, i64 112, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTmIB2T_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4k_5range12IterProducerjEINtNtB4i_10filter_map17FilterMapConsumerNtNtB4i_6extend15ListVecConsumerNCNvMNtB3k_6hybridNtB79_11HybridIndex13full_snapshot0EEs_0E0B1P_E11into_resultB3k_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.c)
          to label %bb.y unwind label %bb.x

_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.as, %.noexc41 ], [ %i.ay, %.loopexit.i ] ; 2 uses
  %i.az = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.ba = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.az, null                 ; 2 uses
  br i1 %.not, label %bb.v, label %bb.n

bb.n:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bb = icmp eq ptr %i.i, %i.ba
  br i1 %i.bb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bc = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTmIB2T_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4k_5range12IterProducerjEINtNtB4i_10filter_map17FilterMapConsumerNtNtB4i_6extend15ListVecConsumerNCNvMNtB3k_6hybridNtB79_11HybridIndex13full_snapshot0EEs_0E0B1P_ENtB5_3Job7executeB3k_)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n, %bb.r
  invoke void %i.az(ptr noundef %i.ba)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o
  %i.bd = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.az)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.s, label %bb.p

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr noundef nonnull align 8 dereferenceable(112) %i.i, i64 112, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTmIB2T_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4k_5range12IterProducerjEINtNtB4i_10filter_map17FilterMapConsumerNtNtB4i_6extend15ListVecConsumerNCNvMNtB3k_6hybridNtB79_11HybridIndex13full_snapshot0EEs_0E0B1P_E10run_inlineB3k_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.f, i1 noundef zeroext false)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.v:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bg = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bh = icmp eq i64 %i.bg, 3
  br i1 %i.bh, label %.loopexit71, label %bb.w, !prof !5

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit71 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %.loopexit71
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTmIB1c_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.ac unwind label %bb.z

bb.y:                                             ; preds = %.loopexit71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.u

bb.z:                                             ; preds = %.loopexit.split-lp, %bb.x, %bb.ab
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.o, %bb.p, %bb.q, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.w, %bb.s
  %lpad.loopexit.split-lp73 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp73, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTmIB1c_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTmIB1F_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEEB25_.exit46 unwind label %bb.z

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTmIB1F_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEEB25_.exit46: ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.i
  unreachable

bb.ab:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTmIB1F_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEEB25_.exit46, %.thread
  %.pn3858 = phi { ptr, i32 } [ %i.q, %.thread ], [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTmIB1F_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEEB25_.exit46 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecTmIB3m_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4N_5range12IterProducerjEINtNtB4L_10filter_map17FilterMapConsumerNtNtB4L_6extend15ListVecConsumerNCNvMNtB3N_6hybridNtB7C_11HybridIndex13full_snapshot0EEs_0E0B2i_EEB3N_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.i) #29
          to label %bb.ac unwind label %bb.z

bb.ac:                                            ; preds = %bb.x, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTmIB1F_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEEB25_.exit46, %bb.ab
  %.pn3857 = phi { ptr, i32 } [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTmIB1F_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEEB25_.exit46 ], [ %.pn3858, %bb.ab ], [ %i.bi, %bb.x ]
  resume { ptr, i32 } %.pn3857
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtBY_3map11MapConsumerINtNtBY_5unzip13UnzipConsumerNtB3A_5UnzipINtNtNtBY_7collect8consumer15CollectConsumeryEIB4d_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCNvB53_23batch_sizes_and_charges0EE0NCBR_s_0TINtB4f_13CollectResultyEIB6D_B51_EEB6B_E0B55_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(168) %1, ptr noundef nonnull align 128 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 16               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.16 = alloca [48 x i8], align 8           ; 6 uses
  %i.d = alloca [176 x i8], align 8               ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [176 x i8], align 8               ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 16               ; 11 uses
  %i.j = alloca [176 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.m = load i64, ptr %i.l, align 128, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 144 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 152 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.q = invoke noundef zeroext i1 @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE8is_emptyCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p)
          to label %bb.c unwind label %.thread

bb.b:                                             ; preds = %.loopexit.split-lp
  br i1 %.sroa.018.2, label %bb.ac, label %.thread69

.thread:                                          ; preds = %bb.a, %bb.c, %bb.j, %bb.d, %.sink.split.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE4pushCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIB1R_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCINvNvNtB1X_8plumbing24bridge_producer_consumer6helperINtNtB1Z_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB1X_3map11MapConsumerINtNtB1X_5unzip13UnzipConsumerNtB6h_5UnzipINtB1T_15CollectConsumeryEIB6V_B31_EENCNvB33_23batch_sizes_and_charges0EEs_0E0B1P_ENtB5_3Job7executeB35_, ptr noundef nonnull %i.j)
          to label %bb.d unwind label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.k, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 496
  %i.v = invoke noundef i64 @_RINvMs_NtNtCs8sO4Nh65sHq_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.u)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.w = and i64 %i.v, 65535                      ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  br i1 %i.q, label %bb.f, label %.sink.split.i, !prof !5

.sink.split.i:                                    ; preds = %bb.f, %bb.e
  invoke void @_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.t, i32 noundef 1)
          to label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.f:                                             ; preds = %bb.e
  %i.y = lshr i64 %i.v, 16
  %i.z = and i64 %i.y, 65535
  %i.aa = icmp eq i64 %i.z, %i.w
  br i1 %i.aa, label %.sink.split.i, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !6

_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.f, %.noexc, %.sink.split.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.048.0.copyload = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx49, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.5.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx50, align 8, !nonnull !4, !noundef !4
  %.sroa.6.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx51, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = load i64, ptr %.sroa.048.0.copyload, align 8, !noalias !1145, !noundef !4
  %i.ad = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1145, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !1145, !noundef !4
  invoke void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB6_3map11MapConsumerINtNtB6_5unzip13UnzipConsumerNtB2H_5UnzipINtNtNtB6_7collect8consumer15CollectConsumeryEIB3k_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCNvB4a_23batch_sizes_and_charges0EEB4c_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef %i.ad, i64 noundef %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.5.0.copyload, i64 noundef %.sroa.6.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ah)
          to label %bb.j unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #28
  unreachable

bb.i:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1145
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13.0.copyload46 = load ptr, ptr %.sroa.13.0..sroa_idx, align 16
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.15.0.copyload47 = load i64, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.16.0..sroa_idx, i64 16, i1 false)
  %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ak = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  store <2 x ptr> %i.ak, ptr %i.i, align 16
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.sroa.13.0.copyload46, ptr %.sroa.512.0..sroa_idx, align 16
  %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.sroa.15.0.copyload47, ptr %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ao = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %i.ap = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao), "nonnull"(ptr %i.ap) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.n, ptr noundef nonnull %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap) #33
          to label %bb.ab unwind label %.thread

bb.k:                                             ; preds = %bb.i, %bb.q
  %i.aq = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ar = icmp eq i64 %i.aq, 3
  br i1 %i.ar, label %.loopexit72, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = invoke { ptr, ptr } @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE3popCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc40:                                         ; preds = %bb.l
  %i.at = extractvalue { ptr, ptr } %i.as, 0
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc40, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs8_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_7StealerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE5stealCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc41:                                         ; preds = %.preheader.i
  %i.au = load i64, ptr %i.c, align 8, !range !7, !noundef !4
  switch i64 %i.au, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.m
    i64 2, label %bb.n
  ]

default.unreachable:                              ; preds = %.noexc41
  unreachable

bb.m:                                             ; preds = %.noexc41
  %i.av = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  %i.aw = load ptr, ptr %i.an, align 8, !noundef !4
  br label %.loopexit.i

bb.n:                                             ; preds = %.noexc41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc41, %bb.m
  %.sroa.5.0.i = phi ptr [ %i.aw, %bb.m ], [ undef, %.noexc41 ]
  %.sroa.0.0.i = phi ptr [ %i.av, %bb.m ], [ null, %.noexc41 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ax = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ay = insertvalue { ptr, ptr } %i.ax, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit72:                                      ; preds = %bb.k, %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 16 dereferenceable(48) %i.i, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.d, ptr noundef nonnull align 8 dereferenceable(176) %i.j, i64 176, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIB1R_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCINvNvNtB1X_8plumbing24bridge_producer_consumer6helperINtNtB1Z_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB1X_3map11MapConsumerINtNtB1X_5unzip13UnzipConsumerNtB6h_5UnzipINtB1T_15CollectConsumeryEIB6V_B31_EENCNvB33_23batch_sizes_and_charges0EEs_0E0B1P_E11into_resultB35_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(176) %i.d)
          to label %bb.z unwind label %bb.y

_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc40
  %.merged.i = phi { ptr, ptr } [ %i.as, %.noexc40 ], [ %i.ay, %.loopexit.i ] ; 2 uses
  %i.az = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.ba = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.az, null                 ; 2 uses
  br i1 %.not, label %bb.w, label %bb.o

bb.o:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bb = icmp eq ptr %i.j, %i.ba
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIB1R_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCINvNvNtB1X_8plumbing24bridge_producer_consumer6helperINtNtB1Z_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB1X_3map11MapConsumerINtNtB1X_5unzip13UnzipConsumerNtB6h_5UnzipINtB1T_15CollectConsumeryEIB6V_B31_EENCNvB33_23batch_sizes_and_charges0EEs_0E0B1P_ENtB5_3Job7executeB35_)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o, %bb.s
  invoke void %i.az(ptr noundef %i.ba)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.p
  %i.bd = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.az)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.t, label %bb.q

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.g, ptr noundef nonnull align 8 dereferenceable(176) %i.j, i64 176, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIB1R_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCINvNvNtB1X_8plumbing24bridge_producer_consumer6helperINtNtB1Z_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB1X_3map11MapConsumerINtNtB1X_5unzip13UnzipConsumerNtB6h_5UnzipINtB1T_15CollectConsumeryEIB6V_B31_EENCNvB33_23batch_sizes_and_charges0EEs_0E0B1P_E10run_inlineB35_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(176) %i.g, i1 noundef zeroext false)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %i.i, i64 48, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.w:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bg = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bh = icmp eq i64 %i.bg, 3
  br i1 %i.bh, label %.loopexit72, label %bb.x, !prof !5

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit72 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %.loopexit72
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIBD_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB1Q_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f) #29
          to label %.thread69 unwind label %bb.aa

bb.z:                                             ; preds = %.loopexit72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %i.i, i64 48, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bj, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.v

bb.aa:                                            ; preds = %bb.ac, %.loopexit.split-lp, %bb.y
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.p, %bb.q, %bb.r, %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.x, %bb.t
  %lpad.loopexit.split-lp74 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.018.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp74, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIBD_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB1Q_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.i) #29
          to label %bb.b unwind label %bb.aa

bb.ab:                                            ; preds = %bb.j
  unreachable

bb.ac:                                            ; preds = %.thread, %bb.b
  %.pn3755 = phi { ptr, i32 } [ %i.r, %.thread ], [ %lpad.phi, %bb.b ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIB2k_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCINvNvNtB2q_8plumbing24bridge_producer_consumer6helperINtNtB2s_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB2q_3map11MapConsumerINtNtB2q_5unzip13UnzipConsumerNtB6K_5UnzipINtB2m_15CollectConsumeryEIB7o_B3u_EENCNvB3w_23batch_sizes_and_charges0EEs_0E0B2i_EEB3y_(ptr noalias nofree noundef align 8 dereferenceable(176) %i.j) #29
          to label %.thread69 unwind label %bb.aa

.thread69:                                        ; preds = %bb.y, %bb.b, %bb.ac
  %.pn3754 = phi { ptr, i32 } [ %lpad.phi, %bb.b ], [ %.pn3755, %bb.ac ], [ %i.bi, %bb.y ]
  resume { ptr, i32 } %.pn3754
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtBY_3map11MapConsumerINtNtBY_5unzip13UnzipConsumerNtB3A_5UnzipINtNtNtBY_7collect8consumer15CollectConsumeryENtNtBY_6extend15ListVecConsumerENCNvNtCsbzNSmZPCnTx_10tgrep_core7builder23batch_sizes_and_charges0EE0NCBR_s_0TINtB4f_13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB7d_3vec3VecNtB5w_11BatchChargeEEEB6H_E0B5y_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(136) %1, ptr noundef nonnull align 128 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 16               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.16 = alloca [32 x i8], align 8           ; 6 uses
  %i.d = alloca [160 x i8], align 8               ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [160 x i8], align 8               ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 16               ; 11 uses
  %i.j = alloca [160 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.m = load i64, ptr %i.l, align 128, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 128 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 136 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.q = invoke noundef zeroext i1 @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE8is_emptyCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p)
          to label %bb.c unwind label %.thread

bb.b:                                             ; preds = %.loopexit.split-lp
  br i1 %.sroa.018.2, label %bb.ac, label %.thread69

.thread:                                          ; preds = %bb.a, %bb.c, %bb.j, %bb.d, %.sink.split.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE4pushCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB33_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEENCINvNvNtB1X_8plumbing24bridge_producer_consumer6helperINtNtB1Z_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB1X_3map11MapConsumerINtNtB1X_5unzip13UnzipConsumerNtB7x_5UnzipINtB1T_15CollectConsumeryENtNtB1X_6extend15ListVecConsumerENCNvB4i_23batch_sizes_and_charges0EEs_0E0B1P_ENtB5_3Job7executeB4k_, ptr noundef nonnull %i.j)
          to label %bb.d unwind label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.k, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 496
  %i.v = invoke noundef i64 @_RINvMs_NtNtCs8sO4Nh65sHq_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.u)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.w = and i64 %i.v, 65535                      ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  br i1 %i.q, label %bb.f, label %.sink.split.i, !prof !5

.sink.split.i:                                    ; preds = %bb.f, %bb.e
  invoke void @_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.t, i32 noundef 1)
          to label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.f:                                             ; preds = %bb.e
  %i.y = lshr i64 %i.v, 16
  %i.z = and i64 %i.y, 65535
  %i.aa = icmp eq i64 %i.z, %i.w
  br i1 %i.aa, label %.sink.split.i, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !6

_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.f, %.noexc, %.sink.split.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.048.0.copyload = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx49, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.5.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx50, align 8, !nonnull !4, !noundef !4
  %.sroa.6.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx51, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = load i64, ptr %.sroa.048.0.copyload, align 8, !noalias !1155, !noundef !4
  %i.ad = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1155, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !1155, !noundef !4
  invoke void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB6_3map11MapConsumerINtNtB6_5unzip13UnzipConsumerNtB2H_5UnzipINtNtNtB6_7collect8consumer15CollectConsumeryENtNtB6_6extend15ListVecConsumerENCNvNtCsbzNSmZPCnTx_10tgrep_core7builder23batch_sizes_and_charges0EEB4F_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef %i.ad, i64 noundef %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.5.0.copyload, i64 noundef %.sroa.6.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ah)
          to label %bb.j unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #28
  unreachable

bb.i:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1155
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13.0.copyload46 = load ptr, ptr %.sroa.13.0..sroa_idx, align 16
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.15.0.copyload47 = load i64, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.16.0..sroa_idx, i64 16, i1 false)
  %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ak = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  store <2 x ptr> %i.ak, ptr %i.i, align 16
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.sroa.13.0.copyload46, ptr %.sroa.512.0..sroa_idx, align 16
  %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.sroa.15.0.copyload47, ptr %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ao = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %i.ap = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao), "nonnull"(ptr %i.ap) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.n, ptr noundef nonnull %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap) #33
          to label %bb.ab unwind label %.thread

bb.k:                                             ; preds = %bb.i, %bb.q
  %i.aq = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ar = icmp eq i64 %i.aq, 3
  br i1 %i.ar, label %.loopexit72, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = invoke { ptr, ptr } @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE3popCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc40:                                         ; preds = %bb.l
  %i.at = extractvalue { ptr, ptr } %i.as, 0
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc40, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs8_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_7StealerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE5stealCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc41:                                         ; preds = %.preheader.i
  %i.au = load i64, ptr %i.c, align 8, !range !7, !noundef !4
  switch i64 %i.au, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.m
    i64 2, label %bb.n
  ]

default.unreachable:                              ; preds = %.noexc41
  unreachable

bb.m:                                             ; preds = %.noexc41
  %i.av = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  %i.aw = load ptr, ptr %i.an, align 8, !noundef !4
  br label %.loopexit.i

bb.n:                                             ; preds = %.noexc41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc41, %bb.m
  %.sroa.5.0.i = phi ptr [ %i.aw, %bb.m ], [ undef, %.noexc41 ]
  %.sroa.0.0.i = phi ptr [ %i.av, %bb.m ], [ null, %.noexc41 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ax = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ay = insertvalue { ptr, ptr } %i.ax, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit72:                                      ; preds = %bb.k, %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 16 dereferenceable(48) %i.i, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.d, ptr noundef nonnull align 8 dereferenceable(160) %i.j, i64 160, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB33_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEENCINvNvNtB1X_8plumbing24bridge_producer_consumer6helperINtNtB1Z_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB1X_3map11MapConsumerINtNtB1X_5unzip13UnzipConsumerNtB7x_5UnzipINtB1T_15CollectConsumeryENtNtB1X_6extend15ListVecConsumerENCNvB4i_23batch_sizes_and_charges0EEs_0E0B1P_E11into_resultB4k_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(160) %i.d)
          to label %bb.z unwind label %bb.y

_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc40
  %.merged.i = phi { ptr, ptr } [ %i.as, %.noexc40 ], [ %i.ay, %.loopexit.i ] ; 2 uses
  %i.az = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.ba = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.az, null                 ; 2 uses
  br i1 %.not, label %bb.w, label %bb.o

bb.o:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bb = icmp eq ptr %i.j, %i.ba
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB33_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEENCINvNvNtB1X_8plumbing24bridge_producer_consumer6helperINtNtB1Z_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB1X_3map11MapConsumerINtNtB1X_5unzip13UnzipConsumerNtB7x_5UnzipINtB1T_15CollectConsumeryENtNtB1X_6extend15ListVecConsumerENCNvB4i_23batch_sizes_and_charges0EEs_0E0B1P_ENtB5_3Job7executeB4k_)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o, %bb.s
  invoke void %i.az(ptr noundef %i.ba)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.p
  %i.bd = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.az)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.t, label %bb.q

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.g, ptr noundef nonnull align 8 dereferenceable(160) %i.j, i64 160, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB33_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEENCINvNvNtB1X_8plumbing24bridge_producer_consumer6helperINtNtB1Z_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB1X_3map11MapConsumerINtNtB1X_5unzip13UnzipConsumerNtB7x_5UnzipINtB1T_15CollectConsumeryENtNtB1X_6extend15ListVecConsumerENCNvB4i_23batch_sizes_and_charges0EEs_0E0B1P_E10run_inlineB4k_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(160) %i.g, i1 noundef zeroext false)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %i.i, i64 48, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.w:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bg = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bh = icmp eq i64 %i.bg, 3
  br i1 %i.bh, label %.loopexit72, label %bb.x, !prof !5

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit72 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %.loopexit72
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1P_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEB36_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f) #29
          to label %.thread69 unwind label %bb.aa

bb.z:                                             ; preds = %.loopexit72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %i.i, i64 48, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bj, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.v

bb.aa:                                            ; preds = %bb.ac, %.loopexit.split-lp, %bb.y
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.p, %bb.q, %bb.r, %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.x, %bb.t
  %lpad.loopexit.split-lp74 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.018.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp74, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1P_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEB36_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.i) #29
          to label %bb.b unwind label %bb.aa

bb.ab:                                            ; preds = %bb.j
  unreachable

bb.ac:                                            ; preds = %.thread, %bb.b
  %.pn3755 = phi { ptr, i32 } [ %i.r, %.thread ], [ %lpad.phi, %bb.b ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB3w_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEENCINvNvNtB2q_8plumbing24bridge_producer_consumer6helperINtNtB2s_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB2q_3map11MapConsumerINtNtB2q_5unzip13UnzipConsumerNtB80_5UnzipINtB2m_15CollectConsumeryENtNtB2q_6extend15ListVecConsumerENCNvB4L_23batch_sizes_and_charges0EEs_0E0B2i_EEB4N_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.j) #29
          to label %.thread69 unwind label %bb.aa

.thread69:                                        ; preds = %bb.y, %bb.b, %bb.ac
  %.pn3754 = phi { ptr, i32 } [ %lpad.phi, %bb.b ], [ %.pn3755, %bb.ac ], [ %i.bi, %bb.y ]
  resume { ptr, i32 } %.pn3754
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtBY_3map11MapConsumerINtNtBY_5unzip13UnzipConsumerNtB3A_5UnzipNtNtBY_6extend15ListVecConsumerB4c_ENCNvNtCsbzNSmZPCnTx_10tgrep_core7builder23batch_sizes_and_charges0EE0NCBR_s_0TINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB69_3vec3VecyEEIB63_IB76_NtB4Q_11BatchChargeEEEB61_E0B4S_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(104) %1, ptr noundef nonnull align 128 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [144 x i8], align 8               ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [144 x i8], align 8               ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 16               ; 11 uses
  %i.i = alloca [144 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.l = load i64, ptr %i.k, align 128, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 112 ; 2 uses
  store ptr %i.j, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 120 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.p = invoke noundef zeroext i1 @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE8is_emptyCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.o)
          to label %bb.c unwind label %.thread

bb.b:                                             ; preds = %.loopexit.split-lp
  br i1 %.sroa.018.2, label %bb.ac, label %.thread73

.thread:                                          ; preds = %bb.a, %bb.c, %bb.j, %bb.d, %.sink.split.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE4pushCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.o, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1X_3vec3VecyEEIB1R_IB2U_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4q_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB4o_3map11MapConsumerINtNtB4o_5unzip13UnzipConsumerNtB71_5UnzipNtNtB4o_6extend15ListVecConsumerB7E_ENCNvB3p_23batch_sizes_and_charges0EEs_0E0B1P_ENtB5_3Job7executeB3r_, ptr noundef nonnull %i.i)
          to label %bb.d unwind label %.thread

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.j, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 472
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 496
  %i.u = invoke noundef i64 @_RINvMs_NtNtCs8sO4Nh65sHq_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.t)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.v = and i64 %i.u, 65535                      ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  br i1 %i.p, label %bb.f, label %.sink.split.i, !prof !5

.sink.split.i:                                    ; preds = %bb.f, %bb.e
  invoke void @_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.s, i32 noundef 1)
          to label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.f:                                             ; preds = %bb.e
  %i.x = lshr i64 %i.u, 16
  %i.y = and i64 %i.x, 65535
  %i.z = icmp eq i64 %i.y, %i.v
  br i1 %i.z, label %.sink.split.i, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !6

_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.f, %.noexc, %.sink.split.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.050.0.copyload = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx51, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.5.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx52, align 8, !nonnull !4, !noundef !4
  %.sroa.6.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx53, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = load i64, ptr %.sroa.050.0.copyload, align 8, !noalias !1165, !noundef !4
  %i.ac = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1165, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !1165, !noundef !4
  invoke void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB6_3map11MapConsumerINtNtB6_5unzip13UnzipConsumerNtB2H_5UnzipNtNtB6_6extend15ListVecConsumerB3j_ENCNvNtCsbzNSmZPCnTx_10tgrep_core7builder23batch_sizes_and_charges0EEB3Z_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, i64 noundef %i.ab, i1 noundef zeroext false, i64 noundef %i.ac, i64 noundef %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.5.0.copyload, i64 noundef %.sroa.6.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.7.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.8.0.copyload)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  %i.ah = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ag)
          to label %bb.j unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #28
  unreachable

bb.i:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.13.0.copyload46 = load ptr, ptr %.sroa.13.0..sroa_idx, align 16
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.15.0.copyload47 = load i64, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aj = load <2 x ptr>, ptr %i.a, align 16
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ak = load <2 x ptr>, ptr %.sroa.16.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store <2 x ptr> %i.aj, ptr %i.h, align 16
  store ptr %.sroa.13.0.copyload46, ptr %.sroa.512.0..sroa_idx, align 16
  store i64 %.sroa.15.0.copyload47, ptr %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx, align 8
  store <2 x ptr> %i.ak, ptr %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx.sroa_idx, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ao = extractvalue { ptr, ptr } %i.ah, 0      ; 2 uses
  %i.ap = extractvalue { ptr, ptr } %i.ah, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao), "nonnull"(ptr %i.ap) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.m, ptr noundef nonnull %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap) #33
          to label %bb.ab unwind label %.thread

bb.k:                                             ; preds = %bb.i, %bb.q
  %i.aq = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ar = icmp eq i64 %i.aq, 3
  br i1 %i.ar, label %.loopexit76, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = invoke { ptr, ptr } @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE3popCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.o)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc40:                                         ; preds = %bb.l
  %i.at = extractvalue { ptr, ptr } %i.as, 0
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc40, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs8_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_7StealerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE5stealCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc41:                                         ; preds = %.preheader.i
  %i.au = load i64, ptr %i.b, align 8, !range !7, !noundef !4
  switch i64 %i.au, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.m
    i64 2, label %bb.n
  ]

default.unreachable:                              ; preds = %.noexc41
  unreachable

bb.m:                                             ; preds = %.noexc41
  %i.av = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  %i.aw = load ptr, ptr %i.an, align 8, !noundef !4
  br label %.loopexit.i

bb.n:                                             ; preds = %.noexc41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc41, %bb.m
  %.sroa.5.0.i = phi ptr [ %i.aw, %bb.m ], [ undef, %.noexc41 ]
  %.sroa.0.0.i = phi ptr [ %i.av, %bb.m ], [ null, %.noexc41 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ax = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ay = insertvalue { ptr, ptr } %i.ax, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit76:                                      ; preds = %bb.k, %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 16 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.c, ptr noundef nonnull align 8 dereferenceable(144) %i.i, i64 144, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1X_3vec3VecyEEIB1R_IB2U_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4q_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB4o_3map11MapConsumerINtNtB4o_5unzip13UnzipConsumerNtB71_5UnzipNtNtB4o_6extend15ListVecConsumerB7E_ENCNvB3p_23batch_sizes_and_charges0EEs_0E0B1P_E11into_resultB3r_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(144) %i.c)
          to label %bb.z unwind label %bb.y

_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc40
  %.merged.i = phi { ptr, ptr } [ %i.as, %.noexc40 ], [ %i.ay, %.loopexit.i ] ; 2 uses
  %i.az = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.ba = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.az, null                 ; 2 uses
  br i1 %.not, label %bb.w, label %bb.o

bb.o:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bb = icmp eq ptr %i.i, %i.ba
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1X_3vec3VecyEEIB1R_IB2U_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4q_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB4o_3map11MapConsumerINtNtB4o_5unzip13UnzipConsumerNtB71_5UnzipNtNtB4o_6extend15ListVecConsumerB7E_ENCNvB3p_23batch_sizes_and_charges0EEs_0E0B1P_ENtB5_3Job7executeB3r_)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o, %bb.s
  invoke void %i.az(ptr noundef %i.ba)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.p
  %i.bd = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.az)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.t, label %bb.q

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.f, ptr noundef nonnull align 8 dereferenceable(144) %i.i, i64 144, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1X_3vec3VecyEEIB1R_IB2U_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4q_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB4o_3map11MapConsumerINtNtB4o_5unzip13UnzipConsumerNtB71_5UnzipNtNtB4o_6extend15ListVecConsumerB7E_ENCNvB3p_23batch_sizes_and_charges0EEs_0E0B1P_E10run_inlineB3r_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(144) %i.f, i1 noundef zeroext false)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %i.h, i64 48, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.w:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bg = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bh = icmp eq i64 %i.bg, 3
  br i1 %i.bh, label %.loopexit76, label %bb.x, !prof !5

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit76 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %.loopexit76
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecyEEIBD_IB1G_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEB2b_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e) #29
          to label %.thread73 unwind label %bb.aa

bb.z:                                             ; preds = %.loopexit76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %i.h, i64 48, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bj, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.v

bb.aa:                                            ; preds = %bb.ac, %.loopexit.split-lp, %bb.y
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.p, %bb.q, %bb.r, %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.x, %bb.t
  %lpad.loopexit.split-lp78 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.018.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp78, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecyEEIBD_IB1G_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEB2b_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.h) #29
          to label %bb.b unwind label %bb.aa

bb.ab:                                            ; preds = %bb.j
  unreachable

bb.ac:                                            ; preds = %.thread, %bb.b
  %.pn3757 = phi { ptr, i32 } [ %i.q, %.thread ], [ %lpad.phi, %bb.b ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2q_3vec3VecyEEIB2k_IB3n_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4T_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB4R_3map11MapConsumerINtNtB4R_5unzip13UnzipConsumerNtB7u_5UnzipNtNtB4R_6extend15ListVecConsumerB87_ENCNvB3S_23batch_sizes_and_charges0EEs_0E0B2i_EEB3U_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.i) #29
          to label %.thread73 unwind label %bb.aa

.thread73:                                        ; preds = %bb.y, %bb.b, %bb.ac
  %.pn3756 = phi { ptr, i32 } [ %lpad.phi, %bb.b ], [ %.pn3757, %bb.ac ], [ %i.bi, %bb.y ]
  resume { ptr, i32 } %.pn3756
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtBY_3map11MapConsumerINtNtBY_5unzip13UnzipConsumerNtB3A_5UnzipNtNtBY_6extend15ListVecConsumerINtNtNtBY_7collect8consumer15CollectConsumerNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCNvB5r_23batch_sizes_and_charges0EE0NCBR_s_0TINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB77_3vec3VecyEEINtB4K_13CollectResultB5p_EEB6Z_E0B5t_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(136) %1, ptr noundef nonnull align 128 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 16               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.16 = alloca [32 x i8], align 8           ; 6 uses
  %i.d = alloca [160 x i8], align 8               ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [160 x i8], align 8               ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 16               ; 11 uses
  %i.j = alloca [160 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.m = load i64, ptr %i.l, align 128, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 128 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 136 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.q = invoke noundef zeroext i1 @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE8is_emptyCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p)
          to label %bb.c unwind label %.thread

bb.b:                                             ; preds = %.loopexit.split-lp
  br i1 %.sroa.018.2, label %bb.ac, label %.thread69

.thread:                                          ; preds = %bb.a, %bb.c, %bb.j, %bb.d, %.sink.split.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE4pushCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1X_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCINvNvNtB3k_8plumbing24bridge_producer_consumer6helperINtNtB3m_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB3k_3map11MapConsumerINtNtB3k_5unzip13UnzipConsumerNtB7x_5UnzipNtNtB3k_6extend15ListVecConsumerINtB3g_15CollectConsumerB4h_EENCNvB4j_23batch_sizes_and_charges0EEs_0E0B1P_ENtB5_3Job7executeB4l_, ptr noundef nonnull %i.j)
          to label %bb.d unwind label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.k, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 496
  %i.v = invoke noundef i64 @_RINvMs_NtNtCs8sO4Nh65sHq_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.u)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.w = and i64 %i.v, 65535                      ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  br i1 %i.q, label %bb.f, label %.sink.split.i, !prof !5

.sink.split.i:                                    ; preds = %bb.f, %bb.e
  invoke void @_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.t, i32 noundef 1)
          to label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.f:                                             ; preds = %bb.e
  %i.y = lshr i64 %i.v, 16
  %i.z = and i64 %i.y, 65535
  %i.aa = icmp eq i64 %i.z, %i.w
  br i1 %i.aa, label %.sink.split.i, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !6

_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.f, %.noexc, %.sink.split.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.048.0.copyload = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx49, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.5.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx50, align 8, !nonnull !4, !noundef !4
  %.sroa.6.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx51, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = load i64, ptr %.sroa.048.0.copyload, align 8, !noalias !1175, !noundef !4
  %i.ad = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1175, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !1175, !noundef !4
  invoke void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB6_3map11MapConsumerINtNtB6_5unzip13UnzipConsumerNtB2H_5UnzipNtNtB6_6extend15ListVecConsumerINtNtNtB6_7collect8consumer15CollectConsumerNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCNvB4y_23batch_sizes_and_charges0EEB4A_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef %i.ad, i64 noundef %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.5.0.copyload, i64 noundef %.sroa.6.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ah)
          to label %bb.j unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #28
  unreachable

bb.i:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1175
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13.0.copyload46 = load ptr, ptr %.sroa.13.0..sroa_idx, align 16
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.15.0.copyload47 = load i64, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.16.0..sroa_idx, i64 16, i1 false)
  %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ak = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  store <2 x ptr> %i.ak, ptr %i.i, align 16
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.sroa.13.0.copyload46, ptr %.sroa.512.0..sroa_idx, align 16
  %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.sroa.15.0.copyload47, ptr %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ao = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %i.ap = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao), "nonnull"(ptr %i.ap) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.n, ptr noundef nonnull %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap) #33
          to label %bb.ab unwind label %.thread

bb.k:                                             ; preds = %bb.i, %bb.q
  %i.aq = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ar = icmp eq i64 %i.aq, 3
  br i1 %i.ar, label %.loopexit72, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = invoke { ptr, ptr } @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE3popCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc40:                                         ; preds = %bb.l
  %i.at = extractvalue { ptr, ptr } %i.as, 0
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc40, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs8_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_7StealerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE5stealCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc41:                                         ; preds = %.preheader.i
  %i.au = load i64, ptr %i.c, align 8, !range !7, !noundef !4
  switch i64 %i.au, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.m
    i64 2, label %bb.n
  ]

default.unreachable:                              ; preds = %.noexc41
  unreachable

bb.m:                                             ; preds = %.noexc41
  %i.av = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  %i.aw = load ptr, ptr %i.an, align 8, !noundef !4
  br label %.loopexit.i

bb.n:                                             ; preds = %.noexc41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc41, %bb.m
  %.sroa.5.0.i = phi ptr [ %i.aw, %bb.m ], [ undef, %.noexc41 ]
  %.sroa.0.0.i = phi ptr [ %i.av, %bb.m ], [ null, %.noexc41 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ax = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ay = insertvalue { ptr, ptr } %i.ax, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit72:                                      ; preds = %bb.k, %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 16 dereferenceable(48) %i.i, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.d, ptr noundef nonnull align 8 dereferenceable(160) %i.j, i64 160, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1X_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCINvNvNtB3k_8plumbing24bridge_producer_consumer6helperINtNtB3m_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB3k_3map11MapConsumerINtNtB3k_5unzip13UnzipConsumerNtB7x_5UnzipNtNtB3k_6extend15ListVecConsumerINtB3g_15CollectConsumerB4h_EENCNvB4j_23batch_sizes_and_charges0EEs_0E0B1P_E11into_resultB4l_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(160) %i.d)
          to label %bb.z unwind label %bb.y

_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc40
  %.merged.i = phi { ptr, ptr } [ %i.as, %.noexc40 ], [ %i.ay, %.loopexit.i ] ; 2 uses
  %i.az = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.ba = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.az, null                 ; 2 uses
  br i1 %.not, label %bb.w, label %bb.o

bb.o:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bb = icmp eq ptr %i.j, %i.ba
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1X_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCINvNvNtB3k_8plumbing24bridge_producer_consumer6helperINtNtB3m_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB3k_3map11MapConsumerINtNtB3k_5unzip13UnzipConsumerNtB7x_5UnzipNtNtB3k_6extend15ListVecConsumerINtB3g_15CollectConsumerB4h_EENCNvB4j_23batch_sizes_and_charges0EEs_0E0B1P_ENtB5_3Job7executeB4l_)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o, %bb.s
  invoke void %i.az(ptr noundef %i.ba)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.p
  %i.bd = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.az)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.t, label %bb.q

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.g, ptr noundef nonnull align 8 dereferenceable(160) %i.j, i64 160, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1X_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCINvNvNtB3k_8plumbing24bridge_producer_consumer6helperINtNtB3m_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB3k_3map11MapConsumerINtNtB3k_5unzip13UnzipConsumerNtB7x_5UnzipNtNtB3k_6extend15ListVecConsumerINtB3g_15CollectConsumerB4h_EENCNvB4j_23batch_sizes_and_charges0EEs_0E0B1P_E10run_inlineB4l_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(160) %i.g, i1 noundef zeroext false)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %i.i, i64 48, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.w:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bg = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bh = icmp eq i64 %i.bg, 3
  br i1 %i.bh, label %.loopexit72, label %bb.x, !prof !5

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit72 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %.loopexit72
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB36_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f) #29
          to label %.thread69 unwind label %bb.aa

bb.z:                                             ; preds = %.loopexit72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %i.i, i64 48, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bj, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.v

bb.aa:                                            ; preds = %bb.ac, %.loopexit.split-lp, %bb.y
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.p, %bb.q, %bb.r, %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.x, %bb.t
  %lpad.loopexit.split-lp74 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.018.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp74, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEB36_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.i) #29
          to label %bb.b unwind label %bb.aa

bb.ab:                                            ; preds = %bb.j
  unreachable

bb.ac:                                            ; preds = %.thread, %bb.b
  %.pn3755 = phi { ptr, i32 } [ %i.r, %.thread ], [ %lpad.phi, %bb.b ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2q_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCINvNvNtB3N_8plumbing24bridge_producer_consumer6helperINtNtB3P_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB3N_3map11MapConsumerINtNtB3N_5unzip13UnzipConsumerNtB80_5UnzipNtNtB3N_6extend15ListVecConsumerINtB3J_15CollectConsumerB4K_EENCNvB4M_23batch_sizes_and_charges0EEs_0E0B2i_EEB4O_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.j) #29
          to label %.thread69 unwind label %bb.aa

.thread69:                                        ; preds = %bb.y, %bb.b, %bb.ac
  %.pn3754 = phi { ptr, i32 } [ %lpad.phi, %bb.b ], [ %.pn3755, %bb.ac ], [ %i.bi, %bb.y ]
  resume { ptr, i32 } %.pn3754
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtBY_10filter_map17FilterMapConsumerINtNtNtBY_7collect8consumer15CollectConsumerTB2y_NtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENCNvB4D_18collect_filestamps0EE0NCBR_s_0INtB3R_13CollectResultB4w_EB60_E0B4F_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %1, ptr noundef nonnull align 128 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [128 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [128 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 16               ; 9 uses
  %i.j = alloca [128 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.m = load i64, ptr %i.l, align 128, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.q = invoke noundef zeroext i1 @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE8is_emptyCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE4pushCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5slice12IterProducerB2U_EINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNvB3y_18collect_filestamps0EEs_0E0B1P_ENtB5_3Job7executeB3A_, ptr noundef nonnull %i.j)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.k, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 496
  %i.v = invoke noundef i64 @_RINvMs_NtNtCs8sO4Nh65sHq_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.u)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.w = and i64 %i.v, 65535                      ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.q, label %bb.e, label %.sink.split.i, !prof !5

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.t, i32 noundef 1)
          to label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.y = lshr i64 %i.v, 16
  %i.z = and i64 %i.y, 65535
  %i.aa = icmp eq i64 %i.z, %i.w
  br i1 %i.aa, label %.sink.split.i, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !6

_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.051.0.copyload = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx52, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.5.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx53, align 8
  %.sroa.6.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx54, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i64 24, i1 false)
  %i.ac = inttoptr i64 %.sroa.5.0.copyload to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ad = load i64, ptr %.sroa.051.0.copyload, align 8, !noalias !1185, !noundef !4
  %i.ae = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1185, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !1185, !noundef !4
  invoke void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtB6_10filter_map17FilterMapConsumerINtNtNtB6_7collect8consumer15CollectConsumerTB1F_NtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENCNvB3K_18collect_filestamps0EEB3M_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.ad, i1 noundef zeroext false, i64 noundef %i.ae, i64 noundef %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ac, i64 noundef %.sroa.6.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  %i.aj = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ai)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #28
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1185
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13.0.copyload50 = load i64, ptr %.sroa.13.0..sroa_idx, align 16
  %i.al = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store <2 x ptr> %i.al, ptr %i.i, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.13.0.copyload50, ptr %.sroa.513.0..sroa_idx, align 16
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ap = extractvalue { ptr, ptr } %i.aj, 0      ; 2 uses
  %i.aq = extractvalue { ptr, ptr } %i.aj, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap), "nonnull"(ptr %i.aq) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.n, ptr noundef nonnull %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aq) #33
          to label %bb.aa unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.p
  %i.ar = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.as = icmp eq i64 %i.ar, 3
  br i1 %i.as, label %.loopexit71, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = invoke { ptr, ptr } @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE3popCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.au = extractvalue { ptr, ptr } %i.at, 0
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs8_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_7StealerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE5stealCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.am)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.av = load i64, ptr %i.c, align 8, !range !7, !noundef !4
  switch i64 %i.av, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.aw = load ptr, ptr %i.an, align 8, !nonnull !4, !noundef !4
  %i.ax = load ptr, ptr %i.ao, align 8, !noundef !4
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.0.i = phi ptr [ %i.ax, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.0.i = phi ptr [ %i.aw, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ay = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.az = insertvalue { ptr, ptr } %i.ay, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit71:                                      ; preds = %bb.j, %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5slice12IterProducerB2U_EINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNvB3y_18collect_filestamps0EEs_0E0B1P_E11into_resultB3A_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.d)
          to label %bb.y unwind label %bb.x

_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.at, %.noexc41 ], [ %i.az, %.loopexit.i ] ; 2 uses
  %i.ba = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.bb = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.ba, null                 ; 2 uses
  br i1 %.not, label %bb.v, label %bb.n

bb.n:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bc = icmp eq ptr %i.j, %i.bb
  br i1 %i.bc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bd = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5slice12IterProducerB2U_EINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNvB3y_18collect_filestamps0EEs_0E0B1P_ENtB5_3Job7executeB3A_)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n, %bb.r
  invoke void %i.ba(ptr noundef %i.bb)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o
  %i.be = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.ba)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.bf = icmp eq i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.s, label %bb.p

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.g, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5slice12IterProducerB2U_EINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNvB3y_18collect_filestamps0EEs_0E0B1P_E10run_inlineB3A_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.g, i1 noundef zeroext false)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.v:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bh = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bi = icmp eq i64 %i.bh, 3
  br i1 %i.bi, label %.loopexit71, label %bb.w, !prof !5

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit71 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %.loopexit71
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ac unwind label %bb.z

bb.y:                                             ; preds = %.loopexit71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.u

bb.z:                                             ; preds = %.loopexit.split-lp, %bb.x, %bb.ab
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.o, %bb.p, %bb.q, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.w, %bb.s
  %lpad.loopexit.split-lp73 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp73, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEB2m_.exit46 unwind label %bb.z

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEB2m_.exit46: ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.i
  unreachable

bb.ab:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEB2m_.exit46, %.thread
  %.pn3858 = phi { ptr, i32 } [ %i.r, %.thread ], [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEB2m_.exit46 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENCINvNvNtB2p_8plumbing24bridge_producer_consumer6helperINtNtB2r_5slice12IterProducerB3n_EINtNtB2p_10filter_map17FilterMapConsumerINtB2l_15CollectConsumerB3m_ENCNvB41_18collect_filestamps0EEs_0E0B2i_EEB43_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.j) #29
          to label %bb.ac unwind label %bb.z

bb.ac:                                            ; preds = %bb.x, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEB2m_.exit46, %bb.ab
  %.pn3857 = phi { ptr, i32 } [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEB2m_.exit46 ], [ %.pn3858, %bb.ab ], [ %i.bj, %bb.x ]
  resume { ptr, i32 } %.pn3857
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtBY_10filter_map17FilterMapConsumerNtNtBY_6extend15ListVecConsumerNCNvNtCsbzNSmZPCnTx_10tgrep_core4meta18collect_filestamps0EE0NCBR_s_0INtNtNtB2C_11collections11linked_list10LinkedListINtNtB2C_3vec3VecTB2y_NtB4n_9FileStampEEEB5q_E0B4p_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(88) %1, ptr noundef nonnull align 128 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [112 x i8], align 8               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [112 x i8], align 8               ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 16               ; 9 uses
  %i.i = alloca [112 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.l = load i64, ptr %i.k, align 128, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 2 uses
  store ptr %i.j, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  store i64 0, ptr %i.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.p = invoke noundef zeroext i1 @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE8is_emptyCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.o)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE4pushCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.o, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtB1W_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4t_5slice12IterProducerB3a_EINtNtB4r_10filter_map17FilterMapConsumerNtNtB4r_6extend15ListVecConsumerNCNvB3y_18collect_filestamps0EEs_0E0B1P_ENtB5_3Job7executeB3A_, ptr noundef nonnull %i.i)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.j, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 472
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 496
  %i.u = invoke noundef i64 @_RINvMs_NtNtCs8sO4Nh65sHq_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.t)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.v = and i64 %i.u, 65535                      ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.p, label %bb.e, label %.sink.split.i, !prof !5

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.s, i32 noundef 1)
          to label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.x = lshr i64 %i.u, 16
  %i.y = and i64 %i.x, 65535
  %i.z = icmp eq i64 %i.y, %i.v
  br i1 %i.z, label %.sink.split.i, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !6

_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.051.0.copyload = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx52, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.5.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx53, align 8
  %.sroa.6.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx54, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.ab = inttoptr i64 %.sroa.5.0.copyload to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = load i64, ptr %.sroa.051.0.copyload, align 8, !noalias !1195, !noundef !4
  %i.ad = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1195, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !1195, !noundef !4
  invoke void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtB6_10filter_map17FilterMapConsumerNtNtB6_6extend15ListVecConsumerNCNvNtCsbzNSmZPCnTx_10tgrep_core4meta18collect_filestamps0EEB3w_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef %i.ad, i64 noundef %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %.sroa.6.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.7.0.copyload)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ah)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #28
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.13.0.copyload50 = load i64, ptr %.sroa.13.0..sroa_idx, align 16
  %i.ak = load <2 x ptr>, ptr %i.a, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store <2 x ptr> %i.ak, ptr %i.h, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.13.0.copyload50, ptr %.sroa.513.0..sroa_idx, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ao = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %i.ap = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao), "nonnull"(ptr %i.ap) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.m, ptr noundef nonnull %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap) #33
          to label %bb.aa unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.p
  %i.aq = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ar = icmp eq i64 %i.aq, 3
  br i1 %i.ar, label %.loopexit71, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = invoke { ptr, ptr } @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE3popCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.o)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.at = extractvalue { ptr, ptr } %i.as, 0
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs8_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_7StealerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE5stealCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.au = load i64, ptr %i.b, align 8, !range !7, !noundef !4
  switch i64 %i.au, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.av = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  %i.aw = load ptr, ptr %i.an, align 8, !noundef !4
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.0.i = phi ptr [ %i.aw, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.0.i = phi ptr [ %i.av, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ax = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ay = insertvalue { ptr, ptr } %i.ax, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit71:                                      ; preds = %bb.j, %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.i, i64 112, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtB1W_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4t_5slice12IterProducerB3a_EINtNtB4r_10filter_map17FilterMapConsumerNtNtB4r_6extend15ListVecConsumerNCNvB3y_18collect_filestamps0EEs_0E0B1P_E11into_resultB3A_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.c)
          to label %bb.y unwind label %bb.x

_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.as, %.noexc41 ], [ %i.ay, %.loopexit.i ] ; 2 uses
  %i.az = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.ba = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.az, null                 ; 2 uses
  br i1 %.not, label %bb.v, label %bb.n

bb.n:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bb = icmp eq ptr %i.i, %i.ba
  br i1 %i.bb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bc = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtB1W_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4t_5slice12IterProducerB3a_EINtNtB4r_10filter_map17FilterMapConsumerNtNtB4r_6extend15ListVecConsumerNCNvB3y_18collect_filestamps0EEs_0E0B1P_ENtB5_3Job7executeB3A_)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n, %bb.r
  invoke void %i.az(ptr noundef %i.ba)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o
  %i.bd = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.az)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.s, label %bb.p

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr noundef nonnull align 8 dereferenceable(112) %i.i, i64 112, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTNtNtB1W_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4t_5slice12IterProducerB3a_EINtNtB4r_10filter_map17FilterMapConsumerNtNtB4r_6extend15ListVecConsumerNCNvB3y_18collect_filestamps0EEs_0E0B1P_E10run_inlineB3A_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.f, i1 noundef zeroext false)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.v:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bg = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bh = icmp eq i64 %i.bg, 3
  br i1 %i.bh, label %.loopexit71, label %bb.w, !prof !5

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit71 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %.loopexit71
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTNtNtB9_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.ac unwind label %bb.z

bb.y:                                             ; preds = %.loopexit71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.u

bb.z:                                             ; preds = %.loopexit.split-lp, %bb.x, %bb.ab
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.o, %bb.p, %bb.q, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.w, %bb.s
  %lpad.loopexit.split-lp73 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp73, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTNtNtB9_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtBI_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEEB2k_.exit46 unwind label %bb.z

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtBI_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEEB2k_.exit46: ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.i
  unreachable

bb.ab:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtBI_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEEB2k_.exit46, %.thread
  %.pn3858 = phi { ptr, i32 } [ %i.q, %.thread ], [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtBI_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEEB2k_.exit46 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecTNtNtB2p_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4W_5slice12IterProducerB3D_EINtNtB4U_10filter_map17FilterMapConsumerNtNtB4U_6extend15ListVecConsumerNCNvB41_18collect_filestamps0EEs_0E0B2i_EEB43_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.i) #29
          to label %bb.ac unwind label %bb.z

bb.ac:                                            ; preds = %bb.x, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtBI_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEEB2k_.exit46, %bb.ab
  %.pn3857 = phi { ptr, i32 } [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTNtNtBI_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEEEB2k_.exit46 ], [ %.pn3858, %bb.ab ], [ %i.bi, %bb.x ]
  resume { ptr, i32 } %.pn3857
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBY_3zip11ZipProducerINtNtB10_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB2v_yEEINtNtBY_10filter_map17FilterMapConsumerINtNtNtBY_7collect8consumer15CollectConsumerNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENCNvB52_39build_index_with_options_and_ignorecase0EE0NCBR_s_0INtB4l_13CollectResultB50_EB6R_E0B54_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(152) %1, ptr noundef nonnull align 128 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [144 x i8], align 8               ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [144 x i8], align 8               ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 16               ; 9 uses
  %i.k = alloca [144 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.n = load i64, ptr %i.m, align 128, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 112 ; 2 uses
  store ptr %i.l, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 120 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  store i64 %i.n, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  store i64 0, ptr %i.k, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.r = invoke noundef zeroext i1 @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE8is_emptyCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.q)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE4pushCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.q, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1W_3zip11ZipProducerINtNtB1Y_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB55_yEEINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNvB2V_39build_index_with_options_and_ignorecase0EEs_0E0B1P_ENtB5_3Job7executeB2X_, ptr noundef nonnull %i.k)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.l, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 472
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 496
  %i.w = invoke noundef i64 @_RINvMs_NtNtCs8sO4Nh65sHq_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.v)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.x = and i64 %i.w, 65535                      ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.r, label %bb.e, label %.sink.split.i, !prof !5

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.u, i32 noundef 1)
          to label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.z = lshr i64 %i.w, 16
  %i.aa = and i64 %i.z, 65535
  %i.ab = icmp eq i64 %i.aa, %i.x
  br i1 %i.ab, label %.sink.split.i, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !6

_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.056.0.copyload = load ptr, ptr %i.ac, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx57, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx58, align 8
  %.sroa.6.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.056.0.copyload, ptr %i.c, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 %.sroa.5.0.copyload, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx59, i64 48, i1 false)
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i8 0, ptr %.sroa.14.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ad = load i64, ptr %.sroa.056.0.copyload, align 8, !noalias !1205, !noundef !4
  %i.ae = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1205, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !1205, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1205
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  invoke void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_3zip11ZipProducerINtNtB8_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB1D_yEEINtNtB6_10filter_map17FilterMapConsumerINtNtNtB6_7collect8consumer15CollectConsumerNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENCNvB49_39build_index_with_options_and_ignorecase0EEB4b_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.ad, i1 noundef zeroext false, i64 noundef %i.ae, i64 noundef %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %.sroa.12.0..sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  %i.ak = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.aj)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #28
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1205
  %.sroa.12.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.12.0.copyload55 = load i64, ptr %.sroa.12.0..sroa_idx54, align 16
  %i.am = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store <2 x ptr> %i.am, ptr %i.j, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.12.0.copyload55, ptr %.sroa.513.0..sroa_idx, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.aq = extractvalue { ptr, ptr } %i.ak, 0      ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.ak, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq), "nonnull"(ptr %i.ar) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.o, ptr noundef nonnull %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ar) #33
          to label %bb.aa unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.p
  %i.as = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.at = icmp eq i64 %i.as, 3
  br i1 %i.at, label %.loopexit76, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = invoke { ptr, ptr } @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE3popCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.q)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.av = extractvalue { ptr, ptr } %i.au, 0
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs8_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_7StealerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE5stealCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.an)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.aw = load i64, ptr %i.d, align 8, !range !7, !noundef !4
  switch i64 %i.aw, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.ax = load ptr, ptr %i.ao, align 8, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.ap, align 8, !noundef !4
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.0.i = phi ptr [ %i.ay, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.0.i = phi ptr [ %i.ax, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.az = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ba = insertvalue { ptr, ptr } %i.az, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit76:                                      ; preds = %bb.j, %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 16 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.e, ptr noundef nonnull align 8 dereferenceable(144) %i.k, i64 144, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1W_3zip11ZipProducerINtNtB1Y_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB55_yEEINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNvB2V_39build_index_with_options_and_ignorecase0EEs_0E0B1P_E11into_resultB2X_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(144) %i.e)
          to label %bb.y unwind label %bb.x

_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.au, %.noexc41 ], [ %i.ba, %.loopexit.i ] ; 2 uses
  %i.bb = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.bc = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.bb, null                 ; 2 uses
  br i1 %.not, label %bb.v, label %bb.n

bb.n:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bd = icmp eq ptr %i.k, %i.bc
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.be = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1W_3zip11ZipProducerINtNtB1Y_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB55_yEEINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNvB2V_39build_index_with_options_and_ignorecase0EEs_0E0B1P_ENtB5_3Job7executeB2X_)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n, %bb.r
  invoke void %i.bb(ptr noundef %i.bc)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o
  %i.bf = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.bb)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.s, label %bb.p

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.h, ptr noundef nonnull align 8 dereferenceable(144) %i.k, i64 144, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1W_3zip11ZipProducerINtNtB1Y_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB55_yEEINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNvB2V_39build_index_with_options_and_ignorecase0EEs_0E0B1P_E10run_inlineB2X_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(144) %i.h, i1 noundef zeroext false)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.v:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bi = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bj = icmp eq i64 %i.bi, 3
  br i1 %i.bj, label %.loopexit76, label %bb.w, !prof !5

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit76 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %.loopexit76
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.ac unwind label %bb.z

bb.y:                                             ; preds = %.loopexit76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.u

bb.z:                                             ; preds = %.loopexit.split-lp, %bb.x, %bb.ab
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.o, %bb.p, %bb.q, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.w, %bb.s
  %lpad.loopexit.split-lp78 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp78, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEB1J_.exit46 unwind label %bb.z

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEB1J_.exit46: ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.i
  unreachable

bb.ab:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEB1J_.exit46, %.thread
  %.pn3863 = phi { ptr, i32 } [ %i.s, %.thread ], [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEB1J_.exit46 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileENCINvNvNtB2p_8plumbing24bridge_producer_consumer6helperINtNtB2p_3zip11ZipProducerINtNtB2r_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB5y_yEEINtNtB2p_10filter_map17FilterMapConsumerINtB2l_15CollectConsumerB3m_ENCNvB3o_39build_index_with_options_and_ignorecase0EEs_0E0B2i_EEB3q_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.k) #29
          to label %bb.ac unwind label %bb.z

bb.ac:                                            ; preds = %bb.x, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEB1J_.exit46, %bb.ab
  %.pn3862 = phi { ptr, i32 } [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEB1J_.exit46 ], [ %.pn3863, %bb.ab ], [ %i.bk, %bb.x ]
  resume { ptr, i32 } %.pn3862
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBY_3zip11ZipProducerINtNtB10_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB2v_yEEINtNtBY_10filter_map17FilterMapConsumerNtNtBY_6extend15ListVecConsumerNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder39build_index_with_options_and_ignorecase0EE0NCBR_s_0INtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB6p_3vec3VecNtB4R_13ExtractedFileEEB6i_E0B4T_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %1, ptr noundef nonnull align 128 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [128 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [128 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 16               ; 9 uses
  %i.j = alloca [128 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.m = load i64, ptr %i.l, align 128, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.q = invoke noundef zeroext i1 @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE8is_emptyCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE4pushCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4b_3zip11ZipProducerINtNtB4d_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB5J_yEEINtNtB4b_10filter_map17FilterMapConsumerNtNtB4b_6extend15ListVecConsumerNCNvB3b_39build_index_with_options_and_ignorecase0EEs_0E0B1P_ENtB5_3Job7executeB3d_, ptr noundef nonnull %i.j)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.k, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 496
  %i.v = invoke noundef i64 @_RINvMs_NtNtCs8sO4Nh65sHq_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.u)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.w = and i64 %i.v, 65535                      ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.q, label %bb.e, label %.sink.split.i, !prof !5

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.t, i32 noundef 1)
          to label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.y = lshr i64 %i.v, 16
  %i.z = and i64 %i.y, 65535
  %i.aa = icmp eq i64 %i.z, %i.w
  br i1 %i.aa, label %.sink.split.i, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !6

_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.057.0.copyload = load ptr, ptr %i.ab, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx58, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx59, align 8
  %.sroa.6.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx60, i64 32, i1 false)
  store ptr %.sroa.057.0.copyload, ptr %i.b, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.5.0.copyload, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.1356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 0, ptr %.sroa.1356.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !1215)
  call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  %i.ac = load i64, ptr %.sroa.057.0.copyload, align 8, !noalias !1218, !noundef !4
  %i.ad = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1218, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !1218, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !1219, !nonnull !4, !align !11, !noundef !4
  invoke void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_3zip11ZipProducerINtNtB8_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB1D_yEEINtNtB6_10filter_map17FilterMapConsumerNtNtB6_6extend15ListVecConsumerNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder39build_index_with_options_and_ignorecase0EEB40_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef %i.ad, i64 noundef %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %.sroa.12.0..sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ah)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  %i.ak = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.aj)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #28
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %.sroa.12.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.12.0.copyload55 = load i64, ptr %.sroa.12.0..sroa_idx54, align 16
  %i.am = load <2 x ptr>, ptr %i.a, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store <2 x ptr> %i.am, ptr %i.i, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.12.0.copyload55, ptr %.sroa.513.0..sroa_idx, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.aq = extractvalue { ptr, ptr } %i.ak, 0      ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.ak, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq), "nonnull"(ptr %i.ar) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.n, ptr noundef nonnull %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ar) #33
          to label %bb.aa unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.p
  %i.as = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.at = icmp eq i64 %i.as, 3
  br i1 %i.at, label %.loopexit77, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = invoke { ptr, ptr } @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE3popCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.av = extractvalue { ptr, ptr } %i.au, 0
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs8_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_7StealerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE5stealCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.an)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.aw = load i64, ptr %i.c, align 8, !range !7, !noundef !4
  switch i64 %i.aw, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.ax = load ptr, ptr %i.ao, align 8, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.ap, align 8, !noundef !4
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.0.i = phi ptr [ %i.ay, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.0.i = phi ptr [ %i.ax, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.az = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ba = insertvalue { ptr, ptr } %i.az, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit77:                                      ; preds = %bb.j, %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4b_3zip11ZipProducerINtNtB4d_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB5J_yEEINtNtB4b_10filter_map17FilterMapConsumerNtNtB4b_6extend15ListVecConsumerNCNvB3b_39build_index_with_options_and_ignorecase0EEs_0E0B1P_E11into_resultB3d_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.d)
          to label %bb.y unwind label %bb.x

_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.au, %.noexc41 ], [ %i.ba, %.loopexit.i ] ; 2 uses
  %i.bb = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.bc = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.bb, null                 ; 2 uses
  br i1 %.not, label %bb.v, label %bb.n

bb.n:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bd = icmp eq ptr %i.j, %i.bc
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.be = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4b_3zip11ZipProducerINtNtB4d_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB5J_yEEINtNtB4b_10filter_map17FilterMapConsumerNtNtB4b_6extend15ListVecConsumerNCNvB3b_39build_index_with_options_and_ignorecase0EEs_0E0B1P_ENtB5_3Job7executeB3d_)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n, %bb.r
  invoke void %i.bb(ptr noundef %i.bc)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o
  %i.bf = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.bb)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.s, label %bb.p

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.g, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4b_3zip11ZipProducerINtNtB4d_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB5J_yEEINtNtB4b_10filter_map17FilterMapConsumerNtNtB4b_6extend15ListVecConsumerNCNvB3b_39build_index_with_options_and_ignorecase0EEs_0E0B1P_E10run_inlineB3d_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.g, i1 noundef zeroext false)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.v:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bi = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bj = icmp eq i64 %i.bi, 3
  br i1 %i.bj, label %.loopexit77, label %bb.w, !prof !5

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit77 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %.loopexit77
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ac unwind label %bb.z

bb.y:                                             ; preds = %.loopexit77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.u

bb.z:                                             ; preds = %.loopexit.split-lp, %bb.x, %bb.ab
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.o, %bb.p, %bb.q, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.w, %bb.s
  %lpad.loopexit.split-lp79 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp79, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEEB1Y_.exit46 unwind label %bb.z

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEEB1Y_.exit46: ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.i
  unreachable

bb.ab:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEEB1Y_.exit46, %.thread
  %.pn3864 = phi { ptr, i32 } [ %i.r, %.thread ], [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEEB1Y_.exit46 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4E_3zip11ZipProducerINtNtB4G_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB6c_yEEINtNtB4E_10filter_map17FilterMapConsumerNtNtB4E_6extend15ListVecConsumerNCNvB3E_39build_index_with_options_and_ignorecase0EEs_0E0B2i_EEB3G_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.j) #29
          to label %bb.ac unwind label %bb.z

bb.ac:                                            ; preds = %bb.x, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEEB1Y_.exit46, %bb.ab
  %.pn3863 = phi { ptr, i32 } [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileEEEB1Y_.exit46 ], [ %.pn3864, %bb.ab ], [ %i.bk, %bb.x ]
  resume { ptr, i32 } %.pn3863
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBY_3zip11ZipProducerINtNtB10_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB2v_yEEINtNtBY_3map11MapConsumerINtNtNtBY_7collect8consumer15CollectConsumerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileB2X_EENCNvB5q_21build_index_for_files0EE0NCBR_s_0INtB47_13CollectResultB4M_EB72_E0B5s_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(152) %1, ptr noundef nonnull align 128 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [144 x i8], align 8               ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [144 x i8], align 8               ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 16               ; 9 uses
  %i.k = alloca [144 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.n = load i64, ptr %i.m, align 128, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 112 ; 2 uses
  store ptr %i.l, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 120 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  store i64 %i.n, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  store i64 0, ptr %i.k, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.r = invoke noundef zeroext i1 @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE8is_emptyCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.q)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE4pushCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.q, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1W_3zip11ZipProducerINtNtB1Y_5slice12IterProducerB4m_EIB6h_yEEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCNvB3x_21build_index_for_files0EEs_0E0B1P_ENtB5_3Job7executeB3z_, ptr noundef nonnull %i.k)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.l, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 472
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 496
  %i.w = invoke noundef i64 @_RINvMs_NtNtCs8sO4Nh65sHq_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.v)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.x = and i64 %i.w, 65535                      ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.r, label %bb.e, label %.sink.split.i, !prof !5

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.u, i32 noundef 1)
          to label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.z = lshr i64 %i.w, 16
  %i.aa = and i64 %i.z, 65535
  %i.ab = icmp eq i64 %i.aa, %i.x
  br i1 %i.ab, label %.sink.split.i, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !6

_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.056.0.copyload = load ptr, ptr %i.ac, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx57, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx58, align 8
  %.sroa.6.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.056.0.copyload, ptr %i.c, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 %.sroa.5.0.copyload, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx59, i64 48, i1 false)
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i8 0, ptr %.sroa.14.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ad = load i64, ptr %.sroa.056.0.copyload, align 8, !noalias !1229, !noundef !4
  %i.ae = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1229, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !1229, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1229
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  invoke void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_3zip11ZipProducerINtNtB8_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB1D_yEEINtNtB6_3map11MapConsumerINtNtNtB6_7collect8consumer15CollectConsumerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileB24_EENCNvB4x_21build_index_for_files0EEB4z_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.ad, i1 noundef zeroext false, i64 noundef %i.ae, i64 noundef %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %.sroa.12.0..sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  %i.ak = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.aj)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #28
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1229
  %.sroa.12.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.12.0.copyload55 = load i64, ptr %.sroa.12.0..sroa_idx54, align 16
  %i.am = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store <2 x ptr> %i.am, ptr %i.j, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.12.0.copyload55, ptr %.sroa.513.0..sroa_idx, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.aq = extractvalue { ptr, ptr } %i.ak, 0      ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.ak, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq), "nonnull"(ptr %i.ar) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.o, ptr noundef nonnull %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ar) #33
          to label %bb.aa unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.p
  %i.as = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.at = icmp eq i64 %i.as, 3
  br i1 %i.at, label %.loopexit76, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = invoke { ptr, ptr } @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE3popCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.q)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.av = extractvalue { ptr, ptr } %i.au, 0
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs8_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_7StealerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE5stealCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.an)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.aw = load i64, ptr %i.d, align 8, !range !7, !noundef !4
  switch i64 %i.aw, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.ax = load ptr, ptr %i.ao, align 8, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.ap, align 8, !noundef !4
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.0.i = phi ptr [ %i.ay, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.0.i = phi ptr [ %i.ax, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.az = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ba = insertvalue { ptr, ptr } %i.az, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit76:                                      ; preds = %bb.j, %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 16 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.e, ptr noundef nonnull align 8 dereferenceable(144) %i.k, i64 144, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1W_3zip11ZipProducerINtNtB1Y_5slice12IterProducerB4m_EIB6h_yEEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCNvB3x_21build_index_for_files0EEs_0E0B1P_E11into_resultB3z_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(144) %i.e)
          to label %bb.y unwind label %bb.x

_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.au, %.noexc41 ], [ %i.ba, %.loopexit.i ] ; 2 uses
  %i.bb = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.bc = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.bb, null                 ; 2 uses
  br i1 %.not, label %bb.v, label %bb.n

bb.n:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bd = icmp eq ptr %i.k, %i.bc
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.be = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1W_3zip11ZipProducerINtNtB1Y_5slice12IterProducerB4m_EIB6h_yEEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCNvB3x_21build_index_for_files0EEs_0E0B1P_ENtB5_3Job7executeB3z_)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n, %bb.r
  invoke void %i.bb(ptr noundef %i.bc)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o
  %i.bf = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.bb)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.s, label %bb.p

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.h, ptr noundef nonnull align 8 dereferenceable(144) %i.k, i64 144, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1W_3zip11ZipProducerINtNtB1Y_5slice12IterProducerB4m_EIB6h_yEEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCNvB3x_21build_index_for_files0EEs_0E0B1P_E10run_inlineB3z_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(144) %i.h, i1 noundef zeroext false)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.v:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bi = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bj = icmp eq i64 %i.bi, 3
  br i1 %i.bj, label %.loopexit76, label %bb.w, !prof !5

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit76 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %.loopexit76
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEENtNtNtB1h_3ops4drop4Drop4dropB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.ac unwind label %bb.z

bb.y:                                             ; preds = %.loopexit76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.u

bb.z:                                             ; preds = %.loopexit.split-lp, %bb.x, %bb.ab
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.o, %bb.p, %bb.q, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.w, %bb.s
  %lpad.loopexit.split-lp78 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp78, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEENtNtNtB1h_3ops4drop4Drop4dropB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEB25_.exit46 unwind label %bb.z

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEB25_.exit46: ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.i
  unreachable

bb.ab:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEB25_.exit46, %.thread
  %.pn3863 = phi { ptr, i32 } [ %i.s, %.thread ], [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEB25_.exit46 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEENCINvNvNtB2p_8plumbing24bridge_producer_consumer6helperINtNtB2p_3zip11ZipProducerINtNtB2r_5slice12IterProducerB4z_EIB6u_yEEINtNtB2p_3map11MapConsumerINtB2l_15CollectConsumerB3m_ENCNvB3K_21build_index_for_files0EEs_0E0B2i_EEB3M_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.k) #29
          to label %bb.ac unwind label %bb.z

bb.ac:                                            ; preds = %bb.x, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEB25_.exit46, %bb.ab
  %.pn3862 = phi { ptr, i32 } [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEB25_.exit46 ], [ %.pn3863, %bb.ab ], [ %i.bk, %bb.x ]
  resume { ptr, i32 } %.pn3862
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs8sO4Nh65sHq_10rayon_core4join12join_contextNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBY_3zip11ZipProducerINtNtB10_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB2v_yEEINtNtBY_3map11MapConsumerNtNtBY_6extend15ListVecConsumerNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder21build_index_for_files0EE0NCBR_s_0INtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB5T_3vec3VecINtNtCsf3Ta7LF998c_4core6result6ResultNtB4D_13ExtractedFileB2X_EEEB5M_E0B4F_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %1, ptr noundef nonnull align 128 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [128 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [128 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 16               ; 9 uses
  %i.j = alloca [128 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.m = load i64, ptr %i.l, align 128, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.q = invoke noundef zeroext i1 @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE8is_emptyCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE4pushCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5n_3zip11ZipProducerINtNtB5p_5slice12IterProducerB4C_EIB6V_yEEINtNtB5n_3map11MapConsumerNtNtB5n_6extend15ListVecConsumerNCNvB3N_21build_index_for_files0EEs_0E0B1P_ENtB5_3Job7executeB3P_, ptr noundef nonnull %i.j)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.k, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 496
  %i.v = invoke noundef i64 @_RINvMs_NtNtCs8sO4Nh65sHq_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.u)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.w = and i64 %i.v, 65535                      ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.q, label %bb.e, label %.sink.split.i, !prof !5

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.t, i32 noundef 1)
          to label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.y = lshr i64 %i.v, 16
  %i.z = and i64 %i.y, 65535
  %i.aa = icmp eq i64 %i.z, %i.w
  br i1 %i.aa, label %.sink.split.i, label %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !6

_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.057.0.copyload = load ptr, ptr %i.ab, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx58, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx59, align 8
  %.sroa.6.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx60, i64 32, i1 false)
  store ptr %.sroa.057.0.copyload, ptr %i.b, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.5.0.copyload, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.1356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 0, ptr %.sroa.1356.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  %i.ac = load i64, ptr %.sroa.057.0.copyload, align 8, !noalias !1242, !noundef !4
  %i.ad = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1242, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !1242, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !1243, !nonnull !4, !align !11, !noundef !4
  invoke void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_3zip11ZipProducerINtNtB8_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEIB1D_yEEINtNtB6_3map11MapConsumerNtNtB6_6extend15ListVecConsumerNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder21build_index_for_files0EEB3M_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef %i.ad, i64 noundef %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %.sroa.12.0..sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  %i.ak = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.aj)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #28
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs8sO4Nh65sHq_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %.sroa.12.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.12.0.copyload55 = load i64, ptr %.sroa.12.0..sroa_idx54, align 16
  %i.am = load <2 x ptr>, ptr %i.a, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store <2 x ptr> %i.am, ptr %i.i, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.12.0.copyload55, ptr %.sroa.513.0..sroa_idx, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.aq = extractvalue { ptr, ptr } %i.ak, 0      ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.ak, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq), "nonnull"(ptr %i.ar) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvNtCs8sO4Nh65sHq_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.n, ptr noundef nonnull %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ar) #33
          to label %bb.aa unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.p
  %i.as = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.at = icmp eq i64 %i.as, 3
  br i1 %i.at, label %.loopexit77, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = invoke { ptr, ptr } @_RNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE3popCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.p)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.av = extractvalue { ptr, ptr } %i.au, 0
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs8_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB5_7StealerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE5stealCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.an)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.aw = load i64, ptr %i.c, align 8, !range !7, !noundef !4
  switch i64 %i.aw, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.ax = load ptr, ptr %i.ao, align 8, !nonnull !4, !noundef !4
  %i.ay = load ptr, ptr %i.ap, align 8, !noundef !4
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.0.i = phi ptr [ %i.ay, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.0.i = phi ptr [ %i.ax, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.az = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ba = insertvalue { ptr, ptr } %i.az, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit77:                                      ; preds = %bb.j, %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5n_3zip11ZipProducerINtNtB5p_5slice12IterProducerB4C_EIB6V_yEEINtNtB5n_3map11MapConsumerNtNtB5n_6extend15ListVecConsumerNCNvB3N_21build_index_for_files0EEs_0E0B1P_E11into_resultB3P_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.d)
          to label %bb.y unwind label %bb.x

_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.au, %.noexc41 ], [ %i.ba, %.loopexit.i ] ; 2 uses
  %i.bb = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.bc = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.bb, null                 ; 2 uses
  br i1 %.not, label %bb.v, label %bb.n

bb.n:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bd = icmp eq ptr %i.j, %i.bc
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.be = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5n_3zip11ZipProducerINtNtB5p_5slice12IterProducerB4C_EIB6V_yEEINtNtB5n_3map11MapConsumerNtNtB5n_6extend15ListVecConsumerNCNvB3N_21build_index_for_files0EEs_0E0B1P_ENtB5_3Job7executeB3P_)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n, %bb.r
  invoke void %i.bb(ptr noundef %i.bc)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o
  %i.bf = invoke noundef i64 @_RNvYFUPuEuNtNtNtCsf3Ta7LF998c_4core3ops8function5FnPtr4addrCsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %i.bb)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.s, label %bb.p

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.g, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false)
  invoke void @_RNvMs1_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5n_3zip11ZipProducerINtNtB5p_5slice12IterProducerB4C_EIB6V_yEEINtNtB5n_3map11MapConsumerNtNtB5n_6extend15ListVecConsumerNCNvB3N_21build_index_for_files0EEs_0E0B1P_E10run_inlineB3P_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.g, i1 noundef zeroext false)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.v:                                             ; preds = %_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bi = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bj = icmp eq i64 %i.bi, 3
  br i1 %i.bj, label %.loopexit77, label %bb.w, !prof !5

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs8_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit77 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %.loopexit77
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEENtNtNtB1w_3ops4drop4Drop4dropB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ac unwind label %bb.z

bb.y:                                             ; preds = %.loopexit77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.u

bb.z:                                             ; preds = %.loopexit.split-lp, %bb.x, %bb.ab
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.o, %bb.p, %bb.q, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.w, %bb.s
  %lpad.loopexit.split-lp79 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp79, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEENtNtNtB1w_3ops4drop4Drop4dropB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEEB2k_.exit46 unwind label %bb.z

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEEB2k_.exit46: ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.i
  unreachable

bb.ab:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEEB2k_.exit46, %.thread
  %.pn3864 = phi { ptr, i32 } [ %i.r, %.thread ], [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEEB2k_.exit46 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5A_3zip11ZipProducerINtNtB5C_5slice12IterProducerB4P_EIB78_yEEINtNtB5A_3map11MapConsumerNtNtB5A_6extend15ListVecConsumerNCNvB40_21build_index_for_files0EEs_0E0B2i_EEB42_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.j) #29
          to label %bb.ac unwind label %bb.z

bb.ac:                                            ; preds = %bb.x, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEEB2k_.exit46, %bb.ab
  %.pn3863 = phi { ptr, i32 } [ %lpad.phi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEEEEB2k_.exit46 ], [ %.pn3864, %bb.ab ], [ %i.bk, %bb.x ]
  resume { ptr, i32 } %.pn3863
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvNtNtCs5Xr050g3D4S_3std6thread9lifecycle15spawn_uncheckedNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB1b_9LiveIndex22try_drop_all_persisteds0_0uEs_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceuE9call_once6vtableB1d_(ptr noundef %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [240 x i8], align 8               ; 4 uses
  %i.b = alloca [272 x i8], align 8               ; 6 uses
  %i.c = alloca [272 x i8], align 8               ; 6 uses
  %.sroa.531.i = alloca [256 x i8], align 8       ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.531.i)
  %.sroa.029.0.copyload.i = load ptr, ptr %0, align 8, !alias.scope !1260 ; 2 uses
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.430.0.copyload.i = load ptr, ptr %.sroa.430.0..sroa_idx.i, align 8, !alias.scope !1260 ; 2 uses
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.531.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.531.0..sroa_idx.i, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.531.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.531.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.531.32..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(240) %i.e, i64 240, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1260
  store ptr %.sroa.029.0.copyload.i, ptr %i.c, align 8, !noalias !1260
  %.sroa.7.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.430.0.copyload.i, ptr %.sroa.7.0..sroa_idx18.i, align 8, !noalias !1260
  %.sroa.9.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.9.0..sroa_idx22.i, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.531.i, i64 256, i1 false), !noalias !1260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1261
  store ptr %.sroa.029.0.copyload.i, ptr %i.b, align 8, !noalias !1260
  %.sroa.7.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.430.0.copyload.i, ptr %.sroa.7.0..sroa_idx20.i, align 8, !noalias !1260
  %.sroa.9.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.9.0..sroa_idx23.i, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.531.i, i64 256, i1 false), !noalias !1260
  invoke void @_RINvNtNtCs5Xr050g3D4S_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB23_9LiveIndex22try_drop_all_persisteds0_0uEs_000uEB25_(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(272) %i.c)
end_hunk_0
