Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_shutdown-4fd20261d39dd458.influxdb3_shutdown.d4cc2c99fd2dc95d-cgu.1?download=true
inline.NumInlined: 242
inline.NumDeleted: 116
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreINtB5_4CoreINtNtNtCs1a9RECLZJLX_10tokio_util4task12task_tracker13TrackedFutureINtNtNtBb_4sync7oneshot8ReceiveruEEINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCsigIpOYTm7sT_18influxdb3_shutdown:bb.a
bb.l:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.k, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.l ], [ %i.t, %bb.k ], [ %i.t, %bb.j ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  invoke void @_RNvXs3_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.thread unwind label %bb.m

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4core5StageINtNtNtCs1a9RECLZJLX_10tokio_util4task12task_tracker13TrackedFutureINtNtNtBK_4sync7oneshot8ReceiveruEEEECsigIpOYTm7sT_18influxdb3_shutdown.exit: ; preds = %bb.i, %bb.h, %bb.e, %bb.d, %bb.b, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXs3_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.m:                                             ; preds = %.body, %bb.n
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

.thread:                                          ; preds = %.body, %bb.n
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ab, %bb.n ]
  resume { ptr, i32 } %.pn8

bb.n:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4core5StageINtNtNtCs1a9RECLZJLX_10tokio_util4task12task_tracker13TrackedFutureINtNtNtBK_4sync7oneshot8ReceiveruEEEECsigIpOYTm7sT_18influxdb3_shutdown(ptr noalias noundef align 8 dereferenceable(32) %1) #19
          to label %.thread unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs_CsigIpOYTm7sT_18influxdb3_shutdownNtB4_13ShutdownToken12is_cancelled(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMs4_NtNtCs1a9RECLZJLX_10tokio_util4sync18cancellation_tokenNtB5_17CancellationToken12is_cancelled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_CsigIpOYTm7sT_18influxdb3_shutdownNtB4_13ShutdownToken16trigger_shutdown(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 6 uses
  %i.d = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMs1_NtCsgIGNhOnZR2a_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = invoke { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant3now()
          to label %bb.f unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.j = extractvalue { i8, i1 } %i.i, 1
  br i1 %i.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api5mutex10MutexGuardNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std4time7InstantEEECsigIpOYTm7sT_18influxdb3_shutdown.exit, label %bb.e, !prof !10

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs1_NtCsgIGNhOnZR2a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api5mutex10MutexGuardNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std4time7InstantEEECsigIpOYTm7sT_18influxdb3_shutdown.exit unwind label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !range !12, !alias.scope !437, !noundef !4
  %.not.i = icmp eq i32 %i.l, -1
  br i1 %.not.i, label %bb.g, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs2AWtUsOyxgP_3std4time7InstantE18get_or_insert_withNCNvB2_13get_or_insert0ECsigIpOYTm7sT_18influxdb3_shutdown.exit

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.n = extractvalue { i64, i32 } %i.g, 1
  %i.o = extractvalue { i64, i32 } %i.g, 0
  store i64 %i.o, ptr %i.m, align 8, !alias.scope !437
  store i32 %i.n, ptr %i.k, align 8, !alias.scope !437
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs2AWtUsOyxgP_3std4time7InstantE18get_or_insert_withNCNvB2_13get_or_insert0ECsigIpOYTm7sT_18influxdb3_shutdown.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs2AWtUsOyxgP_3std4time7InstantE18get_or_insert_withNCNvB2_13get_or_insert0ECsigIpOYTm7sT_18influxdb3_shutdown.exit: ; preds = %bb.g, %bb.f
  %i.p = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.q = extractvalue { i8, i1 } %i.p, 1
  br i1 %i.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api5mutex10MutexGuardNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std4time7InstantEEECsigIpOYTm7sT_18influxdb3_shutdown.exit2, label %bb.h, !prof !10

bb.h:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs2AWtUsOyxgP_3std4time7InstantE18get_or_insert_withNCNvB2_13get_or_insert0ECsigIpOYTm7sT_18influxdb3_shutdown.exit
  tail call void @_RNvMs1_NtCsgIGNhOnZR2a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api5mutex10MutexGuardNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std4time7InstantEEECsigIpOYTm7sT_18influxdb3_shutdown.exit2

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api5mutex10MutexGuardNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std4time7InstantEEECsigIpOYTm7sT_18influxdb3_shutdown.exit2: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs2AWtUsOyxgP_3std4time7InstantE18get_or_insert_withNCNvB2_13get_or_insert0ECsigIpOYTm7sT_18influxdb3_shutdown.exit, %bb.h
  tail call void @_RNvMs4_NtNtCs1a9RECLZJLX_10tokio_util4sync18cancellation_tokenNtB5_17CancellationToken6cancel(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  ret void

bb.i:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api5mutex10MutexGuardNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std4time7InstantEEECsigIpOYTm7sT_18influxdb3_shutdown.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMs_CsigIpOYTm7sT_18influxdb3_shutdownNtB4_13ShutdownToken24clone_cancellation_token(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RNvXs1_NtNtCs1a9RECLZJLX_10tokio_util4sync18cancellation_tokenNtB5_17CancellationTokenNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_CsigIpOYTm7sT_18influxdb3_shutdownNtB4_13ShutdownToken8complete(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [48 x i8], align 8                ; 9 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [48 x i8], align 8                ; 9 uses
  %i.r = alloca [32 x i8], align 8                ; 8 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [8 x i8], align 8                 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.v = cmpxchg weak ptr %i.u, i8 0, i8 1 acquire monotonic, align 1
  %i.w = extractvalue { i8, i1 } %i.v, 1
  br i1 %i.w, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 @_RNvMs1_NtCsgIGNhOnZR2a_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.u, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !range !11, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8
  store i64 0, ptr %i.y, align 8
  %i.ac = trunc nuw i64 %i.z to i1
  br i1 %i.ac, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = cmpxchg ptr %i.u, i8 1, i8 0 release monotonic, align 1
  %i.ae = extractvalue { i8, i1 } %i.ad, 1
  br i1 %i.ae, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api5mutex10MutexGuardNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexINtNtB4_6option6OptionINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot6SenderuEEEECsigIpOYTm7sT_18influxdb3_shutdown.exit, label %bb.e, !prof !10

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs1_NtCsgIGNhOnZR2a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.u, i1 noundef zeroext false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api5mutex10MutexGuardNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexINtNtB4_6option6OptionINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot6SenderuEEEECsigIpOYTm7sT_18influxdb3_shutdown.exit

.thread87:                                        ; preds = %bb.au, %bb.as, %bb.ar, %bb.am, %.noexc65.a, %bb.an, %bb.ah, %bb.ag, %bb.h, %bb.l, %bb.bn, %bb.bl, %bb.bk, %bb.bg, %.noexc73.a, %bb.bh, %bb.bb, %bb.ba, %bb.q, %bb.ak, %bb.ad, %bb.be
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.f:                                             ; preds = %bb.ax
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.ab, ptr %i.t, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 6 uses
  %i.ai = cmpxchg weak ptr %i.ah, i8 0, i8 1 acquire monotonic, align 1
  %i.aj = extractvalue { i8, i1 } %i.ai, 1
  br i1 %i.aj, label %bb.i, label %bb.h, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.ak = invoke noundef zeroext i1 @_RNvMs1_NtCsgIGNhOnZR2a_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.ah, i64 undef, i32 noundef -1)
          to label %bb.i unwind label %.thread87  ; 0 uses

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.am = load i32, ptr %i.al, align 8, !range !12, !noundef !4
  %.not = icmp eq i32 %i.am, -1
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ao = invoke { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant7elapsed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.an)
          to label %bb.o unwind label %bb.m       ; 2 uses

bb.k:                                             ; preds = %bb.i, %bb.o
  %.sroa.6.0.a = phi i32 [ %i.av, %bb.o ], [ -1, %bb.i ] ; 2 uses
  %.sroa.02.0 = phi i64 [ %i.au, %bb.o ], [ undef, %bb.i ]
  %i.ap = cmpxchg ptr %i.ah, i8 1, i8 0 release monotonic, align 1
  %i.aq = extractvalue { i8, i1 } %i.ap, 1
  br i1 %i.aq, label %bb.p, label %bb.l, !prof !10

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs1_NtCsgIGNhOnZR2a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.ah, i1 noundef zeroext false)
          to label %bb.p unwind label %.thread87

bb.m:                                             ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = cmpxchg ptr %i.ah, i8 1, i8 0 release monotonic, align 1
  %i.at = extractvalue { i8, i1 } %i.as, 1
  br i1 %i.at, label %.thread, label %bb.n, !prof !10

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMs1_NtCsgIGNhOnZR2a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.ah, i1 noundef zeroext false)
          to label %.thread unwind label %bb.bs

bb.o:                                             ; preds = %bb.j
  %i.au = extractvalue { i64, i32 } %i.ao, 0
  %i.av = extractvalue { i64, i32 } %i.ao, 1
  br label %bb.k

bb.p:                                             ; preds = %bb.l, %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 4 uses
  %i.az = cmpxchg weak ptr %i.ay, i8 0, i8 1 acquire monotonic, align 1
  %i.ba = extractvalue { i8, i1 } %i.az, 1
  br i1 %i.ba, label %bb.r, label %bb.q, !prof !10

bb.q:                                             ; preds = %bb.p
  %i.bb = invoke noundef zeroext i1 @_RNvMs1_NtCsgIGNhOnZR2a_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.ay, i64 undef, i32 noundef -1)
          to label %bb.r unwind label %.thread87  ; 0 uses

bb.r:                                             ; preds = %bb.q, %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 40 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !452, !noundef !4 ; 9 uses
  %i.be = icmp ult i64 %i.bd, 384307168202282326
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = icmp eq i64 %i.bd, 0
  br i1 %i.bf, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRejEE6retainNCNvMs_CsigIpOYTm7sT_18influxdb3_shutdownNtBY_13ShutdownToken8completes_0EBY_.exit, label %.preheader26.i.i

.preheader26.i.i:                                 ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !452, !nonnull !4, !noundef !4 ; 11 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.bj = load i64, ptr %i.bi, align 8, !noalias !453, !noundef !4 ; 8 uses
  %xtraiter = and i64 %i.bd, 3                    ; 3 uses
  %i.bk = icmp samesign ult i64 %i.bd, 4
  br i1 %i.bk, label %.epil.preheader, label %.preheader26.i.i.new

.preheader26.i.i.new:                             ; preds = %.preheader26.i.i
  %unroll_iter = and i64 %i.bd, 576460752303423484
  br label %bb.s

bb.s:                                             ; preds = %bb.x, %.preheader26.i.i.new
  %.sroa.0.0.i.i = phi i64 [ 0, %.preheader26.i.i.new ], [ %.sroa.7.031.i.i.3, %bb.x ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader26.i.i.new ], [ %niter.next.3, %bb.x ]
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %.sroa.0.0.i.i
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  %.val10.i.i = load i64, ptr %i.bm, align 8, !noalias !453, !noundef !4
  %.not.i.i = icmp eq i64 %.val10.i.i, %i.bj
  %.sroa.7.031.i.i = or disjoint i64 %.sroa.0.0.i.i, 1 ; 3 uses
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.u, !prof !5

.preheader.i.i:                                   ; preds = %bb.ab, %bb.s, %bb.u, %bb.v, %bb.w
  %.sroa.0.0.i.i.lcssa = phi i64 [ %.sroa.7.031.i.i.2, %bb.w ], [ %.sroa.0.0.i.i, %bb.s ], [ %.sroa.7.031.i.i, %bb.u ], [ %.sroa.7.031.i.i.1, %bb.v ], [ %.sroa.0.0.i.i.epil, %bb.ab ] ; 5 uses
  %.sroa.7.031.i.i.lcssa = phi i64 [ %.sroa.7.031.i.i.3, %bb.w ], [ %.sroa.7.031.i.i, %bb.s ], [ %.sroa.7.031.i.i.1, %bb.u ], [ %.sroa.7.031.i.i.2, %bb.v ], [ %.sroa.7.031.i.i.epil, %bb.ab ] ; 6 uses
  %i.bn = icmp samesign ult i64 %.sroa.7.031.i.i.lcssa, %i.bd
  br i1 %i.bn, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i.i
  %i.bo = sub nuw i64 %i.bd, %.sroa.7.031.i.i.lcssa
  %.neg = add i64 %.sroa.7.031.i.i.lcssa, 1
  %xtraiter105 = and i64 %i.bo, 1
  %lcmp.mod106.not = icmp eq i64 %xtraiter105, 0
  br i1 %lcmp.mod106.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %.sroa.7.031.i.i.lcssa ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  %.val12.i.i.prol = load i64, ptr %i.bq, align 8, !noalias !453, !noundef !4
  %.not25.i.i.prol = icmp eq i64 %.val12.i.i.prol, %i.bj
  br i1 %.not25.i.i.prol, label %.lr.ph.i.i.prol.loopexit.unr-lcssa, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.prol
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %.sroa.0.0.i.i.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false), !noalias !453
  %i.bs = add i64 %.sroa.0.0.i.i.lcssa, 1
  %.pre.i.i.prol = load i64, ptr %i.bi, align 8, !noalias !453
  br label %.lr.ph.i.i.prol.loopexit.unr-lcssa

.lr.ph.i.i.prol.loopexit.unr-lcssa:               ; preds = %bb.t, %.lr.ph.i.i.prol
  %i.bt = phi i64 [ %.pre.i.i.prol, %bb.t ], [ %i.bj, %.lr.ph.i.i.prol ]
  %.sroa.13.1.i.i.prol = phi i64 [ %i.bs, %bb.t ], [ %.sroa.0.0.i.i.lcssa, %.lr.ph.i.i.prol ] ; 2 uses
  %.sroa.7.0.i.i.prol = add nuw nsw i64 %.sroa.7.031.i.i.lcssa, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.13.1.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.13.1.i.i.prol, %.lr.ph.i.i.prol.loopexit.unr-lcssa ]
  %.unr = phi i64 [ %i.bj, %.lr.ph.i.i.preheader ], [ %i.bt, %.lr.ph.i.i.prol.loopexit.unr-lcssa ]
  %.sroa.7.033.i.i.unr = phi i64 [ %.sroa.7.031.i.i.lcssa, %.lr.ph.i.i.preheader ], [ %.sroa.7.0.i.i.prol, %.lr.ph.i.i.prol.loopexit.unr-lcssa ]
  %.sroa.13.032.i.i.unr = phi i64 [ %.sroa.0.0.i.i.lcssa, %.lr.ph.i.i.preheader ], [ %.sroa.13.1.i.i.prol, %.lr.ph.i.i.prol.loopexit.unr-lcssa ]
  %i.bu = icmp eq i64 %i.bd, %.neg
  br i1 %i.bu, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.u:                                             ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %.sroa.7.031.i.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 16
  %.val10.i.i.1 = load i64, ptr %i.bw, align 8, !noalias !453, !noundef !4
  %.not.i.i.1 = icmp eq i64 %.val10.i.i.1, %i.bj
  %.sroa.7.031.i.i.1 = or disjoint i64 %.sroa.0.0.i.i, 2 ; 3 uses
  br i1 %.not.i.i.1, label %.preheader.i.i, label %bb.v, !prof !5

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %.sroa.7.031.i.i.1
  %i.by = getelementptr i8, ptr %i.bx, i64 16
  %.val10.i.i.2 = load i64, ptr %i.by, align 8, !noalias !453, !noundef !4
  %.not.i.i.2 = icmp eq i64 %.val10.i.i.2, %i.bj
  %.sroa.7.031.i.i.2 = or disjoint i64 %.sroa.0.0.i.i, 3 ; 3 uses
  br i1 %.not.i.i.2, label %.preheader.i.i, label %bb.w, !prof !5

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %.sroa.7.031.i.i.2
  %i.ca = getelementptr i8, ptr %i.bz, i64 16
  %.val10.i.i.3 = load i64, ptr %i.ca, align 8, !noalias !453, !noundef !4
  %.not.i.i.3 = icmp eq i64 %.val10.i.i.3, %i.bj
  %.sroa.7.031.i.i.3 = add nuw nsw i64 %.sroa.0.0.i.i, 4 ; 3 uses
  br i1 %.not.i.i.3, label %.preheader.i.i, label %bb.x, !prof !5

bb.x:                                             ; preds = %bb.w
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRejEE6retainNCNvMs_CsigIpOYTm7sT_18influxdb3_shutdownNtBY_13ShutdownToken8completes_0EBY_.exit.loopexit.unr-lcssa, label %bb.s

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %bb.aa, %.preheader.i.i
  %.sroa.13.0.lcssa.i.i = phi i64 [ %.sroa.0.0.i.i.lcssa, %.preheader.i.i ], [ %.sroa.13.1.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.13.1.i.i.1, %bb.aa ]
  store i64 %.sroa.13.0.lcssa.i.i, ptr %i.bc, align 8, !alias.scope !452
  br label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRejEE6retainNCNvMs_CsigIpOYTm7sT_18influxdb3_shutdownNtBY_13ShutdownToken8completes_0EBY_.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.aa
  %i.cb = phi i64 [ %i.cm, %bb.aa ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.7.033.i.i = phi i64 [ %.sroa.7.0.i.i.1, %bb.aa ], [ %.sroa.7.033.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %.sroa.13.032.i.i = phi i64 [ %.sroa.13.1.i.i.1, %bb.aa ], [ %.sroa.13.032.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %.sroa.7.033.i.i ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 16
  %.val12.i.i = load i64, ptr %i.cd, align 8, !noalias !453, !noundef !4
  %.not25.i.i = icmp eq i64 %.val12.i.i, %i.cb
  br i1 %.not25.i.i, label %.lr.ph.i.i.1, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %.sroa.13.032.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false), !noalias !453
  %i.cf = add i64 %.sroa.13.032.i.i, 1
  %.pre.i.i = load i64, ptr %i.bi, align 8, !noalias !453
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.y, %.lr.ph.i.i
  %i.cg = phi i64 [ %.pre.i.i, %bb.y ], [ %i.cb, %.lr.ph.i.i ] ; 2 uses
  %.sroa.13.1.i.i = phi i64 [ %i.cf, %bb.y ], [ %.sroa.13.032.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %.sroa.7.033.i.i ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 40
  %.val12.i.i.1 = load i64, ptr %i.ci, align 8, !noalias !453, !noundef !4
  %.not25.i.i.1 = icmp eq i64 %.val12.i.i.1, %i.cg
  br i1 %.not25.i.i.1, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %.sroa.13.1.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 24, i1 false), !noalias !453
  %i.cl = add i64 %.sroa.13.1.i.i, 1
  %.pre.i.i.1 = load i64, ptr %i.bi, align 8, !noalias !453
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i.i.1
  %i.cm = phi i64 [ %.pre.i.i.1, %bb.z ], [ %i.cg, %.lr.ph.i.i.1 ]
  %.sroa.13.1.i.i.1 = phi i64 [ %i.cl, %bb.z ], [ %.sroa.13.1.i.i, %.lr.ph.i.i.1 ] ; 2 uses
  %.sroa.7.0.i.i.1 = add nuw nsw i64 %.sroa.7.033.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %.sroa.7.0.i.i.1, %i.bd
  br i1 %exitcond.not.i.i.1, label %._crit_edge.i.i, label %.lr.ph.i.i

_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRejEE6retainNCNvMs_CsigIpOYTm7sT_18influxdb3_shutdownNtBY_13ShutdownToken8completes_0EBY_.exit.loopexit.unr-lcssa: ; preds = %bb.x
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRejEE6retainNCNvMs_CsigIpOYTm7sT_18influxdb3_shutdownNtBY_13ShutdownToken8completes_0EBY_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRejEE6retainNCNvMs_CsigIpOYTm7sT_18influxdb3_shutdownNtBY_13ShutdownToken8completes_0EBY_.exit.loopexit.unr-lcssa, %.preheader26.i.i
  %.sroa.0.0.i.i.epil.init = phi i64 [ 0, %.preheader26.i.i ], [ %.sroa.7.031.i.i.3, %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRejEE6retainNCNvMs_CsigIpOYTm7sT_18influxdb3_shutdownNtBY_13ShutdownToken8completes_0EBY_.exit.loopexit.unr-lcssa ]
  %lcmp.mod101 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod101)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %.epil.preheader
  %.sroa.0.0.i.i.epil = phi i64 [ %.sroa.7.031.i.i.epil, %bb.ac ], [ %.sroa.0.0.i.i.epil.init, %.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.ac ], [ 0, %.epil.preheader ]
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %.sroa.0.0.i.i.epil
  %i.co = getelementptr i8, ptr %i.cn, i64 16
  %.val10.i.i.epil = load i64, ptr %i.co, align 8, !noalias !453, !noundef !4
  %.not.i.i.epil = icmp eq i64 %.val10.i.i.epil, %i.bj
  %.sroa.7.031.i.i.epil = add nuw nsw i64 %.sroa.0.0.i.i.epil, 1 ; 2 uses
  br i1 %.not.i.i.epil, label %.preheader.i.i, label %bb.ac, !prof !5

bb.ac:                                            ; preds = %bb.ab
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRejEE6retainNCNvMs_CsigIpOYTm7sT_18influxdb3_shutdownNtBY_13ShutdownToken8completes_0EBY_.exit, label %bb.ab, !llvm.loop !443

_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRejEE6retainNCNvMs_CsigIpOYTm7sT_18influxdb3_shutdownNtBY_13ShutdownToken8completes_0EBY_.exit: ; preds = %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRejEE6retainNCNvMs_CsigIpOYTm7sT_18influxdb3_shutdownNtBY_13ShutdownToken8completes_0EBY_.exit.loopexit.unr-lcssa, %bb.ac, %._crit_edge.i.i, %bb.r
  %i.cp = cmpxchg ptr %i.ay, i8 1, i8 0 release monotonic, align 1
  %i.cq = extractvalue { i8, i1 } %i.cp, 1
  br i1 %i.cq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api5mutex10MutexGuardNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexINtNtCscdodAO9FK5_5alloc3vec3VecTRejEEEECsigIpOYTm7sT_18influxdb3_shutdown.exit62, label %bb.ad, !prof !10

bb.ad:                                            ; preds = %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRejEE6retainNCNvMs_CsigIpOYTm7sT_18influxdb3_shutdownNtBY_13ShutdownToken8completes_0EBY_.exit
  invoke void @_RNvMs1_NtCsgIGNhOnZR2a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.ay, i1 noundef zeroext false)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api5mutex10MutexGuardNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexINtNtCscdodAO9FK5_5alloc3vec3VecTRejEEEECsigIpOYTm7sT_18influxdb3_shutdown.exit62 unwind label %.thread87

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api5mutex10MutexGuardNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexINtNtCscdodAO9FK5_5alloc3vec3VecTRejEEEECsigIpOYTm7sT_18influxdb3_shutdown.exit62: ; preds = %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRejEE6retainNCNvMs_CsigIpOYTm7sT_18influxdb3_shutdownNtBY_13ShutdownToken8completes_0EBY_.exit, %bb.ad
  %.not48 = icmp eq i32 %.sroa.6.0.a, -1
  br i1 %.not48, label %bb.ay, label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api5mutex10MutexGuardNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexINtNtCscdodAO9FK5_5alloc3vec3VecTRejEEEECsigIpOYTm7sT_18influxdb3_shutdown.exit62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 %.sroa.02.0, ptr %i.s, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %.sroa.6.0.a, ptr %i.cr, align 8
  %i.cs = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ct = icmp ult i64 %i.cs, 3
  br i1 %i.ct, label %bb.af, label %bb.ap

bb.af:                                            ; preds = %bb.ae
  %i.cu = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs_CsigIpOYTm7sT_18influxdb3_shutdownNtB6_13ShutdownToken8complete10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.cu, label %bb.ag [
    i8 0, label %bb.ap
    i8 1, label %bb.ah
    i8 2, label %bb.ah
  ], !prof !455

bb.ag:                                            ; preds = %bb.af
  %i.cv = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs_CsigIpOYTm7sT_18influxdb3_shutdownNtB6_13ShutdownToken8complete10___CALLSITE)
          to label %bb.ai unwind label %.thread87 ; 2 uses

bb.ah:                                            ; preds = %bb.af, %bb.af, %bb.ai
  %.sroa.012.0 = phi i8 [ %i.cv, %bb.ai ], [ %i.cu, %bb.af ], [ %i.cu, %bb.af ]
  %i.cw = load ptr, ptr @_RNvNvMs_CsigIpOYTm7sT_18influxdb3_shutdownNtB6_13ShutdownToken8complete10___CALLSITE, align 8, !nonnull !4, !align !6, !noundef !4
  %i.cx = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cw, i8 noundef %.sroa.012.0)
          to label %bb.aj unwind label %.thread87

bb.ai:                                            ; preds = %bb.ag
  %i.cy = icmp eq i8 %i.cv, 0
  br i1 %i.cy, label %bb.ap, label %bb.ah

bb.aj:                                            ; preds = %bb.ah
  br i1 %i.cx, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.cz = load ptr, ptr @_RNvNvMs_CsigIpOYTm7sT_18influxdb3_shutdownNtB6_13ShutdownToken8complete10___CALLSITE, align 8, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr @10, ptr %i.p, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr inttoptr (i64 35 to ptr), ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.s, ptr %i.o, align 8
  store ptr %i.p, ptr %i.q, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @11, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.dc, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @12, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.o, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr @13, ptr %i.dh, align 8
  store i64 1, ptr %i.r, align 8
  %.sroa.014.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.q, ptr %.sroa.014.sroa.4.0..sroa_idx, align 8
  %.sroa.014.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 3, ptr %.sroa.014.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.da, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RNvMNtCs4BfJs7E7SEE_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r)
          to label %.noexc64.a unwind label %.thread87

.noexc64.a:                                       ; preds = %bb.ak
  %i.di = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !456
  %i.dj = icmp eq i8 %i.di, 0
  br i1 %i.dj, label %bb.al, label %_RNCNvMs_CsigIpOYTm7sT_18influxdb3_shutdownNtB6_13ShutdownToken8completes0_0B6_.exit

bb.al:                                            ; preds = %.noexc64.a
  %i.dk = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !456 ; 2 uses
  %i.dl = icmp ult i64 %i.dk, 6
  call void @llvm.assume(i1 %i.dl)
  %i.dm = icmp samesign ugt i64 %i.dk, 2
  br i1 %i.dm, label %bb.am, label %_RNCNvMs_CsigIpOYTm7sT_18influxdb3_shutdownNtB6_13ShutdownToken8completes0_0B6_.exit

bb.am:                                            ; preds = %bb.al
  %i.dn = load ptr, ptr @_RNvNvMs_CsigIpOYTm7sT_18influxdb3_shutdownNtB6_13ShutdownToken8complete10___CALLSITE, align 8, !noalias !456, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !456
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = load ptr, ptr %i.do, align 8, !nonnull !4, !noundef !4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %i.dr = load i64, ptr %i.dq, align 8, !noundef !4
  store i64 3, ptr %i.b, align 8, !noalias !456
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.dp, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !456
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.dr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !456
  %i.ds = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %.noexc65.a unwind label %.thread87 ; 2 uses

.noexc65.a:                                       ; preds = %bb.am
  %i.dt = extractvalue { ptr, ptr } %i.ds, 0      ; 2 uses
  %i.du = extractvalue { ptr, ptr } %i.ds, 1      ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !invariant.load !4, !nonnull !4
  %i.dx = invoke noundef zeroext i1 %i.dw(ptr noundef %i.dt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %.noexc66.a unwind label %.thread87, !inline_history !446

.noexc66.a:                                       ; preds = %.noexc65.a
  br i1 %i.dx, label %bb.an, label %.noexc67

bb.an:                                            ; preds = %.noexc66.a
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dn, ptr noundef nonnull %i.dt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.du, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r)
          to label %.noexc67 unwind label %.thread87

.noexc67:                                         ; preds = %bb.an, %.noexc66.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !456
  br label %_RNCNvMs_CsigIpOYTm7sT_18influxdb3_shutdownNtB6_13ShutdownToken8completes0_0B6_.exit

_RNCNvMs_CsigIpOYTm7sT_18influxdb3_shutdownNtB6_13ShutdownToken8completes0_0B6_.exit: ; preds = %.noexc67, %bb.al, %.noexc64.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.av, %bb.aq, %bb.ap, %_RNCNvMs_CsigIpOYTm7sT_18influxdb3_shutdownNtB6_13ShutdownToken8completes0_0B6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.ax

bb.ap:                                            ; preds = %bb.ai, %bb.af, %bb.ae, %bb.aj
  %i.dy = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.dz = icmp eq i8 %i.dy, 0
  br i1 %i.dz, label %bb.aq, label %bb.ao

bb.aq:                                            ; preds = %bb.ap
  %i.ea = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.eb = icmp ult i64 %i.ea, 6
  tail call void @llvm.assume(i1 %i.eb)
  %i.ec = icmp samesign ugt i64 %i.ea, 2
  br i1 %i.ec, label %bb.ar, label %bb.ao

bb.ar:                                            ; preds = %bb.aq
  %i.ed = load ptr, ptr @_RNvNvMs_CsigIpOYTm7sT_18influxdb3_shutdownNtB6_13ShutdownToken8complete10___CALLSITE, align 8, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !nonnull !4, !noundef !4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  %i.eh = load i64, ptr %i.eg, align 8, !noundef !4
  store i64 3, ptr %i.n, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.ef, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.eh, ptr %.sroa.531.0..sroa_idx, align 8
  %i.ei = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.as unwind label %.thread87 ; 2 uses

bb.as:                                            ; preds = %bb.ar
  %i.ej = extractvalue { ptr, ptr } %i.ei, 0      ; 2 uses
  %i.ek = extractvalue { ptr, ptr } %i.ei, 1      ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load ptr, ptr %i.el, align 8, !invariant.load !4, !nonnull !4
  %i.en = invoke noundef zeroext i1 %i.em(ptr noundef %i.ej, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %bb.at unwind label %.thread87

bb.at:                                            ; preds = %bb.as
  br i1 %i.en, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.eo = load ptr, ptr @_RNvNvMs_CsigIpOYTm7sT_18influxdb3_shutdownNtB6_13ShutdownToken8complete10___CALLSITE, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @10, ptr %i.k, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 35 to ptr), ptr %i.eq, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.s, ptr %i.j, align 8
  store ptr %i.k, ptr %i.l, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @11, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.er, ptr %i.et, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @12, ptr %i.eu, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.j, ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr @13, ptr %i.ew, align 8
  store i64 1, ptr %i.m, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 3, ptr %.sroa.534.0..sroa_idx, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.ep, ptr %i.ex, align 8
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ed, ptr noundef nonnull %i.ej, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ek, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m)
          to label %bb.aw unwind label %.thread87

bb.av:                                            ; preds = %bb.at, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ao

end_hunk_0
